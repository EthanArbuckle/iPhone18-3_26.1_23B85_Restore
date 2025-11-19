uint64_t sub_1D63C66AC(char a1, char a2, uint64_t a3)
{
  v6 = a1 & 1;
  v17 = a1 & 1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D66F9230;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66F9258();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    sub_1D66F92AC();
    sub_1D72647EC();
  }
}

uint64_t sub_1D63C6840(char a1, __int128 *a2, uint64_t a3)
{
  v20 = a1;
  v7 = a2[1];
  v17 = *a2;
  v18 = v7;
  v19 = a2[2];
  sub_1D5D30DC4();
  v9 = (v3 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D66FF2AC;
  v15[3] = v12;

  v13 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v15);
  if (!v4 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D66FF258();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D66FF2D4();
    sub_1D72647EC();
  }
}

uint64_t FormatPatternDirection.encode(to:)(void *a1)
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

uint64_t FormatTextAdjustmentMetric.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D665DB0C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665DBA0();
  sub_1D5B58B84(&qword_1EDF24FA8, sub_1D665DBA0);
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
  v14 = v7;
  if (v12)
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6613D2C();
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

  sub_1D5F90C74();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  type metadata accessor for FormatTextNodeStyle();
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5F90E84();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextAdjustmentMetric.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v96 = (&v85 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v85 - v11;
  sub_1D665DD20();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v89 = *(v1 + 1);
  v106 = v1[16];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D665DBA0();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF24FA8, sub_1D665DBA0);
  sub_1D5D2EE70(&type metadata for FormatTextAdjustmentMetric, v22, v24, v19, &type metadata for FormatTextAdjustmentMetric, v22, &type metadata for FormatVersions.StarSky, v20, v17, v23, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v93 = v26;
  v94 = v25;
  v91 = v27 + 16;
  v92 = v28;
  (v28)(v12);
  v90 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v102) = v18;
  v103 = 0uLL;
  v104 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v105 = 0;
  v32 = swift_allocObject();
  v100 = &v85;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v105;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v85 - 4) = sub_1D5B4AA6C;
  *(&v85 - 3) = 0;
  v83 = sub_1D670889C;
  v84 = v34;
  v105 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v105;
  v95 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D665DDB4();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF02F28, sub_1D665DDB4);
  swift_retain_n();
  v97 = v38;
  v98 = v37;
  v39 = sub_1D72647CC();
  v105 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v105;
  v41 = *(v14 + 36);
  v42 = v12;
  v43 = &v17[v41];
  v99 = v17;
  v44 = __swift_project_boxed_opaque_existential_1(&v17[v41], *&v17[v41 + 24]);
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v85 - 4) = sub_1D615B4A4;
  *(&v85 - 3) = (&v85 - 6);
  v83 = sub_1D665DE48;
  v84 = v35;
  v48 = v101;
  sub_1D5D2BC70(v42, sub_1D615B49C, v49, sub_1D615B4A4, (&v85 - 6));
  if (v48)
  {
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v50 = v99;
  }

  else
  {
    v86 = v43;
    v87 = v31;

    sub_1D5F90CC8();
    v50 = v99;
    sub_1D72647EC();
    sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);

    v52 = v96;
    v92(v96, v93, v94);
    swift_storeEnumTagMultiPayload();
    v102 = v89;
    v101 = xmmword_1D728CF30;
    v103 = xmmword_1D728CF30;
    v104 = 0;
    v105 = 0;
    v53 = swift_allocObject();
    v89 = &v85;
    *(v53 + 16) = v101;
    *(v53 + 32) = v105;
    v54 = v95;
    v55 = v87;
    *(v53 + 40) = v95;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    v100 = 0;
    *(&v85 - 4) = sub_1D5B4AA6C;
    *(&v85 - 3) = 0;
    v83 = sub_1D670889C;
    v84 = v57;
    v105 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v101;
    *(v58 + 32) = v105;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v105 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v101;
    *(v60 + 40) = v105;
    v61 = v86;
    v62 = __swift_project_boxed_opaque_existential_1(v86, *(v86 + 3));
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    *(&v85 - 4) = sub_1D615B4A4;
    *(&v85 - 3) = (&v85 - 6);
    v83 = sub_1D670889C;
    v84 = v58;
    v66 = v100;
    sub_1D5D2BC70(v52, sub_1D615B49C, v67, sub_1D615B4A4, (&v85 - 6));
    if (v66 || (, , type metadata accessor for FormatTextNodeStyle(), sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle), sub_1D72647EC(), sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement), , v52 = v88, v92(v88, v93, v94), swift_storeEnumTagMultiPayload(), LOBYTE(v102) = v106, v101 = xmmword_1D7297410, v103 = xmmword_1D7297410, v104 = 0, v105 = 0, v68 = swift_allocObject(), v96 = &v85, *(v68 + 16) = v101, *(v68 + 32) = v105, v69 = v61, v70 = v95, v71 = v87, *(v68 + 40) = v95, *(v68 + 48) = v71, MEMORY[0x1EEE9AC00](v68, v72), v100 = 0, *(&v85 - 4) = sub_1D5B4AA6C, *(&v85 - 3) = 0, v83 = sub_1D670889C, v84 = v73, v105 = 0, v74 = swift_allocObject(), *(v74 + 16) = v101, *(v74 + 32) = v105, *(v74 + 40) = v70, *(v74 + 48) = v71, swift_retain_n(), v75 = sub_1D72647CC(), v105 = 0, v76 = swift_allocObject(), *(v76 + 16) = v75, *(v76 + 24) = v101, *(v76 + 40) = v105, v77 = __swift_project_boxed_opaque_existential_1(v69, *(v69 + 3)), MEMORY[0x1EEE9AC00](v77, v78), MEMORY[0x1EEE9AC00](v79, v80), *(&v85 - 4) = sub_1D615B4A4, *(&v85 - 3) = (&v85 - 6), v83 = sub_1D670889C, v84 = v74, v81 = v100, sub_1D5D2BC70(v52, sub_1D615B49C, v82, sub_1D615B4A4, (&v85 - 6)), v81))
    {
      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5F90ED8();
      sub_1D72647EC();
      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v50, sub_1D665DD20);
}

uint64_t FormatFontMetric.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFontMetric, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatFontMetric, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423E58(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423E58(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatFontMetricAdjustment.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatFontMetricAdjustment, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatFontMetricAdjustment, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCD50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B018(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641B018(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatQueryParameter.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1D665DF6C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v71 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C6BA68();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF25398, sub_1D5C6BA68);
  sub_1D5D2EE70(&type metadata for FormatQueryParameter, v20, v22, v17, &type metadata for FormatQueryParameter, v20, &type metadata for FormatVersions.JazzkonG, v18, v14, v21, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD18);
  v25 = *(v23 - 8);
  v68 = *(v25 + 16);
  v69 = v24;
  v73 = v23;
  v67 = v25 + 16;
  v68(v9);
  v66 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v81 = v15;
  v82 = v16;
  v79 = 0uLL;
  v80 = 0;
  v26 = &v14[*(v11 + 44)];
  v76 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v83 = 0;
  v29 = swift_allocObject();
  v77 = &v64;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v83;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v64 - 4) = sub_1D5B4AA6C;
  *(&v64 - 3) = 0;
  v62 = sub_1D67088A0;
  v63 = v31;
  v83 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v83;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D665E000();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF033B8, sub_1D665E000);
  swift_retain_n();
  v74 = v35;
  v75 = v34;
  v36 = sub_1D72647CC();
  v83 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v83;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v64 - 4) = sub_1D615B4A4;
  *(&v64 - 3) = (&v64 - 6);
  v43 = v76;
  v62 = sub_1D665E094;
  v63 = v32;
  v44 = v78;
  sub_1D5D2BC70(v76, sub_1D615B49C, v45, sub_1D615B4A4, (&v64 - 6));
  if (v44)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v64 = v38;
    v65 = v28;
    v46 = v73;

    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v48 = v72;
    (v68)(v72, v69, v46);
    swift_storeEnumTagMultiPayload();
    v81 = v71;
    v78 = xmmword_1D728CF30;
    v79 = xmmword_1D728CF30;
    v80 = 0;
    v83 = 0;
    v49 = swift_allocObject();
    v77 = &v64;
    *(v49 + 16) = v78;
    *(v49 + 32) = v83;
    v50 = v70;
    v51 = v65;
    *(v49 + 40) = v70;
    *(v49 + 48) = v51;
    MEMORY[0x1EEE9AC00](v49, v52);
    *(&v64 - 4) = sub_1D5B4AA6C;
    *(&v64 - 3) = 0;
    v62 = sub_1D67088A0;
    v63 = v53;
    v83 = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v78;
    *(v54 + 32) = v83;
    *(v54 + 40) = v50;
    *(v54 + 48) = v51;
    swift_retain_n();
    v55 = sub_1D72647CC();
    v83 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v78;
    *(v56 + 40) = v83;
    v57 = __swift_project_boxed_opaque_existential_1(v64, *(v64 + 3));
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v64 - 4) = sub_1D615B4A4;
    *(&v64 - 3) = (&v64 - 6);
    v62 = sub_1D67088A0;
    v63 = v54;
    sub_1D5D2BC70(v48, sub_1D615B49C, v61, sub_1D615B4A4, (&v64 - 6));

    sub_1D61F14E0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D665DF6C);
}

uint64_t FormatRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v61 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v56 = &v53 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v62 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v53 - v14;
  v66 = v13;
  v68 = v15;
  *&v69 = v15;
  *(&v69 + 1) = v13;
  v70 = v16;
  v59 = v16;
  v60 = v17;
  v71 = v17;
  v18 = _s10CodingKeysOMa_286();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *&v69 = v18;
  *(&v69 + 1) = WitnessTable;
  v63 = v20;
  v64 = WitnessTable;
  v70 = v20;
  v71 = v21;
  v22 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v23 = sub_1D726435C();
  v67 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v53 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v72;
  sub_1D7264B0C();
  v28 = v27;
  if (v27)
  {
    goto LABEL_13;
  }

  v53 = v21;
  v54 = 0;
  v55 = v26;
  v72 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = sub_1D7264AFC();
  v30 = Dictionary<>.errorOnUnknownKeys.getter(v29);

  v31 = v68;
  if ((v30 & 1) == 0)
  {
LABEL_10:
    v69 = 0uLL;
    LOBYTE(v70) = 0;
    v46 = v65;
    v47 = v72;
    v49 = v54;
    v48 = v55;
    sub_1D726431C();
    if (!v49)
    {
      v69 = xmmword_1D728CF30;
      LOBYTE(v70) = 0;
      sub_1D726431C();
      (*(v67 + 8))(v48, v47);
      v50 = *(v61 + 32);
      v51 = v56;
      v50(v56, v46, v31);
      v52 = v57;
      v50(v57, v62, v31);
      sub_1D5F921B8(v51, v52, v31, v58);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v67 + 8))(v48, v47);
    v28 = v49;
LABEL_13:
    sub_1D61E4FBC(a1, v28);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v33 = (sub_1D726433C() + 48);
  v34 = v18;
  v36 = v63;
  v35 = v64;
  while (1)
  {
    if (v32 == sub_1D726279C())
    {

      v31 = v68;
      goto LABEL_10;
    }

    v37 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v37 & 1) == 0)
    {
      break;
    }

    v39 = *v33;
    v69 = *(v33 - 1);
    LOBYTE(v70) = v39;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_16;
    }

    v40 = sub_1D6AFC82C(v22);
    ++v32;
    v33 += 24;
    if (v41)
    {
      v42 = v40;
      v43 = v41;

      v44 = sub_1D6AFC690(v34, v35, v36, v53);
      sub_1D5E2D970();
      v28 = swift_allocError();
      *v45 = v42;
      *(v45 + 8) = v43;
      *(v45 + 16) = v44;
      *(v45 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v67 + 8))(v55, v72);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatRange.encode(to:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v42 = &v33 - v10;
  v11 = *(a2 + 40);
  v37 = *(a2 + 16);
  *v40 = v37;
  v35 = *(a2 + 24);
  *&v40[8] = v35;
  v41 = v11;
  v12 = _s10CodingKeysOMa_286();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *v40 = v12;
  *&v40[8] = WitnessTable;
  *&v40[16] = v14;
  v41 = v15;
  v16 = type metadata accessor for FormatCodingKeysContainer();
  v17 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v39 = type metadata accessor for VersionedKeyedEncodingContainer();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v18);
  v20 = &v33 - v19;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v33 = a2;
  sub_1D5D2EE70(a2, v16, v23, v21, a2, v16, &type metadata for FormatVersions.JazzkonC, v22, v20, v17, &off_1F51F6C78);
  memset(v40, 0, 17);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v27 = v42;
  (v26)(v42, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v28 = *(v35 + 16);
  sub_1D5D38930(v38, v40, v27, sub_1D5B4AA6C, 0, v39, v37, v28);
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  if (v2)
  {
    return (*(v36 + 8))(v20, v39);
  }

  v30 = *(v33 + 52);
  *v40 = xmmword_1D728CF30;
  v40[16] = 0;
  v31 = v34;
  v26();
  swift_storeEnumTagMultiPayload();
  v32 = v39;
  sub_1D5D38930(v38 + v30, v40, v31, sub_1D5B4AA6C, 0, v39, v37, v28);
  sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
  return (*(v36 + 8))(v20, v32);
}

uint64_t FormatBindingSponsorshipExpression.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D665E128();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665E1BC();
  sub_1D5B58B84(&qword_1EDF24DA8, sub_1D665E1BC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v7;
  v12 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v10;
  if (v14)
  {
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

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v15, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D665E33C();
  v29 = 0uLL;
  v30 = 0;
  sub_1D726431C();
  v25 = xmmword_1D728CF30;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  if (sub_1D726434C())
  {
    v27 = v25;
    v28 = 0;
    sub_1D5F2E710();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v19 = v31;
  }

  else
  {
    (*(v11 + 8))(v10, v6);
    v19 = 1;
  }

  *v12 = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingSponsorshipExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v59 - v8;
  sub_1D665E390();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *v1;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D665E1BC();
  v18 = v17;
  v19 = sub_1D5B58B84(&qword_1EDF24DA8, sub_1D665E1BC);
  sub_1D5D2EE70(&type metadata for FormatBindingSponsorshipExpression, v18, v20, v15, &type metadata for FormatBindingSponsorshipExpression, v18, &type metadata for FormatVersions.CrystalGlowG, v16, v14, v19, &off_1F51F6B58);
  if (qword_1EDF31F30 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCE20);
  v23 = *(v21 - 8);
  v24 = *(v23 + 16);
  v64 = v22;
  v65 = v21;
  v62 = v23 + 16;
  v63 = v24;
  (v24)(v9);
  v61 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v72 = 0uLL;
  v73 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v74 = 0;
  v28 = swift_allocObject();
  v69 = &v59;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v74;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v71 = v9;
  *(&v59 - 4) = sub_1D5B4AA6C;
  *(&v59 - 3) = 0;
  v57 = sub_1D67088A4;
  v58 = v30;
  v74 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v74;
  v60 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D665E424();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02CA8, sub_1D665E424);
  swift_retain_n();
  v67 = v34;
  v68 = v33;
  v35 = sub_1D72647CC();
  v74 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v74;
  v37 = &v14[*(v11 + 36)];
  v38 = __swift_project_boxed_opaque_existential_1(v37, *(v37 + 3));
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v59 - 4) = sub_1D615B4A4;
  *(&v59 - 3) = (&v59 - 6);
  v42 = v70;
  v43 = v71;
  v57 = sub_1D67088A4;
  v58 = v31;
  sub_1D5D2BC70(v71, sub_1D615B49C, v44, sub_1D615B4A4, (&v59 - 6));
  if (v42)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v45 = v14;
  }

  else
  {

    sub_1D665E4B8();
    sub_1D72647EC();
    v45 = v14;
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

    v46 = v66;
    v63(v66, v64, v65);
    swift_storeEnumTagMultiPayload();
    if (v75 != 1)
    {
      LOBYTE(v72) = 0;
      v47 = swift_allocObject();
      v71 = xmmword_1D728CF30;
      *(v47 + 16) = xmmword_1D728CF30;
      *(v47 + 32) = v72;
      *(v47 + 40) = v60;
      *(v47 + 48) = v27;

      v48 = sub_1D72647CC();
      LOBYTE(v72) = 0;
      v49 = swift_allocObject();
      *(v49 + 16) = v48;
      *(v49 + 24) = v71;
      *(v49 + 40) = v72;
      v50 = __swift_project_boxed_opaque_existential_1(v37, *(v37 + 3));
      MEMORY[0x1EEE9AC00](v50, v51);
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v59 - 4) = sub_1D5B4AA6C;
      *(&v59 - 3) = 0;
      v57 = sub_1D67088A4;
      v58 = v47;
      v56 = sub_1D5D2F7A4(v46, sub_1D615B49C, v54, sub_1D615B4A4, (&v59 - 6));

      if (v56)
      {
        v72 = v71;
        v73 = 0;
        v74 = v75;
        sub_1D5F2E764();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v45, sub_1D665E390);
}

uint64_t FormatSymbolImage.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v154 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v159 = &v151 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v162 = &v151 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v166 = &v151 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v151 - v17;
  sub_1D665E570();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v1 + 8);
  *&v172 = *v1;
  v25 = *(v1 + 16);
  LODWORD(v171) = *(v1 + 24);
  v26 = *(v1 + 40);
  v156 = *(v1 + 32);
  v155 = v26;
  LODWORD(v161) = *(v1 + 48);
  v27 = *(v1 + 64);
  v157 = *(v1 + 56);
  v153 = v27;
  v28 = *(v1 + 80);
  *&v158 = *(v1 + 72);
  *(&v158 + 1) = v28;
  v180 = *(v1 + 88);
  v152 = *(v1 + 96);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5C9420C();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF255F8, sub_1D5C9420C);
  sub_1D5D2EE70(&type metadata for FormatSymbolImage, v32, v34, v29, &type metadata for FormatSymbolImage, v32, &type metadata for FormatVersions.JazzkonC, v30, v23, v33, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v160 = v36;
  v168 = v35;
  v163 = v38;
  v167 = v37 + 16;
  (v38)(v18);
  v164 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v176 = v172;
  *(&v176 + 1) = v24;
  v177 = v25;
  v178 = v171;
  v174 = 0uLL;
  v175 = 0;
  v39 = &v23[*(v20 + 44)];
  v40 = *v39;
  v41 = *(v39 + 1);
  v179 = 0;
  v42 = swift_allocObject();
  *&v172 = &v151;
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v179;
  *(v42 + 40) = v40;
  *(v42 + 48) = v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v171 = &v151 - 6;
  *(&v151 - 4) = sub_1D5B4AA6C;
  *(&v151 - 3) = 0;
  v149 = sub_1D67088A8;
  v150 = v44;
  v179 = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v179;
  v165 = v40;
  *(v45 + 40) = v40;
  *(v45 + 48) = v41;
  sub_1D665E604();
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF03658, sub_1D665E604);
  swift_retain_n();
  v169 = v47;
  v170 = v48;
  v49 = sub_1D72647CC();
  v179 = 0;
  v50 = swift_allocObject();
  *(v50 + 24) = 0;
  *(v50 + 32) = 0;
  *(v50 + 16) = v49;
  *(v50 + 40) = v179;
  v51 = v23;
  v52 = v18;
  v53 = &v51[*(v20 + 36)];
  v54 = __swift_project_boxed_opaque_existential_1(v53, *(v53 + 3));
  MEMORY[0x1EEE9AC00](v54, v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v58 = v171;
  *(&v151 - 4) = sub_1D615B4A4;
  *(&v151 - 3) = v58;
  v149 = sub_1D67088A8;
  v150 = v45;
  v59 = v173;
  sub_1D5D2BC70(v52, sub_1D615B49C, v60, sub_1D615B4A4, (&v151 - 6));
  if (!v59)
  {
    v151 = v53;
    v171 = v41;

    sub_1D61E0D8C();
    sub_1D72647EC();
    v61 = v51;
    v173 = 0;
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

    v64 = v166;
    v65 = v163;
    v163(v166, v160, v168);
    swift_storeEnumTagMultiPayload();
    v172 = xmmword_1D728CF30;
    v174 = xmmword_1D728CF30;
    v175 = 0;
    LOBYTE(v176) = 0;
    v66 = swift_allocObject();
    v68 = v66;
    *(v66 + 16) = v172;
    *(v66 + 32) = v176;
    v69 = v165;
    v70 = v171;
    *(v66 + 40) = v165;
    *(v66 + 48) = v70;
    if (v161 >> 8 > 0xFE)
    {

      goto LABEL_10;
    }

    v160 = &v151;
    v86 = v156;
    v87 = v155;
    *&v176 = v156;
    *(&v176 + 1) = v155;
    LOWORD(v177) = v161;
    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v151 - 4) = sub_1D5B4AA6C;
    *(&v151 - 3) = 0;
    v149 = sub_1D67088A8;
    v150 = v68;
    v179 = 0;
    v89 = v88;
    v90 = swift_allocObject();
    *(v90 + 16) = v172;
    *(v90 + 32) = v179;
    *(v90 + 40) = v165;
    *(v90 + 48) = v70;
    swift_retain_n();
    sub_1D5FB999C(v86, v87, v89);
    v91 = sub_1D72647CC();
    v179 = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v172;
    *(v92 + 40) = v179;
    v93 = __swift_project_boxed_opaque_existential_1(v151, *(v151 + 3));
    MEMORY[0x1EEE9AC00](v93, v94);
    MEMORY[0x1EEE9AC00](v95, v96);
    *(&v151 - 4) = sub_1D615B4A4;
    *(&v151 - 3) = (&v151 - 6);
    v149 = sub_1D67088A8;
    v150 = v90;
    v97 = v173;
    v99 = sub_1D5D2F7A4(v166, sub_1D615B49C, v98, sub_1D615B4A4, (&v151 - 6));
    if (v97)
    {

      v100 = v166;
LABEL_22:
      sub_1D5F5816C(v176, *(&v176 + 1), v177, SBYTE1(v177));
      sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
      goto LABEL_6;
    }

    v128 = v99;
    v173 = 0;

    if (v128)
    {
      sub_1D665E714();
      v129 = v173;
      sub_1D72647EC();
      v65 = v163;
      v173 = v129;
      if (v129)
      {

        v100 = v166;
        goto LABEL_22;
      }

      sub_1D5F5816C(v176, *(&v176 + 1), v177, SBYTE1(v177));
      v69 = v165;
      v64 = v166;
    }

    else
    {

      sub_1D5F5816C(v176, *(&v176 + 1), v177, SBYTE1(v177));
      v69 = v165;
      v64 = v166;
      v65 = v163;
    }

LABEL_10:
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
    sub_1D5B58478();
    v72 = *(v71 + 48);
    v73 = v162;
    v74 = (v162 + *(v71 + 64));
    v75 = v168;
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v76 = __swift_project_value_buffer(v75, qword_1EDFFCD98);
    v65(v73, v76, v75);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v166 = v61;
    v161 = __swift_project_value_buffer(v75, qword_1EDFFCE68);
    (v65)(v73 + v72);
    *v74 = 0;
    v74[1] = 0;
    swift_storeEnumTagMultiPayload();
    v172 = xmmword_1D7297410;
    v176 = xmmword_1D7297410;
    LOBYTE(v177) = 0;
    LOBYTE(v174) = 0;
    v77 = swift_allocObject();
    v79 = v77;
    *(v77 + 16) = v172;
    *(v77 + 32) = v174;
    v80 = v171;
    *(v77 + 40) = v69;
    *(v77 + 48) = v80;
    v81 = v157;
    if ((~v157 & 0xF000000000000007) != 0)
    {
      v160 = &v151;
      *&v174 = v157;
      *(&v174 + 1) = v153;
      MEMORY[0x1EEE9AC00](v77, v78);
      *(&v151 - 4) = sub_1D5B4AA6C;
      *(&v151 - 3) = 0;
      v149 = sub_1D67088A8;
      v150 = v79;
      v179 = 0;
      v101 = swift_allocObject();
      v102 = v69;
      v103 = v101;
      *(v101 + 16) = v172;
      *(v101 + 32) = v179;
      *(v101 + 40) = v102;
      *(v101 + 48) = v80;
      swift_retain_n();
      sub_1D5FB99B0(v81);
      v104 = sub_1D72647CC();
      v179 = 0;
      v105 = swift_allocObject();
      *(v105 + 16) = v104;
      *(v105 + 24) = v172;
      *(v105 + 40) = v179;
      v106 = __swift_project_boxed_opaque_existential_1(v151, *(v151 + 3));
      MEMORY[0x1EEE9AC00](v106, v107);
      MEMORY[0x1EEE9AC00](v108, v109);
      *(&v151 - 4) = sub_1D615B4A4;
      *(&v151 - 3) = (&v151 - 6);
      v149 = sub_1D67088A8;
      v150 = v103;
      v110 = v173;
      v112 = sub_1D5D2F7A4(v73, sub_1D615B49C, v111, sub_1D615B4A4, (&v151 - 6));
      if (v110)
      {

        v113 = v166;

        v114 = v162;
LABEL_48:
        sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);
        v62 = v113;
        return sub_1D5D2CFE8(v62, sub_1D665E570);
      }

      v130 = v112;

      if (v130)
      {
        sub_1D5FB9C30();
        sub_1D72647EC();
        v69 = v165;
        v173 = 0;

        v80 = v171;
      }

      else
      {
        v173 = 0;

        v80 = v171;
        v69 = v165;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v162, type metadata accessor for FormatVersionRequirement);
    v82 = v158;
    v83 = v180;
    sub_1D5C75A4C(v158, *(&v158 + 1), v180);
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v84 = v168;
    v85 = __swift_project_value_buffer(v168, qword_1EDFFCE98);
    v163(v159, v85, v84);
    swift_storeEnumTagMultiPayload();
    if (v83)
    {

      sub_1D5D2F2C8(v82, *(&v82 + 1), 1);
      sub_1D5D2F2C8(0, 0, 0);
    }

    else
    {
      sub_1D5D2F2C8(v82, *(&v82 + 1), 0);
      sub_1D5D2F2C8(0, 0, 0);
      v115 = v154;
      if ((v82 & 1) == 0)
      {
        sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);
        v132 = v168;
        goto LABEL_39;
      }
    }

    LOBYTE(v176) = 0;
    v116 = swift_allocObject();
    v172 = xmmword_1D72BAA60;
    *(v116 + 16) = xmmword_1D72BAA60;
    *(v116 + 32) = v176;
    *(v116 + 40) = v69;
    *(v116 + 48) = v80;

    v117 = v166;
    v118 = sub_1D72647CC();
    LOBYTE(v176) = 0;
    v119 = swift_allocObject();
    *(v119 + 16) = v118;
    *(v119 + 24) = v172;
    *(v119 + 40) = v176;
    v120 = __swift_project_boxed_opaque_existential_1(v151, *(v151 + 3));
    MEMORY[0x1EEE9AC00](v120, v121);
    MEMORY[0x1EEE9AC00](v122, v123);
    *(&v151 - 4) = sub_1D5B4AA6C;
    *(&v151 - 3) = 0;
    v149 = sub_1D665E698;
    v150 = v116;
    v124 = v159;
    v125 = v173;
    v127 = sub_1D5D2F7A4(v159, sub_1D615B49C, v126, sub_1D615B4A4, (&v151 - 6));
    if (v125)
    {
      sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v158, *(&v158 + 1), v180);
      v62 = v117;
      return sub_1D5D2CFE8(v62, sub_1D665E570);
    }

    v131 = v127;

    if (v131)
    {
      v176 = v172;
      LOBYTE(v177) = 0;
      v174 = v158;
      v175 = v180;
      sub_1D60ED320();
      sub_1D72647EC();
      sub_1D5D2F2C8(v174, *(&v174 + 1), v175);
      sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);
      v132 = v168;
      v115 = v154;
      v173 = 0;
      v80 = v171;
      v69 = v165;
    }

    else
    {
      v173 = 0;
      sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2F2C8(v158, *(&v158 + 1), v180);
      v80 = v171;
      v69 = v165;
      v132 = v168;
      v115 = v154;
    }

LABEL_39:
    v163(v115, v161, v132);
    swift_storeEnumTagMultiPayload();
    v172 = xmmword_1D72BAA70;
    v176 = xmmword_1D72BAA70;
    LOBYTE(v177) = 0;
    LOBYTE(v174) = 0;
    v133 = swift_allocObject();
    v135 = v133;
    *(v133 + 16) = v172;
    *(v133 + 32) = v174;
    *(v133 + 40) = v69;
    *(v133 + 48) = v80;
    v136 = v152;
    if ((~v152 & 0xF000000000000007) != 0)
    {
      v171 = &v151;
      *&v174 = v152;
      MEMORY[0x1EEE9AC00](v133, v134);
      v137 = v115;
      *(&v151 - 4) = sub_1D5B4AA6C;
      *(&v151 - 3) = 0;
      v149 = sub_1D67088A8;
      v150 = v135;
      v179 = 0;
      v138 = swift_allocObject();
      *(v138 + 16) = v172;
      *(v138 + 32) = v179;
      *(v138 + 40) = v69;
      *(v138 + 48) = v80;
      swift_retain_n();
      sub_1D5FB99FC(v136);
      v139 = sub_1D72647CC();
      v179 = 0;
      v140 = swift_allocObject();
      *(v140 + 16) = v139;
      *(v140 + 24) = v172;
      *(v140 + 40) = v179;
      v141 = __swift_project_boxed_opaque_existential_1(v151, *(v151 + 3));
      MEMORY[0x1EEE9AC00](v141, v142);
      MEMORY[0x1EEE9AC00](v143, v144);
      *(&v151 - 4) = sub_1D615B4A4;
      *(&v151 - 3) = (&v151 - 6);
      v149 = sub_1D67088A8;
      v150 = v138;
      v145 = v173;
      v147 = sub_1D5D2F7A4(v137, sub_1D615B49C, v146, sub_1D615B4A4, (&v151 - 6));
      if (v145)
      {

        v115 = v154;
        v113 = v166;
      }

      else
      {
        v148 = v147;

        if ((v148 & 1) == 0)
        {

          sub_1D5F33D8C(v174);
          v115 = v154;
          v113 = v166;
          goto LABEL_47;
        }

        sub_1D5FB9DE8();
        v113 = v166;
        sub_1D72647EC();
        v115 = v154;
      }

      sub_1D5F33D8C(v174);
    }

    else
    {

      v113 = v166;
    }

LABEL_47:
    v114 = v115;
    goto LABEL_48;
  }

  sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);

  v61 = v51;
LABEL_6:
  v62 = v61;
  return sub_1D5D2CFE8(v62, sub_1D665E570);
}

uint64_t FormatSymbolImageFill.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D665E768();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665E7FC();
  sub_1D5B58B84(&qword_1EDF25298, sub_1D665E7FC);
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

  v13 = v26;
  v14 = v7;
  if (v12)
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

      v21 = sub_1D6627E68(0x6F6C6F436C6C6966, 0xE900000000000072, 0x6F436C6F626D7973, 0xEB00000000726F6CLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v18 = v29;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v24 = v29;
  *v13 = v18;
  v13[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolImageFill.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v76 - v8;
  sub_1D665E97C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v87 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D665E7FC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25298, sub_1D665E7FC);
  sub_1D5D2EE70(&type metadata for FormatSymbolImageFill, v19, v21, v16, &type metadata for FormatSymbolImageFill, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  sub_1D5B58478();
  v23 = *(v22 + 48);
  v86 = v22;
  v24 = &v9[*(v22 + 64)];
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD98);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v29 = v27 + 16;
  v82 = v26;
  v28(v9);
  if (qword_1EDF31F48 != -1)
  {
    swift_once();
  }

  v81 = __swift_project_value_buffer(v25, qword_1EDFFCE68);
  v28(&v9[v23]);
  v30 = type metadata accessor for FormatVersionRequirement.Value(0);
  *v24 = 0;
  *(v24 + 1) = 0;
  v80 = v30;
  swift_storeEnumTagMultiPayload();
  v97 = v15;
  v95 = 0uLL;
  v96 = 0;
  v31 = &v14[*(v11 + 44)];
  v91 = v9;
  v32 = *v31;
  v33 = *(v31 + 1);
  v94 = 0;
  v34 = swift_allocObject();
  v92 = v76;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v94;
  *(v34 + 40) = v32;
  *(v34 + 48) = v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v84 = v28;
  v76[-4] = sub_1D5B4AA6C;
  v76[-3] = 0;
  v74 = sub_1D67088AC;
  v75 = v36;
  v94 = 0;
  v37 = swift_allocObject();
  v83 = v29;
  v38 = v14;
  v39 = v37;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v94;
  v85 = v32;
  *(v37 + 40) = v32;
  *(v37 + 48) = v33;
  sub_1D665EA10();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF03268, sub_1D665EA10);
  swift_retain_n();
  v89 = v42;
  v90 = v41;
  v43 = sub_1D72647CC();
  v94 = 0;
  v44 = swift_allocObject();
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = v94;
  v45 = *(v11 + 36);
  v79 = v25;
  v46 = (v38 + v45);
  v47 = __swift_project_boxed_opaque_existential_1((v38 + v45), *(v38 + v45 + 24));
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v76[-4] = sub_1D615B4A4;
  v76[-3] = &v76[-6];
  v51 = v91;
  v74 = sub_1D665EAA4;
  v75 = v39;
  v52 = v93;
  sub_1D5D2BC70(v91, sub_1D615B49C, v53, sub_1D615B4A4, &v76[-6]);
  if (v52)
  {
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v77 = v46;
    v78 = v33;

    v54 = sub_1D5B55CBC();
    sub_1D72647EC();
    v76[1] = v54;
    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    v56 = *(v86 + 48);
    v57 = v88;
    v58 = &v88[*(v86 + 64)];
    v59 = v79;
    v60 = v84;
    (v84)(v88, v82, v79);
    v60(v57 + v56, v81, v59);
    *v58 = 0;
    *(v58 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v97 = v87;
    v93 = xmmword_1D728CF30;
    v95 = xmmword_1D728CF30;
    v96 = 0;
    v94 = 0;
    v61 = swift_allocObject();
    v92 = v76;
    *(v61 + 16) = v93;
    *(v61 + 32) = v94;
    v62 = v85;
    v63 = v78;
    *(v61 + 40) = v85;
    *(v61 + 48) = v63;
    MEMORY[0x1EEE9AC00](v61, v64);
    v76[-4] = sub_1D5B4AA6C;
    v76[-3] = 0;
    v74 = sub_1D67088AC;
    v75 = v65;
    v94 = 0;
    v66 = swift_allocObject();
    *(v66 + 16) = v93;
    *(v66 + 32) = v94;
    *(v66 + 40) = v62;
    *(v66 + 48) = v63;
    swift_retain_n();
    v67 = sub_1D72647CC();
    v94 = 0;
    v68 = swift_allocObject();
    *(v68 + 16) = v67;
    *(v68 + 24) = v93;
    *(v68 + 40) = v94;
    v69 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
    MEMORY[0x1EEE9AC00](v69, v70);
    MEMORY[0x1EEE9AC00](v71, v72);
    v76[-4] = sub_1D615B4A4;
    v76[-3] = &v76[-6];
    v74 = sub_1D67088AC;
    v75 = v66;
    sub_1D5D2BC70(v57, sub_1D615B49C, v73, sub_1D615B4A4, &v76[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v38, sub_1D665E97C);
}

uint64_t FormatSymbolImageColor.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
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
          *(v22 + 16) = &unk_1F50FBC90;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D665EB20();
    v32 = 0uLL;
    sub_1D726431C();
    if (v31 <= 1u)
    {
      v24 = v12;
      if (v31)
      {
        v32 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v29 = v31;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v25 = v30 | 0x4000000000000000;
      }

      else
      {
        sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
        v32 = xmmword_1D7279980;
        sub_1D5C4CBCC();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v26 = v31;
        v25 = swift_allocObject();
        *(v25 + 16) = v26;
      }
    }

    else
    {
      v24 = v12;
      if (v31 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xC000000000000000;
      }

      else if (v31 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v25 = 0xC000000000000008;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC886128, sub_1D5FB9D00, &type metadata for FormatSymbolImageColor, type metadata accessor for FormatSelectorValue);
        v31 = xmmword_1D7279980;
        sub_1D665EB74();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v27 = v32;
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v25 = v28 | 0x8000000000000000;
      }
    }

    *v24 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolImageColor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v55 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v55 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v55 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v55 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v56 = v25;
  sub_1D5D2EE70(&type metadata for FormatSymbolImageColor, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatSymbolImageColor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v28, v25, v29, &off_1F51F6B38);
  v31 = v26 >> 62;
  if ((v26 >> 62) <= 1)
  {
    if (v31)
    {
      v46 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = qword_1EDF31F48;

      v34 = v56;
      if (v47 != -1)
      {
        swift_once();
      }

      v48 = sub_1D725BD1C();
      v49 = __swift_project_value_buffer(v48, qword_1EDFFCE68);
      (*(*(v48 - 8) + 16))(v17, v49, v48);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6399098(1, v46, v17);

      v37 = v17;
    }

    else
    {
      v32 = *(v26 + 16);
      v33 = qword_1EDF31F48;

      v34 = v56;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE68);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6398ED8(0, v32, v21);

      v37 = v21;
    }

LABEL_21:
    sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v34, sub_1D5D30DC4);
  }

  if (v31 != 2)
  {
    v50 = v26 == 0xC000000000000000;
    v34 = v56;
    if (v50)
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v51 = sub_1D725BD1C();
      v52 = __swift_project_value_buffer(v51, qword_1EDFFCE68);
      (*(*(v51 - 8) + 16))(v13, v52, v51);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D65C(2, v13);
      v37 = v13;
    }

    else
    {
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCE68);
      (*(*(v53 - 8) + 16))(v9, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D65C(3, v9);
      v37 = v9;
    }

    goto LABEL_21;
  }

  v39 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v38 = *((v26 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5F33D5C(v39);
  v40 = qword_1EDF31F48;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCE68);
  v43 = v55;
  (*(*(v41 - 8) + 16))(v55, v42, v41);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v44 = v56;
  sub_1D639922C(4, v39, v38, v43);
  sub_1D5F33D8C(v39);

  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v44, sub_1D5D30DC4);
}

uint64_t FormatCompilerOptions.Newsroom.Environments.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v108 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  *&v115 = v100 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v100 - v11;
  sub_1D665EC04();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[3];
  v106 = v1[2];
  *&v109 = v20;
  v21 = v1[5];
  v101 = v1[4];
  v105 = v21;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5C4FF14();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF252F8, sub_1D5C4FF14);
  sub_1D5D2EE70(&type metadata for FormatCompilerOptions.Newsroom.Environments, v25, v27, v22, &type metadata for FormatCompilerOptions.Newsroom.Environments, v25, &type metadata for FormatVersions.JazzkonC, v23, v17, v26, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v113 = v29;
  v114 = v28;
  v111 = v30 + 16;
  v112 = v31;
  v31(v12);
  v110 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v120 = 0uLL;
  v121 = 0;
  v32 = &v17[*(v14 + 44)];
  v33 = v12;
  v35 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v118) = 0;
  v36 = swift_allocObject();
  v38 = v36;
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v118;
  *(v36 + 40) = v35;
  *(v36 + 48) = v34;
  v117 = v17;
  v107 = v14;
  v104 = v34;
  if (!v18)
  {

    sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);

    goto LABEL_10;
  }

  v102 = v100;
  v118 = v19;
  v119 = v18;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = v17;
  v103 = &v100[-6];
  v100[-4] = sub_1D5B4AA6C;
  v100[-3] = 0;
  v98 = sub_1D67088B0;
  v99 = v38;
  v122 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v122;
  *(v40 + 40) = v35;
  *(v40 + 48) = v34;
  sub_1D665EC98();
  v41 = v33;
  v42 = v14;
  v44 = v43;
  sub_1D5B58B84(&qword_1EDF03308, sub_1D665EC98);
  swift_retain_n();

  v100[1] = v44;
  v45 = sub_1D72647CC();
  v122 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v122;
  v47 = __swift_project_boxed_opaque_existential_1(&v39[*(v42 + 36)], *&v39[*(v42 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v51 = v103;
  v100[-4] = sub_1D615B4A4;
  v100[-3] = v51;
  v98 = sub_1D67088B0;
  v99 = v40;
  v103 = v41;
  v52 = v116;
  v54 = sub_1D5D2F7A4(v41, sub_1D615B49C, v53, sub_1D615B4A4, &v100[-6]);
  if (!v52)
  {
    v56 = v54;
    v57 = v107;

    if (v56)
    {
      sub_1D5FC67C8();
      sub_1D72647EC();
      v58 = v109;
      v116 = 0;

      sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
      v14 = v57;
      v34 = v104;
      goto LABEL_11;
    }

    v116 = 0;

    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
    v14 = v57;
    v34 = v104;
LABEL_10:
    v58 = v109;
LABEL_11:
    v59 = v115;
    v112(v115, v113, v114);
    swift_storeEnumTagMultiPayload();
    v109 = xmmword_1D728CF30;
    v120 = xmmword_1D728CF30;
    v121 = 0;
    LOBYTE(v118) = 0;
    v60 = swift_allocObject();
    v62 = v60;
    *(v60 + 16) = v109;
    *(v60 + 32) = v118;
    *(v60 + 40) = v35;
    *(v60 + 48) = v34;
    if (v58)
    {
      v103 = v100;
      v118 = v106;
      v119 = v58;
      MEMORY[0x1EEE9AC00](v60, v61);
      v100[-4] = sub_1D5B4AA6C;
      v100[-3] = 0;
      v98 = sub_1D67088B0;
      v99 = v62;
      v122 = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v109;
      *(v63 + 32) = v122;
      *(v63 + 40) = v35;
      *(v63 + 48) = v34;
      sub_1D665EC98();
      v65 = v64;
      sub_1D5B58B84(&qword_1EDF03308, sub_1D665EC98);
      swift_retain_n();

      v66 = v59;
      v67 = v117;
      v106 = v65;
      v68 = sub_1D72647CC();
      v122 = 0;
      v69 = swift_allocObject();
      v102 = v35;
      *(v69 + 16) = v68;
      *(v69 + 24) = v109;
      *(v69 + 40) = v122;
      v70 = __swift_project_boxed_opaque_existential_1((v67 + *(v14 + 36)), *(v67 + *(v14 + 36) + 24));
      MEMORY[0x1EEE9AC00](v70, v71);
      MEMORY[0x1EEE9AC00](v72, v73);
      v100[-4] = sub_1D615B4A4;
      v100[-3] = &v100[-6];
      v98 = sub_1D67088B0;
      v99 = v63;
      v74 = v116;
      v76 = sub_1D5D2F7A4(v66, sub_1D615B49C, v75, sub_1D615B4A4, &v100[-6]);
      v77 = v74;
      if (v74)
      {

        v78 = v115;
LABEL_21:

        v55 = v78;
        goto LABEL_22;
      }

      v79 = v76;
      v80 = v102;
      v34 = v104;

      if (v79)
      {
        sub_1D5FC67C8();
        sub_1D72647EC();
        v35 = v80;

        sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v115, type metadata accessor for FormatVersionRequirement);
        v35 = v80;
      }
    }

    else
    {

      sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

      v77 = v116;
    }

    v81 = v108;
    v112(v108, v113, v114);
    swift_storeEnumTagMultiPayload();
    v115 = xmmword_1D7297410;
    v120 = xmmword_1D7297410;
    v121 = 0;
    LOBYTE(v118) = 0;
    v82 = swift_allocObject();
    v84 = v82;
    *(v82 + 16) = v115;
    *(v82 + 32) = v118;
    *(v82 + 40) = v35;
    *(v82 + 48) = v34;
    if (!v105)
    {

      sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v117, sub_1D665EC04);
    }

    v114 = v100;
    v118 = v101;
    v119 = v105;
    MEMORY[0x1EEE9AC00](v82, v83);
    v116 = v77;
    v100[-4] = sub_1D5B4AA6C;
    v100[-3] = 0;
    v98 = sub_1D67088B0;
    v99 = v84;
    v122 = 0;
    v85 = swift_allocObject();
    *(v85 + 16) = v115;
    *(v85 + 32) = v122;
    *(v85 + 40) = v35;
    *(v85 + 48) = v34;
    sub_1D665EC98();
    sub_1D5B58B84(&qword_1EDF03308, sub_1D665EC98);
    swift_retain_n();

    v86 = v117;
    v87 = sub_1D72647CC();
    v122 = 0;
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v115;
    *(v88 + 40) = v122;
    v89 = __swift_project_boxed_opaque_existential_1((v86 + *(v107 + 36)), *(v86 + *(v107 + 36) + 24));
    MEMORY[0x1EEE9AC00](v89, v90);
    MEMORY[0x1EEE9AC00](v91, v92);
    v100[-4] = sub_1D615B4A4;
    v100[-3] = &v100[-6];
    v98 = sub_1D665ED2C;
    v99 = v85;
    v93 = v116;
    v95 = sub_1D5D2F7A4(v81, sub_1D615B49C, v94, sub_1D615B4A4, &v100[-6]);
    if (!v93)
    {
      v97 = v95;

      if (v97)
      {
        sub_1D5FC67C8();
        sub_1D72647EC();
      }

      v55 = v108;
      goto LABEL_22;
    }

    v78 = v108;
    goto LABEL_21;
  }

  v55 = v103;
LABEL_22:
  sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v117, sub_1D665EC04);
}

uint64_t FormatCompilerOptions.Newsroom.Environment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D665EDA8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C50108();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25308, sub_1D5C50108);
  sub_1D5D2EE70(&type metadata for FormatCompilerOptions.Newsroom.Environment, v17, v19, v14, &type metadata for FormatCompilerOptions.Newsroom.Environment, v17, &type metadata for FormatVersions.JazzkonC, v15, v11, v18, &off_1F51F6C78);
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
  v40 = sub_1D67088B4;
  v41 = v27;
  v46 = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v46;
  *(v28 + 40) = v24;
  *(v28 + 48) = v23;
  sub_1D665EE3C();
  v30 = v29;
  sub_1D5B58B84(&qword_1EDF03318, sub_1D665EE3C);
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
  v40 = sub_1D67088B4;
  v41 = v28;
  v37 = v42[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v38, sub_1D615B4A4, &v42[-6]);
  if (v37)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D665EDA8);
}

uint64_t FormatCompilerOptions.Newsroom.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v107 = &v98 - v6;
  v7 = sub_1D725B76C();
  v112 = *(v7 - 8);
  v113 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v108 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v111 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  *&v116 = &v98 - v15;
  sub_1D665EF34();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  sub_1D5C7CB68();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EDF25318, sub_1D5C7CB68);
  v105 = v23;
  sub_1D5D2EE70(v23, v25, v27, v21, v23, v25, &type metadata for FormatVersions.JazzkonC, v22, v20, v26, &off_1F51F6C78);
  v28 = *v2;
  v29 = v2[1];
  v30 = v2[2];
  v31 = v2[3];
  v32 = v2[5];
  v101 = v2[4];
  v106 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v109 = v33;
  v104 = v36;
  v103 = v35 + 16;
  v36(v116, v34, v33);
  v102 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v37 = &v20[*(v17 + 44)];
  v38 = *v37;
  v39 = *(v37 + 1);
  LOBYTE(v118) = 0;
  v40 = swift_allocObject();
  v42 = v17;
  v43 = v40;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v118;
  v114 = v38;
  v115 = v20;
  *(v40 + 40) = v38;
  *(v40 + 48) = v39;
  v110 = v42;
  if (v29 == 1)
  {

    sub_1D5D2CFE8(v116, type metadata accessor for FormatVersionRequirement);

    v44 = v117;
  }

  else
  {
    v100 = &v98;
    *&v118 = v28;
    *(&v118 + 1) = v29;
    v119 = v30;
    v120 = v31;
    v121 = v101;
    v122 = v32;
    MEMORY[0x1EEE9AC00](v40, v41);
    v99 = &v98 - 6;
    *(&v98 - 4) = sub_1D5B4AA6C;
    *(&v98 - 3) = 0;
    v96 = sub_1D67088B8;
    v97 = v43;
    v126 = 0;
    v60 = swift_allocObject();
    v61 = v39;
    v62 = v60;
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    *(v60 + 32) = v126;
    *(v60 + 40) = v114;
    *(v60 + 48) = v61;
    v98 = v61;
    swift_retain_n();
    sub_1D5E4B8D0(v28, v29);
    sub_1D665EFC8();
    sub_1D5B58B84(&qword_1EDF03328, sub_1D665EFC8);
    v63 = sub_1D72647CC();
    v126 = 0;
    v64 = swift_allocObject();
    *(v64 + 24) = 0;
    *(v64 + 32) = 0;
    *(v64 + 16) = v63;
    *(v64 + 40) = v126;
    v65 = __swift_project_boxed_opaque_existential_1(&v20[*(v110 + 36)], *&v20[*(v110 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v65, v66);
    MEMORY[0x1EEE9AC00](v67, v68);
    v69 = v99;
    *(&v98 - 4) = sub_1D615B4A4;
    *(&v98 - 3) = v69;
    v96 = sub_1D67088B8;
    v97 = v62;
    v70 = v116;
    v71 = v117;
    v73 = sub_1D5D2F7A4(v116, sub_1D615B49C, v72, sub_1D615B4A4, (&v98 - 6));
    v44 = v71;
    if (v71)
    {

      v74 = v70;
      goto LABEL_14;
    }

    v92 = v73;

    if (v92)
    {
      sub_1D5FC6610();
      sub_1D72647EC();

      v39 = v98;
      v45 = v109;
      sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
      goto LABEL_6;
    }

    sub_1D5D2CFE8(v70, type metadata accessor for FormatVersionRequirement);
    v39 = v98;
  }

  v45 = v109;
LABEL_6:
  v117 = v44;
  v46 = *(v105 + 20);
  sub_1D5B58478();
  v48 = *(v47 + 48);
  v49 = v111;
  v50 = &v111[*(v47 + 64)];
  v51 = v113;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v45, qword_1EDFFCD80);
  v53 = v104;
  v104(v49, v52, v45);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v54 = __swift_project_value_buffer(v45, qword_1EDFFCD68);
  v53(v49 + v48, v54, v45);
  *v50 = 0;
  *(v50 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v116 = xmmword_1D728CF30;
  v118 = xmmword_1D728CF30;
  LOBYTE(v119) = 0;
  LOBYTE(v123) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = v116;
  *(v55 + 32) = v123;
  v56 = v114;
  *(v55 + 40) = v114;
  *(v55 + 48) = v39;
  v57 = v107;
  sub_1D5CDE2EC(v106 + v46, v107, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v58 = v112;
  if ((*(v112 + 48))(v57, 1, v51) == 1)
  {

    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v115, sub_1D665EF34);
    return sub_1D5D35558(v57, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v76 = (*(v58 + 32))(v108, v57, v51);
  v109 = &v98;
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v98 - 4) = sub_1D5B4AA6C;
  *(&v98 - 3) = 0;
  v96 = sub_1D67088B8;
  v97 = v55;
  LOBYTE(v123) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v116;
  *(v78 + 32) = v123;
  *(v78 + 40) = v56;
  *(v78 + 48) = v39;
  sub_1D665EFC8();
  sub_1D5B58B84(&qword_1EDF03328, sub_1D665EFC8);
  swift_retain_n();
  v79 = v115;
  v80 = sub_1D72647CC();
  LOBYTE(v123) = 0;
  v81 = v49;
  v82 = swift_allocObject();
  *(v82 + 16) = v80;
  *(v82 + 24) = v116;
  *(v82 + 40) = v123;
  v83 = __swift_project_boxed_opaque_existential_1((v79 + *(v110 + 36)), *(v79 + *(v110 + 36) + 24));
  MEMORY[0x1EEE9AC00](v83, v84);
  MEMORY[0x1EEE9AC00](v85, v86);
  *(&v98 - 4) = sub_1D615B4A4;
  *(&v98 - 3) = (&v98 - 6);
  v96 = sub_1D665F05C;
  v97 = v78;
  v87 = v117;
  v89 = sub_1D5D2F7A4(v81, sub_1D615B49C, v88, sub_1D615B4A4, (&v98 - 6));
  if (v87)
  {

    v90 = v115;
    v91 = v111;
    (*(v112 + 8))(v108, v113);
LABEL_17:
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
    v75 = v90;
    return sub_1D5D2CFE8(v75, sub_1D665EF34);
  }

  v93 = v89;

  if (v93)
  {
    sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
    v94 = v108;
    v95 = v113;
    v90 = v115;
    sub_1D72647EC();
    v91 = v111;

    (*(v112 + 8))(v94, v95);
    goto LABEL_17;
  }

  (*(v112 + 8))(v108, v113);
  v74 = v111;
LABEL_14:
  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
  v75 = v115;
  return sub_1D5D2CFE8(v75, sub_1D665EF34);
}

uint64_t FormatCompilerOptions.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v157 = &v152 - v8;
  v9 = sub_1D725B76C();
  v160 = *(v9 - 8);
  v161 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v158 = &v152 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v162 = &v152 - v14;
  v156 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v156, v15);
  v168 = (&v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v155 = &v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v159 = &v152 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v166 = &v152 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v171 = &v152 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v152 - v31;
  sub_1D665F0D8();
  *&v174 = v33;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v152 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = type metadata accessor for FormatCompilerOptions(0);
  sub_1D5C4F794();
  v41 = v40;
  v42 = sub_1D5B58B84(&qword_1EDF25328, sub_1D5C4F794);
  v165 = v39;
  sub_1D5D2EE70(v39, v41, v43, v37, v39, v41, &type metadata for FormatVersions.JazzkonC, v38, v36, v42, &off_1F51F6C78);
  v44 = *v4;
  v45 = qword_1EDF31EB0;

  if (v45 != -1)
  {
    swift_once();
  }

  v46 = sub_1D725BD1C();
  v47 = __swift_project_value_buffer(v46, qword_1EDFFCD30);
  v48 = *(v46 - 8);
  v49 = *(v48 + 16);
  v50 = v48 + 16;
  *&v172 = v47;
  v49(v32);
  v51 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = *(v44 + 16);
  v163 = v49;
  v164 = v46;
  v169 = v50;
  v170 = v51;
  v167 = v4;
  if (v52)
  {
    v53 = v174;
    v54 = &v36[*(v174 + 44)];
    v55 = *v54;
    v56 = *(v54 + 1);
    LOBYTE(v175) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    *(v57 + 32) = v175;
    *(v57 + 40) = v55;
    *(v57 + 48) = v56;
    sub_1D665F16C();
    v59 = v58;
    v60 = sub_1D5B58B84(&qword_1EDF03338, sub_1D665F16C);

    v173 = v59;
    *&v154 = v60;
    v61 = sub_1D72647CC();
    LOBYTE(v175) = 0;
    v62 = swift_allocObject();
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 16) = v61;
    *(v62 + 40) = v175;
    v63 = __swift_project_boxed_opaque_existential_1(&v36[*(v53 + 36)], *&v36[*(v53 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v63, v64);
    MEMORY[0x1EEE9AC00](v65, v66);
    *(&v152 - 4) = sub_1D5B4AA6C;
    *(&v152 - 3) = 0;
    v150 = sub_1D665F200;
    v151 = v57;
    v68 = sub_1D5D2F7A4(v32, sub_1D615B49C, v67, sub_1D615B4A4, (&v152 - 6));
    if (v3)
    {
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v36, sub_1D665F0D8);
    }

    v69 = v68;

    if (v69)
    {
      v175 = 0uLL;
      v176 = 0;
      v177 = v44;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();
      v4 = v167;
      v173 = 0;

      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
      v49 = v163;
      v46 = v164;
    }

    else
    {
      v173 = 0;
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);

      v49 = v163;
      v46 = v164;
      v4 = v167;
    }
  }

  else
  {
    v173 = v3;
    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  }

  v70 = v4[1];
  v71 = v171;
  (v49)(v171, v172, v46);
  swift_storeEnumTagMultiPayload();
  v72 = v174;
  if (*(v70 + 16))
  {
    v73 = &v36[*(v174 + 44)];
    v74 = *v73;
    v75 = *(v73 + 1);
    LOBYTE(v175) = 0;
    v76 = swift_allocObject();
    v154 = xmmword_1D728CF30;
    *(v76 + 16) = xmmword_1D728CF30;
    *(v76 + 32) = v175;
    *(v76 + 40) = v74;
    *(v76 + 48) = v75;
    sub_1D665F16C();
    v78 = v77;
    sub_1D5B58B84(&qword_1EDF03338, sub_1D665F16C);

    v153 = v78;
    v79 = sub_1D72647CC();
    LOBYTE(v175) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v154;
    *(v80 + 40) = v175;
    v81 = __swift_project_boxed_opaque_existential_1(&v36[*(v72 + 36)], *&v36[*(v72 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v81, v82);
    MEMORY[0x1EEE9AC00](v83, v84);
    *(&v152 - 4) = sub_1D5B4AA6C;
    *(&v152 - 3) = 0;
    v150 = sub_1D67088BC;
    v151 = v76;
    v85 = v173;
    v87 = sub_1D5D2F7A4(v71, sub_1D615B49C, v86, sub_1D615B4A4, (&v152 - 6));
    if (v85)
    {
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v36, sub_1D665F0D8);
    }

    v88 = v87;

    if (v88)
    {
      v175 = v154;
      v176 = 0;
      v177 = v70;
      sub_1D5B5BF78(0, &qword_1EDF1AFD8, type metadata accessor for FormatCompilerSlotDefinition, MEMORY[0x1E69E62F8]);
      sub_1D665F2F0();
      sub_1D72647EC();
      v4 = v167;
      v89 = v168;
      v173 = 0;

      sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
      v49 = v163;
      v46 = v164;
      goto LABEL_18;
    }

    v173 = 0;
    sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);

    v49 = v163;
    v46 = v164;
    v4 = v167;
  }

  else
  {
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
  }

  v89 = v168;
LABEL_18:
  v91 = v162;
  sub_1D665F27C(v4 + *(v165 + 24), v162, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5C8F76C(v91, v89, type metadata accessor for FormatCompilerOptions.Newsroom);
  v92 = v166;
  (v49)(v166, v172, v46);
  swift_storeEnumTagMultiPayload();
  v93 = v174;
  v94 = &v36[*(v174 + 44)];
  v95 = v89;
  v96 = *v94;
  v97 = v94[1];
  LOBYTE(v175) = 0;
  v98 = swift_allocObject();
  v172 = xmmword_1D7297410;
  *(v98 + 16) = xmmword_1D7297410;
  *(v98 + 32) = v175;
  v171 = v96;
  *(v98 + 40) = v96;
  *(v98 + 48) = v97;
  sub_1D665F16C();
  v100 = v99;
  v101 = sub_1D5B58B84(&qword_1EDF03338, sub_1D665F16C);
  v153 = v97;

  v162 = v100;
  *&v154 = v101;
  v102 = sub_1D72647CC();
  LOBYTE(v175) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v172;
  *(v103 + 40) = v175;
  v104 = &v36[*(v93 + 36)];
  v105 = __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
  MEMORY[0x1EEE9AC00](v105, v106);
  MEMORY[0x1EEE9AC00](v107, v108);
  *(&v152 - 4) = sub_1D5B4AA6C;
  *(&v152 - 3) = 0;
  v150 = sub_1D67088BC;
  v151 = v98;
  v109 = v173;
  v111 = sub_1D5D2F7A4(v92, sub_1D615B49C, v110, sub_1D615B4A4, (&v152 - 6));
  v173 = v109;
  if (v109)
  {

    sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v95, type metadata accessor for FormatCompilerOptions.Newsroom);
    v112 = v36;
    return sub_1D5D2CFE8(v112, sub_1D665F0D8);
  }

  v113 = v111;
  v114 = v171;

  if (v113)
  {
    v175 = v172;
    v176 = 0;
    sub_1D5B58B84(&qword_1EDF0E3A8, type metadata accessor for FormatCompilerOptions.Newsroom);
    v115 = v168;
    v116 = v36;
    v117 = v173;
    sub_1D72647EC();
    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v115, type metadata accessor for FormatCompilerOptions.Newsroom);
    v173 = v117;
    v118 = v165;
    if (v117)
    {
      v112 = v36;
      return sub_1D5D2CFE8(v112, sub_1D665F0D8);
    }
  }

  else
  {
    sub_1D5D2CFE8(v166, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CFE8(v168, type metadata accessor for FormatCompilerOptions.Newsroom);
    v116 = v36;
    v118 = v165;
  }

  v119 = *(v118 + 28);
  v120 = v161;
  v121 = v159;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v122 = v164;
  v123 = __swift_project_value_buffer(v164, qword_1EDFFCD68);
  (v163)(v121, v123, v122);
  swift_storeEnumTagMultiPayload();
  v174 = xmmword_1D72BAA60;
  v175 = xmmword_1D72BAA60;
  v176 = 0;
  LOBYTE(v177) = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v174;
  *(v124 + 32) = v177;
  v125 = v153;
  *(v124 + 40) = v114;
  *(v124 + 48) = v125;
  v126 = v157;
  sub_1D5CDE2EC(v167 + v119, v157, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v127 = v160;
  v128 = (*(v160 + 48))(v126, 1, v120);
  v152 = v116;
  if (v128 == 1)
  {

    sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v126, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  else
  {
    v132 = (*(v127 + 32))(v158, v126, v120);
    *&v172 = &v152;
    MEMORY[0x1EEE9AC00](v132, v133);
    v168 = &v152 - 6;
    *(&v152 - 4) = sub_1D5B4AA6C;
    *(&v152 - 3) = 0;
    v150 = sub_1D67088BC;
    v151 = v124;
    LOBYTE(v177) = 0;
    v134 = swift_allocObject();
    *(v134 + 16) = v174;
    *(v134 + 32) = v177;
    *(v134 + 40) = v114;
    *(v134 + 48) = v125;
    swift_retain_n();
    v135 = sub_1D72647CC();
    LOBYTE(v177) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = v174;
    *(v136 + 40) = v177;
    v137 = __swift_project_boxed_opaque_existential_1(v104, *(v104 + 3));
    MEMORY[0x1EEE9AC00](v137, v138);
    MEMORY[0x1EEE9AC00](v139, v140);
    v141 = v168;
    *(&v152 - 4) = sub_1D615B4A4;
    *(&v152 - 3) = v141;
    v150 = sub_1D67088BC;
    v151 = v134;
    v142 = v173;
    v144 = sub_1D5D2F7A4(v121, sub_1D615B49C, v143, sub_1D615B4A4, (&v152 - 6));
    if (v142)
    {

      v145 = v159;
      (*(v160 + 8))(v158, v161);
      sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v152, sub_1D665F0D8);
    }

    v146 = v144;

    if (v146)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
      v147 = v158;
      v148 = v161;
      sub_1D72647EC();
      v149 = v160;

      (*(v149 + 8))(v147, v148);
    }

    else
    {

      (*(v160 + 8))(v158, v161);
    }

    sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);
  }

  v129 = v164;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v130 = __swift_project_value_buffer(v129, qword_1EDFFCE98);
  v131 = v155;
  (v163)(v155, v130, v129);
  sub_1D5D2CFE8(v152, sub_1D665F0D8);
  swift_storeEnumTagMultiPayload();
  return sub_1D5D2CFE8(v131, type metadata accessor for FormatVersionRequirement);
}

uint64_t FormatTagBinding.Color.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v124 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v123 = &v110 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v122 = &v110 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v121 = &v110 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v120 = &v110 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v119 = &v110 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v118 = &v110 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v117 = &v110 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v116 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v115 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v114 = &v110 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v113 = &v110 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v112 = &v110 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v110 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v111 = &v110 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v110 = &v110 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v110 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v110 - v58;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v63 = &v110 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *v1;
  v66 = a1[3];
  v65 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v66);
  v67 = sub_1D5C30408();
  v125 = v63;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Color, &type metadata for FormatCodingKeys, v68, v66, &type metadata for FormatTagBinding.Color, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v65, v63, v67, &off_1F51F6B18);
  switch(v64)
  {
    case 1:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD00);
      (*(*(v95 - 8) + 16))(v55, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v125;
      sub_1D64237C4(1, v55);
      v72 = v55;
      break;
    case 2:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v86 = sub_1D725BD1C();
      v87 = __swift_project_value_buffer(v86, qword_1EDFFCD00);
      v88 = v110;
      (*(*(v86 - 8) + 16))(v110, v87, v86);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v125;
      sub_1D64237C4(2, v88);
      v72 = v88;
      break;
    case 3:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCD00);
      v45 = v111;
      (*(*(v91 - 8) + 16))(v111, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 3;
      goto LABEL_56;
    case 4:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD00);
      (*(*(v80 - 8) + 16))(v45, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 4;
      goto LABEL_56;
    case 5:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD00);
      v45 = v112;
      (*(*(v99 - 8) + 16))(v112, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 5;
      goto LABEL_56;
    case 6:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v103 = sub_1D725BD1C();
      v104 = __swift_project_value_buffer(v103, qword_1EDFFCD00);
      v45 = v113;
      (*(*(v103 - 8) + 16))(v113, v104, v103);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 6;
      goto LABEL_56;
    case 7:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD00);
      v45 = v114;
      (*(*(v93 - 8) + 16))(v114, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 7;
      goto LABEL_56;
    case 8:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCDE0);
      v45 = v115;
      (*(*(v107 - 8) + 16))(v115, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 8;
      goto LABEL_56;
    case 9:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCDE0);
      v45 = v116;
      (*(*(v84 - 8) + 16))(v116, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 9;
      goto LABEL_56;
    case 10:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCDE0);
      v45 = v117;
      (*(*(v105 - 8) + 16))(v117, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 10;
      goto LABEL_56;
    case 11:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v78 = sub_1D725BD1C();
      v79 = __swift_project_value_buffer(v78, qword_1EDFFCD68);
      v45 = v118;
      (*(*(v78 - 8) + 16))(v118, v79, v78);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 11;
      goto LABEL_56;
    case 12:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCD68);
      v45 = v119;
      (*(*(v82 - 8) + 16))(v119, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 12;
      goto LABEL_56;
    case 13:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD68);
      v45 = v120;
      (*(*(v101 - 8) + 16))(v120, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 13;
      goto LABEL_56;
    case 14:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD68);
      v45 = v121;
      (*(*(v76 - 8) + 16))(v121, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 14;
      goto LABEL_56;
    case 15:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD68);
      v45 = v122;
      (*(*(v89 - 8) + 16))(v122, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 15;
      goto LABEL_56;
    case 16:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v73 = sub_1D725BD1C();
      v74 = __swift_project_value_buffer(v73, qword_1EDFFCD68);
      v45 = v123;
      (*(*(v73 - 8) + 16))(v123, v74, v73);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 16;
      goto LABEL_56;
    case 17:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD68);
      v45 = v124;
      (*(*(v97 - 8) + 16))(v124, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v75 = 17;
LABEL_56:
      v71 = v125;
      sub_1D64237C4(v75, v45);
      v72 = v45;
      break;
    default:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v69 = sub_1D725BD1C();
      v70 = __swift_project_value_buffer(v69, qword_1EDFFCD00);
      (*(*(v69 - 8) + 16))(v59, v70, v69);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v71 = v125;
      sub_1D64237C4(0, v59);
      v72 = v59;
      break;
  }

  sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v71, sub_1D5D30DC4);
}

uint64_t FormatBreakpointNode.encode(to:)(void *a1)
{
  v3 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  *&v158 = &v142 - v6;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v144 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v147 = &v142 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v148 = &v142 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v157 = &v142 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v142 - v21;
  sub_1D665F960();
  v181 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D665FA88();
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EC886168, sub_1D665FA88);
  v156 = v26;
  v32 = v26;
  v33 = v1;
  sub_1D5D2EE70(v3, v30, v34, v27, v3, v30, &type metadata for FormatVersions.Dawnburst, v28, v32, v31, &off_1F51F6CF8);
  swift_beginAccess();
  v36 = v1[2];
  v35 = v1[3];
  v37 = qword_1EDF31E80;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCCA8);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v155 = v40 + 16;
  v41(v22, v39, v38);
  v154 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v42 = v158;
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  v149 = v38;
  v151 = v41;
  v152 = v39;
  v153 = v33;
  if (v44 == 1)
  {
    v150 = v36;
    sub_1D5D35558(v158, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v45 = v181;
    v46 = v156;
    v47 = &v156[*(v181 + 11)];
    v48 = v22;
    v50 = *v47;
    v49 = *(v47 + 1);
    LOBYTE(v170) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v170;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D665F9F4();
    v53 = v52;
    v54 = sub_1D5B58B84(&qword_1EC886170, sub_1D665F9F4);

    *&v158 = v53;
    v146 = v54;
    v55 = sub_1D72647CC();
    LOBYTE(v170) = 0;
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 16) = v55;
    *(v56 + 40) = v170;
    v57 = __swift_project_boxed_opaque_existential_1((v46 + *(v45 + 9)), *(v46 + *(v45 + 9) + 24));
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v142 - 4) = sub_1D5B4AA6C;
    *(&v142 - 3) = 0;
    v140 = sub_1D665FC08;
    v141 = v51;
    v61 = v159;
    v63 = sub_1D5D2F7A4(v48, sub_1D615B49C, v62, sub_1D615B4A4, (&v142 - 6));
    *&v159 = v61;
    if (v61)
    {
      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v46, sub_1D665F960);
    }

    v88 = v63;

    v33 = v153;
    if (v88)
    {
      v170 = 0uLL;
      LOBYTE(v171) = 0;
      *&v163 = v150;
      *(&v163 + 1) = v35;
      v65 = v156;
      v89 = v159;
      sub_1D72647EC();

      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
      v41 = v151;
      v39 = v152;
      if (v89)
      {
        goto LABEL_14;
      }

      *&v159 = 0;
      v38 = v149;
    }

    else
    {
      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

      v65 = v156;
      v38 = v149;
      v41 = v151;
      v39 = v152;
    }
  }

  else
  {
    sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v158, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v65 = v156;
  }

  v66 = v33[4];
  v41(v157, v39, v38);
  swift_storeEnumTagMultiPayload();
  *&v163 = v66;
  v158 = xmmword_1D728CF30;
  v170 = xmmword_1D728CF30;
  LOBYTE(v171) = 0;
  v67 = (v65 + *(v181 + 11));
  v68 = *v67;
  v69 = v67[1];
  LOBYTE(v177) = 0;
  v70 = swift_allocObject();
  v150 = &v142;
  *(v70 + 16) = v158;
  *(v70 + 32) = v177;
  *(v70 + 40) = v68;
  *(v70 + 48) = v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  *(&v142 - 4) = sub_1D5B4AA6C;
  *(&v142 - 3) = 0;
  v140 = sub_1D67088C0;
  v141 = v72;
  LOBYTE(v177) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = v158;
  *(v73 + 32) = v177;
  v143 = v68;
  *(v73 + 40) = v68;
  *(v73 + 48) = v69;
  sub_1D665F9F4();
  v75 = v74;
  v76 = sub_1D5B58B84(&qword_1EC886170, sub_1D665F9F4);
  v142 = v69;
  swift_retain_n();
  v145 = v76;
  v146 = v75;
  v77 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = v158;
  *(v78 + 40) = v177;
  v79 = (v65 + *(v181 + 9));
  v80 = __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  MEMORY[0x1EEE9AC00](v80, v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  *(&v142 - 4) = sub_1D615B4A4;
  *(&v142 - 3) = (&v142 - 6);
  v84 = v157;
  v140 = sub_1D67088C0;
  v141 = v73;
  v85 = v159;
  sub_1D5D2BC70(v157, sub_1D615B49C, v86, sub_1D615B4A4, (&v142 - 6));
  if (v85)
  {
    sub_1D5D2CFE8(v84, type metadata accessor for FormatVersionRequirement);

LABEL_14:
    v121 = v65;
    return sub_1D5D2CFE8(v121, sub_1D665F960);
  }

  *&v158 = v79;
  v87 = v153;

  sub_1D72647EC();
  sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);

  v90 = v87[5];
  v91 = v148;
  v151(v148, v152, v149);
  swift_storeEnumTagMultiPayload();
  *&v163 = v90;
  v159 = xmmword_1D7297410;
  v170 = xmmword_1D7297410;
  LOBYTE(v171) = 0;
  LOBYTE(v177) = 0;
  v92 = swift_allocObject();
  v181 = &v142;
  *(v92 + 16) = v159;
  *(v92 + 32) = v177;
  v93 = v142;
  v94 = v143;
  *(v92 + 40) = v143;
  *(v92 + 48) = v93;
  MEMORY[0x1EEE9AC00](v92, v95);
  *(&v142 - 4) = sub_1D5B4AA6C;
  *(&v142 - 3) = 0;
  v140 = sub_1D67088C0;
  v141 = v96;
  LOBYTE(v177) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = v159;
  *(v97 + 32) = v177;
  *(v97 + 40) = v94;
  *(v97 + 48) = v93;
  swift_retain_n();
  v98 = sub_1D72647CC();
  LOBYTE(v177) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v159;
  *(v99 + 40) = v177;
  v100 = __swift_project_boxed_opaque_existential_1(v158, *(v158 + 24));
  MEMORY[0x1EEE9AC00](v100, v101);
  MEMORY[0x1EEE9AC00](v102, v103);
  *(&v142 - 4) = sub_1D615B4A4;
  *(&v142 - 3) = (&v142 - 6);
  v140 = sub_1D67088C0;
  v141 = v97;
  sub_1D5D2BC70(v91, sub_1D615B49C, v104, sub_1D615B4A4, (&v142 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

  v105 = v153[6];
  v106 = v153[7];
  v151(v147, v152, v149);
  swift_storeEnumTagMultiPayload();
  v179 = v105;
  v180 = v106;
  v159 = xmmword_1D72BAA60;
  v177 = xmmword_1D72BAA60;
  v178 = 0;
  LOBYTE(v170) = 0;
  v107 = swift_allocObject();
  v181 = &v142;
  *(v107 + 16) = v159;
  *(v107 + 32) = v170;
  v109 = v142;
  v108 = v143;
  *(v107 + 40) = v143;
  *(v107 + 48) = v109;
  MEMORY[0x1EEE9AC00](v107, v110);
  *(&v142 - 4) = sub_1D5B4AA6C;
  *(&v142 - 3) = 0;
  v140 = sub_1D67088C0;
  v141 = v111;
  LOBYTE(v170) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = v159;
  *(v112 + 32) = v170;
  *(v112 + 40) = v108;
  *(v112 + 48) = v109;
  swift_retain_n();
  v113 = sub_1D72647CC();
  LOBYTE(v170) = 0;
  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = v159;
  *(v114 + 40) = v170;
  v115 = __swift_project_boxed_opaque_existential_1(v158, *(v158 + 24));
  MEMORY[0x1EEE9AC00](v115, v116);
  MEMORY[0x1EEE9AC00](v117, v118);
  *(&v142 - 4) = sub_1D615B4A4;
  *(&v142 - 3) = (&v142 - 6);
  v119 = v147;
  v140 = sub_1D67088C0;
  v141 = v112;
  sub_1D5D2BC70(v147, sub_1D615B49C, v120, sub_1D615B4A4, (&v142 - 6));

  sub_1D72647EC();
  sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

  v122 = *(v153 + 9);
  v174 = *(v153 + 8);
  v175 = v122;
  v176 = v153[20];
  v123 = *(v153 + 5);
  v170 = *(v153 + 4);
  v171 = v123;
  v124 = *(v153 + 7);
  v172 = *(v153 + 6);
  v173 = v124;
  v125 = v109;
  v126 = v144;
  v151(v144, v152, v149);
  swift_storeEnumTagMultiPayload();
  v167 = v174;
  v168 = v175;
  v169 = v176;
  v163 = v170;
  v164 = v171;
  v165 = v172;
  v166 = v173;
  v159 = xmmword_1D72BAA70;
  v161 = xmmword_1D72BAA70;
  v162 = 0;
  v160 = 0;
  v127 = swift_allocObject();
  v181 = &v142;
  *(v127 + 16) = v159;
  *(v127 + 32) = v160;
  v128 = v143;
  *(v127 + 40) = v143;
  *(v127 + 48) = v125;
  MEMORY[0x1EEE9AC00](v127, v129);
  *(&v142 - 4) = sub_1D5B4AA6C;
  *(&v142 - 3) = 0;
  v140 = sub_1D67088C0;
  v141 = v130;
  v160 = 0;
  v131 = swift_allocObject();
  *(v131 + 16) = v159;
  *(v131 + 32) = v160;
  *(v131 + 40) = v128;
  *(v131 + 48) = v125;
  swift_retain_n();
  v132 = sub_1D72647CC();
  v160 = 0;
  v133 = swift_allocObject();
  *(v133 + 16) = v132;
  *(v133 + 24) = v159;
  *(v133 + 40) = v160;
  v134 = __swift_project_boxed_opaque_existential_1(v158, *(v158 + 24));
  MEMORY[0x1EEE9AC00](v134, v135);
  MEMORY[0x1EEE9AC00](v136, v137);
  *(&v142 - 4) = sub_1D615B4A4;
  *(&v142 - 3) = (&v142 - 6);
  v140 = sub_1D67088C0;
  v141 = v131;
  sub_1D5D2BC70(v126, sub_1D615B49C, v138, sub_1D615B4A4, (&v142 - 6));

  sub_1D5C50B48();
  v139 = v156;
  sub_1D72647EC();
  sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

  v121 = v139;
  return sub_1D5D2CFE8(v121, sub_1D665F960);
}

uint64_t FormatTextNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v124 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v123 = &v109 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v122 = &v109 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v121 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v118 = &v109 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v117 = &v109 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v116 = &v109 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v115 = &v109 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v114 = &v109 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v119 = &v109 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v120 = &v109 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v113 = &v109 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v112 = &v109 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v111 = &v109 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v110 = &v109 - v47;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v51 = &v109 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v1 + 8);
  v127 = *v1;
  v126 = v52;
  v53 = *(v1 + 24);
  v125 = *(v1 + 16);
  v55 = *(v1 + 32);
  v54 = *(v1 + 40);
  v56 = *(v1 + 48);
  v57 = *(v1 + 49);
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  v60 = sub_1D5C30408();
  v151 = v51;
  sub_1D5D2EE70(&type metadata for FormatTextNodeBinding, &type metadata for FormatCodingKeys, v61, v58, &type metadata for FormatTextNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v59, v51, v60, &off_1F51F6C78);
  switch((2 * v57) | ((v56 & 8) != 0))
  {
    case 1:
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v90 = sub_1D725BD1C();
      v91 = __swift_project_value_buffer(v90, qword_1EDFFCD98);
      v64 = v111;
      (*(*(v90 - 8) + 16))(v111, v91, v90);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639D9AC(1, v127, v64);
      goto LABEL_32;
    case 2:
      *&v134 = v127;
      *(&v134 + 1) = v126;
      v135 = v125;
      v136 = v53;
      v137 = v55;
      v138 = v54;
      v139 = v56;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD30);
      v64 = v112;
      (*(*(v84 - 8) + 16))(v112, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639DB40(2, &v134, v64);
      goto LABEL_32;
    case 3:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v86 = sub_1D725BD1C();
      v87 = __swift_project_value_buffer(v86, qword_1EDFFCD30);
      v64 = v113;
      (*(*(v86 - 8) + 16))(v113, v87, v86);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639DCE8(3, v127, v126, v125, v64);
      goto LABEL_32;
    case 4:
      sub_1D5B58478();
      v73 = *(v72 + 48);
      v74 = v120;
      v75 = &v120[*(v72 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
      v78 = *(*(v76 - 8) + 16);
      v78(v74, v77, v76);
      v78(v74 + v73, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v75 = 0;
      *(v75 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639DCE8(4, v127, v126, v125, v74);
      v79 = v74;
      break;
    case 5:
      sub_1D5B58478();
      v93 = *(v92 + 48);
      v94 = v119;
      v95 = &v119[*(v92 + 64)];
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v96 = sub_1D725BD1C();
      v97 = __swift_project_value_buffer(v96, qword_1EDFFCD18);
      v98 = *(*(v96 - 8) + 16);
      v98(v94, v97, v96);
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v99 = __swift_project_value_buffer(v96, qword_1EDFFCCE8);
      v98(v94 + v93, v99, v96);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v95 = 0;
      *(v95 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639DE80(5, v127, v94);
      v79 = v94;
      break;
    case 6:
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v102 = sub_1D725BD1C();
      v103 = __swift_project_value_buffer(v102, qword_1EDFFCD98);
      v69 = v114;
      (*(*(v102 - 8) + 16))(v114, v103, v102);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E014(6, v127, v69);
      goto LABEL_50;
    case 7:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCDE0);
      v69 = v115;
      (*(*(v88 - 8) + 16))(v115, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E1A8(7, v127, v69);
      goto LABEL_50;
    case 8:
      *&v140 = v127;
      *(&v140 + 1) = v126;
      v141 = v125;
      v142 = v53;
      v143 = v55;
      v144 = v54;
      v145 = v56;
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v106 = sub_1D725BD1C();
      v107 = __swift_project_value_buffer(v106, qword_1EDFFCCA8);
      v69 = v116;
      (*(*(v106 - 8) + 16))(v116, v107, v106);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E33C(8, &v140, v69);
      goto LABEL_50;
    case 9:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCCA8);
      v69 = v117;
      (*(*(v82 - 8) + 16))(v117, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E4E4(9, v127, v126 & 1, v69);
      goto LABEL_50;
    case 10:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v104 = sub_1D725BD1C();
      v105 = __swift_project_value_buffer(v104, qword_1EDFFCE80);
      v69 = v118;
      (*(*(v104 - 8) + 16))(v118, v105, v104);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E680(10, v127, v69);
      goto LABEL_50;
    case 11:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
      v69 = v121;
      (*(*(v70 - 8) + 16))(v121, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E814(11, v127 & 1, v69);
      goto LABEL_50;
    case 12:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD68);
      v69 = v122;
      (*(*(v80 - 8) + 16))(v122, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639E9AC(12, v127, v126, v69);
      goto LABEL_50;
    case 13:
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCE68);
      v69 = v123;
      (*(*(v100 - 8) + 16))(v123, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639EB44(13, v127, v69);
      goto LABEL_50;
    case 14:
      *&v146 = v127;
      *(&v146 + 1) = v126;
      v147 = v125;
      v148 = v53;
      v149 = v55;
      v150 = v54;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCE38);
      v68 = v124;
      (*(*(v66 - 8) + 16))(v124, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v69 = v68;
      v65 = v151;
      sub_1D639ECD8(14, &v146, v68);
LABEL_50:
      v79 = v69;
      break;
    default:
      *&v128 = v127;
      *(&v128 + 1) = v126;
      v129 = v125;
      v130 = v53;
      v131 = v55;
      v132 = v54;
      v133 = v56;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
      v64 = v110;
      (*(*(v62 - 8) + 16))(v110, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v65 = v151;
      sub_1D639D804(0, &v128, v64);
LABEL_32:
      v79 = v64;
      break;
  }

  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v65, sub_1D5D30DC4);
}

uint64_t FormatRemoteFont.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D665FF78();
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666000C();
  sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v32;
  v14 = v9;
  if (v12)
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

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D66146B4();
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v37 = 0uLL;
  v38 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v31 = v18;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5CA2FA0();
  sub_1D726431C();
  v26 = v35;
  v30 = xmmword_1D7297410;
  v37 = xmmword_1D7297410;
  v38 = 0;
  v27 = 16.0;
  if (sub_1D726434C())
  {
    v35 = v30;
    v36 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v27 = v33;
  }

  v30 = xmmword_1D72BAA60;
  v37 = xmmword_1D72BAA60;
  v38 = 0;
  if (sub_1D726434C())
  {
    v35 = v30;
    v36 = 0;
    sub_1D5CA8B24();
    sub_1D726431C();
    (*(v13 + 8))(v9, v6);
    v28 = v33;
    v29 = v34;
  }

  else
  {
    (*(v13 + 8))(v9, v6);
    v28 = 0.0;
    v29 = 3072;
  }

  *a2 = v31;
  *(a2 + 8) = v20;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatRemoteFont.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v105 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v104 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v100 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v100 - v14;
  sub_1D666018C();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = *(v1 + 8);
  v106 = *(v1 + 16);
  v23 = *(v1 + 24);
  v102 = *(v1 + 32);
  v103 = *(v1 + 40);
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D666000C();
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C);
  sub_1D5D2EE70(&type metadata for FormatRemoteFont, v27, v29, v24, &type metadata for FormatRemoteFont, v27, &type metadata for FormatVersions.JazzkonC, v25, v20, v28, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v108 = v30;
  v109 = v31;
  v111 = v32 + 16;
  v112 = v33;
  (v33)(v15);
  v110 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v122 = v21;
  v123 = v22;
  v120 = 0uLL;
  v121 = 0;
  v34 = &v20[*(v17 + 44)];
  v35 = *v34;
  v36 = *(v34 + 1);
  v119 = 0;
  v37 = swift_allocObject();
  v116 = &v100;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v119;
  *(v37 + 40) = v35;
  *(v37 + 48) = v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v100 - 4) = sub_1D5B4AA6C;
  *(&v100 - 3) = 0;
  v98 = sub_1D67088C4;
  v99 = v39;
  v119 = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v119;
  v107 = v35;
  *(v40 + 40) = v35;
  *(v40 + 48) = v36;
  sub_1D6660220();
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EDF03738, sub_1D6660220);
  swift_retain_n();
  v114 = v42;
  v115 = v43;
  v44 = sub_1D72647CC();
  v119 = 0;
  v45 = swift_allocObject();
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = v119;
  v46 = *(v17 + 36);
  v47 = v15;
  v117 = v20;
  v48 = &v20[v46];
  v49 = __swift_project_boxed_opaque_existential_1(&v20[v46], *&v20[v46 + 24]);
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  *(&v100 - 4) = sub_1D615B4A4;
  *(&v100 - 3) = (&v100 - 6);
  v98 = sub_1D67088C4;
  v99 = v40;
  v53 = v118;
  sub_1D5D2BC70(v47, sub_1D615B49C, v54, sub_1D615B4A4, (&v100 - 6));
  if (v53)
  {
    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

    v55 = v117;
    return sub_1D5D2CFE8(v55, sub_1D666018C);
  }

  v100 = v48;
  v101 = v36;

  v55 = v117;
  sub_1D72647EC();
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

  v56 = v113;
  v112(v113, v109, v108);
  swift_storeEnumTagMultiPayload();
  v122 = v106;
  v118 = xmmword_1D728CF30;
  v120 = xmmword_1D728CF30;
  v121 = 0;
  v119 = 0;
  v57 = swift_allocObject();
  v116 = &v100;
  *(v57 + 16) = v118;
  *(v57 + 32) = v119;
  v58 = v107;
  v59 = v101;
  *(v57 + 40) = v107;
  *(v57 + 48) = v59;
  MEMORY[0x1EEE9AC00](v57, v60);
  v106 = 0.0;
  *(&v100 - 4) = sub_1D5B4AA6C;
  *(&v100 - 3) = 0;
  v98 = sub_1D67088C4;
  v99 = v61;
  v119 = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = v118;
  *(v62 + 32) = v119;
  *(v62 + 40) = v58;
  *(v62 + 48) = v59;
  swift_retain_n();
  v63 = sub_1D72647CC();
  v119 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v118;
  *(v64 + 40) = v119;
  v65 = __swift_project_boxed_opaque_existential_1(v100, *(v100 + 3));
  MEMORY[0x1EEE9AC00](v65, v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  *(&v100 - 4) = sub_1D615B4A4;
  *(&v100 - 3) = (&v100 - 6);
  v98 = sub_1D67088C4;
  v99 = v62;
  v69 = v106;
  sub_1D5D2BC70(v56, sub_1D615B49C, v70, sub_1D615B4A4, (&v100 - 6));
  if (v69 != 0.0)
  {
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v55, sub_1D666018C);
  }

  sub_1D60B27FC();
  sub_1D72647EC();
  sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);

  v71 = v104;
  v72 = v108;
  v73 = v109;
  v112(v104, v109, v108);
  swift_storeEnumTagMultiPayload();
  if (v23 == 16.0)
  {
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    v74 = v105;
LABEL_9:
    v75 = v101;
    v76 = v107;
    goto LABEL_10;
  }

  LOBYTE(v120) = 0;
  v78 = swift_allocObject();
  v118 = xmmword_1D7297410;
  *(v78 + 16) = xmmword_1D7297410;
  *(v78 + 32) = v120;
  *(v78 + 40) = v107;
  *(v78 + 48) = v101;

  v79 = sub_1D72647CC();
  LOBYTE(v120) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v118;
  *(v80 + 40) = v120;
  v81 = __swift_project_boxed_opaque_existential_1(v100, *(v100 + 3));
  MEMORY[0x1EEE9AC00](v81, v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  *(&v100 - 4) = sub_1D5B4AA6C;
  *(&v100 - 3) = 0;
  v98 = sub_1D66602B4;
  v99 = v78;
  v86 = sub_1D5D2F7A4(v71, sub_1D615B49C, v85, sub_1D615B4A4, (&v100 - 6));
  v74 = v105;
  v96 = v86;

  if (v96)
  {
    v120 = v118;
    v121 = 0;
    v122 = v23;
    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
    v73 = v109;
    v72 = v108;
    goto LABEL_9;
  }

  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
  v76 = v107;
  v72 = v108;
  v75 = v101;
  v73 = v109;
LABEL_10:
  v112(v74, v73, v72);
  swift_storeEnumTagMultiPayload();
  if ((v103 & 0xFF00) != 0xC00)
  {
    LOBYTE(v120) = 0;
    v87 = swift_allocObject();
    v118 = xmmword_1D72BAA60;
    *(v87 + 16) = xmmword_1D72BAA60;
    *(v87 + 32) = v120;
    *(v87 + 40) = v76;
    *(v87 + 48) = v75;

    v88 = sub_1D72647CC();
    LOBYTE(v120) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = v88;
    *(v89 + 24) = v118;
    *(v89 + 40) = v120;
    v90 = __swift_project_boxed_opaque_existential_1(v100, *(v100 + 3));
    MEMORY[0x1EEE9AC00](v90, v91);
    MEMORY[0x1EEE9AC00](v92, v93);
    *(&v100 - 4) = sub_1D5B4AA6C;
    *(&v100 - 3) = 0;
    v98 = sub_1D67088C4;
    v99 = v87;
    v95 = sub_1D5D2F7A4(v74, sub_1D615B49C, v94, sub_1D615B4A4, (&v100 - 6));
    v97 = v95;

    if (v97)
    {
      v120 = v118;
      v121 = 0;
      v122 = v102;
      LOWORD(v123) = v103;
      sub_1D5FC8148();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v55, sub_1D666018C);
}

uint64_t FormatImageTransform.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
          *(v21 + 16) = &unk_1F50FC158;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6660330();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28)
    {
      if (v28 == 1)
      {
        (*(v11 + 8))(v10, v6);
        v23 = 0;
      }

      else
      {
        (*(v11 + 8))(v10, v6);
        v23 = 1;
      }

      v24 = 1;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D6660384();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v24 = 0;
      v23 = v28;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageTransform.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatImageTransform, &type metadata for FormatCodingKeys, v24, v21, &type metadata for FormatImageTransform, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v22, v18, v23, &off_1F51F6C98);
  if (v20 == 1)
  {
    if (v19 == 0.0)
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v30 = sub_1D725BD1C();
      v31 = __swift_project_value_buffer(v30, qword_1EDFFCE38);
      (*(*(v30 - 8) + 16))(v10, v31, v30);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420468(1, v10);
      v27 = v10;
    }

    else
    {
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v25 = sub_1D725BD1C();
      v26 = __swift_project_value_buffer(v25, qword_1EDFFCE38);
      (*(*(v25 - 8) + 16))(v6, v26, v25);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6420468(2, v6);
      v27 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v28 = sub_1D725BD1C();
    v29 = __swift_project_value_buffer(v28, qword_1EDFFCE38);
    (*(*(v28 - 8) + 16))(v14, v29, v28);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A3188(0, v14, v19);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatGroupNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v306 = &v284 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v287 = &v284 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v288 = &v284 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v290 = &v284 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v291 = &v284 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v292 = &v284 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v293 = &v284 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v294 = &v284 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v295 = &v284 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v307 = &v284 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v284 - v37;
  sub_1D6660E78();
  v304 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v284 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D6660FA0();
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF253E8, sub_1D6660FA0);
  v308 = v42;
  sub_1D5D2EE70(v4, v46, v48, v43, v4, v46, &type metadata for FormatVersions.StarSky, v44, v42, v47, &off_1F51F6CD8);
  swift_beginAccess();
  v303 = v2;
  v50 = v2[2];
  v49 = v2[3];
  v51 = qword_1EDF31ED0;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD50);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v302 = v53;
  v55(v38);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v306;
  v297 = v50;
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v61 = v49;
  v62 = v38;
  v298 = v55;
  v299 = v52;
  v300 = v56;
  v301 = v57;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v83 = v307;
    goto LABEL_9;
  }

  v296 = v61;
  sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v63 = v304;
  v64 = v308;
  v65 = &v308[*(v304 + 11)];
  v67 = *v65;
  v66 = *(v65 + 1);
  LOBYTE(v344) = 0;
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = v344;
  *(v68 + 40) = v67;
  *(v68 + 48) = v66;
  sub_1D6660F0C();
  v70 = v69;
  v71 = sub_1D5B58B84(&qword_1EDF03418, sub_1D6660F0C);

  *&v306 = v70;
  v72 = sub_1D72647CC();
  LOBYTE(v344) = 0;
  v73 = swift_allocObject();
  *(v73 + 24) = 0;
  *(v73 + 32) = 0;
  *(v73 + 16) = v72;
  *(v73 + 40) = v344;
  v74 = __swift_project_boxed_opaque_existential_1((v64 + *(v63 + 9)), *(v64 + *(v63 + 9) + 24));
  MEMORY[0x1EEE9AC00](v74, v75);
  MEMORY[0x1EEE9AC00](v76, v77);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D6661120;
  v283 = v68;
  v78 = v305;
  v80 = sub_1D5D2F7A4(v62, sub_1D615B49C, v79, sub_1D615B4A4, (&v284 - 6));
  if (v78)
  {
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v81 = v64;
    return sub_1D5D2CFE8(v81, sub_1D6660E78);
  }

  v109 = v80;
  v305 = v71;

  if ((v109 & 1) == 0)
  {
    v305 = 0;
    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);

    v55 = v298;
    v52 = v299;
    goto LABEL_8;
  }

  v344 = 0uLL;
  LOBYTE(v345) = 0;
  *&v333 = v297;
  *(&v333 + 1) = v296;
  sub_1D72647EC();

  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
  v83 = v307;
  v305 = 0;
  v55 = v298;
  v52 = v299;
LABEL_9:
  v84 = v303[4];
  v85 = v303[5];
  (v55)(v83, v302, v52);
  swift_storeEnumTagMultiPayload();
  *&v333 = v84;
  *(&v333 + 1) = v85;
  v306 = xmmword_1D728CF30;
  v344 = xmmword_1D728CF30;
  LOBYTE(v345) = 0;
  v86 = v304;
  v87 = v308;
  v88 = &v308[*(v304 + 11)];
  v90 = *v88;
  v89 = *(v88 + 1);
  LOBYTE(v320) = 0;
  v91 = swift_allocObject();
  v297 = &v284;
  *(v91 + 16) = v306;
  *(v91 + 32) = v320;
  *(v91 + 40) = v90;
  *(v91 + 48) = v89;
  MEMORY[0x1EEE9AC00](v91, v92);
  v296 = &v284 - 6;
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088C8;
  v283 = v93;
  LOBYTE(v320) = 0;
  v94 = swift_allocObject();
  *(v94 + 16) = v306;
  *(v94 + 32) = v320;
  v286 = v90;
  *(v94 + 40) = v90;
  *(v94 + 48) = v89;
  sub_1D6660F0C();
  v96 = v95;
  v97 = sub_1D5B58B84(&qword_1EDF03418, sub_1D6660F0C);
  v285 = v89;
  swift_retain_n();
  v289 = v97;
  v98 = sub_1D72647CC();
  LOBYTE(v320) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v306;
  *(v99 + 40) = v320;
  v100 = &v87[*(v86 + 9)];
  v101 = __swift_project_boxed_opaque_existential_1(v100, *(v100 + 3));
  MEMORY[0x1EEE9AC00](v101, v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  v105 = v296;
  *(&v284 - 4) = sub_1D615B4A4;
  *(&v284 - 3) = v105;
  v282 = sub_1D67088C8;
  v283 = v94;
  v106 = v307;
  v107 = v305;
  sub_1D5D2BC70(v307, sub_1D615B49C, v108, sub_1D615B4A4, (&v284 - 6));
  if (v107)
  {
    sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);

    v81 = v308;
    return sub_1D5D2CFE8(v81, sub_1D6660E78);
  }

  *&v306 = v100;

  sub_1D72647EC();
  v110 = v96;
  sub_1D5D2CFE8(v307, type metadata accessor for FormatVersionRequirement);

  v111 = v303;
  swift_beginAccess();
  v112 = v111[6];
  v113 = v295;
  v114 = v302;
  (v298)(v295, v302, v299);
  swift_storeEnumTagMultiPayload();
  v115 = *(v112 + 16);
  v284 = v110;
  if (v115)
  {
    LOBYTE(v344) = 0;
    v116 = swift_allocObject();
    v307 = xmmword_1D7297410;
    *(v116 + 16) = xmmword_1D7297410;
    *(v116 + 32) = v344;
    *(v116 + 40) = v286;
    *(v116 + 48) = v285;

    v117 = sub_1D72647CC();
    LOBYTE(v344) = 0;
    v118 = swift_allocObject();
    *(v118 + 16) = v117;
    *(v118 + 24) = v307;
    *(v118 + 40) = v344;
    v119 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
    MEMORY[0x1EEE9AC00](v119, v120);
    MEMORY[0x1EEE9AC00](v121, v122);
    *(&v284 - 4) = sub_1D5B4AA6C;
    *(&v284 - 3) = 0;
    v282 = sub_1D67088C8;
    v283 = v116;
    v124 = sub_1D5D2F7A4(v113, sub_1D615B49C, v123, sub_1D615B4A4, (&v284 - 6));
    v125 = v124;

    if (v125)
    {
      v344 = v307;
      LOBYTE(v345) = 0;
      *&v333 = v112;
      sub_1D5C34D84(0, &qword_1EC886190, &type metadata for FormatGroupNodeStyle.Selector, MEMORY[0x1E69E62F8]);
      sub_1D6661348();
      sub_1D72647EC();
      v114 = v302;
      v111 = v303;
      v126 = v285;
      v127 = v294;
      v305 = 0;

      sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);
      goto LABEL_22;
    }

    v305 = 0;
    sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);

    v114 = v302;
    v111 = v303;
  }

  else
  {
    v305 = 0;
    sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
  }

  v126 = v285;
  v127 = v294;
LABEL_22:
  v128 = v111[7];
  v129 = v114;
  v131 = v298;
  v130 = v299;
  (v298)(v127, v129, v299);
  swift_storeEnumTagMultiPayload();
  v307 = xmmword_1D72BAA60;
  v344 = xmmword_1D72BAA60;
  LOBYTE(v345) = 0;
  LOBYTE(v333) = 0;
  v132 = swift_allocObject();
  v134 = v132;
  *(v132 + 16) = v307;
  *(v132 + 32) = v333;
  v135 = v286;
  *(v132 + 40) = v286;
  *(v132 + 48) = v126;
  if (!v128)
  {

    sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

    v147 = v302;
    v148 = v303;
    v149 = v293;
    v150 = v126;
    goto LABEL_29;
  }

  v304 = &v284;
  *&v333 = v128;
  MEMORY[0x1EEE9AC00](v132, v133);
  *(&v284 - 4) = sub_1D5B4AA6C;
  *(&v284 - 3) = 0;
  v282 = sub_1D67088C8;
  v283 = v134;
  LOBYTE(v320) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = v307;
  *(v136 + 32) = v320;
  *(v136 + 40) = v135;
  *(v136 + 48) = v126;
  swift_retain_n();

  v137 = sub_1D72647CC();
  LOBYTE(v320) = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v307;
  *(v138 + 40) = v320;
  v139 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
  MEMORY[0x1EEE9AC00](v139, v140);
  MEMORY[0x1EEE9AC00](v141, v142);
  *(&v284 - 4) = sub_1D615B4A4;
  *(&v284 - 3) = (&v284 - 6);
  v282 = sub_1D67088C8;
  v283 = v136;
  v143 = v305;
  v145 = sub_1D5D2F7A4(v127, sub_1D615B49C, v144, sub_1D615B4A4, (&v284 - 6));
  if (!v143)
  {
    v151 = v145;

    if (v151)
    {
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();
      sub_1D72647EC();
      v150 = v285;
      v148 = v303;
      v149 = v293;
      v305 = 0;
      v152 = v302;

      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
      v147 = v152;
      v131 = v298;
      v130 = v299;
    }

    else
    {
      v305 = 0;

      sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
      v131 = v298;
      v130 = v299;
      v150 = v285;
      v147 = v302;
      v148 = v303;
      v149 = v293;
    }

LABEL_29:
    v153 = v148[8];
    v131(v149, v147, v130);
    swift_storeEnumTagMultiPayload();
    v307 = xmmword_1D72BAA70;
    v344 = xmmword_1D72BAA70;
    LOBYTE(v345) = 0;
    LOBYTE(v333) = 0;
    v154 = swift_allocObject();
    v156 = v154;
    *(v154 + 16) = v307;
    *(v154 + 32) = v333;
    v157 = v286;
    *(v154 + 40) = v286;
    *(v154 + 48) = v150;
    if (v153)
    {
      v304 = &v284;
      *&v333 = v153;
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v284 - 4) = sub_1D5B4AA6C;
      *(&v284 - 3) = 0;
      v282 = sub_1D67088C8;
      v283 = v156;
      LOBYTE(v320) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v307;
      *(v158 + 32) = v320;
      *(v158 + 40) = v157;
      *(v158 + 48) = v150;
      swift_retain_n();

      v159 = sub_1D72647CC();
      LOBYTE(v320) = 0;
      v160 = swift_allocObject();
      *(v160 + 16) = v159;
      *(v160 + 24) = v307;
      *(v160 + 40) = v320;
      v161 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
      MEMORY[0x1EEE9AC00](v161, v162);
      MEMORY[0x1EEE9AC00](v163, v164);
      *(&v284 - 4) = sub_1D615B4A4;
      *(&v284 - 3) = (&v284 - 6);
      v282 = sub_1D67088C8;
      v283 = v158;
      v165 = v305;
      v167 = sub_1D5D2F7A4(v293, sub_1D615B49C, v166, sub_1D615B4A4, (&v284 - 6));
      if (v165)
      {

        v168 = v308;
        sub_1D5D2CFE8(v293, type metadata accessor for FormatVersionRequirement);
        v81 = v168;
        return sub_1D5D2CFE8(v81, sub_1D6660E78);
      }

      v169 = v167;

      if (v169)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v170 = v293;
        v305 = 0;

        v171 = v170;
      }

      else
      {
        v305 = 0;

        v171 = v293;
      }

      sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
      v131 = v298;
      v130 = v299;
    }

    else
    {

      sub_1D5D2CFE8(v149, type metadata accessor for FormatVersionRequirement);
    }

    v172 = v303[9];
    v304 = v303[10];
    v173 = *(v303 + 88);
    v174 = v292;
    v131(v292, v302, v130);
    swift_storeEnumTagMultiPayload();
    v307 = xmmword_1D72BAA80;
    v366 = xmmword_1D72BAA80;
    v367 = 0;
    LOBYTE(v344) = 0;
    v175 = swift_allocObject();
    v177 = v175;
    *(v175 + 16) = v307;
    *(v175 + 32) = v344;
    v178 = v286;
    *(v175 + 40) = v286;
    *(v175 + 48) = v150;
    if (v173 <= 0xFD)
    {
      v297 = &v284;
      v187 = v172;
      v363 = v172;
      v188 = v304;
      v364 = v304;
      v365 = v173;
      MEMORY[0x1EEE9AC00](v175, v176);
      v296 = &v284 - 6;
      *(&v284 - 4) = sub_1D5B4AA6C;
      *(&v284 - 3) = 0;
      v282 = sub_1D67088C8;
      v283 = v177;
      LOBYTE(v344) = 0;
      v189 = swift_allocObject();
      *(v189 + 16) = v307;
      *(v189 + 32) = v344;
      *(v189 + 40) = v178;
      *(v189 + 48) = v150;
      swift_retain_n();
      sub_1D5ED34B0(v187, v188, v173);
      v190 = sub_1D72647CC();
      LOBYTE(v344) = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      *(v191 + 24) = v307;
      *(v191 + 40) = v344;
      v192 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
      MEMORY[0x1EEE9AC00](v192, v193);
      MEMORY[0x1EEE9AC00](v194, v195);
      v196 = v296;
      *(&v284 - 4) = sub_1D615B4A4;
      *(&v284 - 3) = v196;
      v282 = sub_1D67088C8;
      v283 = v189;
      v197 = v305;
      v199 = sub_1D5D2F7A4(v292, sub_1D615B49C, v198, sub_1D615B4A4, (&v284 - 6));
      if (v197)
      {

        v200 = v308;
        v201 = v292;
        sub_1D5ED34A0(v363, v364, v365);
        goto LABEL_43;
      }

      v213 = v199;

      if (v213)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v214 = v292;
        v305 = 0;

        sub_1D5ED34A0(v363, v364, v365);
        sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v305 = 0;

        sub_1D5ED34A0(v363, v364, v365);
        sub_1D5D2CFE8(v292, type metadata accessor for FormatVersionRequirement);
      }

      v131 = v298;
      v130 = v299;
    }

    else
    {

      sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);
    }

    v179 = *(v303 + 8);
    v360 = *(v303 + 9);
    v361 = *(v303 + 10);
    v362 = *(v303 + 176);
    v180 = *(v303 + 7);
    v357 = *(v303 + 6);
    v358 = v180;
    v359 = v179;
    v181 = v291;
    v131(v291, v302, v130);
    swift_storeEnumTagMultiPayload();
    v307 = xmmword_1D72BAA90;
    v320 = xmmword_1D72BAA90;
    LOBYTE(v321) = 0;
    LOBYTE(v344) = 0;
    v182 = swift_allocObject();
    v184 = v182;
    *(v182 + 16) = v307;
    *(v182 + 32) = v344;
    v185 = v286;
    *(v182 + 40) = v286;
    *(v182 + 48) = v150;
    if (v362 == 254)
    {

      v186 = v150;
    }

    else
    {
      v304 = &v284;
      v346 = v359;
      v347 = v360;
      v348 = v361;
      LOBYTE(v349) = v362;
      v344 = v357;
      v345 = v358;
      MEMORY[0x1EEE9AC00](v182, v183);
      *(&v284 - 4) = sub_1D5B4AA6C;
      *(&v284 - 3) = 0;
      v282 = sub_1D67088C8;
      v283 = v184;
      LOBYTE(v333) = 0;
      v203 = swift_allocObject();
      *(v203 + 16) = v307;
      *(v203 + 32) = v333;
      *(v203 + 40) = v185;
      *(v203 + 48) = v150;
      swift_retain_n();
      sub_1D5D355B8(&v357, &v333, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v204 = sub_1D72647CC();
      LOBYTE(v333) = 0;
      v205 = swift_allocObject();
      *(v205 + 16) = v204;
      *(v205 + 24) = v307;
      *(v205 + 40) = v333;
      v206 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
      MEMORY[0x1EEE9AC00](v206, v207);
      MEMORY[0x1EEE9AC00](v208, v209);
      *(&v284 - 4) = sub_1D615B4A4;
      *(&v284 - 3) = (&v284 - 6);
      v282 = sub_1D67088C8;
      v283 = v203;
      v210 = v305;
      sub_1D5D2F7A4(v181, sub_1D615B49C, v211, sub_1D615B4A4, (&v284 - 6));
      if (v210)
      {

        v335 = v346;
        v336 = v347;
        v337 = v348;
        LOBYTE(v338) = v349;
        v333 = v344;
        v334 = v345;
        sub_1D601144C(&v333);
        v212 = v308;
        sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);
        v81 = v212;
        return sub_1D5D2CFE8(v81, sub_1D6660E78);
      }

      sub_1D6661204();
      sub_1D72647EC();
      v305 = 0;

      v335 = v346;
      v336 = v347;
      v337 = v348;
      LOBYTE(v338) = v349;
      v333 = v344;
      v334 = v345;
      sub_1D601144C(&v333);
      v131 = v298;
      v130 = v299;
      v186 = v285;
      v181 = v291;
    }

    sub_1D5D2CFE8(v181, type metadata accessor for FormatVersionRequirement);
    v215 = *(v303 + 177);
    v216 = v290;
    v131(v290, v302, v130);
    swift_storeEnumTagMultiPayload();
    v307 = xmmword_1D72BAAA0;
    v344 = xmmword_1D72BAAA0;
    LOBYTE(v345) = 0;
    LOBYTE(v333) = 0;
    v217 = swift_allocObject();
    v219 = v217;
    *(v217 + 16) = v307;
    *(v217 + 32) = v333;
    v220 = v286;
    *(v217 + 40) = v286;
    *(v217 + 48) = v186;
    if (v215 == 2)
    {

      v221 = v305;
      v222 = v216;
    }

    else
    {
      v304 = &v284;
      LOBYTE(v333) = v215 & 1;
      MEMORY[0x1EEE9AC00](v217, v218);
      *(&v284 - 4) = sub_1D5B4AA6C;
      *(&v284 - 3) = 0;
      v282 = sub_1D67088C8;
      v283 = v219;
      LOBYTE(v320) = 0;
      v235 = swift_allocObject();
      *(v235 + 16) = v307;
      *(v235 + 32) = v320;
      *(v235 + 40) = v220;
      *(v235 + 48) = v186;
      swift_retain_n();
      v236 = sub_1D72647CC();
      LOBYTE(v320) = 0;
      v237 = swift_allocObject();
      *(v237 + 16) = v236;
      *(v237 + 24) = v307;
      *(v237 + 40) = v320;
      v238 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
      MEMORY[0x1EEE9AC00](v238, v239);
      MEMORY[0x1EEE9AC00](v240, v241);
      *(&v284 - 4) = sub_1D615B4A4;
      *(&v284 - 3) = (&v284 - 6);
      v282 = sub_1D67088C8;
      v283 = v235;
      v242 = v305;
      v244 = sub_1D5D2F7A4(v216, sub_1D615B49C, v243, sub_1D615B4A4, (&v284 - 6));
      v221 = v242;
      if (v242)
      {
        sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);

        v81 = v308;
        return sub_1D5D2CFE8(v81, sub_1D6660E78);
      }

      v255 = v244;

      if (v255)
      {
        sub_1D72647EC();
        v223 = v303;
        v222 = v290;
LABEL_55:
        v224 = v221;
        sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);

        v225 = *(v223 + 178);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v226 = v299;
        v227 = __swift_project_value_buffer(v299, qword_1EDFFCDE0);
        v228 = v288;
        (v298)(v288, v227, v226);
        swift_storeEnumTagMultiPayload();
        v307 = xmmword_1D72BAAB0;
        v355 = xmmword_1D72BAAB0;
        v356 = 0;
        LOBYTE(v344) = 0;
        v229 = swift_allocObject();
        v231 = v229;
        *(v229 + 16) = v307;
        *(v229 + 32) = v344;
        v233 = v285;
        v232 = v286;
        *(v229 + 40) = v286;
        *(v229 + 48) = v233;
        if (v225 == 2)
        {

          v234 = v228;
        }

        else
        {
          v304 = &v284;
          v368 = v225 & 1;
          MEMORY[0x1EEE9AC00](v229, v230);
          v305 = v221;
          *(&v284 - 4) = sub_1D5B4AA6C;
          *(&v284 - 3) = 0;
          v282 = sub_1D67088C8;
          v283 = v231;
          LOBYTE(v344) = 0;
          v245 = swift_allocObject();
          *(v245 + 16) = v307;
          *(v245 + 32) = v344;
          *(v245 + 40) = v232;
          *(v245 + 48) = v233;
          swift_retain_n();
          v246 = sub_1D72647CC();
          LOBYTE(v344) = 0;
          v247 = swift_allocObject();
          *(v247 + 16) = v246;
          *(v247 + 24) = v307;
          *(v247 + 40) = v344;
          v248 = __swift_project_boxed_opaque_existential_1(v306, *(v306 + 24));
          MEMORY[0x1EEE9AC00](v248, v249);
          MEMORY[0x1EEE9AC00](v250, v251);
          *(&v284 - 4) = sub_1D615B4A4;
          *(&v284 - 3) = (&v284 - 6);
          v282 = sub_1D67088C8;
          v283 = v245;
          v252 = v305;
          v254 = sub_1D5D2F7A4(v228, sub_1D615B49C, v253, sub_1D615B4A4, (&v284 - 6));
          v224 = v252;
          if (v252)
          {
            sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);

            v81 = v308;
            return sub_1D5D2CFE8(v81, sub_1D6660E78);
          }

          v256 = v254;

          if (v256)
          {
            sub_1D72647EC();
            v224 = 0;
          }

          v234 = v288;
          v233 = v285;
        }

        v257 = v306;
        sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);

        v258 = *(v303 + 37);
        v259 = *(v303 + 41);
        v341 = *(v303 + 39);
        v342 = v259;
        v343 = *(v303 + 172);
        v260 = *(v303 + 33);
        v261 = *(v303 + 35);
        v337 = *(v303 + 31);
        v338 = v260;
        v262 = *(v303 + 29);
        v339 = v261;
        v340 = v258;
        v263 = *(v303 + 25);
        v333 = *(v303 + 23);
        v334 = v263;
        v335 = *(v303 + 27);
        v336 = v262;
        v201 = v287;
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v264 = v299;
        v265 = __swift_project_value_buffer(v299, qword_1EDFFCE38);
        (v298)(v201, v265, v264);
        swift_storeEnumTagMultiPayload();
        v307 = xmmword_1D72BAAC0;
        v331 = xmmword_1D72BAAC0;
        v332 = 0;
        LOBYTE(v320) = 0;
        v266 = swift_allocObject();
        *(v266 + 16) = v307;
        *(v266 + 32) = v320;
        v267 = v286;
        *(v266 + 40) = v286;
        *(v266 + 48) = v233;
        v352 = v341;
        v353 = v342;
        v354 = v343;
        v348 = v337;
        v349 = v338;
        v350 = v339;
        v351 = v340;
        v344 = v333;
        v345 = v334;
        v346 = v335;
        v347 = v336;
        v268 = sub_1D60081E0(&v344);
        if (v268 == 1)
        {

          v200 = v308;
        }

        else
        {
          *&v306 = &v284;
          v330 = v343;
          v328 = v341;
          v329 = v342;
          v324 = v337;
          v325 = v338;
          v326 = v339;
          v327 = v340;
          v320 = v333;
          v321 = v334;
          v322 = v335;
          v323 = v336;
          MEMORY[0x1EEE9AC00](v268, v269);
          v305 = v224;
          *(&v284 - 4) = sub_1D5B4AA6C;
          *(&v284 - 3) = 0;
          v282 = sub_1D67088C8;
          v283 = v266;
          LOBYTE(v309) = 0;
          v270 = swift_allocObject();
          *(v270 + 16) = v307;
          *(v270 + 32) = v309;
          *(v270 + 40) = v267;
          *(v270 + 48) = v233;
          swift_retain_n();
          sub_1D5D355B8(&v333, &v309, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
          v271 = v201;
          v272 = sub_1D72647CC();
          LOBYTE(v309) = 0;
          v273 = swift_allocObject();
          *(v273 + 16) = v272;
          *(v273 + 24) = v307;
          *(v273 + 40) = v309;
          v274 = __swift_project_boxed_opaque_existential_1(v257, v257[3]);
          MEMORY[0x1EEE9AC00](v274, v275);
          MEMORY[0x1EEE9AC00](v276, v277);
          *(&v284 - 4) = sub_1D615B4A4;
          *(&v284 - 3) = (&v284 - 6);
          v282 = sub_1D67088C8;
          v283 = v270;
          v278 = v305;
          v280 = sub_1D5D2F7A4(v271, sub_1D615B49C, v279, sub_1D615B4A4, (&v284 - 6));
          if (v278)
          {

            v317 = v328;
            v318 = v329;
            v319 = v330;
            v313 = v324;
            v314 = v325;
            v315 = v326;
            v316 = v327;
            v309 = v320;
            v310 = v321;
            v311 = v322;
            v312 = v323;
            sub_1D60113F8(&v309);
            v200 = v308;
            v202 = v287;
            goto LABEL_44;
          }

          v281 = v280;

          if (v281)
          {
            sub_1D66611B0();
            v200 = v308;
            sub_1D72647EC();

            v317 = v328;
            v318 = v329;
            v319 = v330;
            v313 = v324;
            v314 = v325;
            v315 = v326;
            v316 = v327;
            v309 = v320;
            v310 = v321;
            v311 = v322;
            v312 = v323;
            sub_1D60113F8(&v309);
          }

          else
          {

            v317 = v328;
            v318 = v329;
            v319 = v330;
            v313 = v324;
            v314 = v325;
            v315 = v326;
            v316 = v327;
            v309 = v320;
            v310 = v321;
            v311 = v322;
            v312 = v323;
            sub_1D60113F8(&v309);
            v200 = v308;
          }

          v201 = v287;
        }

LABEL_43:
        v202 = v201;
LABEL_44:
        sub_1D5D2CFE8(v202, type metadata accessor for FormatVersionRequirement);
        v81 = v200;
        return sub_1D5D2CFE8(v81, sub_1D6660E78);
      }

      v222 = v290;
    }

    v223 = v303;
    goto LABEL_55;
  }

  v146 = v308;

  sub_1D5D2CFE8(v294, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v146, sub_1D6660E78);
}

uint64_t FormatGroupNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  sub_1D66613E4();
  v6 = v5;
  v80 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6661478();
  sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v39 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v10 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v11 = sub_1D7264AFC();
  LOBYTE(v10) = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v12 = v6;
  v13 = v80;
  v14 = v9;
  if (v10)
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

      v21 = sub_1D6614B3C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v9, v12);
      a1 = v48;
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v55 = 0uLL;
  LOBYTE(v56) = 0;
  sub_1D726431C();
  v18 = v74;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v55 = xmmword_1D728CF30;
  LOBYTE(v56) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v47 = v18;
  v24 = v6;
  v25 = v74;
  v74 = xmmword_1D7297410;
  LOBYTE(v75) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v45 = *(&v55 + 1);
  v26 = v55;
  v46 = v56;
  v72 = xmmword_1D72BAA60;
  v73 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v43 = v25;
  v44 = v26;
  v68 = v76;
  v69 = v77;
  v70 = v78;
  v71 = v79;
  v66 = v74;
  v67 = v75;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v55 = xmmword_1D72BAA70;
  LOBYTE(v56) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v42 = v53;
  v55 = xmmword_1D72BAA80;
  LOBYTE(v56) = 0;
  v27 = sub_1D726423C();
  v28 = v45;
  v41 = v27;
  v55 = xmmword_1D72BAA90;
  LOBYTE(v56) = 0;
  v40 = sub_1D726423C();
  v53 = xmmword_1D72BAAA0;
  v54 = 0;
  sub_1D6661658();
  sub_1D726427C();
  v29 = (v13 + 8);
  v30 = v28;
  v31 = v44;
  (*v29)(v14, v24);
  *&v51[39] = v68;
  *&v51[55] = v69;
  *&v51[71] = v70;
  v51[87] = v71;
  *&v51[7] = v66;
  *&v51[23] = v67;
  *&v50[150] = v64;
  *&v50[134] = v63;
  *&v50[118] = v62;
  *&v50[102] = v61;
  *&v50[86] = v60;
  *&v50[70] = v59;
  *&v50[54] = v58;
  *&v50[6] = v55;
  *&v50[22] = v56;
  *&v50[38] = v57;
  v32 = v49;
  *(v49 + 73) = *&v51[32];
  *(v32 + 89) = *&v51[48];
  *(v32 + 105) = *&v51[64];
  *(v32 + 41) = *v51;
  *(v32 + 57) = *&v51[16];
  v33 = *&v50[48];
  *(v32 + 178) = *&v50[32];
  v34 = *v50;
  *(v32 + 162) = *&v50[16];
  *(v32 + 146) = v34;
  v35 = *&v50[112];
  *(v32 + 242) = *&v50[96];
  v36 = *&v50[64];
  *(v32 + 226) = *&v50[80];
  *(v32 + 210) = v36;
  *(v32 + 194) = v33;
  v37 = *&v50[128];
  *(v32 + 290) = *&v50[144];
  *&v50[166] = v65;
  *v32 = v47;
  *(v32 + 8) = *(&v18 + 1);
  *(v32 + 16) = v43;
  *(v32 + 24) = v31;
  *(v32 + 32) = v30;
  *(v32 + 40) = v46;
  *(v32 + 121) = *&v51[80];
  v38 = *v52;
  *(v32 + 132) = *&v52[3];
  *(v32 + 129) = v38;
  *(v32 + 136) = v42;
  LOBYTE(v38) = v40;
  *(v32 + 144) = v41;
  *(v32 + 145) = v38;
  *(v32 + 306) = *&v50[160];
  *(v32 + 258) = v35;
  *(v32 + 274) = v37;
  v39 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t FormatGroupNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v223 = &v211 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v216 = &v211 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v218 = &v211 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v220 = &v211 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v224 = &v211 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v225 = &v211 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v226 = (&v211 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v211 - v26;
  sub_1D66616AC();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v211 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 8);
  *&v239 = *v1;
  v34 = *(v1 + 24);
  v230 = *(v1 + 16);
  v221 = *(v1 + 32);
  v222 = v34;
  v299 = *(v1 + 40);
  v35 = *(v1 + 96);
  v284 = *(v1 + 80);
  v285 = v35;
  v286 = *(v1 + 112);
  v287 = *(v1 + 128);
  v36 = *(v1 + 64);
  v282 = *(v1 + 48);
  v283 = v36;
  v219 = *(v1 + 136);
  v217 = *(v1 + 144);
  v215 = *(v1 + 145);
  v298 = *(v1 + 312);
  v37 = *(v1 + 296);
  v38 = *(v1 + 264);
  v296 = *(v1 + 280);
  v297 = v37;
  v294 = *(v1 + 248);
  v295 = v38;
  v39 = *(v1 + 232);
  v292 = *(v1 + 216);
  v293 = v39;
  v40 = *(v1 + 200);
  v290 = *(v1 + 184);
  v291 = v40;
  v41 = *(v1 + 168);
  v288 = *(v1 + 152);
  v289 = v41;
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D6661478();
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478);
  sub_1D5D2EE70(&type metadata for FormatGroupNodeStyle.Selector, v45, v47, v42, &type metadata for FormatGroupNodeStyle.Selector, v45, &type metadata for FormatVersions.StarSky, v43, v32, v46, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v48 = sub_1D725BD1C();
  v49 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
  v50 = *(v48 - 8);
  v51 = *(v50 + 16);
  v233 = v49;
  v228 = v48;
  v229 = v51;
  v231 = v50 + 16;
  (v51)(v27);
  v232 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v251 = v239;
  *(&v251 + 1) = v33;
  v264 = 0uLL;
  LOBYTE(v265) = 0;
  v52 = &v32[*(v29 + 44)];
  v54 = *v52;
  v53 = *(v52 + 1);
  *&v239 = v27;
  LOBYTE(v240) = 0;
  v55 = swift_allocObject();
  v237 = &v211;
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v240;
  *(v55 + 40) = v54;
  *(v55 + 48) = v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v211 - 4) = sub_1D5B4AA6C;
  *(&v211 - 3) = 0;
  v209 = sub_1D67088CC;
  v210 = v57;
  LOBYTE(v240) = 0;
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = v240;
  v234 = v54;
  *(v58 + 40) = v54;
  *(v58 + 48) = v53;
  sub_1D6661740();
  v60 = v59;
  v61 = sub_1D5B58B84(&qword_1EC8861E0, sub_1D6661740);
  v227 = v53;
  swift_retain_n();
  v235 = v60;
  v236 = v61;
  v62 = sub_1D72647CC();
  LOBYTE(v240) = 0;
  v63 = swift_allocObject();
  *(v63 + 24) = 0;
  *(v63 + 32) = 0;
  *(v63 + 16) = v62;
  *(v63 + 40) = v240;
  v64 = v32;
  v65 = &v32[*(v29 + 36)];
  v66 = __swift_project_boxed_opaque_existential_1(v65, *(v65 + 3));
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  *(&v211 - 4) = sub_1D615B4A4;
  *(&v211 - 3) = (&v211 - 6);
  v209 = sub_1D67088CC;
  v210 = v58;
  v70 = v238;
  v71 = v239;
  sub_1D5D2BC70(v239, sub_1D615B49C, v72, sub_1D615B4A4, (&v211 - 6));
  if (!v70)
  {
    v238 = v65;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v237 = 0;
    v214 = v64;
    sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);

    v75 = v226;
    v76 = v228;
    v77 = v229;
    v229(v226, v233, v228);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D728CF30;
    v264 = xmmword_1D728CF30;
    LOBYTE(v265) = 0;
    LOBYTE(v251) = 0;
    v78 = swift_allocObject();
    v80 = v78;
    *(v78 + 16) = v239;
    *(v78 + 32) = v251;
    v81 = v234;
    v82 = v227;
    *(v78 + 40) = v234;
    *(v78 + 48) = v82;
    if (v230)
    {
      v213 = &v211;
      *&v251 = v230;
      MEMORY[0x1EEE9AC00](v78, v79);
      v212 = &v211 - 6;
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v80;
      LOBYTE(v240) = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = v239;
      *(v83 + 32) = v240;
      *(v83 + 40) = v81;
      *(v83 + 48) = v82;
      swift_retain_n();

      v84 = sub_1D72647CC();
      LOBYTE(v240) = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v85 + 24) = v239;
      *(v85 + 40) = v240;
      v86 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v86, v87);
      MEMORY[0x1EEE9AC00](v88, v89);
      v90 = v212;
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = v90;
      v209 = sub_1D67088CC;
      v210 = v83;
      v91 = v237;
      v93 = sub_1D5D2F7A4(v75, sub_1D615B49C, v92, sub_1D615B4A4, (&v211 - 6));
      v94 = v75;
      if (v91)
      {

        v95 = v214;
LABEL_21:
        sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
LABEL_49:
        v73 = v95;
        return sub_1D5D2CFE8(v73, sub_1D66616AC);
      }

      v96 = v93;

      if (v96)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v76 = v228;
        v77 = v229;
        v237 = 0;

        sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);
        v82 = v227;
      }

      else
      {
        v237 = 0;

        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
        v82 = v227;
        v76 = v228;
        v77 = v229;
      }
    }

    else
    {

      sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
    }

    v97 = v225;
    v77(v225, v233, v76);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D7297410;
    v280 = xmmword_1D7297410;
    v281 = 0;
    LOBYTE(v264) = 0;
    v98 = swift_allocObject();
    v100 = v98;
    *(v98 + 16) = v239;
    *(v98 + 32) = v264;
    *(v98 + 40) = v234;
    *(v98 + 48) = v82;
    if (v299 <= 0xFD)
    {
      v230 = &v211;
      v121 = v222;
      v277 = v222;
      v122 = v82;
      v123 = v221;
      v278 = v221;
      v279 = v299;
      MEMORY[0x1EEE9AC00](v98, v99);
      v226 = &v211 - 6;
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v100;
      LOBYTE(v264) = 0;
      v125 = v124;
      v126 = swift_allocObject();
      *(v126 + 16) = v239;
      *(v126 + 32) = v264;
      *(v126 + 40) = v234;
      *(v126 + 48) = v122;
      swift_retain_n();
      sub_1D5ED34B0(v121, v123, v125);
      v127 = sub_1D72647CC();
      LOBYTE(v264) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *(v128 + 24) = v239;
      *(v128 + 40) = v264;
      v129 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v129, v130);
      MEMORY[0x1EEE9AC00](v131, v132);
      v133 = v226;
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = v133;
      v209 = sub_1D67088CC;
      v210 = v126;
      v134 = v237;
      v136 = sub_1D5D2F7A4(v97, sub_1D615B49C, v135, sub_1D615B4A4, (&v211 - 6));
      if (v134)
      {

        v95 = v214;
        v137 = v225;
        sub_1D5ED34A0(v277, v278, v279);
        sub_1D5D2CFE8(v137, type metadata accessor for FormatVersionRequirement);
        goto LABEL_49;
      }

      v149 = v136;

      if (v149)
      {
        sub_1D6661258();
        sub_1D72647EC();
        v76 = v228;
        v77 = v229;
        v150 = v225;
        v237 = 0;

        sub_1D5ED34A0(v277, v278, v279);
        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
        v101 = v223;
        v82 = v227;
      }

      else
      {
        v237 = 0;

        sub_1D5ED34A0(v277, v278, v279);
        sub_1D5D2CFE8(v225, type metadata accessor for FormatVersionRequirement);
        v101 = v223;
        v82 = v227;
        v76 = v228;
        v77 = v229;
      }
    }

    else
    {

      sub_1D5D2CFE8(v97, type metadata accessor for FormatVersionRequirement);

      v101 = v223;
    }

    v102 = v224;
    v77(v224, v233, v76);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D72BAA60;
    v240 = xmmword_1D72BAA60;
    LOBYTE(v241) = 0;
    LOBYTE(v264) = 0;
    v103 = swift_allocObject();
    v105 = v103;
    *(v103 + 16) = v239;
    *(v103 + 32) = v264;
    *(v103 + 40) = v234;
    *(v103 + 48) = v82;
    if (v287 == 254)
    {
    }

    else
    {
      v230 = &v211;
      v266 = v284;
      v267 = v285;
      v268 = v286;
      LOBYTE(v269) = v287;
      v264 = v282;
      v265 = v283;
      MEMORY[0x1EEE9AC00](v103, v104);
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v105;
      LOBYTE(v251) = 0;
      v138 = swift_allocObject();
      *(v138 + 16) = v239;
      *(v138 + 32) = v251;
      *(v138 + 40) = v234;
      *(v138 + 48) = v82;
      swift_retain_n();
      sub_1D5D355B8(&v282, &v251, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v139 = v214;
      v140 = sub_1D72647CC();
      LOBYTE(v251) = 0;
      v141 = swift_allocObject();
      *(v141 + 16) = v140;
      *(v141 + 24) = v239;
      *(v141 + 40) = v251;
      v142 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v142, v143);
      MEMORY[0x1EEE9AC00](v144, v145);
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = (&v211 - 6);
      v209 = sub_1D67088CC;
      v210 = v138;
      v146 = v237;
      v148 = sub_1D5D2F7A4(v102, sub_1D615B49C, v147, sub_1D615B4A4, (&v211 - 6));
      if (v146)
      {

        v253 = v266;
        v254 = v267;
        v255 = v268;
        LOBYTE(v256) = v269;
        v251 = v264;
        v252 = v265;
        sub_1D601144C(&v251);
        v95 = v139;
        sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
        goto LABEL_49;
      }

      v151 = v148;

      if (v151)
      {
        sub_1D6661204();
        sub_1D72647EC();
        v76 = v228;
        v77 = v229;
        v237 = 0;

        v253 = v266;
        v254 = v267;
        v255 = v268;
        LOBYTE(v256) = v269;
        v251 = v264;
        v252 = v265;
        sub_1D601144C(&v251);
        v101 = v223;
        v82 = v227;
      }

      else
      {
        v237 = 0;

        v253 = v266;
        v254 = v267;
        v255 = v268;
        LOBYTE(v256) = v269;
        v251 = v264;
        v252 = v265;
        sub_1D601144C(&v251);
        v101 = v223;
        v82 = v227;
        v76 = v228;
        v77 = v229;
      }
    }

    sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);
    v106 = v220;
    v77(v220, v233, v76);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D72BAA70;
    v264 = xmmword_1D72BAA70;
    LOBYTE(v265) = 0;
    LOBYTE(v251) = 0;
    v107 = swift_allocObject();
    v109 = v107;
    *(v107 + 16) = v239;
    *(v107 + 32) = v251;
    *(v107 + 40) = v234;
    *(v107 + 48) = v82;
    if (v219)
    {
      v230 = &v211;
      *&v251 = v219;
      MEMORY[0x1EEE9AC00](v107, v108);
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v109;
      LOBYTE(v240) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v239;
      *(v110 + 32) = v240;
      *(v110 + 40) = v234;
      *(v110 + 48) = v82;
      swift_retain_n();

      v94 = v106;
      v111 = v214;
      v112 = sub_1D72647CC();
      LOBYTE(v240) = 0;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;
      *(v113 + 24) = v239;
      *(v113 + 40) = v240;
      v114 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v114, v115);
      MEMORY[0x1EEE9AC00](v116, v117);
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = (&v211 - 6);
      v209 = sub_1D67088CC;
      v210 = v110;
      v118 = v237;
      v120 = sub_1D5D2F7A4(v94, sub_1D615B49C, v119, sub_1D615B4A4, (&v211 - 6));
      if (v118)
      {

        v95 = v111;

        goto LABEL_21;
      }

      v152 = v120;

      if (v152)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v76 = v228;
        v77 = v229;
        v237 = 0;

        sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
        v101 = v223;
        v82 = v227;
      }

      else
      {
        v237 = 0;

        sub_1D5D2CFE8(v94, type metadata accessor for FormatVersionRequirement);
        v101 = v223;
        v82 = v227;
        v76 = v228;
        v77 = v229;
      }
    }

    else
    {

      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
    }

    v153 = v218;
    v77(v218, v233, v76);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D72BAA80;
    v264 = xmmword_1D72BAA80;
    LOBYTE(v265) = 0;
    LOBYTE(v251) = 0;
    v154 = swift_allocObject();
    v156 = v154;
    *(v154 + 16) = v239;
    *(v154 + 32) = v251;
    *(v154 + 40) = v234;
    *(v154 + 48) = v82;
    if (v217 == 2)
    {

      v157 = v237;
    }

    else
    {
      v233 = &v211;
      LOBYTE(v251) = v217 & 1;
      MEMORY[0x1EEE9AC00](v154, v155);
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v156;
      LOBYTE(v240) = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v239;
      *(v174 + 32) = v240;
      *(v174 + 40) = v234;
      *(v174 + 48) = v82;
      swift_retain_n();
      v175 = v214;
      v176 = sub_1D72647CC();
      LOBYTE(v240) = 0;
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      *(v177 + 24) = v239;
      *(v177 + 40) = v240;
      v178 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v178, v179);
      MEMORY[0x1EEE9AC00](v180, v181);
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = (&v211 - 6);
      v209 = sub_1D67088CC;
      v210 = v174;
      v182 = v237;
      v184 = sub_1D5D2F7A4(v153, sub_1D615B49C, v183, sub_1D615B4A4, (&v211 - 6));
      v157 = v182;
      if (v182)
      {
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

        v95 = v175;
        goto LABEL_49;
      }

      v206 = v184;

      if (v206)
      {
        sub_1D72647EC();
        v76 = v228;
        v77 = v229;
        v101 = v223;
      }

      else
      {
        v101 = v223;
        v76 = v228;
        v77 = v229;
      }
    }

    sub_1D5D2CFE8(v218, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v158 = __swift_project_value_buffer(v76, qword_1EDFFCDE0);
    v159 = v216;
    v77(v216, v158, v76);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D72BAA90;
    v275 = xmmword_1D72BAA90;
    v276 = 0;
    LOBYTE(v264) = 0;
    v160 = swift_allocObject();
    v162 = v160;
    *(v160 + 16) = v239;
    *(v160 + 32) = v264;
    v163 = v234;
    v164 = v227;
    *(v160 + 40) = v234;
    *(v160 + 48) = v164;
    if (v215 == 2)
    {

      v165 = v159;
      v166 = v229;
      v167 = v214;
    }

    else
    {
      v237 = &v211;
      v300 = v215 & 1;
      MEMORY[0x1EEE9AC00](v160, v161);
      v233 = &v211 - 6;
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v162;
      LOBYTE(v264) = 0;
      v185 = swift_allocObject();
      *(v185 + 16) = v239;
      *(v185 + 32) = v264;
      *(v185 + 40) = v163;
      *(v185 + 48) = v164;
      swift_retain_n();
      v186 = sub_1D72647CC();
      LOBYTE(v264) = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = v186;
      *(v187 + 24) = v239;
      *(v187 + 40) = v264;
      v188 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v188, v189);
      MEMORY[0x1EEE9AC00](v190, v191);
      v192 = v233;
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = v192;
      v209 = sub_1D67088CC;
      v210 = v185;
      v194 = sub_1D5D2F7A4(v159, sub_1D615B49C, v193, sub_1D615B4A4, (&v211 - 6));
      if (v157)
      {
        sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);

        v167 = v214;
        goto LABEL_58;
      }

      v207 = v194;

      v167 = v214;
      if (v207)
      {
        sub_1D72647EC();
        v76 = v228;
        v166 = v229;
        v101 = v223;
        v165 = v216;
      }

      else
      {
        v101 = v223;
        v165 = v216;
        v76 = v228;
        v166 = v229;
      }
    }

    sub_1D5D2CFE8(v165, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v168 = __swift_project_value_buffer(v76, qword_1EDFFCE38);
    v166(v101, v168, v76);
    swift_storeEnumTagMultiPayload();
    v239 = xmmword_1D72BAAA0;
    v262 = xmmword_1D72BAAA0;
    v263 = 0;
    LOBYTE(v251) = 0;
    v169 = swift_allocObject();
    *(v169 + 16) = v239;
    *(v169 + 32) = v251;
    v170 = v234;
    v171 = v227;
    *(v169 + 40) = v234;
    *(v169 + 48) = v171;
    v272 = v296;
    v273 = v297;
    v274 = v298;
    v268 = v292;
    v269 = v293;
    v270 = v294;
    v271 = v295;
    v264 = v288;
    v265 = v289;
    v266 = v290;
    v267 = v291;
    v172 = sub_1D60081E0(&v264);
    if (v172 == 1)
    {
    }

    else
    {
      v237 = &v211;
      v261 = v298;
      v259 = v296;
      v260 = v297;
      v255 = v292;
      v256 = v293;
      v257 = v294;
      v258 = v295;
      v251 = v288;
      v252 = v289;
      v253 = v290;
      v254 = v291;
      MEMORY[0x1EEE9AC00](v172, v173);
      v233 = &v211 - 6;
      *(&v211 - 4) = sub_1D5B4AA6C;
      *(&v211 - 3) = 0;
      v209 = sub_1D67088CC;
      v210 = v169;
      LOBYTE(v240) = 0;
      v195 = swift_allocObject();
      *(v195 + 16) = v239;
      *(v195 + 32) = v240;
      *(v195 + 40) = v170;
      *(v195 + 48) = v171;
      swift_retain_n();
      sub_1D5D355B8(&v288, &v240, &qword_1EDF2D860, &type metadata for FormatVisualEffect, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v196 = v101;
      v197 = sub_1D72647CC();
      LOBYTE(v240) = 0;
      v198 = swift_allocObject();
      *(v198 + 16) = v197;
      *(v198 + 24) = v239;
      *(v198 + 40) = v240;
      v199 = __swift_project_boxed_opaque_existential_1(v238, *(v238 + 3));
      MEMORY[0x1EEE9AC00](v199, v200);
      MEMORY[0x1EEE9AC00](v201, v202);
      v203 = v233;
      *(&v211 - 4) = sub_1D615B4A4;
      *(&v211 - 3) = v203;
      v209 = sub_1D66617D4;
      v210 = v195;
      v205 = sub_1D5D2F7A4(v196, sub_1D615B49C, v204, sub_1D615B4A4, (&v211 - 6));
      if (v157)
      {

        v248 = v259;
        v249 = v260;
        v250 = v261;
        v244 = v255;
        v245 = v256;
        v246 = v257;
        v247 = v258;
        v240 = v251;
        v241 = v252;
        v242 = v253;
        v243 = v254;
        sub_1D60113F8(&v240);
        v167 = v214;
        sub_1D5D2CFE8(v223, type metadata accessor for FormatVersionRequirement);
        goto LABEL_58;
      }

      v208 = v205;

      if (v208)
      {
        sub_1D66611B0();
        v167 = v214;
        sub_1D72647EC();

        v248 = v259;
        v249 = v260;
        v250 = v261;
        v244 = v255;
        v245 = v256;
        v246 = v257;
        v247 = v258;
        v240 = v251;
        v241 = v252;
        v242 = v253;
        v243 = v254;
        sub_1D60113F8(&v240);
      }

      else
      {

        v248 = v259;
        v249 = v260;
        v250 = v261;
        v244 = v255;
        v245 = v256;
        v246 = v257;
        v247 = v258;
        v240 = v251;
        v241 = v252;
        v242 = v253;
        v243 = v254;
        sub_1D60113F8(&v240);
        v167 = v214;
      }

      v101 = v223;
    }

    sub_1D5D2CFE8(v101, type metadata accessor for FormatVersionRequirement);
LABEL_58:
    v73 = v167;
    return sub_1D5D2CFE8(v73, sub_1D66616AC);
  }

  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

  v73 = v64;
  return sub_1D5D2CFE8(v73, sub_1D66616AC);
}

uint64_t FormatCompilerSlotDefinition.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v200 = &v190 - v7;
  v197 = sub_1D725B76C();
  v201 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v8);
  v192 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, v4);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v195 = &v190 - v12;
  v198 = type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  v194 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198, v13);
  v199 = &v190 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v193 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v196 = &v190 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v203 = &v190 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v204 = &v190 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v205 = &v190 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v206 = &v190 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v207 = &v190 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v190 - v38;
  sub_1D66618F4();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v190 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v45);
  v47 = type metadata accessor for FormatCompilerSlotDefinition(0);
  sub_1D5CB2A80();
  v49 = v48;
  v50 = sub_1D5B58B84(&qword_1EDF24EF8, sub_1D5CB2A80);
  v202 = v47;
  sub_1D5D2EE70(v47, v49, v51, v45, v47, v49, &type metadata for FormatVersions.JazzkonC, v46, v44, v50, &off_1F51F6C78);
  v52 = *v2;
  v53 = v2[1];
  v208 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
  v56 = *(v54 - 8);
  v57 = *(v56 + 16);
  v209 = v55;
  v213 = v57;
  v214 = v54;
  v212 = v56 + 16;
  (v57)(v39);
  v211 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v222 = v52;
  v223 = v53;
  v220 = 0uLL;
  v221 = 0;
  v58 = &v44[*(v41 + 44)];
  v216 = v39;
  v59 = *v58;
  v60 = *(v58 + 1);
  v224 = 0;
  v61 = swift_allocObject();
  v217 = &v190;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v224;
  *(v61 + 40) = v59;
  *(v61 + 48) = v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  *(&v190 - 4) = sub_1D5B4AA6C;
  *(&v190 - 3) = 0;
  v188 = sub_1D67088D0;
  v189 = v63;
  v224 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v224;
  v210 = v59;
  *(v64 + 40) = v59;
  *(v64 + 48) = v60;
  sub_1D6661988();
  v66 = v65;
  v67 = sub_1D5B58B84(&qword_1EDF02E58, sub_1D6661988);
  swift_retain_n();
  v215 = v66;
  v68 = sub_1D72647CC();
  v224 = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v224;
  v70 = *(v41 + 36);
  v219 = v44;
  v71 = &v44[v70];
  v72 = __swift_project_boxed_opaque_existential_1(v71, *(v71 + 3));
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  *(&v190 - 4) = sub_1D615B4A4;
  *(&v190 - 3) = (&v190 - 6);
  v76 = v216;
  v188 = sub_1D67088D0;
  v189 = v64;
  v77 = v218;
  sub_1D5D2BC70(v216, sub_1D615B49C, v78, sub_1D615B4A4, (&v190 - 6));
  if (v77 || (v190 = v71, v191 = v60, , , sub_1D72647EC(), v82 = v67, sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement), , v76 = v207, v83 = v208[2], v84 = v208[3], v213(v207, v209, v214), swift_storeEnumTagMultiPayload(), v222 = v83, v223 = v84, v218 = xmmword_1D728CF30, v220 = xmmword_1D728CF30, v221 = 0, v224 = 0, v85 = swift_allocObject(), v217 = &v190, *(v85 + 16) = v218, *(v85 + 32) = v224, v86 = v210, v87 = v191, *(v85 + 40) = v210, *(v85 + 48) = v87, MEMORY[0x1EEE9AC00](v85, v88), v216 = 0, *(&v190 - 4) = sub_1D5B4AA6C, *(&v190 - 3) = 0, v188 = sub_1D67088D0, v189 = v89, v224 = 0, v90 = swift_allocObject(), *(v90 + 16) = v218, *(v90 + 32) = v224, *(v90 + 40) = v86, *(v90 + 48) = v87, swift_retain_n(), v91 = sub_1D72647CC(), v224 = 0, v92 = v82, v93 = swift_allocObject(), *(v93 + 16) = v91, *(v93 + 24) = v218, *(v93 + 40) = v224, v94 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3)), MEMORY[0x1EEE9AC00](v94, v95), MEMORY[0x1EEE9AC00](v96, v97), *(&v190 - 4) = sub_1D615B4A4, *(&v190 - 3) = (&v190 - 6), v188 = sub_1D67088D0, v189 = v90, v98 = v216, sub_1D5D2BC70(v76, sub_1D615B49C, v99, sub_1D615B4A4, (&v190 - 6)), v98))
  {
    v79 = v219;
    sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

    v80 = v79;
    return sub_1D5D2CFE8(v80, sub_1D66618F4);
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);

  v100 = v206;
  v213(v206, v209, v214);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v220) = 0;
  v101 = swift_allocObject();
  v218 = xmmword_1D7297410;
  *(v101 + 16) = xmmword_1D7297410;
  *(v101 + 32) = v220;
  *(v101 + 40) = v210;
  *(v101 + 48) = v191;

  v102 = sub_1D72647CC();
  LOBYTE(v220) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v218;
  *(v103 + 40) = v220;
  v104 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3));
  MEMORY[0x1EEE9AC00](v104, v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  *(&v190 - 4) = sub_1D5B4AA6C;
  *(&v190 - 3) = 0;
  v188 = sub_1D6661A1C;
  v189 = v101;
  LOBYTE(v102) = sub_1D5D2F7A4(v100, sub_1D615B49C, v108, sub_1D615B4A4, (&v190 - 6));
  v217 = v92;

  if (v102)
  {
    v220 = v218;
    v221 = 0;
    v222 = 0;
    v223 = 0xE000000000000000;
    sub_1D72647EC();
  }

  sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);
  v109 = v208;
  v110 = v205;
  v111 = v208[6];
  v213(v205, v209, v214);
  swift_storeEnumTagMultiPayload();
  v112 = v191;
  if (*(v111 + 16))
  {
    LOBYTE(v220) = 0;
    v113 = swift_allocObject();
    v218 = xmmword_1D72BAA60;
    *(v113 + 16) = xmmword_1D72BAA60;
    *(v113 + 32) = v220;
    *(v113 + 40) = v210;
    *(v113 + 48) = v112;

    v114 = sub_1D72647CC();
    LOBYTE(v220) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v218;
    *(v115 + 40) = v220;
    v116 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3));
    MEMORY[0x1EEE9AC00](v116, v117);
    MEMORY[0x1EEE9AC00](v118, v119);
    *(&v190 - 4) = sub_1D5B4AA6C;
    *(&v190 - 3) = 0;
    v188 = sub_1D67088D0;
    v189 = v113;
    v121 = sub_1D5D2F7A4(v110, sub_1D615B49C, v120, sub_1D615B4A4, (&v190 - 6));
    v123 = v121;

    if (v123)
    {
      v220 = v218;
      v221 = 0;
      v222 = v111;
      sub_1D5B5BF78(0, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
      sub_1D665F3C8();
      sub_1D72647EC();
      v122 = v210;
      v124 = v205;
      v109 = v208;

      sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
      v112 = v191;
    }

    else
    {
      sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);

      v112 = v191;
      v122 = v210;
      v109 = v208;
    }
  }

  else
  {
    sub_1D5D2CFE8(v110, type metadata accessor for FormatVersionRequirement);
    v122 = v210;
  }

  v125 = v109[7];
  v126 = qword_1EDF31ED0;

  if (v126 != -1)
  {
    swift_once();
  }

  v127 = __swift_project_value_buffer(v214, qword_1EDFFCD50);
  v128 = v204;
  v216 = v127;
  (v213)(v204);
  swift_storeEnumTagMultiPayload();
  if (*(v125 + 16))
  {
    LOBYTE(v220) = 0;
    v129 = swift_allocObject();
    v218 = xmmword_1D72BAA70;
    *(v129 + 16) = xmmword_1D72BAA70;
    *(v129 + 32) = v220;
    *(v129 + 40) = v122;
    *(v129 + 48) = v112;

    v130 = sub_1D72647CC();
    LOBYTE(v220) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = v130;
    *(v131 + 24) = v218;
    *(v131 + 40) = v220;
    v132 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3));
    MEMORY[0x1EEE9AC00](v132, v133);
    MEMORY[0x1EEE9AC00](v134, v135);
    *(&v190 - 4) = sub_1D5B4AA6C;
    *(&v190 - 3) = 0;
    v188 = sub_1D67088D0;
    v189 = v129;
    v137 = sub_1D5D2F7A4(v128, sub_1D615B49C, v136, sub_1D615B4A4, (&v190 - 6));
    v138 = v137;

    v109 = v208;
    if (v138)
    {
      v220 = v218;
      v221 = 0;
      v222 = v125;
      sub_1D5C34D84(0, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform, MEMORY[0x1E69E62F8]);
      sub_1D6661AAC();
      sub_1D72647EC();
      v139 = v204;

      sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
    }

    v112 = v191;
  }

  else
  {
    sub_1D5D2CFE8(v128, type metadata accessor for FormatVersionRequirement);
  }

  v140 = v203;
  v141 = v109[8];
  v213(v203, v209, v214);
  swift_storeEnumTagMultiPayload();
  if (v141 == 1)
  {
    v142 = v109;
    sub_1D5D2CFE8(v140, type metadata accessor for FormatVersionRequirement);
    v143 = v201;
    v144 = v200;
  }

  else
  {
    LOBYTE(v220) = 0;
    v145 = swift_allocObject();
    v218 = xmmword_1D72BAA80;
    *(v145 + 16) = xmmword_1D72BAA80;
    *(v145 + 32) = v220;
    *(v145 + 40) = v210;
    *(v145 + 48) = v112;

    v146 = sub_1D72647CC();
    LOBYTE(v220) = 0;
    v147 = swift_allocObject();
    *(v147 + 16) = v146;
    *(v147 + 24) = v218;
    *(v147 + 40) = v220;
    v148 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3));
    MEMORY[0x1EEE9AC00](v148, v149);
    MEMORY[0x1EEE9AC00](v150, v151);
    *(&v190 - 4) = sub_1D5B4AA6C;
    *(&v190 - 3) = 0;
    v188 = sub_1D67088D0;
    v189 = v145;
    LOBYTE(v146) = sub_1D5D2F7A4(v140, sub_1D615B49C, v152, sub_1D615B4A4, (&v190 - 6));

    if (v146)
    {
      v220 = v218;
      v221 = 0;
      v222 = v141;
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v203, type metadata accessor for FormatVersionRequirement);
    v143 = v201;
    v144 = v200;
    v142 = v208;
  }

  v153 = *(v202 + 40);
  v154 = v196;
  v213(v196, v216, v214);
  swift_storeEnumTagMultiPayload();
  v218 = xmmword_1D72BAA90;
  v220 = xmmword_1D72BAA90;
  v221 = 0;
  LOBYTE(v222) = 0;
  v155 = swift_allocObject();
  *(v155 + 16) = v218;
  *(v155 + 32) = v222;
  v156 = v210;
  v157 = v191;
  *(v155 + 40) = v210;
  *(v155 + 48) = v157;
  v158 = v142 + v153;
  v159 = v195;
  sub_1D5CDE2EC(v158, v195, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  if ((*(v194 + 48))(v159, 1, v198) == 1)
  {

    sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v159, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  else
  {
    v160 = sub_1D5C8F76C(v159, v199, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    MEMORY[0x1EEE9AC00](v160, v161);
    *(&v190 - 4) = sub_1D5B4AA6C;
    *(&v190 - 3) = 0;
    v188 = sub_1D67088D0;
    v189 = v155;
    LOBYTE(v222) = 0;
    v162 = swift_allocObject();
    *(v162 + 16) = v218;
    *(v162 + 32) = v222;
    *(v162 + 40) = v156;
    *(v162 + 48) = v157;
    swift_retain_n();
    v163 = sub_1D72647CC();
    LOBYTE(v222) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = v163;
    *(v164 + 24) = v218;
    *(v164 + 40) = v222;
    v165 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3));
    MEMORY[0x1EEE9AC00](v165, v166);
    MEMORY[0x1EEE9AC00](v167, v168);
    *(&v190 - 4) = sub_1D615B4A4;
    *(&v190 - 3) = (&v190 - 6);
    v188 = sub_1D67088D0;
    v189 = v162;
    LOBYTE(v163) = sub_1D5D2F7A4(v154, sub_1D615B49C, v169, sub_1D615B4A4, (&v190 - 6));

    if (v163)
    {
      sub_1D5B58B84(&qword_1EDF071A8, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v199, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
    v143 = v201;
    v144 = v200;
  }

  v170 = *(v202 + 44);
  v171 = v193;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v172 = v214;
  v173 = __swift_project_value_buffer(v214, qword_1EDFFCD80);
  v213(v171, v173, v172);
  swift_storeEnumTagMultiPayload();
  v218 = xmmword_1D72BAAA0;
  v220 = xmmword_1D72BAAA0;
  v221 = 0;
  LOBYTE(v222) = 0;
  v174 = swift_allocObject();
  *(v174 + 16) = v218;
  *(v174 + 32) = v222;
  v175 = v210;
  v176 = v191;
  *(v174 + 40) = v210;
  *(v174 + 48) = v176;
  sub_1D5CDE2EC(v208 + v170, v144, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v177 = v197;
  if ((*(v143 + 48))(v144, 1, v197) != 1)
  {
    v178 = (*(v143 + 32))(v192, v144, v177);
    MEMORY[0x1EEE9AC00](v178, v179);
    *(&v190 - 4) = sub_1D5B4AA6C;
    *(&v190 - 3) = 0;
    v188 = sub_1D67088D0;
    v189 = v174;
    LOBYTE(v222) = 0;
    v180 = swift_allocObject();
    *(v180 + 16) = v218;
    *(v180 + 32) = v222;
    *(v180 + 40) = v175;
    *(v180 + 48) = v176;
    swift_retain_n();
    v181 = sub_1D72647CC();
    LOBYTE(v222) = 0;
    v182 = swift_allocObject();
    *(v182 + 16) = v181;
    *(v182 + 24) = v218;
    *(v182 + 40) = v222;
    v183 = __swift_project_boxed_opaque_existential_1(v190, *(v190 + 3));
    MEMORY[0x1EEE9AC00](v183, v184);
    MEMORY[0x1EEE9AC00](v185, v186);
    *(&v190 - 4) = sub_1D615B4A4;
    *(&v190 - 3) = (&v190 - 6);
    v188 = sub_1D67088D0;
    v189 = v180;
    LOBYTE(v181) = sub_1D5D2F7A4(v171, sub_1D615B49C, v187, sub_1D615B4A4, (&v190 - 6));

    if (v181)
    {
      sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
      sub_1D72647EC();
    }

    (*(v201 + 8))(v192, v197);
    sub_1D5D2CFE8(v193, type metadata accessor for FormatVersionRequirement);
    v80 = v219;
    return sub_1D5D2CFE8(v80, sub_1D66618F4);
  }

  sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);

  sub_1D5D2CFE8(v219, sub_1D66618F4);
  return sub_1D5D35558(v144, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
}

uint64_t FormatDateTime.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v32 - v8;
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
    v12 = v37;
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
          *(v22 + 16) = &unk_1F50FC2D8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6661B48();
    v33 = 0uLL;
    sub_1D726431C();
    if (v36 > 2u)
    {
      v24 = v12;
      if (v36 == 3)
      {
        (*(v11 + 8))(v15, v5);
        v27 = 0xC000000000000000;
      }

      else if (v36 == 4)
      {
        v27 = 0xC000000000000008;
        (*(v11 + 8))(v15, v5);
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v27 = 0xC000000000000010;
      }
    }

    else
    {
      v24 = v12;
      if (v36)
      {
        if (v36 == 1)
        {
          v36 = xmmword_1D7279980;
          sub_1D60346CC();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v25 = v33;
          v26 = swift_allocObject();
          *(v26 + 16) = v25;
          v27 = v26 | 0x4000000000000000;
        }

        else
        {
          sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
          v36 = xmmword_1D7279980;
          sub_1D5C34150();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v30 = v33;
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          v27 = v31 | 0x8000000000000000;
        }
      }

      else
      {
        v36 = xmmword_1D7279980;
        sub_1D6661B9C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v32 = v33;
        v28 = v34;
        v29 = v35;
        v27 = swift_allocObject();
        *(v27 + 16) = v32;
        *(v27 + 32) = v28;
        *(v27 + 40) = v29;
      }
    }

    *v24 = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDateTime.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v64 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v63 = &v62 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v62 - v24;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v2;
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v33 = sub_1D5C30408();
  v65 = v29;
  sub_1D5D2EE70(&type metadata for FormatDateTime, &type metadata for FormatCodingKeys, v34, v32, &type metadata for FormatDateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v31, v29, v33, &off_1F51F6CF8);
  v35 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (!v35)
    {
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      v38 = *(v30 + 32);
      v39 = *(v30 + 40);
      sub_1D5D27950(v37, v36, v38, v39);
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v40 = sub_1D725BD1C();
      v41 = __swift_project_value_buffer(v40, qword_1EDFFCCA8);
      (*(*(v40 - 8) + 16))(v25, v41, v40);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v42 = v65;
      sub_1D63BADEC(0, v37, v36, v38, v39, v25);
      sub_1D5D28C84(v37, v36, v38, v39);
      v43 = v25;
      goto LABEL_26;
    }

    v50 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v49 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F33D5C(v49);
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v51 = sub_1D725BD1C();
    v52 = __swift_project_value_buffer(v51, qword_1EDFFCCA8);
    (*(*(v51 - 8) + 16))(v21, v52, v51);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v65;
    sub_1D63BAF88(1, v50, v49, v21);

    sub_1D5F33D8C(v49);
LABEL_13:
    v43 = v21;
    goto LABEL_26;
  }

  if (v35 == 2)
  {
    v44 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v45 = *((v30 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v46 = qword_1EDF31E80;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCCA8);
    (*(*(v47 - 8) + 16))(v17, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v65;
    sub_1D63BB11C(2, v44, v45, v17);

    v21 = v17;
    goto LABEL_13;
  }

  if (v30 == 0xC000000000000000)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v57 = sub_1D725BD1C();
    v58 = __swift_project_value_buffer(v57, qword_1EDFFCCA8);
    (*(*(v57 - 8) + 16))(v13, v58, v57);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v42 = v65;
    sub_1D6424254(3, v13);
    v43 = v13;
  }

  else
  {
    if (v30 == 0xC000000000000008)
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCCA8);
      v55 = v63;
      (*(*(v53 - 8) + 16))(v63, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v56 = 4;
    }

    else
    {
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v59 = sub_1D725BD1C();
      v60 = __swift_project_value_buffer(v59, qword_1EDFFCCA8);
      v55 = v64;
      (*(*(v59 - 8) + 16))(v64, v60, v59);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v56 = 5;
    }

    v42 = v65;
    sub_1D6424254(v56, v55);
    v43 = v55;
  }

LABEL_26:
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v42, sub_1D5D30DC4);
}

uint64_t FormatDateTimeOffset.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6661C38();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6661CCC();
  sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC);
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

  v13 = v25;
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

      v20 = sub_1D6627E68(0x73646E6F636573, 0xE700000000000000, 0x656D695465746164, 0xE800000000000000);
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

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D60344C0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatDateTimeOffset.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v66 - v8);
  sub_1D6661E4C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v73 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6661CCC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC);
  sub_1D5D2EE70(&type metadata for FormatDateTimeOffset, v19, v21, v16, &type metadata for FormatDateTimeOffset, v19, &type metadata for FormatVersions.Dawnburst, v17, v14, v20, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCCA8);
  v24 = *(v22 - 8);
  v70 = *(v24 + 16);
  v71 = v23;
  v69 = v24 + 16;
  v70(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v84 = v15;
  v82 = 0uLL;
  v83 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v81 = 0;
  v28 = swift_allocObject();
  v77 = &v66;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v81;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v79 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D67088D4;
  v65 = v30;
  v81 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  v72 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D6661EE0();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF03448, sub_1D6661EE0);
  swift_retain_n();
  v75 = v34;
  v76 = v33;
  v35 = sub_1D72647CC();
  v81 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v81;
  v37 = *(v11 + 36);
  v78 = v14;
  v38 = &v14[v37];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v44 = v79;
  v43 = v80;
  v64 = sub_1D6661F74;
  v65 = v31;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v66 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v48 = v78;
  }

  else
  {
    v66 = v38;
    v67 = v27;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v46 = v78;
    sub_1D72647EC();
    v47 = v46;
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v50 = v74;
    (v70)(v74, v71, v22);
    swift_storeEnumTagMultiPayload();
    v84 = v73;
    v80 = xmmword_1D728CF30;
    v82 = xmmword_1D728CF30;
    v83 = 0;
    v81 = 0;
    v51 = swift_allocObject();
    v79 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v81;
    v52 = v72;
    v53 = v67;
    *(v51 + 40) = v72;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D67088D4;
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
    v59 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D67088D4;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D6034514();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v48 = v47;
  }

  return sub_1D5D2CFE8(v48, sub_1D6661E4C);
}

unint64_t FormatAccessibilityNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v165 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v174 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v175 = &v165 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v186 = &v165 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v165 - v20;
  sub_1D6661FF0();
  *&v185 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C66670();
  v29 = v28;
  v30 = sub_1D5B58B84(&qword_1EDF251F8, sub_1D5C66670);
  v184 = v25;
  sub_1D5D2EE70(v4, v29, v31, v26, v4, v29, &type metadata for FormatVersions.JazzkonC, v27, v25, v30, &off_1F51F6C78);
  swift_beginAccess();
  v33 = v2[2];
  v32 = v2[3];
  v183 = v2;
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
  (v38)(v21, v36, v35);
  v40 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v41 = sub_1D725895C();
  v42 = (*(*(v41 - 8) + 48))(v8, 1, v41);
  v178 = v35;
  v181 = v38;
  v180 = v39;
  v179 = v40;
  v182 = v36;
  if (v42 != 1)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v62 = v186;
    v63 = v185;
    goto LABEL_9;
  }

  v176 = v33;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v43 = v185;
  v44 = v184;
  v45 = &v184[*(v185 + 44)];
  v47 = *v45;
  v46 = *(v45 + 1);
  LOBYTE(v188) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v188;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  sub_1D6662084();
  v50 = v49;
  sub_1D5B58B84(&qword_1EDF031B8, sub_1D6662084);

  v177 = v50;
  v51 = sub_1D72647CC();
  LOBYTE(v188) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v188;
  v53 = __swift_project_boxed_opaque_existential_1((v44 + *(v43 + 36)), *(v44 + *(v43 + 36) + 24));
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D6662118;
  v164 = v48;
  v57 = v187;
  v59 = sub_1D5D2F7A4(v21, sub_1D615B49C, v58, sub_1D615B4A4, (&v165 - 6));
  v187 = v57;
  if (v57)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v60 = v44;
    return sub_1D5D2CFE8(v60, sub_1D6661FF0);
  }

  v89 = v59;

  if ((v89 & 1) == 0)
  {
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

    v35 = v178;
    v38 = v181;
    goto LABEL_8;
  }

  v188 = 0uLL;
  LOBYTE(v189) = 0;
  v199 = v176;
  v200 = v32;
  v90 = v184;
  v91 = v187;
  sub_1D72647EC();

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  v38 = v181;
  v62 = v186;
  v63 = v185;
  if (v91)
  {
    return sub_1D5D2CFE8(v90, sub_1D6661FF0);
  }

  v187 = 0;
  v35 = v178;
LABEL_9:
  v64 = v183;
  swift_beginAccess();
  v65 = v64[4];
  LODWORD(v64) = *(v64 + 40);
  (v38)(v62, v182, v35);
  swift_storeEnumTagMultiPayload();
  v197 = v65;
  v198 = v64;
  v185 = xmmword_1D728CF30;
  v188 = xmmword_1D728CF30;
  LOBYTE(v189) = 0;
  v66 = v184;
  v67 = &v184[*(v63 + 44)];
  v69 = *v67;
  v68 = *(v67 + 1);
  LOBYTE(v195) = 0;
  v70 = swift_allocObject();
  v176 = &v165;
  *(v70 + 16) = v185;
  *(v70 + 32) = v195;
  *(v70 + 40) = v69;
  *(v70 + 48) = v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D67088D8;
  v164 = v72;
  LOBYTE(v195) = 0;
  v73 = v63;
  v74 = swift_allocObject();
  *(v74 + 16) = v185;
  *(v74 + 32) = v195;
  v171 = v69;
  *(v74 + 40) = v69;
  *(v74 + 48) = v68;
  v75 = v66;
  swift_retain_n();
  v182 = v65;
  LODWORD(v177) = v64;
  sub_1D5D07778(v65, v64);
  sub_1D6662084();
  v77 = v76;
  v78 = sub_1D5B58B84(&qword_1EDF031B8, sub_1D6662084);
  v172 = v77;
  v173 = v78;
  v79 = sub_1D72647CC();
  LOBYTE(v195) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v185;
  *(v80 + 40) = v195;
  v81 = (v75 + *(v73 + 36));
  v82 = __swift_project_boxed_opaque_existential_1(v81, v81[3]);
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v165 - 4) = sub_1D615B4A4;
  *(&v165 - 3) = (&v165 - 6);
  v163 = sub_1D67088D8;
  v164 = v74;
  v86 = v186;
  v87 = v187;
  sub_1D5D2BC70(v186, sub_1D615B49C, v88, sub_1D615B4A4, (&v165 - 6));
  if (v87)
  {
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

    sub_1D5D2CFE8(v75, sub_1D6661FF0);
    return sub_1D5D06D9C(v182, v177);
  }

  v170 = v81;
  *&v185 = v68;

  sub_1D6662194();
  sub_1D72647EC();
  v187 = 0;
  sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
  sub_1D5D06D9C(v182, v177);

  v92 = v183;
  swift_beginAccess();
  v93 = v92[7];
  v94 = v92[8];
  v95 = v92[9];
  v96 = v92[10];
  v97 = v92[11];
  v98 = *(v92 + 48) | (*(v92 + 98) << 16);
  v169 = v92[6];
  v176 = v93;
  v177 = v94;
  v182 = v95;
  sub_1D6046038(v169, v93, v94, v95, v96, v97, v98);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v99 = v178;
  v100 = __swift_project_value_buffer(v178, qword_1EDFFCDF8);
  (v181)(v175, v100, v99);
  swift_storeEnumTagMultiPayload();
  v186 = xmmword_1D7297410;
  v195 = xmmword_1D7297410;
  v196 = 0;
  LOBYTE(v188) = 0;
  v101 = swift_allocObject();
  v103 = v101;
  *(v101 + 16) = v186;
  *(v101 + 32) = v188;
  v104 = v171;
  v105 = v185;
  *(v101 + 40) = v171;
  *(v101 + 48) = v105;
  if (((v98 >> 17) & 0x7F) == 0x7F)
  {

    goto LABEL_30;
  }

  v168 = &v165;
  v106 = v96;
  v165 = v96;
  v107 = v169;
  v108 = v176;
  *&v188 = v169;
  *(&v188 + 1) = v176;
  v109 = v98;
  v110 = v177;
  v189 = v177;
  v190 = v182;
  v191 = v106;
  v192 = v97;
  v193 = v109;
  v194 = BYTE2(v109);
  MEMORY[0x1EEE9AC00](v101, v102);
  v166 = v97;
  v167 = &v165 - 6;
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D67088D8;
  v164 = v103;
  v201 = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = v186;
  *(v111 + 32) = v201;
  *(v111 + 40) = v104;
  *(v111 + 48) = v105;
  v112 = v182;
  swift_retain_n();
  v113 = v107;
  v114 = v165;
  v115 = v108;
  v116 = v166;
  sub_1D6046038(v113, v115, v110, v112, v165, v166, v109);
  v117 = sub_1D72647CC();
  v201 = 0;
  v118 = swift_allocObject();
  *(v118 + 16) = v117;
  *(v118 + 24) = v186;
  *(v118 + 40) = v201;
  v119 = __swift_project_boxed_opaque_existential_1(v170, v170[3]);
  MEMORY[0x1EEE9AC00](v119, v120);
  MEMORY[0x1EEE9AC00](v121, v122);
  v123 = v167;
  *(&v165 - 4) = sub_1D615B4A4;
  *(&v165 - 3) = v123;
  v163 = sub_1D67088D8;
  v164 = v111;
  v124 = v187;
  v126 = sub_1D5D2F7A4(v175, sub_1D615B49C, v125, sub_1D615B4A4, (&v165 - 6));
  if (v124)
  {

    sub_1D5C67600(v169, v176, v177, v112, v114, v116, v109);
    v90 = v184;
LABEL_22:
    sub_1D5D0A678(v188, *(&v188 + 1), v189, v190, v191, v192, v193 | (v194 << 16));
    sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v90, sub_1D6661FF0);
  }

  v127 = v126;
  v187 = 0;

  if (v127)
  {
    sub_1D66621E8();
    v90 = v184;
    v128 = v187;
    sub_1D72647EC();
    v129 = v177;
    v130 = v176;
    v187 = v128;
    if (v128)
    {

      sub_1D5C67600(v169, v130, v129, v182, v114, v116, v109);
      goto LABEL_22;
    }

    v131 = v169;
    v132 = v130;
    v133 = v129;
  }

  else
  {

    v131 = v169;
    v132 = v176;
    v133 = v177;
  }

  sub_1D5C67600(v131, v132, v133, v182, v114, v116, v109);
  sub_1D5D0A678(v188, *(&v188 + 1), v189, v190, v191, v192, v193 | (v194 << 16));
LABEL_30:
  sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
  v134 = v183[13];
  v135 = v183[14];
  v136 = v183[15];
  v182 = v183[16];
  v137 = v183[17];
  v138 = v183[18];
  v139 = v181;
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v140 = v178;
  v141 = __swift_project_value_buffer(v178, qword_1EDFFCE38);
  (v139)(v174, v141, v140);
  swift_storeEnumTagMultiPayload();
  v186 = xmmword_1D72BAA60;
  v195 = xmmword_1D72BAA60;
  v196 = 0;
  LOBYTE(v188) = 0;
  v142 = swift_allocObject();
  v144 = v142;
  *(v142 + 16) = v186;
  *(v142 + 32) = v188;
  v145 = v185;
  *(v142 + 40) = v171;
  *(v142 + 48) = v145;
  if (!v134)
  {

    sub_1D5D2CFE8(v174, type metadata accessor for FormatVersionRequirement);

    v148 = v184;
LABEL_39:
    v60 = v148;
    return sub_1D5D2CFE8(v60, sub_1D6661FF0);
  }

  v183 = &v165;
  *&v188 = v134;
  *(&v188 + 1) = v135;
  v146 = v182;
  v189 = v136;
  v190 = v182;
  v191 = v137;
  v192 = v138;
  MEMORY[0x1EEE9AC00](v142, v143);
  v181 = &v165 - 6;
  *(&v165 - 4) = sub_1D5B4AA6C;
  *(&v165 - 3) = 0;
  v163 = sub_1D67088D8;
  v164 = v144;
  v201 = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v186;
  *(v147 + 32) = v201;
  *(v147 + 40) = v171;
  *(v147 + 48) = v145;
  swift_retain_n();
  sub_1D5EB1D80(v134, v135, v136, v146, v137);
  v148 = v184;
  v149 = sub_1D72647CC();
  v201 = 0;
  v150 = swift_allocObject();
  *(v150 + 16) = v149;
  *(v150 + 24) = v186;
  *(v150 + 40) = v201;
  v151 = __swift_project_boxed_opaque_existential_1(v170, v170[3]);
  MEMORY[0x1EEE9AC00](v151, v152);
  MEMORY[0x1EEE9AC00](v153, v154);
  v155 = v181;
  *(&v165 - 4) = sub_1D615B4A4;
  *(&v165 - 3) = v155;
  v163 = sub_1D67088D8;
  v164 = v147;
  v156 = v174;
  v157 = v187;
  v159 = sub_1D5D2F7A4(v174, sub_1D615B49C, v158, sub_1D615B4A4, (&v165 - 6));
  if (!v157)
  {
    v161 = v159;

    if (v161)
    {
      sub_1D6659A24();
      sub_1D72647EC();
    }

    v187 = 0;
    v162 = v191;

    sub_1D5CBF568(v162);

    sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
    goto LABEL_39;
  }

  v160 = v191;

  sub_1D5CBF568(v160);

  sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v148, sub_1D6661FF0);
}

uint64_t FormatAnimationNodeGroupAnimation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v81 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  *&v87 = v76 - v10;
  sub_1D6662624();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D666274C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC886218, sub_1D666274C);
  sub_1D5D2EE70(v4, v19, v21, v16, v4, v19, &type metadata for FormatVersions.StarSky, v17, v15, v20, &off_1F51F6CD8);
  v80 = v2;
  v22 = v2[2];
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v27 = v87;
  v83 = v24;
  v77 = v26;
  v78 = v23;
  v76[1] = v25 + 16;
  v26(v87);
  v76[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v119 = v22;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v28 = &v15[*(v12 + 44)];
  v30 = *v28;
  v29 = *(v28 + 1);
  LOBYTE(v114[0]) = 0;
  v31 = swift_allocObject();
  v86 = v76;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v114[0];
  *(v31 + 40) = v30;
  *(v31 + 48) = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v76[-4] = sub_1D5B4AA6C;
  v76[-3] = 0;
  v74 = sub_1D67088DC;
  v75 = v33;
  LOBYTE(v114[0]) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v114[0];
  v79 = v30;
  *(v34 + 40) = v30;
  *(v34 + 48) = v29;
  sub_1D66626B8();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC886220, sub_1D66626B8);
  v82 = v29;
  swift_retain_n();
  v84 = v36;
  v85 = v37;
  v38 = sub_1D72647CC();
  LOBYTE(v114[0]) = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v114[0];
  v40 = *(v12 + 36);
  v120 = v15;
  v41 = &v15[v40];
  v42 = __swift_project_boxed_opaque_existential_1(&v15[v40], *&v15[v40 + 24]);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v76[-4] = sub_1D615B4A4;
  v76[-3] = &v76[-6];
  v74 = sub_1D67088DC;
  v75 = v34;
  v46 = v88;
  sub_1D5D2BC70(v27, sub_1D615B49C, v47, sub_1D615B4A4, &v76[-6]);
  if (v46)
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    v48 = v120;
  }

  else
  {
    v88 = v41;
    v49 = v27;
    v51 = v82;
    v50 = v83;

    sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
    sub_1D66628CC();
    v48 = v120;
    sub_1D72647EC();
    v86 = 0;
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v52 = v81;
    v53 = *(v80 + 13);
    v54 = *(v80 + 17);
    v112 = *(v80 + 15);
    v113[0] = v54;
    *(v113 + 9) = *(v80 + 145);
    v55 = *(v80 + 5);
    v56 = *(v80 + 9);
    v108 = *(v80 + 7);
    v109 = v56;
    v110 = *(v80 + 11);
    v111 = v53;
    v106 = *(v80 + 3);
    v107 = v55;
    v77(v81, v50, v78);
    swift_storeEnumTagMultiPayload();
    v87 = xmmword_1D728CF30;
    v104[2] = xmmword_1D728CF30;
    v105 = 0;
    LOBYTE(v97) = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v87;
    *(v57 + 32) = v97;
    v58 = v79;
    *(v57 + 40) = v79;
    *(v57 + 48) = v51;
    v114[6] = v112;
    v115[0] = v113[0];
    *(v115 + 9) = *(v113 + 9);
    v114[2] = v108;
    v114[3] = v109;
    v114[4] = v110;
    v114[5] = v111;
    v114[0] = v106;
    v114[1] = v107;
    v59 = sub_1D60486AC(v114);
    if (v59 == 1)
    {

      sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v83 = v76;
      v103 = v112;
      v104[0] = v113[0];
      *(v104 + 9) = *(v113 + 9);
      v99 = v108;
      v100 = v109;
      v101 = v110;
      v102 = v111;
      v97 = v106;
      v98 = v107;
      MEMORY[0x1EEE9AC00](v59, v60);
      v76[-4] = sub_1D5B4AA6C;
      v76[-3] = 0;
      v74 = sub_1D67088DC;
      v75 = v57;
      LOBYTE(v89) = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = v87;
      *(v61 + 32) = v89;
      *(v61 + 40) = v58;
      *(v61 + 48) = v51;
      swift_retain_n();
      sub_1D5D355B8(&v106, &v89, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v62 = sub_1D72647CC();
      LOBYTE(v89) = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = v87;
      *(v63 + 40) = v89;
      v64 = __swift_project_boxed_opaque_existential_1(v88, *(v88 + 3));
      MEMORY[0x1EEE9AC00](v64, v65);
      MEMORY[0x1EEE9AC00](v66, v67);
      v76[-4] = sub_1D615B4A4;
      v76[-3] = &v76[-6];
      v68 = v81;
      v74 = sub_1D66629BC;
      v75 = v61;
      v69 = v86;
      v71 = sub_1D5D2F7A4(v81, sub_1D615B49C, v70, sub_1D615B4A4, &v76[-6]);
      if (v69)
      {

        v95 = v103;
        v96[0] = v104[0];
        *(v96 + 9) = *(v104 + 9);
        v91 = v99;
        v92 = v100;
        v93 = v101;
        v94 = v102;
        v89 = v97;
        v90 = v98;
        sub_1D62B49F0(&v89);
        v48 = v120;
      }

      else
      {
        v72 = v71;

        if ((v72 & 1) == 0)
        {

          v95 = v103;
          v96[0] = v104[0];
          *(v96 + 9) = *(v104 + 9);
          v91 = v99;
          v92 = v100;
          v93 = v101;
          v94 = v102;
          v89 = v97;
          v90 = v98;
          sub_1D62B49F0(&v89);
          sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
          v48 = v120;
          return sub_1D5D2CFE8(v48, sub_1D6662624);
        }

        sub_1D6662A38();
        v48 = v120;
        sub_1D72647EC();

        v95 = v103;
        v96[0] = v104[0];
        *(v96 + 9) = *(v104 + 9);
        v91 = v99;
        v92 = v100;
        v93 = v101;
        v94 = v102;
        v89 = v97;
        v90 = v98;
        sub_1D62B49F0(&v89);
      }

      sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v48, sub_1D6662624);
}

uint64_t FormatOptionExpression.Exists.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v82 - v11;
  sub_1D6662A8C();
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = v1[1];
  v104 = *(v1 + 16);
  v84 = *(v1 + 17);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5C60A9C();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF25238, sub_1D5C60A9C);
  sub_1D5D2EE70(&type metadata for FormatOptionExpression.Exists, v22, v24, v19, &type metadata for FormatOptionExpression.Exists, v22, &type metadata for FormatVersions.JazzkonC, v20, v16, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v89 = v26;
  v90 = v25;
  v87 = v27 + 16;
  v88 = v28;
  (v28)(v12);
  v86 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v101 = v17;
  v102 = v18;
  v99 = 0uLL;
  v100 = 0;
  v29 = v97;
  v30 = &v16[*(v97 + 11)];
  v95 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v103 = 0;
  v33 = swift_allocObject();
  v96 = &v82;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v103;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v82 - 4) = sub_1D5B4AA6C;
  *(&v82 - 3) = 0;
  v80 = sub_1D67088E0;
  v81 = v35;
  v103 = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = v103;
  v91 = v31;
  *(v36 + 40) = v31;
  *(v36 + 48) = v32;
  sub_1D6662B20();
  v38 = v37;
  v39 = sub_1D5B58B84(&qword_1EDF031F8, sub_1D6662B20);
  swift_retain_n();
  v93 = v39;
  v94 = v38;
  v40 = sub_1D72647CC();
  v103 = 0;
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = v103;
  v42 = *(v29 + 9);
  v43 = v95;
  v44 = &v16[v42];
  v97 = v16;
  v45 = __swift_project_boxed_opaque_existential_1(&v16[v42], *&v16[v42 + 24]);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v82 - 4) = sub_1D615B4A4;
  *(&v82 - 3) = (&v82 - 6);
  v80 = sub_1D6662BB4;
  v81 = v36;
  v49 = v98;
  sub_1D5D2BC70(v43, sub_1D615B49C, v50, sub_1D615B4A4, (&v82 - 6));
  if (v49)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v51 = v97;
  }

  else
  {
    v83 = v44;

    v51 = v97;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v53 = v92;
    v88(v92, v89, v90);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v101) = v104;
    v98 = xmmword_1D728CF30;
    v99 = xmmword_1D728CF30;
    v100 = 0;
    v103 = 0;
    v54 = swift_allocObject();
    v96 = &v82;
    *(v54 + 16) = v98;
    *(v54 + 32) = v103;
    v55 = v91;
    *(v54 + 40) = v91;
    *(v54 + 48) = v32;
    MEMORY[0x1EEE9AC00](v54, v56);
    v95 = 0;
    *(&v82 - 4) = sub_1D5B4AA6C;
    *(&v82 - 3) = 0;
    v80 = sub_1D67088E0;
    v81 = v57;
    v103 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v98;
    *(v58 + 32) = v103;
    *(v58 + 40) = v55;
    *(v58 + 48) = v32;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v103 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v98;
    *(v60 + 40) = v103;
    v61 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v82 - 4) = sub_1D615B4A4;
    *(&v82 - 3) = (&v82 - 6);
    v80 = sub_1D67088E0;
    v81 = v58;
    v65 = v95;
    sub_1D5D2BC70(v53, sub_1D615B49C, v66, sub_1D615B4A4, (&v82 - 6));
    if (v65)
    {
      sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D6662C30();
      sub_1D72647EC();
      sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

      v67 = v85;
      v88(v85, v89, v90);
      swift_storeEnumTagMultiPayload();
      LOBYTE(v101) = v84;
      v98 = xmmword_1D7297410;
      v99 = xmmword_1D7297410;
      v100 = 0;
      v103 = 0;
      v68 = swift_allocObject();
      v96 = &v82;
      *(v68 + 16) = v98;
      *(v68 + 32) = v103;
      v69 = v91;
      *(v68 + 40) = v91;
      *(v68 + 48) = v32;
      MEMORY[0x1EEE9AC00](v68, v70);
      *(&v82 - 4) = sub_1D5B4AA6C;
      *(&v82 - 3) = 0;
      v80 = sub_1D67088E0;
      v81 = v71;
      v103 = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = v98;
      *(v72 + 32) = v103;
      *(v72 + 40) = v69;
      *(v72 + 48) = v32;
      swift_retain_n();
      v73 = sub_1D72647CC();
      v103 = 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      *(v74 + 24) = v98;
      *(v74 + 40) = v103;
      v75 = __swift_project_boxed_opaque_existential_1(v83, *(v83 + 3));
      MEMORY[0x1EEE9AC00](v75, v76);
      MEMORY[0x1EEE9AC00](v77, v78);
      *(&v82 - 4) = sub_1D615B4A4;
      *(&v82 - 3) = (&v82 - 6);
      v80 = sub_1D67088E0;
      v81 = v72;
      sub_1D5D2BC70(v67, sub_1D615B49C, v79, sub_1D615B4A4, (&v82 - 6));

      sub_1D6056F28();
      sub_1D72647EC();
      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v51, sub_1D6662A8C);
}

uint64_t FormatOptionExpression.Exists.Operator.encode(to:)(void *a1)
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

uint64_t FormatOperator.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v70 = v59 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = v59 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v67 = v59 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v66 = v59 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v65 = v59 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v64 = v59 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v63 = v59 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v62 = v59 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v61 = v59 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v60 = v59 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v59 - v41;
  v76 = *v1;
  v43 = a1[3];
  v44 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v43);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
  v47 = *(*(v45 - 8) + 16);
  v47(v42, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v48 = v73;
  sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v43, v44);
  if (v48)
  {
    return sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  v50 = v72;
  v51 = v72[3];
  v73 = v72[4];
  v59[1] = __swift_project_boxed_opaque_existential_1(v72, v51);
  if (v76 > 5)
  {
    v55 = v47;
    if (v76 > 8)
    {
      if (v76 == 9)
      {
        v53 = 9;
        v56 = v69;
        v55(v69, v46, v45);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v53 = v76;
        if (v76 != 10)
        {
          v58 = v71;
          v55(v71, v46, v45);
          swift_storeEnumTagMultiPayload();
          sub_1D5D2BEC4(v58, sub_1D5B4AA6C, 0, v51, v73);
          v57 = v58;
          goto LABEL_31;
        }

        v56 = v70;
        v55(v70, v46, v45);
        swift_storeEnumTagMultiPayload();
      }
    }

    else if (v76 == 6)
    {
      v53 = 6;
      v56 = v66;
      v55(v66, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = v76;
      if (v76 == 7)
      {
        v56 = v67;
        v55(v67, v46, v45);
      }

      else
      {
        v56 = v68;
        v55(v68, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

LABEL_30:
    sub_1D5D2BEC4(v56, sub_1D5B4AA6C, 0, v51, v73);
    v57 = v56;
LABEL_31:
    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
    goto LABEL_32;
  }

  v52 = v47;
  if (v76 <= 2)
  {
    if (v76)
    {
      v53 = v76;
      if (v76 == 1)
      {
        v54 = v61;
        v52(v61, v46, v45);
      }

      else
      {
        v54 = v62;
        v52(v62, v46, v45);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v53 = 0;
      v54 = v60;
      v52(v60, v46, v45);
      swift_storeEnumTagMultiPayload();
    }

    goto LABEL_27;
  }

  if (v76 == 3)
  {
    v53 = 3;
    v54 = v63;
    v52(v63, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  v53 = v76;
  if (v76 != 4)
  {
    v56 = v65;
    v52(v65, v46, v45);
    swift_storeEnumTagMultiPayload();
    goto LABEL_30;
  }

  v54 = v64;
  v52(v64, v46, v45);
  swift_storeEnumTagMultiPayload();
LABEL_27:
  sub_1D5D2BEC4(v54, sub_1D5B4AA6C, 0, v51, v73);
  sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);
LABEL_32:
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_1D7264B3C();
  v77 = v53;
  FormatOperator.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t FormatFrameExpressionLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
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
    v12 = v33;
    v13 = a1[3];
    v28 = a1;
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
          *(v21 + 16) = &unk_1F50FC538;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v28;
          goto LABEL_9;
        }
      }
    }

    sub_1D6662C84();
    v30 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      if (v29 == 1)
      {
        v30 = xmmword_1D7279980;
        sub_1D6662D2C();
        sub_1D726431C();
        a1 = v28;
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = v29;
        v25 = BYTE8(v29);
        v26 = 64;
      }

      else
      {
        v29 = xmmword_1D7279980;
        sub_1D6662CD8();
        sub_1D726431C();
        a1 = v28;
        (*(v11 + 8))(v10, v6);
        v24 = v30;
        v25 = BYTE8(v30);
        v23 = v31;
        v26 = v32 | 0x80;
      }
    }

    else
    {
      v30 = xmmword_1D7279980;
      sub_1D6662D2C();
      sub_1D726431C();
      a1 = v28;
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v26 = 0;
      v24 = v29;
      v25 = BYTE8(v29);
    }

    *v12 = v24;
    *(v12 + 8) = v25;
    *(v12 + 16) = v23;
    *(v12 + 24) = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatFrameExpressionLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v1;
  v33 = *(v1 + 16);
  v19 = *(v1 + 24);
  v20 = a1[3];
  v21 = a1[4];
  v34 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFrameExpressionLogic, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatFrameExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v21, v18, v22, &off_1F51F6C78);
  if (v19 >> 6)
  {
    if (v19 >> 6 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638D438(1, v35, v34, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638D5D0(2, v35, v34, v33, v19 & 1, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638D438(0, v35, v34, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatGroupBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v99 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v98 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v97 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v95 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v94 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v93 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v91 = &v87 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v90 = &v87 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v89 = &v87 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v88 = &v87 - v42;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v87 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v1 + 8);
  v102 = *v1;
  v101 = v47;
  v48 = *(v1 + 24);
  v100 = *(v1 + 16);
  v50 = *(v1 + 32);
  v49 = *(v1 + 40);
  v51 = *(v1 + 48);
  v52 = a1[3];
  v53 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v52);
  v54 = sub_1D5C30408();
  v120 = v46;
  sub_1D5D2EE70(&type metadata for FormatGroupBinding.Text, &type metadata for FormatCodingKeys, v55, v52, &type metadata for FormatGroupBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v53, v46, v54, &off_1F51F6C78);
  switch(v51 >> 4)
  {
    case 1u:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
      v58 = v89;
      (*(*(v74 - 8) + 16))(v89, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA68C(1, v102, v58);
      goto LABEL_29;
    case 2u:
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCD98);
      v58 = v90;
      (*(*(v68 - 8) + 16))(v90, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA820(2, v102, v58);
      goto LABEL_29;
    case 3u:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v70 = sub_1D725BD1C();
      v71 = __swift_project_value_buffer(v70, qword_1EDFFCD18);
      v58 = v91;
      (*(*(v70 - 8) + 16))(v91, v71, v70);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA9B4(3, v102, v101, v100, v58);
      goto LABEL_29;
    case 4u:
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD98);
      (*(*(v62 - 8) + 16))(v30, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AAB4C(4, v102, v30);
      goto LABEL_43;
    case 5u:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD68);
      v30 = v92;
      (*(*(v77 - 8) + 16))(v92, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v79 = 5;
      goto LABEL_36;
    case 6u:
      if (qword_1EDF31E78 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCC90);
      v30 = v93;
      (*(*(v80 - 8) + 16))(v93, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v79 = 6;
LABEL_36:
      v59 = v120;
      sub_1D63AA68C(v79, v102, v30);
      goto LABEL_43;
    case 7u:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD68);
      v30 = v94;
      (*(*(v72 - 8) + 16))(v94, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AACE0(7, v102, v30);
      goto LABEL_43;
    case 8u:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD68);
      v30 = v95;
      (*(*(v84 - 8) + 16))(v95, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AAE74(8, v102, v101, v30);
      goto LABEL_43;
    case 9u:
      *&v109 = v102;
      *(&v109 + 1) = v101;
      v110 = v100;
      v111 = v48;
      v112 = v50;
      v113 = v49;
      v114 = v51 & 0xF;
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCCA8);
      v30 = v96;
      (*(*(v66 - 8) + 16))(v96, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB00C(9, &v109, v30);
      goto LABEL_43;
    case 0xAu:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCCA8);
      v30 = v97;
      (*(*(v82 - 8) + 16))(v97, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB1B4(10, v102, v101 & 1, v30);
      goto LABEL_43;
    case 0xBu:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCE80);
      v30 = v98;
      (*(*(v60 - 8) + 16))(v98, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB350(11, v102, v30);
      goto LABEL_43;
    case 0xCu:
      *&v115 = v102;
      *(&v115 + 1) = v101;
      v116 = v100;
      v117 = v48;
      v118 = v50;
      v119 = v49;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v64 = sub_1D725BD1C();
      v65 = __swift_project_value_buffer(v64, qword_1EDFFCE38);
      v30 = v99;
      (*(*(v64 - 8) + 16))(v99, v65, v64);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AB4E4(12, &v115, v30);
LABEL_43:
      v76 = v30;
      break;
    default:
      *&v103 = v102;
      *(&v103 + 1) = v101;
      v104 = v100;
      v105 = v48;
      v106 = v50;
      v107 = v49;
      v108 = v51;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v56 = sub_1D725BD1C();
      v57 = __swift_project_value_buffer(v56, qword_1EDFFCD50);
      v58 = v88;
      (*(*(v56 - 8) + 16))(v88, v57, v56);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v59 = v120;
      sub_1D63AA4E4(0, &v103, v58);
LABEL_29:
      v76 = v58;
      break;
  }

  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v59, sub_1D5D30DC4);
}

uint64_t FormatFontTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v102 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v101 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v100 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v99 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v98 = &v82 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v82 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v96 = &v82 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v95 = &v82 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v94 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v93 = &v82 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v92 = &v82 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v91 = &v82 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v90 = &v82 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v89 = &v82 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v88 = &v82 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v87 = &v82 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v86 = &v82 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v85 = &v82 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v84 = &v82 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v83 = &v82 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v82 - v65;
  v103 = *v1;
  v104 = a1;
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v69 = sub_1D725BD1C();
  v70 = __swift_project_value_buffer(v69, qword_1EDFFCD30);
  v71 = *(*(v69 - 8) + 16);
  v71(v66, v70, v69);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v72 = v105;
  sub_1D5D2BEC4(v66, sub_1D5B4AA6C, 0, v67, v68);
  if (v72)
  {
    return sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v66, type metadata accessor for FormatVersionRequirement);
  v73 = v104;
  v74 = v104[3];
  v82 = v104[4];
  v105 = __swift_project_boxed_opaque_existential_1(v104, v74);
  v75 = v103;
  switch(v103)
  {
    case 1:
      v76 = v84;
      v71(v84, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 2:
      v76 = v85;
      v71(v85, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 3:
      v76 = v86;
      v71(v86, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_18;
    case 4:
      v77 = v103;
      v78 = v87;
      v71(v87, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 5:
      v77 = v103;
      v78 = v88;
      v71(v88, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 6:
      v77 = v103;
      v78 = v89;
      v71(v89, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 7:
      v77 = v103;
      v78 = v90;
      v71(v90, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 8:
      v77 = v103;
      v78 = v91;
      v71(v91, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 9:
      v77 = v103;
      v78 = v92;
      v71(v92, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 10:
      v77 = v103;
      v78 = v93;
      v71(v93, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 11:
      v77 = v103;
      v78 = v94;
      v71(v94, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 12:
      v77 = v103;
      v78 = v95;
      v71(v95, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 13:
      v77 = v103;
      v78 = v96;
      v71(v96, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 14:
      v77 = v103;
      v78 = v97;
      v71(v97, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 15:
      v77 = v103;
      v78 = v98;
      v71(v98, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 16:
      v77 = v103;
      v78 = v99;
      v71(v99, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 17:
      v77 = v103;
      v78 = v100;
      v71(v100, v70, v69);
      swift_storeEnumTagMultiPayload();
      goto LABEL_26;
    case 18:
      v77 = v103;
      v78 = v101;
      v71(v101, v70, v69);
      swift_storeEnumTagMultiPayload();
LABEL_26:
      sub_1D5D2BEC4(v78, sub_1D5B4AA6C, 0, v74, v82);
      v80 = v78;
      goto LABEL_27;
    case 19:
      v77 = v103;
      v81 = v102;
      v71(v102, v70, v69);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v81, sub_1D5B4AA6C, 0, v74, v82);
      v80 = v81;
LABEL_27:
      sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
      break;
    default:
      v76 = v83;
      v71(v83, v70, v69);
      swift_storeEnumTagMultiPayload();
LABEL_18:
      sub_1D5D2BEC4(v76, sub_1D5B4AA6C, 0, v74, v82);
      sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
      v77 = v75;
      break;
  }

  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  sub_1D7264B3C();
  v108 = v77;
  FormatFontTrait.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v106);
}

uint64_t FormatOptionsNodeStatementOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D6662DD4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6662E68();
  sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
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

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x73776F726874, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  v32 = 0uLL;
  v33 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v28 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v28;
    v31 = 0;
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v27 = v34;
  }

  else
  {
    (*(v14 + 8))(v10, v6);
    v27 = 1;
  }

  *v13 = v21;
  *(v13 + 8) = v20;
  *(v13 + 16) = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatOptionsNodeStatementOption.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1D6662FE8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v82 = *(v1 + 16);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6662E68();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68);
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementOption, v20, v22, v17, &type metadata for FormatOptionsNodeStatementOption, v20, &type metadata for FormatVersions.StarSky, v18, v14, v21, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD50);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v69 = v24;
  v70 = v23;
  v67 = v25 + 16;
  v68 = v26;
  (v26)(v9);
  v66 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v79 = v15;
  v80 = v16;
  v77 = 0uLL;
  v78 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = v14;
  v29 = *v27;
  v30 = *(v27 + 1);
  v81 = 0;
  v31 = swift_allocObject();
  v74 = &v64;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v64 - 4) = sub_1D5B4AA6C;
  *(&v64 - 3) = 0;
  v62 = sub_1D67088E4;
  v63 = v33;
  v81 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v81;
  v65 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D666307C();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02D68, sub_1D666307C);
  swift_retain_n();
  v72 = v36;
  v73 = v37;
  v38 = sub_1D72647CC();
  v81 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v81;
  v40 = *(v11 + 36);
  v75 = v28;
  v41 = &v28[v40];
  v42 = __swift_project_boxed_opaque_existential_1(&v28[v40], *&v28[v40 + 24]);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v64 - 4) = sub_1D615B4A4;
  *(&v64 - 3) = (&v64 - 6);
  v62 = sub_1D67088E4;
  v63 = v34;
  v46 = v76;
  sub_1D5D2BC70(v9, sub_1D615B49C, v47, sub_1D615B4A4, (&v64 - 6));
  if (v46)
  {
    v48 = v75;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v50 = v48;
  }

  else
  {

    v49 = v75;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v52 = v71;
    v68(v71, v69, v70);
    swift_storeEnumTagMultiPayload();
    if (v82)
    {
      v53 = v49;
    }

    else
    {
      LOBYTE(v77) = 0;
      v54 = swift_allocObject();
      v76 = xmmword_1D728CF30;
      *(v54 + 16) = xmmword_1D728CF30;
      *(v54 + 32) = v77;
      *(v54 + 40) = v65;
      *(v54 + 48) = v30;

      v53 = v49;
      v55 = sub_1D72647CC();
      LOBYTE(v77) = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v76;
      *(v56 + 40) = v77;
      v57 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
      MEMORY[0x1EEE9AC00](v57, v58);
      MEMORY[0x1EEE9AC00](v59, v60);
      *(&v64 - 4) = sub_1D5B4AA6C;
      *(&v64 - 3) = 0;
      v62 = sub_1D6663110;
      v63 = v54;
      LOBYTE(v55) = sub_1D5D2F7A4(v52, sub_1D615B49C, v61, sub_1D615B4A4, (&v64 - 6));

      if (v55)
      {
        v77 = v76;
        v78 = 0;
        LOBYTE(v79) = 0;
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
    v50 = v53;
  }

  return sub_1D5D2CFE8(v50, sub_1D6662FE8);
}