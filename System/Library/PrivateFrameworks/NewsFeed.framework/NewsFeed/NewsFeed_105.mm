uint64_t sub_1D64EF40C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6699360(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64EF444(uint64_t a1)
{
  v2 = sub_1D5C74254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64EF480(uint64_t a1)
{
  v2 = sub_1D5C74254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatImageRenderingMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v40 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatImageRenderingMode, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatImageRenderingMode, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD30);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BFE8(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641BFE8(2, v10);
      v30 = v10;
    }

    else
    {
      v36 = *(v23 + 16);
      v35 = *(v23 + 24);
      sub_1D5D0AFBC(v36);
      sub_1D5D0AFBC(v35);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
      (*(*(v37 - 8) + 16))(v6, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D639310C(3, v36, v35, v6);
      sub_1D5D0AFCC(v36);
      sub_1D5D0AFCC(v35);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D641BFE8(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D64EF9D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64EFAAC()
{
  sub_1D72621EC();
}

uint64_t sub_1D64EFB6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64EFC3C(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6C616E696769726FLL;
  v4 = 0xE900000000000063;
  v5 = 0x6974616D6F747561;
  if (*v1 != 2)
  {
    v5 = 0x65746E4972657375;
    v4 = 0xED00006563616672;
  }

  if (*v1)
  {
    v3 = 0x6574616C706D6574;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t FormatImageResize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v37 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v36 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v35 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  v39 = *v1;
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  v23 = *(*(v21 - 8) + 16);
  v23(v18, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v24 = v43;
  sub_1D5D2BEC4(v18, sub_1D5B4AA6C, 0, v19, v20);
  result = sub_1D5D2CFE8(v18, type metadata accessor for FormatVersionRequirement);
  if (!v24)
  {
    v27 = v40[3];
    v26 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v27);
    if (v39 > 1)
    {
      v29 = v26;
      if (v39 == 2)
      {
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v30 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
        v31 = v37;
        v23(v37, v30, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v27, v29);
        sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v32 = __swift_project_value_buffer(v21, qword_1EDFFCD80);
        v33 = v38;
        v23(v38, v32, v21);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v33, sub_1D5B4AA6C, 0, v27, v29);
        sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
      }
    }

    else
    {
      v43 = v27;
      v28 = v35;
      v23(v35, v22, v21);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v28, sub_1D5B4AA6C, 0, v43, v26);
      sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  return result;
}

uint64_t sub_1D64F02B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5870696C66;
  if (v2 != 1)
  {
    v3 = 0x5970696C66;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x657461746F72;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x5870696C66;
  if (*a2 != 1)
  {
    v6 = 0x5970696C66;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x657461746F72;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
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

uint64_t sub_1D64F03A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64F043C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64F04C0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64F0554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663D94();
  *a1 = result;
  return result;
}

void sub_1D64F0584(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x5870696C66;
  if (v2 != 1)
  {
    v4 = 0x5970696C66;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x657461746F72;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t FormatImageTransformRotate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6698460();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66984F4();
  sub_1D5B58B84(&qword_1EC886D28, sub_1D66984F4);
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

  v13 = v22[0];
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

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x73656572676564, 0xE700000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B57870();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatImageTransformRotate.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6698674();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66984F4();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EC886D28, sub_1D66984F4);
  sub_1D5D2EE70(&type metadata for FormatImageTransformRotate, v16, v18, v13, &type metadata for FormatImageTransformRotate, v16, &type metadata for FormatVersions.CrystalGlowE, v14, v11, v17, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCE38);
  (*(*(v19 - 8) + 16))(v6, v20, v19);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = v12;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v21 = &v11[*(v8 + 44)];
  v23 = *v21;
  v22 = *(v21 + 1);
  v42 = 0;
  v24 = swift_allocObject();
  v41[1] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D6708A98;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D6698708();
  v29 = v28;
  sub_1D5B58B84(&qword_1EC886D40, sub_1D6698708);
  swift_retain_n();
  v41[0] = v29;
  v30 = sub_1D72647CC();
  v42 = 0;
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 16) = v30;
  *(v31 + 40) = v42;
  v32 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v32, v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v41[-4] = sub_1D615B4A4;
  v41[-3] = &v41[-6];
  v39 = sub_1D669879C;
  v40 = v27;
  v36 = v41[2];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5B578C4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6698674);
}

uint64_t sub_1D64F0E7C()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x73656572676564;
  }
}

uint64_t sub_1D64F0EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656572676564 && a2 == 0xE700000000000000;
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

uint64_t sub_1D64F0F9C(uint64_t a1)
{
  v2 = sub_1D66985CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F0FD8(uint64_t a1)
{
  v2 = sub_1D66985CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssueBinding.Action.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Action, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.Action, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D64222D4(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.ActivityItemsConfiguration.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.ActivityItemsConfiguration, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422968(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v45 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = sub_1D5C30408();
  v46 = v25;
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Bool, &type metadata for FormatCodingKeys, v30, v27, &type metadata for FormatIssueBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v28, v25, v29, &off_1F51F6C18);
  if (v26 <= 1)
  {
    if (v26)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD98);
      (*(*(v42 - 8) + 16))(v17, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6422814(1, v17);
      v34 = v17;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD98);
      (*(*(v35 - 8) + 16))(v21, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v33 = v46;
      sub_1D6422814(0, v21);
      v34 = v21;
    }
  }

  else if (v26 == 2)
  {
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD50);
    (*(*(v37 - 8) + 16))(v13, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6422814(2, v13);
    v34 = v13;
  }

  else if (v26 == 3)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD98);
    (*(*(v31 - 8) + 16))(v9, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6422814(3, v9);
    v34 = v9;
  }

  else
  {
    if (qword_1EDF31EE0 != -1)
    {
      swift_once();
    }

    v39 = sub_1D725BD1C();
    v40 = __swift_project_value_buffer(v39, qword_1EDFFCD80);
    v41 = v45;
    (*(*(v39 - 8) + 16))(v45, v40, v39);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v33 = v46;
    sub_1D6422814(4, v41);
    v34 = v41;
  }

  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v33, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.DateTime.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.DateTime, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueBinding.DateTime, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Dawnburst, v17, v14, v18, &off_1F51F6CF8);
  if (v15)
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCCA8);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642202C(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31E80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCCA8);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D642202C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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

    v14 = v29;
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
          *(v21 + 16) = &unk_1F5115AF8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6698968();
    v26 = 0;
    v27 = 0;
    sub_1D726431C();
    v25 = xmmword_1D7279980;
    sub_1D6659898();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v27;
    v24 = v28;
    *v14 = v26;
    *(v14 + 8) = v23;
    *(v14 + 16) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatIssueBinding.Font.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Font, &type metadata for FormatCodingKeys, v17, v14, &type metadata for FormatIssueBinding.Font, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v15, v10, v16, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D63A8398(v12, v13, v6, v11);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Image.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Image, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v17, v14, v18, &off_1F51F6C18);
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
    sub_1D6422418(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD98);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422418(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.IssueCover.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.IssueCover, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.IssueCover, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v11, v9, v12, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD50);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422BF0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.LayeredMedia.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.LayeredMedia, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatIssueBinding.LayeredMedia, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v11, v9, v12, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCD98);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6422AAC(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatIssueBinding.Text.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v54 - v26;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatIssueBinding.Text, &type metadata for FormatCodingKeys, v36, v33, &type metadata for FormatIssueBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v34, v31, v35, &off_1F51F6C18);
  if (v32 > 2)
  {
    if (v32 > 4)
    {
      if (v32 == 5)
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v43 = sub_1D725BD1C();
        v44 = __swift_project_value_buffer(v43, qword_1EDFFCD98);
        v27 = v56;
        (*(*(v43 - 8) + 16))(v56, v44, v43);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 5;
      }

      else
      {
        if (qword_1EDF31EE8 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD98);
        v27 = v57;
        (*(*(v51 - 8) + 16))(v57, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v39 = 6;
      }
    }

    else if (v32 == 3)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v37 = sub_1D725BD1C();
      v38 = __swift_project_value_buffer(v37, qword_1EDFFCD98);
      v27 = v54;
      (*(*(v37 - 8) + 16))(v54, v38, v37);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 3;
    }

    else
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD98);
      v27 = v55;
      (*(*(v49 - 8) + 16))(v55, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v39 = 4;
    }

LABEL_28:
    sub_1D64226C0(v39, v27);
    v42 = v27;
    goto LABEL_29;
  }

  if (!v32)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
    (*(*(v45 - 8) + 16))(v27, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v39 = 0;
    goto LABEL_28;
  }

  if (v32 == 1)
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCD98);
    (*(*(v40 - 8) + 16))(v23, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64226C0(1, v23);
    v42 = v23;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v47 = sub_1D725BD1C();
    v48 = __swift_project_value_buffer(v47, qword_1EDFFCD98);
    (*(*(v47 - 8) + 16))(v19, v48, v47);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64226C0(2, v19);
    v42 = v19;
  }

LABEL_29:
  sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v31, sub_1D5D30DC4);
}

uint64_t FormatIssueCoverBinding.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v24;
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
          *(v20 + 16) = &unk_1F5115C88;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6698A64();
    v25 = 0uLL;
    sub_1D726431C();
    v22 = v26;
    v25 = xmmword_1D7279980;
    if (v26)
    {
      sub_1D668F778();
    }

    else
    {
      sub_1D6698AB8();
    }

    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *v13 = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatIssueCoverBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatIssueCoverBinding, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueCoverBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
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
    sub_1D6394398(1, v6);
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
    sub_1D639420C(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D64F3B6C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6575737369;
  }

  else
  {
    v2 = 0x70756F7267;
  }

  if (*a2)
  {
    v3 = 0x6575737369;
  }

  else
  {
    v3 = 0x70756F7267;
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

uint64_t sub_1D64F3BEC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64F3C5C()
{
  sub_1D72621EC();
}

uint64_t sub_1D64F3CB0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D64F3D28(uint64_t *a1@<X8>)
{
  v2 = 0x70756F7267;
  if (*v1)
  {
    v2 = 0x6575737369;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t FormatIssueCoverContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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
          *(v20 + 16) = &unk_1F5115CD8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6698B0C();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      sub_1D5C30060(0, &qword_1EC886D68, sub_1D6698B60, &type metadata for FormatIssueCoverContent, type metadata accessor for FormatSelectorValue);
      v27 = xmmword_1D7279980;
      sub_1D6698BB4();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = v28;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D6698C44();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v26 = v27;
      v25 = swift_allocObject();
      *(v25 + 16) = v26;
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatIssueCoverContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatIssueCoverContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatIssueCoverContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
  if (v15 < 0)
  {
    v24 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v26 = qword_1EDF31ED0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD50);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6394038(1, v24, v25, v6);

    v23 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCD50);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6393EA0(0, v20, v10);
    v23 = v10;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

unint64_t sub_1D64F45E8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x6F6974616D696E61;
      break;
    case 6:
      result = 0x746E65746E6F63;
      break;
    case 7:
      result = 0x7865646E497ALL;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x726F7463656C6573;
      break;
    case 12:
      result = 0x736E6F43657A6973;
      break;
    case 13:
      result = 2019912806;
      break;
    case 14:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D64F4788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669982C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64F47C0(uint64_t a1)
{
  v2 = sub_1D5E1C658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F47FC(uint64_t a1)
{
  v2 = sub_1D5E1C658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D64F4838(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000018;
    v6 = 0x737469617274;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x615272656E726F63;
    if (a1 != 5)
    {
      v7 = 0x776F64616873;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x726F7463656C6573;
    v3 = 0x6168706C61;
    if (a1 != 3)
    {
      v3 = 0x73726564726F62;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D64F4978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6699CE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64F49B0(uint64_t a1)
{
  v2 = sub_1D6669A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F49EC(uint64_t a1)
{
  v2 = sub_1D6669A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D64F4A28()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x737469617274;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x776F64616873;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x73726564726F62;
  if (v1 != 2)
  {
    v5 = 0x615272656E726F63;
  }

  if (*v0)
  {
    v2 = 0x6168706C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D64F4B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669A020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64F4B54(uint64_t a1)
{
  v2 = sub_1D6669EB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F4B90(uint64_t a1)
{
  v2 = sub_1D6669EB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatIssueCoverTraits.encode(to:)(void *a1)
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
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD50);
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

uint64_t FormatItem.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v234 = &v231 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v233 = &v231 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v237 = &v231 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v239 = &v231 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v241 = &v231 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v242 = &v231 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v245 = &v231 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v247 = &v231 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v257 = (&v231 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v250 = (&v231 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v231 - v35;
  sub_1D6698C98();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v37, v39);
  v41 = &v231 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *v1;
  v43 = v1[1];
  v44 = v1[7];
  v249 = v1[6];
  v248 = v44;
  v45 = v1[9];
  v246 = v1[8];
  v244 = v45;
  v46 = v1[11];
  v243 = v1[10];
  v240 = v46;
  v47 = v1[13];
  v238 = v1[12];
  v236 = v47;
  v235 = v1[14];
  v269 = *(v1 + 120);
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  sub_1D5CBC450();
  v51 = v50;
  v52 = sub_1D5B58B84(&qword_1EDF24D18, sub_1D5CBC450);
  sub_1D5D2EE70(&type metadata for FormatItem, v51, v53, v48, &type metadata for FormatItem, v51, &type metadata for FormatVersions.JazzkonC, v49, v41, v52, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
  v56 = *(v54 - 8);
  v57 = *(v56 + 16);
  v252 = v55;
  v255 = v57;
  v256 = v54;
  v254 = v56 + 16;
  (v57)(v36);
  v253 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v265 = v42;
  v266 = v43;
  v263 = 0uLL;
  v264 = 0;
  v58 = &v41[*(v38 + 44)];
  v59 = *v58;
  v60 = *(v58 + 1);
  v268 = 0;
  v61 = swift_allocObject();
  *&v261 = &v231;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = v268;
  *(v61 + 40) = v59;
  *(v61 + 48) = v60;
  MEMORY[0x1EEE9AC00](v61, v62);
  v260 = &v231 - 6;
  *(&v231 - 4) = sub_1D5B4AA6C;
  *(&v231 - 3) = 0;
  v229 = sub_1D6708A9C;
  v230 = v63;
  v268 = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v268;
  v251 = v59;
  *(v64 + 40) = v59;
  *(v64 + 48) = v60;
  sub_1D5E1B67C(0);
  v66 = v65;
  v67 = sub_1D5B58B84(&qword_1EDF02BF8, sub_1D5E1B67C);
  swift_retain_n();
  v258 = v66;
  v259 = v67;
  v68 = sub_1D72647CC();
  v268 = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v268;
  v70 = v41;
  v71 = v36;
  v72 = &v70[*(v38 + 36)];
  v73 = __swift_project_boxed_opaque_existential_1(v72, *(v72 + 3));
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v77 = v260;
  *(&v231 - 4) = sub_1D615B4A4;
  *(&v231 - 3) = v77;
  v229 = sub_1D6708A9C;
  v230 = v64;
  v78 = v262;
  sub_1D5D2BC70(v71, sub_1D615B49C, v79, sub_1D615B4A4, (&v231 - 6));
  v262 = v78;
  if (!v78)
  {
    v232 = v72;
    v260 = v60;

    v81 = v262;
    sub_1D72647EC();
    v80 = v70;
    v262 = v81;
    if (v81)
    {
      sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);
LABEL_7:

      goto LABEL_10;
    }

    sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

    v82 = v250;
    v83 = v252;
    v85 = v255;
    v84 = v256;
    v255(v250, v252, v256);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
    v85(v82, v83, v84);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v82, type metadata accessor for FormatVersionRequirement);
    v85(v257, v83, v84);
    swift_storeEnumTagMultiPayload();
    v265 = v249;
    v266 = v248;
    v261 = xmmword_1D72BAA60;
    v263 = xmmword_1D72BAA60;
    v264 = 0;
    v268 = 0;
    v86 = swift_allocObject();
    v250 = &v231;
    *(v86 + 16) = v261;
    *(v86 + 32) = v268;
    v87 = v251;
    v88 = v260;
    *(v86 + 40) = v251;
    *(v86 + 48) = v88;
    MEMORY[0x1EEE9AC00](v86, v89);
    v90 = v262;
    *(&v231 - 4) = sub_1D5B4AA6C;
    *(&v231 - 3) = 0;
    v229 = sub_1D6708A9C;
    v230 = v91;
    v268 = 0;
    v92 = swift_allocObject();
    *(v92 + 16) = v261;
    *(v92 + 32) = v268;
    *(v92 + 40) = v87;
    *(v92 + 48) = v88;
    swift_retain_n();
    v93 = sub_1D72647CC();
    v268 = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = v93;
    *(v94 + 24) = v261;
    *(v94 + 40) = v268;
    v95 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
    MEMORY[0x1EEE9AC00](v95, v96);
    MEMORY[0x1EEE9AC00](v97, v98);
    *(&v231 - 4) = sub_1D615B4A4;
    *(&v231 - 3) = (&v231 - 6);
    v99 = v257;
    v229 = sub_1D6708A9C;
    v230 = v92;
    sub_1D5D2BC70(v257, sub_1D615B49C, v100, sub_1D615B4A4, (&v231 - 6));
    v262 = v90;
    if (v90)
    {
      sub_1D5D2CFE8(v99, type metadata accessor for FormatVersionRequirement);

      goto LABEL_10;
    }

    sub_1D5B4C410();
    v103 = v262;
    sub_1D72647EC();
    v262 = v103;
    if (v103)
    {
      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
      goto LABEL_7;
    }

    sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);

    v104 = v247;
    v105 = v252;
    v107 = v255;
    v106 = v256;
    v255(v247, v252, v256);
    swift_storeEnumTagMultiPayload();
    if (*(v246 + 16))
    {
      LOBYTE(v263) = 0;
      v108 = swift_allocObject();
      v261 = xmmword_1D72BAA70;
      *(v108 + 16) = xmmword_1D72BAA70;
      *(v108 + 32) = v263;
      *(v108 + 40) = v251;
      *(v108 + 48) = v260;

      v109 = sub_1D72647CC();
      LOBYTE(v263) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = v261;
      *(v110 + 40) = v263;
      v111 = v80;
      v112 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v112, v113);
      MEMORY[0x1EEE9AC00](v114, v115);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6698D2C;
      v230 = v108;
      v116 = v262;
      v118 = sub_1D5D2F7A4(v104, sub_1D615B49C, v117, sub_1D615B4A4, (&v231 - 6));
      v262 = v116;
      if (v116)
      {
LABEL_16:
        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

        v101 = v111;
        return sub_1D5D2CFE8(v101, sub_1D6698C98);
      }

      v119 = v118;

      if (v119)
      {
        v263 = v261;
        v264 = 0;
        v265 = v246;
        sub_1D5C34D84(0, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
        sub_1D66775F8();
        v120 = v262;
        sub_1D72647EC();
        v121 = v247;
        v262 = v120;
        if (v120)
        {

          sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
          goto LABEL_10;
        }

        sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);
      }

      v107 = v255;
      v106 = v256;
      v105 = v252;
    }

    else
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    }

    v122 = v245;
    v107(v245, v105, v106);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v263) = 0;
    v123 = swift_allocObject();
    v261 = xmmword_1D72BAA80;
    *(v123 + 16) = xmmword_1D72BAA80;
    *(v123 + 32) = v263;
    *(v123 + 40) = v251;
    *(v123 + 48) = v260;

    v124 = sub_1D72647CC();
    LOBYTE(v263) = 0;
    v125 = swift_allocObject();
    *(v125 + 16) = v124;
    *(v125 + 24) = v261;
    *(v125 + 40) = v263;
    v126 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
    MEMORY[0x1EEE9AC00](v126, v127);
    MEMORY[0x1EEE9AC00](v128, v129);
    *(&v231 - 4) = sub_1D5B4AA6C;
    *(&v231 - 3) = 0;
    v229 = sub_1D6708A9C;
    v230 = v123;
    v130 = v262;
    v132 = sub_1D5D2F7A4(v122, sub_1D615B49C, v131, sub_1D615B4A4, (&v231 - 6));
    v262 = v130;
    if (v130)
    {
      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

      v101 = v80;
      return sub_1D5D2CFE8(v101, sub_1D6698C98);
    }

    v133 = v132;
    v231 = v80;

    if (v133)
    {
      v263 = v261;
      v264 = 0;
      v265 = v244;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v134 = v231;
      v135 = v262;
      sub_1D72647EC();

      sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);
      v136 = v260;
      v137 = v256;
      v262 = v135;
      if (v135)
      {
LABEL_35:
        v101 = v134;
        return sub_1D5D2CFE8(v101, sub_1D6698C98);
      }
    }

    else
    {
      sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);

      v134 = v231;
      v136 = v260;
      v137 = v256;
    }

    v138 = v242;
    v255(v242, v252, v137);
    swift_storeEnumTagMultiPayload();
    v261 = xmmword_1D72BAA90;
    v263 = xmmword_1D72BAA90;
    v264 = 0;
    LOBYTE(v265) = 0;
    v139 = swift_allocObject();
    v141 = v139;
    *(v139 + 16) = v261;
    *(v139 + 32) = v265;
    v142 = v251;
    *(v139 + 40) = v251;
    *(v139 + 48) = v136;
    if (v243)
    {
      v257 = &v231;
      v265 = v243;
      MEMORY[0x1EEE9AC00](v139, v140);
      v143 = v142;
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708A9C;
      v230 = v141;
      v268 = 0;
      v144 = swift_allocObject();
      *(v144 + 16) = v261;
      *(v144 + 32) = v268;
      *(v144 + 40) = v143;
      *(v144 + 48) = v136;
      swift_retain_n();

      v145 = sub_1D72647CC();
      v268 = 0;
      v146 = swift_allocObject();
      *(v146 + 16) = v145;
      *(v146 + 24) = v261;
      *(v146 + 40) = v268;
      v147 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v147, v148);
      MEMORY[0x1EEE9AC00](v149, v150);
      *(&v231 - 4) = sub_1D615B4A4;
      *(&v231 - 3) = (&v231 - 6);
      v229 = sub_1D6708A9C;
      v230 = v144;
      v151 = v262;
      v153 = sub_1D5D2F7A4(v138, sub_1D615B49C, v152, sub_1D615B4A4, (&v231 - 6));
      v262 = v151;
      if (v151)
      {

        v134 = v231;
LABEL_33:
        v154 = v138;
LABEL_34:
        sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
        goto LABEL_35;
      }

      v155 = v153;

      if (v155)
      {
        type metadata accessor for FormatItemNodeStyle(0);
        sub_1D5B58B84(&qword_1EDF0FC10, type metadata accessor for FormatItemNodeStyle);
        v134 = v231;
        v156 = v262;
        sub_1D72647EC();
        v262 = v156;
        if (v156)
        {

          goto LABEL_33;
        }
      }

      else
      {

        v134 = v231;
      }

      v136 = v260;
      v142 = v251;
    }

    else
    {
    }

    sub_1D5D2CFE8(v242, type metadata accessor for FormatVersionRequirement);
    v157 = v241;
    v158 = v252;
    v255(v241, v252, v256);
    swift_storeEnumTagMultiPayload();
    if (*(v240 + 16))
    {
      LOBYTE(v263) = 0;
      v104 = v157;
      v159 = swift_allocObject();
      v261 = xmmword_1D72BAAA0;
      *(v159 + 16) = xmmword_1D72BAAA0;
      *(v159 + 32) = v263;
      *(v159 + 40) = v142;
      *(v159 + 48) = v136;

      v111 = v134;
      v160 = sub_1D72647CC();
      LOBYTE(v263) = 0;
      v161 = swift_allocObject();
      *(v161 + 16) = v160;
      *(v161 + 24) = v261;
      *(v161 + 40) = v263;
      v162 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v162, v163);
      MEMORY[0x1EEE9AC00](v164, v165);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708A9C;
      v230 = v159;
      v166 = v262;
      v168 = sub_1D5D2F7A4(v104, sub_1D615B49C, v167, sub_1D615B4A4, (&v231 - 6));
      v262 = v166;
      if (v166)
      {
        goto LABEL_16;
      }

      v169 = v168;

      if (v169)
      {
        v263 = v261;
        v264 = 0;
        v265 = v240;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        v134 = v231;
        v170 = v262;
        sub_1D72647EC();
        v171 = v241;
        v262 = v170;
        if (v170)
        {

          v154 = v171;
          goto LABEL_34;
        }

        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v241, type metadata accessor for FormatVersionRequirement);

        v134 = v231;
      }

      v136 = v260;
      v158 = v252;
      v172 = v237;
      v173 = v239;
    }

    else
    {
      sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
      v172 = v237;
      v173 = v239;
    }

    v174 = v256;
    v255(v173, v158, v256);
    swift_storeEnumTagMultiPayload();
    if (*(v238 + 16))
    {
      LOBYTE(v263) = 0;
      v175 = swift_allocObject();
      v261 = xmmword_1D72BAAB0;
      *(v175 + 16) = xmmword_1D72BAAB0;
      *(v175 + 32) = v263;
      *(v175 + 40) = v251;
      *(v175 + 48) = v136;

      v176 = sub_1D72647CC();
      LOBYTE(v263) = 0;
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      *(v177 + 24) = v261;
      *(v177 + 40) = v263;
      v178 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v178, v179);
      MEMORY[0x1EEE9AC00](v180, v181);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708A9C;
      v230 = v175;
      v182 = v262;
      v184 = sub_1D5D2F7A4(v239, sub_1D615B49C, v183, sub_1D615B4A4, (&v231 - 6));
      v262 = v182;
      if (v182)
      {

LABEL_55:
        v185 = &v267;
LABEL_56:
        sub_1D5D2CFE8(*(v185 - 32), type metadata accessor for FormatVersionRequirement);
        goto LABEL_86;
      }

      v186 = v184;

      if (v186)
      {
        v134 = v231;
        v187 = v262;
        sub_1D5E09594(v238, v231, 8, 0, 0);
        v262 = v187;
        if (v187)
        {

          goto LABEL_55;
        }
      }

      else
      {
        v134 = v231;
      }

      v136 = v260;
      v172 = v237;
      v173 = v239;
    }

    sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
    v255(v172, v158, v174);
    swift_storeEnumTagMultiPayload();
    if (*(v236 + 16))
    {
      LOBYTE(v263) = 0;
      v188 = swift_allocObject();
      v261 = xmmword_1D72BAAC0;
      *(v188 + 16) = xmmword_1D72BAAC0;
      *(v188 + 32) = v263;
      *(v188 + 40) = v251;
      *(v188 + 48) = v136;

      v189 = sub_1D72647CC();
      LOBYTE(v263) = 0;
      v190 = swift_allocObject();
      *(v190 + 16) = v189;
      *(v190 + 24) = v261;
      *(v190 + 40) = v263;
      v191 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v191, v192);
      MEMORY[0x1EEE9AC00](v193, v194);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708A9C;
      v230 = v188;
      v195 = v262;
      v197 = sub_1D5D2F7A4(v172, sub_1D615B49C, v196, sub_1D615B4A4, (&v231 - 6));
      v262 = v195;
      if (v195)
      {
        sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);

        goto LABEL_86;
      }

      v198 = v197;

      if (v198)
      {
        v263 = v261;
        v264 = 0;
        v265 = v236;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        v199 = v262;
        sub_1D72647EC();
        v262 = v199;
        if (v199)
        {

          v185 = &v266;
          goto LABEL_56;
        }

        sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);
        v134 = v231;
        v136 = v260;
        v174 = v256;
        v158 = v252;
      }

      else
      {
        sub_1D5D2CFE8(v237, type metadata accessor for FormatVersionRequirement);

        v134 = v231;
        v136 = v260;
        v174 = v256;
      }
    }

    else
    {
      sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
    }

    v200 = v233;
    v255(v233, v158, v174);
    swift_storeEnumTagMultiPayload();
    if (*(v235 + 16))
    {
      LOBYTE(v263) = 0;
      v201 = swift_allocObject();
      v261 = xmmword_1D72BAAD0;
      *(v201 + 16) = xmmword_1D72BAAD0;
      *(v201 + 32) = v263;
      *(v201 + 40) = v251;
      *(v201 + 48) = v136;

      v202 = sub_1D72647CC();
      LOBYTE(v263) = 0;
      v203 = swift_allocObject();
      *(v203 + 16) = v202;
      *(v203 + 24) = v261;
      *(v203 + 40) = v263;
      v204 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v204, v205);
      MEMORY[0x1EEE9AC00](v206, v207);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708A9C;
      v230 = v201;
      v208 = v262;
      v210 = sub_1D5D2F7A4(v200, sub_1D615B49C, v209, sub_1D615B4A4, (&v231 - 6));
      v262 = v208;
      if (v208)
      {
        sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);

        v101 = v134;
        return sub_1D5D2CFE8(v101, sub_1D6698C98);
      }

      v211 = v210;

      if (v211)
      {
        v263 = v261;
        v264 = 0;
        v265 = v235;
        sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
        sub_1D6659404();
        v212 = v262;
        sub_1D72647EC();
        v262 = v212;
        if (v212)
        {

          v185 = &v263;
          goto LABEL_56;
        }

        sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
      }

      v136 = v260;
      v174 = v256;
    }

    else
    {
      sub_1D5D2CFE8(v200, type metadata accessor for FormatVersionRequirement);
    }

    v255(v234, v252, v174);
    swift_storeEnumTagMultiPayload();
    v261 = xmmword_1D72BAAE0;
    v263 = xmmword_1D72BAAE0;
    v264 = 0;
    LOBYTE(v265) = 0;
    v213 = swift_allocObject();
    v215 = v213;
    *(v213 + 16) = v261;
    *(v213 + 32) = v265;
    v216 = v251;
    *(v213 + 40) = v251;
    *(v213 + 48) = v136;
    if (v269 == 7)
    {
    }

    else
    {
      LOBYTE(v265) = v269;
      MEMORY[0x1EEE9AC00](v213, v214);
      *(&v231 - 4) = sub_1D5B4AA6C;
      *(&v231 - 3) = 0;
      v229 = sub_1D6708A9C;
      v230 = v215;
      v268 = 0;
      v217 = swift_allocObject();
      *(v217 + 16) = v261;
      *(v217 + 32) = v268;
      *(v217 + 40) = v216;
      *(v217 + 48) = v136;
      swift_retain_n();
      v218 = sub_1D72647CC();
      v268 = 0;
      v219 = swift_allocObject();
      *(v219 + 16) = v218;
      *(v219 + 24) = v261;
      *(v219 + 40) = v268;
      v220 = __swift_project_boxed_opaque_existential_1(v232, *(v232 + 3));
      MEMORY[0x1EEE9AC00](v220, v221);
      MEMORY[0x1EEE9AC00](v222, v223);
      *(&v231 - 4) = sub_1D615B4A4;
      *(&v231 - 3) = (&v231 - 6);
      v229 = sub_1D6708A9C;
      v230 = v217;
      v224 = v262;
      v226 = sub_1D5D2F7A4(v234, sub_1D615B49C, v225, sub_1D615B4A4, (&v231 - 6));
      v262 = v224;
      if (v224)
      {
        sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);

        goto LABEL_86;
      }

      v227 = v226;

      if (v227)
      {
        sub_1D6327494();
        v228 = v262;
        sub_1D72647EC();
        v262 = v228;
      }
    }

    sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);

LABEL_86:
    v101 = v231;
    return sub_1D5D2CFE8(v101, sub_1D6698C98);
  }

  sub_1D5D2CFE8(v71, type metadata accessor for FormatVersionRequirement);

  v80 = v70;
LABEL_10:
  v101 = v80;
  return sub_1D5D2CFE8(v101, sub_1D6698C98);
}

uint64_t sub_1D64F743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669A2B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64F7474(uint64_t a1)
{
  v2 = sub_1D5CBC5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F74B0(uint64_t a1)
{
  v2 = sub_1D5CBC5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemBindingsNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v147 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v151 = &v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v153 = &v147 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v152 = &v147 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v154 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v164 = &v147 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v147 - v26;
  sub_1D669B13C();
  *&v163 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v147 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D5E1B4C8();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF0C4E0, sub_1D5E1B4C8);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.Sydro, v33, v31, v36, &off_1F51F6C38);
  swift_beginAccess();
  v38 = v2[2];
  v39 = v2[3];
  v161 = v2;
  v40 = qword_1EDF31F08;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCDE0);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v160 = v41;
  v159 = v43 + 16;
  v44(v27, v42, v41);
  v158 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v45 = sub_1D725895C();
  v46 = (*(*(v45 - 8) + 48))(v8, 1, v45);
  v156 = v42;
  v157 = v44;
  if (v46 == 1)
  {
    v150 = v38;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v47 = v163;
    v48 = &v31[*(v163 + 44)];
    v50 = *v48;
    v49 = *(v48 + 1);
    LOBYTE(v173) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v173;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D5E1B48C(0);
    v53 = v52;
    sub_1D5B58B84(&qword_1EDF03228, sub_1D5E1B48C);

    v149 = v53;
    v54 = sub_1D72647CC();
    LOBYTE(v173) = 0;
    v55 = v31;
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 16) = v54;
    *(v56 + 40) = v173;
    v57 = __swift_project_boxed_opaque_existential_1(&v55[*(v47 + 36)], *&v55[*(v47 + 36) + 24]);
    v155 = &v147;
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v147 - 4) = sub_1D5B4AA6C;
    *(&v147 - 3) = 0;
    v145 = sub_1D669B1D0;
    v146 = v51;
    v61 = v162;
    v63 = sub_1D5D2F7A4(v27, sub_1D615B49C, v62, sub_1D615B4A4, (&v147 - 6));
    if (v61)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v64 = v55;
      return sub_1D5D2CFE8(v64, sub_1D669B13C);
    }

    v89 = v63;

    if (v89)
    {
      v173 = 0uLL;
      v174 = 0;
      v171 = v150;
      v172 = v39;
      v31 = v55;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v42 = v156;
      v44 = v157;
      v65 = v164;
      v162 = 0;
    }

    else
    {
      v162 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v55;
      v42 = v156;
      v44 = v157;
      v65 = v164;
    }
  }

  else
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v65 = v164;
    v47 = v163;
  }

  v66 = v161[4];
  v67 = v161[5];
  v44(v65, v42, v160);
  swift_storeEnumTagMultiPayload();
  v171 = v66;
  v172 = v67;
  v163 = xmmword_1D728CF30;
  v173 = xmmword_1D728CF30;
  v174 = 0;
  v68 = &v31[*(v47 + 44)];
  v69 = v47;
  v70 = *v68;
  v71 = *(v68 + 1);
  LOBYTE(v169) = 0;
  v72 = swift_allocObject();
  v155 = &v147;
  *(v72 + 16) = v163;
  *(v72 + 32) = v169;
  *(v72 + 40) = v70;
  *(v72 + 48) = v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v147 - 4) = sub_1D5B4AA6C;
  *(&v147 - 3) = 0;
  v145 = sub_1D6708AA0;
  v146 = v74;
  LOBYTE(v169) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v163;
  *(v75 + 32) = v169;
  v148 = v70;
  *(v75 + 40) = v70;
  *(v75 + 48) = v71;
  sub_1D5E1B48C(0);
  v77 = v76;
  v78 = sub_1D5B58B84(&qword_1EDF03228, sub_1D5E1B48C);
  swift_retain_n();
  v150 = v77;
  v149 = v78;
  v79 = sub_1D72647CC();
  LOBYTE(v169) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v163;
  *(v80 + 40) = v169;
  v81 = &v31[*(v69 + 36)];
  v82 = __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v147 - 4) = sub_1D615B4A4;
  *(&v147 - 3) = (&v147 - 6);
  v145 = sub_1D6708AA0;
  v146 = v75;
  v86 = v164;
  v87 = v162;
  sub_1D5D2BC70(v164, sub_1D615B49C, v88, sub_1D615B4A4, (&v147 - 6));
  if (v87)
  {
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v147 = v81;
    *&v163 = v71;

    sub_1D72647EC();
    sub_1D5D2CFE8(v164, type metadata accessor for FormatVersionRequirement);

    v90 = v161;
    swift_beginAccess();
    v91 = v90[6];
    v92 = v154;
    v93 = v156;
    v157(v154, v156, v160);
    swift_storeEnumTagMultiPayload();
    if (*(v91 + 16))
    {
      LOBYTE(v171) = 0;
      v94 = swift_allocObject();
      v164 = xmmword_1D7297410;
      *(v94 + 16) = xmmword_1D7297410;
      *(v94 + 32) = v171;
      *(v94 + 40) = v148;
      *(v94 + 48) = v163;

      v95 = sub_1D72647CC();
      LOBYTE(v171) = 0;
      v96 = swift_allocObject();
      *(v96 + 16) = v95;
      *(v96 + 24) = v164;
      *(v96 + 40) = v171;
      v97 = __swift_project_boxed_opaque_existential_1(v147, *(v147 + 3));
      MEMORY[0x1EEE9AC00](v97, v98);
      MEMORY[0x1EEE9AC00](v99, v100);
      *(&v147 - 4) = sub_1D5B4AA6C;
      *(&v147 - 3) = 0;
      v145 = sub_1D6708AA0;
      v146 = v94;
      v102 = sub_1D5D2F7A4(v92, sub_1D615B49C, v101, sub_1D615B4A4, (&v147 - 6));
      v105 = v102;

      if (v105)
      {
        sub_1D5E07794(v91, v31, 2, 0, 0);
      }

      v104 = v153;
      v93 = v156;
    }

    else
    {
      v104 = v153;
    }

    v106 = v152;
    sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
    v107 = v161;
    swift_beginAccess();
    v108 = v107[7];
    v157(v106, v93, v160);
    swift_storeEnumTagMultiPayload();
    if (*(v108 + 16))
    {
      LOBYTE(v169) = 0;
      v109 = swift_allocObject();
      v164 = xmmword_1D72BAA60;
      *(v109 + 16) = xmmword_1D72BAA60;
      *(v109 + 32) = v169;
      *(v109 + 40) = v148;
      *(v109 + 48) = v163;

      v110 = sub_1D72647CC();
      LOBYTE(v169) = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v110;
      *(v111 + 24) = v164;
      *(v111 + 40) = v169;
      v112 = __swift_project_boxed_opaque_existential_1(v147, *(v147 + 3));
      MEMORY[0x1EEE9AC00](v112, v113);
      MEMORY[0x1EEE9AC00](v114, v115);
      *(&v147 - 4) = sub_1D5B4AA6C;
      *(&v147 - 3) = 0;
      v145 = sub_1D6708AA0;
      v146 = v109;
      v117 = sub_1D5D2F7A4(v106, sub_1D615B49C, v116, sub_1D615B4A4, (&v147 - 6));
      v118 = v117;

      if (v118)
      {
        v169 = v164;
        v170 = 0;
        *&v167 = v108;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        sub_1D72647EC();

        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
      }

      v104 = v153;
      v93 = v156;
    }

    else
    {
      sub_1D5D2CFE8(v106, type metadata accessor for FormatVersionRequirement);
    }

    v119 = v161;
    swift_beginAccess();
    v120 = v119[8];
    v157(v104, v93, v160);
    swift_storeEnumTagMultiPayload();
    v121 = v163;
    v122 = v148;
    if (*(v120 + 16))
    {
      LOBYTE(v167) = 0;
      v123 = swift_allocObject();
      v164 = xmmword_1D72BAA70;
      *(v123 + 16) = xmmword_1D72BAA70;
      *(v123 + 32) = v167;
      *(v123 + 40) = v122;
      *(v123 + 48) = v121;

      v124 = v104;
      v125 = sub_1D72647CC();
      LOBYTE(v167) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v125;
      *(v126 + 24) = v164;
      *(v126 + 40) = v167;
      v127 = __swift_project_boxed_opaque_existential_1(v147, *(v147 + 3));
      MEMORY[0x1EEE9AC00](v127, v128);
      MEMORY[0x1EEE9AC00](v129, v130);
      *(&v147 - 4) = sub_1D5B4AA6C;
      *(&v147 - 3) = 0;
      v145 = sub_1D6708AA0;
      v146 = v123;
      v132 = sub_1D5D2F7A4(v124, sub_1D615B49C, v131, sub_1D615B4A4, (&v147 - 6));
      v133 = v132;

      if (v133)
      {
        v167 = v164;
        v168 = 0;
        *&v165 = v120;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        sub_1D72647EC();
        v121 = v163;

        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
        v93 = v156;
      }

      else
      {
        sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

        v93 = v156;
        v121 = v163;
      }
    }

    else
    {
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    }

    v134 = v161;
    swift_beginAccess();
    v135 = v134[9];
    v136 = v151;
    v157(v151, v93, v160);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v165) = 0;
    v137 = swift_allocObject();
    v164 = xmmword_1D72BAA80;
    *(v137 + 16) = xmmword_1D72BAA80;
    *(v137 + 32) = v165;
    *(v137 + 40) = v148;
    *(v137 + 48) = v121;

    v138 = sub_1D72647CC();
    LOBYTE(v165) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v138;
    *(v139 + 24) = v164;
    *(v139 + 40) = v165;
    v140 = __swift_project_boxed_opaque_existential_1(v147, *(v147 + 3));
    MEMORY[0x1EEE9AC00](v140, v141);
    MEMORY[0x1EEE9AC00](v142, v143);
    *(&v147 - 4) = sub_1D5B4AA6C;
    *(&v147 - 3) = 0;
    v145 = sub_1D6708AA0;
    v146 = v137;
    LOBYTE(v138) = sub_1D5D2F7A4(v136, sub_1D615B49C, v144, sub_1D615B4A4, (&v147 - 6));

    if (v138)
    {
      v165 = v164;
      v166 = 0;
      v175 = v135;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      sub_1D72647EC();

      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
    }
  }

  v64 = v31;
  return sub_1D5D2CFE8(v64, sub_1D669B13C);
}

uint64_t sub_1D64F8E6C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E6572646C696863;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x736E6F6974706FLL;
  if (v1 != 3)
  {
    v4 = 0x73656C797473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6564496D657469;
  if (v1 != 1)
  {
    v5 = 0x726F7463656C6573;
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

uint64_t sub_1D64F8F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669B24C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64F8F88(uint64_t a1)
{
  v2 = sub_1D5E1B5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64F8FC4(uint64_t a1)
{
  v2 = sub_1D5E1B5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNode.encode(to:)(void *a1)
{
  v4 = *v1;
  v343 = v2;
  *&v344 = v4;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v318 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v323 = &v318 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v324 = &v318 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v325 = &v318 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v326 = &v318 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v327 = &v318 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v328 = &v318 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v329 = &v318 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v330 = &v318 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v331 = &v318 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v332 = &v318 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v333 = &v318 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  *&v345 = &v318 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v318 - v47;
  sub_1D669B4A8();
  v341 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v318 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1D5CD251C();
  v56 = v55;
  v57 = sub_1D5B58B84(&qword_1EDF24C38, sub_1D5CD251C);
  v342 = v52;
  v58 = v53;
  v59 = v1;
  sub_1D5D2EE70(v344, v56, v60, v58, v344, v56, &type metadata for FormatVersions.JazzkonC, v54, v52, v57, &off_1F51F6C78);
  swift_beginAccess();
  v61 = v1[2];
  v62 = v59[3];
  v63 = qword_1EDF31EB0;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v339 = v65;
  v67(v48);
  v340 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v69 = sub_1D725895C();
  v70 = (*(*(v69 - 8) + 48))(v8, 1, v69);
  v334 = v59;
  v335 = v67;
  v336 = v64;
  v338 = v68;
  if (v70 != 1)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_7;
  }

  v337 = v61;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v71 = v341;
  v72 = v342;
  v73 = &v342[*(v341 + 11)];
  v75 = *v73;
  v74 = *(v73 + 1);
  LOBYTE(v346) = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = 0;
  *(v76 + 32) = v346;
  *(v76 + 40) = v75;
  *(v76 + 48) = v74;
  sub_1D5E1B41C(0);
  v78 = v77;
  v79 = sub_1D5B58B84(&qword_1EDF02AF8, sub_1D5E1B41C);

  *&v344 = v78;
  v322 = v79;
  v80 = sub_1D72647CC();
  LOBYTE(v346) = 0;
  v81 = swift_allocObject();
  *(v81 + 24) = 0;
  *(v81 + 32) = 0;
  *(v81 + 16) = v80;
  *(v81 + 40) = v346;
  v82 = __swift_project_boxed_opaque_existential_1((v72 + *(v71 + 9)), *(v72 + *(v71 + 9) + 24));
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v318 - 4) = sub_1D5B4AA6C;
  *(&v318 - 3) = 0;
  v316 = sub_1D669B53C;
  v317 = v76;
  v86 = v343;
  v88 = sub_1D5D2F7A4(v48, sub_1D615B49C, v87, sub_1D615B4A4, (&v318 - 6));
  if (!v86)
  {
    v118 = v88;

    if (v118)
    {
      v346 = 0uLL;
      LOBYTE(v347) = 0;
      v359 = v337;
      v360 = v62;
      sub_1D72647EC();

      sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
      v90 = v345;
      v343 = 0;
      v59 = v334;
      v67 = v335;
      v64 = v336;
LABEL_8:
      v91 = v59[4];
      v92 = v59[5];
      (v67)(v90, v339, v64);
      swift_storeEnumTagMultiPayload();
      v359 = v91;
      v360 = v92;
      v344 = xmmword_1D728CF30;
      v346 = xmmword_1D728CF30;
      LOBYTE(v347) = 0;
      v93 = v341;
      v94 = v342;
      v95 = &v342[*(v341 + 11)];
      v96 = *v95;
      v97 = *(v95 + 1);
      LOBYTE(v358) = 0;
      v98 = swift_allocObject();
      v337 = &v318;
      *(v98 + 16) = v344;
      *(v98 + 32) = v358;
      *(v98 + 40) = v96;
      *(v98 + 48) = v97;
      MEMORY[0x1EEE9AC00](v98, v99);
      *(&v318 - 4) = sub_1D5B4AA6C;
      *(&v318 - 3) = 0;
      v316 = sub_1D6708AA4;
      v317 = v100;
      LOBYTE(v358) = 0;
      v101 = swift_allocObject();
      *(v101 + 16) = v344;
      *(v101 + 32) = v358;
      v320 = v96;
      *(v101 + 40) = v96;
      *(v101 + 48) = v97;
      sub_1D5E1B41C(0);
      v103 = v102;
      v104 = sub_1D5B58B84(&qword_1EDF02AF8, sub_1D5E1B41C);
      v319 = v97;
      swift_retain_n();
      v321 = v104;
      v322 = v103;
      v105 = sub_1D72647CC();
      LOBYTE(v358) = 0;
      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      *(v106 + 24) = v344;
      *(v106 + 40) = v358;
      v107 = *(v93 + 9);
      v108 = v94;
      v109 = &v94[v107];
      v110 = __swift_project_boxed_opaque_existential_1(v109, *(v109 + 3));
      MEMORY[0x1EEE9AC00](v110, v111);
      MEMORY[0x1EEE9AC00](v112, v113);
      *(&v318 - 4) = sub_1D615B4A4;
      *(&v318 - 3) = (&v318 - 6);
      v316 = sub_1D6708AA4;
      v317 = v101;
      v114 = v345;
      v115 = v343;
      sub_1D5D2BC70(v345, sub_1D615B49C, v116, sub_1D615B4A4, (&v318 - 6));
      if (v115)
      {
        sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);

LABEL_11:
        v89 = v108;
        return sub_1D5D2CFE8(v89, sub_1D669B4A8);
      }

      *&v344 = v109;

      sub_1D72647EC();
      sub_1D5D2CFE8(v345, type metadata accessor for FormatVersionRequirement);

      v119 = v333;
      v120 = v334[6];
      (v335)(v333, v339, v336);
      swift_storeEnumTagMultiPayload();
      v359 = v120;
      v345 = xmmword_1D7297410;
      v346 = xmmword_1D7297410;
      LOBYTE(v347) = 0;
      LOBYTE(v358) = 0;
      v121 = swift_allocObject();
      v341 = &v318;
      *(v121 + 16) = v345;
      *(v121 + 32) = v358;
      v122 = v319;
      v123 = v320;
      *(v121 + 40) = v320;
      *(v121 + 48) = v122;
      MEMORY[0x1EEE9AC00](v121, v124);
      v343 = 0;
      v337 = &v318 - 6;
      *(&v318 - 4) = sub_1D5B4AA6C;
      *(&v318 - 3) = 0;
      v316 = sub_1D6708AA4;
      v317 = v125;
      LOBYTE(v358) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v345;
      *(v126 + 32) = v358;
      *(v126 + 40) = v123;
      *(v126 + 48) = v122;
      swift_retain_n();
      v127 = sub_1D72647CC();
      LOBYTE(v358) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *(v128 + 24) = v345;
      *(v128 + 40) = v358;
      v129 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
      MEMORY[0x1EEE9AC00](v129, v130);
      MEMORY[0x1EEE9AC00](v131, v132);
      v133 = v337;
      *(&v318 - 4) = sub_1D615B4A4;
      *(&v318 - 3) = v133;
      v316 = sub_1D6708AA4;
      v317 = v126;
      v134 = v343;
      sub_1D5D2BC70(v119, sub_1D615B49C, v135, sub_1D615B4A4, (&v318 - 6));
      if (v134)
      {
        sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

        v72 = v342;
LABEL_19:
        v89 = v72;
        return sub_1D5D2CFE8(v89, sub_1D669B4A8);
      }

      sub_1D5CA1E90();
      sub_1D72647EC();
      v343 = 0;
      sub_1D5D2CFE8(v333, type metadata accessor for FormatVersionRequirement);

      v136 = v334;
      v137 = v334[7];
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v138 = v336;
      v139 = __swift_project_value_buffer(v336, qword_1EDFFCD68);
      v140 = v332;
      v337 = v139;
      v141 = v335;
      v335(v332);
      swift_storeEnumTagMultiPayload();
      v345 = xmmword_1D72BAA60;
      v346 = xmmword_1D72BAA60;
      LOBYTE(v347) = 0;
      LOBYTE(v359) = 0;
      v143 = swift_allocObject();
      *(v143 + 16) = v345;
      *(v143 + 32) = v359;
      v144 = v320;
      *(v143 + 40) = v320;
      v145 = v319;
      *(v143 + 48) = v319;
      if (v137)
      {
        v341 = &v318;
        v359 = v137;
        MEMORY[0x1EEE9AC00](v145, v142);
        *(&v318 - 4) = sub_1D5B4AA6C;
        *(&v318 - 3) = 0;
        v316 = sub_1D6708AA4;
        v317 = v143;
        LOBYTE(v358) = 0;
        v147 = v146;
        v148 = swift_allocObject();
        *(v148 + 16) = v345;
        *(v148 + 32) = v358;
        *(v148 + 40) = v144;
        *(v148 + 48) = v147;
        swift_retain_n();

        v149 = sub_1D72647CC();
        LOBYTE(v358) = 0;
        v150 = swift_allocObject();
        *(v150 + 16) = v149;
        *(v150 + 24) = v345;
        *(v150 + 40) = v358;
        v151 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
        MEMORY[0x1EEE9AC00](v151, v152);
        MEMORY[0x1EEE9AC00](v153, v154);
        *(&v318 - 4) = sub_1D615B4A4;
        *(&v318 - 3) = (&v318 - 6);
        v316 = sub_1D6708AA4;
        v317 = v148;
        v155 = v343;
        v157 = sub_1D5D2F7A4(v140, sub_1D615B49C, v156, sub_1D615B4A4, (&v318 - 6));
        if (v155)
        {

          v158 = v342;
          v159 = v332;

          sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);
          v89 = v158;
          return sub_1D5D2CFE8(v89, sub_1D669B4A8);
        }

        v162 = v157;

        if (v162)
        {
          sub_1D6659D24();
          v163 = v342;
          sub_1D72647EC();
          v160 = v163;
          v343 = 0;
        }

        else
        {
          v343 = 0;

          v160 = v342;
        }

        v136 = v334;
        v141 = v335;
        v138 = v336;
        v161 = v332;
      }

      else
      {

        v160 = v342;
        v161 = v140;
      }

      sub_1D5D2CFE8(v161, type metadata accessor for FormatVersionRequirement);
      swift_beginAccess();
      v164 = v136[8];
      v48 = v331;
      v165 = v339;
      v141(v331, v339, v138);
      swift_storeEnumTagMultiPayload();
      if (v164[2])
      {
        LOBYTE(v346) = 0;
        v166 = swift_allocObject();
        v345 = xmmword_1D72BAA70;
        *(v166 + 16) = xmmword_1D72BAA70;
        *(v166 + 32) = v346;
        *(v166 + 40) = v320;
        *(v166 + 48) = v319;

        v341 = v164;
        v72 = v160;
        v167 = sub_1D72647CC();
        LOBYTE(v346) = 0;
        v168 = swift_allocObject();
        *(v168 + 16) = v167;
        *(v168 + 24) = v345;
        *(v168 + 40) = v346;
        v169 = v344;
        v170 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
        MEMORY[0x1EEE9AC00](v170, v171);
        MEMORY[0x1EEE9AC00](v172, v173);
        *(&v318 - 4) = sub_1D5B4AA6C;
        *(&v318 - 3) = 0;
        v316 = sub_1D6708AA4;
        v317 = v166;
        v174 = v343;
        v176 = sub_1D5D2F7A4(v48, sub_1D615B49C, v175, sub_1D615B4A4, (&v318 - 6));
        v343 = v174;
        if (v174)
        {
          goto LABEL_5;
        }

        v177 = v176;
        v178 = v341;

        if (v177)
        {
          v346 = v345;
          LOBYTE(v347) = 0;
          v358 = v178;
          sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
          sub_1D6659C88();
          v179 = v343;
          sub_1D72647EC();
          v180 = v331;
          if (v179)
          {

            sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
            goto LABEL_19;
          }

          v343 = 0;

          sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v331, type metadata accessor for FormatVersionRequirement);
        }

        v136 = v334;
        v141 = v335;
        v138 = v336;
        v165 = v339;
      }

      else
      {
        sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
        v169 = v344;
      }

      swift_beginAccess();
      v181 = v136[9];
      v182 = v330;
      v141(v330, v165, v138);
      swift_storeEnumTagMultiPayload();
      if (*(v181 + 16))
      {
        LOBYTE(v346) = 0;
        v183 = swift_allocObject();
        v345 = xmmword_1D72BAA80;
        *(v183 + 16) = xmmword_1D72BAA80;
        *(v183 + 32) = v346;
        *(v183 + 40) = v320;
        *(v183 + 48) = v319;

        v108 = v342;
        v184 = sub_1D72647CC();
        LOBYTE(v346) = 0;
        v185 = swift_allocObject();
        *(v185 + 16) = v184;
        *(v185 + 24) = v345;
        *(v185 + 40) = v346;
        v186 = __swift_project_boxed_opaque_existential_1(v169, v169[3]);
        MEMORY[0x1EEE9AC00](v186, v187);
        MEMORY[0x1EEE9AC00](v188, v189);
        *(&v318 - 4) = sub_1D5B4AA6C;
        *(&v318 - 3) = 0;
        v316 = sub_1D6708AA4;
        v317 = v183;
        v190 = v343;
        v192 = sub_1D5D2F7A4(v182, sub_1D615B49C, v191, sub_1D615B4A4, (&v318 - 6));
        if (v190)
        {
          sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);

          goto LABEL_11;
        }

        v194 = v192;

        if (v194)
        {
          v346 = v345;
          LOBYTE(v347) = 0;
          v357 = v181;
          sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
          sub_1D5D2FA60();
          sub_1D72647EC();
          v193 = 0;

          sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);

          v193 = 0;
        }
      }

      else
      {
        sub_1D5D2CFE8(v182, type metadata accessor for FormatVersionRequirement);
        v193 = v343;
      }

      v195 = v334;
      swift_beginAccess();
      v196 = v195[10];
      v197 = v329;
      (v335)(v329, v339, v336);
      swift_storeEnumTagMultiPayload();
      v72 = v342;
      if (*(v196 + 16))
      {
        LOBYTE(v346) = 0;
        v198 = swift_allocObject();
        v345 = xmmword_1D72BAA90;
        *(v198 + 16) = xmmword_1D72BAA90;
        *(v198 + 32) = v346;
        *(v198 + 40) = v320;
        *(v198 + 48) = v319;

        v199 = sub_1D72647CC();
        LOBYTE(v346) = 0;
        v200 = swift_allocObject();
        *(v200 + 16) = v199;
        *(v200 + 24) = v345;
        *(v200 + 40) = v346;
        v201 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
        MEMORY[0x1EEE9AC00](v201, v202);
        MEMORY[0x1EEE9AC00](v203, v204);
        *(&v318 - 4) = sub_1D5B4AA6C;
        *(&v318 - 3) = 0;
        v316 = sub_1D6708AA4;
        v317 = v198;
        v206 = sub_1D5D2F7A4(v197, sub_1D615B49C, v205, sub_1D615B4A4, (&v318 - 6));
        if (v193)
        {

          sub_1D5D2CFE8(v329, type metadata accessor for FormatVersionRequirement);
          goto LABEL_19;
        }

        v207 = v206;

        if (v207)
        {
          sub_1D5E08E2C(v196, v72, 6, 0, 0);
        }

        v193 = 0;

        v197 = v329;
      }

      sub_1D5D2CFE8(v197, type metadata accessor for FormatVersionRequirement);
      v208 = v334;
      swift_beginAccess();
      v209 = v208[11];
      v210 = v328;
      (v335)(v328, v339, v336);
      swift_storeEnumTagMultiPayload();
      if (*(v209 + 16))
      {
        LOBYTE(v346) = 0;
        v211 = swift_allocObject();
        v345 = xmmword_1D72BAAA0;
        *(v211 + 16) = xmmword_1D72BAAA0;
        *(v211 + 32) = v346;
        *(v211 + 40) = v320;
        *(v211 + 48) = v319;

        v212 = sub_1D72647CC();
        LOBYTE(v346) = 0;
        v213 = swift_allocObject();
        *(v213 + 16) = v212;
        *(v213 + 24) = v345;
        *(v213 + 40) = v346;
        v214 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
        MEMORY[0x1EEE9AC00](v214, v215);
        MEMORY[0x1EEE9AC00](v216, v217);
        *(&v318 - 4) = sub_1D5B4AA6C;
        *(&v318 - 3) = 0;
        v316 = sub_1D6708AA4;
        v317 = v211;
        v219 = sub_1D5D2F7A4(v210, sub_1D615B49C, v218, sub_1D615B4A4, (&v318 - 6));
        if (v193)
        {
LABEL_64:
          sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);

          goto LABEL_19;
        }

        v220 = v219;

        if ((v220 & 1) == 0)
        {
          sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);

          v193 = 0;
          goto LABEL_59;
        }

        v346 = v345;
        LOBYTE(v347) = 0;
        v356 = v209;
        sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
        sub_1D60AD304();
        sub_1D72647EC();
        v193 = 0;
      }

      sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);
LABEL_59:
      v221 = v334;
      swift_beginAccess();
      v222 = v221[12];
      v223 = qword_1EDF31ED0;

      if (v223 != -1)
      {
        swift_once();
      }

      v224 = v336;
      v225 = __swift_project_value_buffer(v336, qword_1EDFFCD50);
      v210 = v327;
      (v335)(v327, v225, v224);
      swift_storeEnumTagMultiPayload();
      if (v222 >> 62)
      {
        if (sub_1D7263BFC())
        {
          goto LABEL_63;
        }
      }

      else if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_63:
        LOBYTE(v346) = 0;
        v226 = swift_allocObject();
        v345 = xmmword_1D72BAAB0;
        *(v226 + 16) = xmmword_1D72BAAB0;
        *(v226 + 32) = v346;
        *(v226 + 40) = v320;
        *(v226 + 48) = v319;

        v227 = sub_1D72647CC();
        LOBYTE(v346) = 0;
        v228 = swift_allocObject();
        *(v228 + 16) = v227;
        *(v228 + 24) = v345;
        *(v228 + 40) = v346;
        v229 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
        MEMORY[0x1EEE9AC00](v229, v230);
        MEMORY[0x1EEE9AC00](v231, v232);
        *(&v318 - 4) = sub_1D5B4AA6C;
        *(&v318 - 3) = 0;
        v316 = sub_1D6708AA4;
        v317 = v226;
        v234 = sub_1D5D2F7A4(v210, sub_1D615B49C, v233, sub_1D615B4A4, (&v318 - 6));
        v235 = v193;
        if (v193)
        {
          goto LABEL_64;
        }

        v236 = v234;

        if (v236)
        {
          v346 = v345;
          LOBYTE(v347) = 0;
          v355 = v222;
          sub_1D5B5BF78(0, &qword_1EDF1B428, type metadata accessor for FormatBlock, MEMORY[0x1E69E62F8]);
          sub_1D666E5D0();
          sub_1D72647EC();

          sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v327, type metadata accessor for FormatVersionRequirement);
        }

LABEL_70:
        v343 = v235;
        v237 = v334;
        swift_beginAccess();
        v238 = v237[13];
        v239 = v326;
        v240 = v336;
        v241 = v335;
        (v335)(v326, v337, v336);
        swift_storeEnumTagMultiPayload();
        v242 = v320;
        if (v238)
        {
          LOBYTE(v346) = 0;
          v243 = swift_allocObject();
          v345 = xmmword_1D72BAAC0;
          *(v243 + 16) = xmmword_1D72BAAC0;
          *(v243 + 32) = v346;
          *(v243 + 40) = v242;
          *(v243 + 48) = v319;

          v244 = v342;
          v245 = sub_1D72647CC();
          LOBYTE(v346) = 0;
          v246 = swift_allocObject();
          *(v246 + 16) = v245;
          *(v246 + 24) = v345;
          *(v246 + 40) = v346;
          v247 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
          MEMORY[0x1EEE9AC00](v247, v248);
          MEMORY[0x1EEE9AC00](v249, v250);
          *(&v318 - 4) = sub_1D5B4AA6C;
          *(&v318 - 3) = 0;
          v316 = sub_1D6708AA4;
          v317 = v243;
          v251 = v343;
          v253 = sub_1D5D2F7A4(v239, sub_1D615B49C, v252, sub_1D615B4A4, (&v318 - 6));
          v343 = v251;
          if (v251)
          {
            sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);

            v89 = v244;
            return sub_1D5D2CFE8(v89, sub_1D669B4A8);
          }

          v254 = v253;

          if (v254)
          {
            v346 = v345;
            LOBYTE(v347) = 0;
            v354 = v238;
            v255 = v343;
            sub_1D72647EC();
            v343 = v255;
            if (v255)
            {
              v256 = v326;
LABEL_109:
              sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
              goto LABEL_110;
            }
          }

          sub_1D5D2CFE8(v326, type metadata accessor for FormatVersionRequirement);
          v237 = v334;
          v241 = v335;
          v240 = v336;
        }

        else
        {
          sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
        }

        v257 = v325;
        swift_beginAccess();
        v258 = v237[14];
        v241(v257, v337, v240);
        swift_storeEnumTagMultiPayload();
        if (v258 == 0x8000000000000000)
        {
          sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          LOBYTE(v346) = 0;
          v259 = swift_allocObject();
          v345 = xmmword_1D72BAAD0;
          *(v259 + 16) = xmmword_1D72BAAD0;
          *(v259 + 32) = v346;
          *(v259 + 40) = v320;
          *(v259 + 48) = v319;

          sub_1D5EB1500(v258);
          v260 = sub_1D72647CC();
          LOBYTE(v346) = 0;
          v261 = swift_allocObject();
          *(v261 + 16) = v260;
          *(v261 + 24) = v345;
          *(v261 + 40) = v346;
          v262 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
          MEMORY[0x1EEE9AC00](v262, v263);
          MEMORY[0x1EEE9AC00](v264, v265);
          *(&v318 - 4) = sub_1D5B4AA6C;
          *(&v318 - 3) = 0;
          v316 = sub_1D6708AA4;
          v317 = v259;
          v266 = v343;
          v268 = sub_1D5D2F7A4(v257, sub_1D615B49C, v267, sub_1D615B4A4, (&v318 - 6));
          v343 = v266;
          if (v266)
          {

            sub_1D5EB15C4(v258);
            v256 = v257;
            goto LABEL_109;
          }

          v269 = v268;

          if (v269)
          {
            v346 = v345;
            LOBYTE(v347) = 0;
            v353 = v258;
            sub_1D5DF6A60();
            v270 = v343;
            sub_1D72647EC();
            v343 = v270;
            if (v270)
            {
              sub_1D5EB15C4(v353);
              v256 = v325;
              goto LABEL_109;
            }

            v271 = v353;
          }

          else
          {
            v271 = v258;
          }

          sub_1D5EB15C4(v271);
          sub_1D5D2CFE8(v325, type metadata accessor for FormatVersionRequirement);
          v237 = v334;
        }

        swift_beginAccess();
        v272 = v237[15];
        v273 = qword_1EDF31F48;

        if (v273 != -1)
        {
          swift_once();
        }

        v274 = v336;
        v275 = __swift_project_value_buffer(v336, qword_1EDFFCE68);
        v276 = v324;
        (v335)(v324, v275, v274);
        swift_storeEnumTagMultiPayload();
        if (*(v272 + 16))
        {
          LOBYTE(v346) = 0;
          v277 = swift_allocObject();
          v345 = xmmword_1D72BAAE0;
          *(v277 + 16) = xmmword_1D72BAAE0;
          *(v277 + 32) = v346;
          *(v277 + 40) = v320;
          *(v277 + 48) = v319;

          v278 = sub_1D72647CC();
          LOBYTE(v346) = 0;
          v279 = swift_allocObject();
          *(v279 + 16) = v278;
          *(v279 + 24) = v345;
          *(v279 + 40) = v346;
          v280 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
          MEMORY[0x1EEE9AC00](v280, v281);
          MEMORY[0x1EEE9AC00](v282, v283);
          *(&v318 - 4) = sub_1D5B4AA6C;
          *(&v318 - 3) = 0;
          v316 = sub_1D6708AA4;
          v317 = v277;
          v284 = v343;
          v286 = sub_1D5D2F7A4(v276, sub_1D615B49C, v285, sub_1D615B4A4, (&v318 - 6));
          v343 = v284;
          if (v284)
          {
            sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);

            goto LABEL_110;
          }

          v288 = v286;

          if (v288)
          {
            v346 = v345;
            LOBYTE(v347) = 0;
            *&v351 = v272;
            sub_1D5C34D84(0, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
            sub_1D6659A78();
            v289 = v343;
            sub_1D72647EC();
            v343 = v289;
            if (v289)
            {

              v256 = v324;
              goto LABEL_109;
            }

            sub_1D5D2CFE8(v324, type metadata accessor for FormatVersionRequirement);
            goto LABEL_99;
          }

          v287 = v324;
        }

        else
        {
          v287 = v276;
        }

        sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);

LABEL_99:
        v290 = v334[16];
        v291 = v334[17];
        v292 = v334[18];
        v293 = v334[19];
        v295 = v334[20];
        v294 = v334[21];
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v296 = v336;
        v297 = __swift_project_value_buffer(v336, qword_1EDFFCE38);
        (v335)(v323, v297, v296);
        swift_storeEnumTagMultiPayload();
        v345 = xmmword_1D72BAAF0;
        v351 = xmmword_1D72BAAF0;
        v352 = 0;
        LOBYTE(v346) = 0;
        v298 = swift_allocObject();
        v300 = v298;
        *(v298 + 16) = v345;
        *(v298 + 32) = v346;
        v301 = v319;
        *(v298 + 40) = v320;
        *(v298 + 48) = v301;
        if (v290)
        {
          v341 = &v318;
          *&v346 = v290;
          *(&v346 + 1) = v291;
          v347 = v292;
          v348 = v293;
          v349 = v295;
          v350 = v294;
          MEMORY[0x1EEE9AC00](v298, v299);
          v340 = &v318 - 6;
          *(&v318 - 4) = sub_1D5B4AA6C;
          *(&v318 - 3) = 0;
          v316 = sub_1D6708AA4;
          v317 = v300;
          v361 = 0;
          v302 = swift_allocObject();
          *(v302 + 16) = v345;
          *(v302 + 32) = v361;
          *(v302 + 40) = v320;
          *(v302 + 48) = v319;
          swift_retain_n();
          sub_1D5EB1D80(v290, v291, v292, v293, v295);
          v303 = sub_1D72647CC();
          v361 = 0;
          v304 = swift_allocObject();
          *(v304 + 16) = v303;
          *(v304 + 24) = v345;
          *(v304 + 40) = v361;
          v305 = __swift_project_boxed_opaque_existential_1(v344, *(v344 + 24));
          MEMORY[0x1EEE9AC00](v305, v306);
          MEMORY[0x1EEE9AC00](v307, v308);
          v309 = v340;
          *(&v318 - 4) = sub_1D615B4A4;
          *(&v318 - 3) = v309;
          v316 = sub_1D6708AA4;
          v317 = v302;
          v310 = v343;
          v312 = sub_1D5D2F7A4(v323, sub_1D615B49C, v311, sub_1D615B4A4, (&v318 - 6));
          v343 = v310;
          if (v310)
          {
          }

          else
          {
            v313 = v312;

            if (v313)
            {
              sub_1D6659A24();
              v314 = v343;
              sub_1D72647EC();
              v343 = v314;
            }
          }

          v315 = v349;

          sub_1D5CBF568(v315);

          v256 = v323;
          goto LABEL_109;
        }

        sub_1D5D2CFE8(v323, type metadata accessor for FormatVersionRequirement);

LABEL_110:
        v89 = v342;
        return sub_1D5D2CFE8(v89, sub_1D669B4A8);
      }

      sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);

      v235 = v193;
      goto LABEL_70;
    }

    v343 = 0;
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v59 = v334;
    v67 = v335;
    v64 = v336;
LABEL_7:
    v90 = v345;
    goto LABEL_8;
  }

LABEL_5:
  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v89 = v72;
  return sub_1D5D2CFE8(v89, sub_1D669B4A8);
}

uint64_t sub_1D64FBF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669B620(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64FBFAC(uint64_t a1)
{
  v2 = sub_1D5CD25F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64FBFE8(uint64_t a1)
{
  v2 = sub_1D5CD25F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v35 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v35, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v14 = v39;
  sub_1D7264B0C();
  v15 = v14;
  if (!v14)
  {
    v31 = v5;
    v39 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v16 = sub_1D7264AFC();
    v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

    v19 = v33;
    v18 = v34;
    v20 = v9;
    if (v17)
    {
      v21 = sub_1D726433C();
      v22 = (v21 + 40);
      v23 = *(v21 + 16) + 1;
      while (--v23)
      {
        v24 = v22 + 2;
        v25 = *v22;
        v22 += 2;
        if (v25 >= 4)
        {
          v26 = *(v24 - 3);

          sub_1D5E2D970();
          v15 = swift_allocError();
          *v27 = v26;
          *(v27 + 8) = v25;
          *(v27 + 16) = &unk_1F5115D28;
          *(v27 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v19 + 8))(v9, v18);
          goto LABEL_9;
        }
      }
    }

    sub_1D669B5CC();
    v38[0] = 0uLL;
    sub_1D726431C();
    if (v36[0] > 3u)
    {
      v29 = v32;
      (*(v19 + 8))(v20, v18);
    }

    else
    {
      if (v36[0] > 1u)
      {
        v38[0] = xmmword_1D7279980;
        if (v36[0] == 2)
        {
          sub_1D5B58B84(&qword_1EDF2B450, type metadata accessor for FormatCommandOpenURL);
          v30 = v31;
          sub_1D726431C();
          (*(v19 + 8))(v9, v18);
          sub_1D5C8F76C(v30, v13, type metadata accessor for FormatCommandOpenURL);
        }

        else
        {
          sub_1D5CD4024();
          sub_1D726431C();
          (*(v19 + 8))(v9, v18);
          *v13 = v36[0];
        }

        goto LABEL_20;
      }

      if (!v36[0])
      {
        (*(v19 + 8))(v9, v18);
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v29 = v32;
LABEL_22:
        sub_1D5C8F76C(v13, v29, type metadata accessor for FormatItemNodeAction);
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v37 = xmmword_1D7279980;
      sub_1D6151CD0();
      sub_1D726431C();
      v29 = v32;
      (*(v19 + 8))(v20, v18);
      sub_1D62B5F18(v38, v36);
      sub_1D62B5F18(v36, v13);
    }

    swift_storeEnumTagMultiPayload();
    goto LABEL_22;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v15);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeAction.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v79 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v77 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v76 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v74 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v75 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v73 - v30;
  v32 = type metadata accessor for FormatItemNodeAction();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v42 = sub_1D5C30408();
  v82 = v39;
  sub_1D5D2EE70(v32, &type metadata for FormatCodingKeys, v43, v40, v32, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyE, v41, v39, v42, &off_1F51F6CB8);
  sub_1D6706BB4(v80, v35, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v59 = sub_1D725BD1C();
        v60 = __swift_project_value_buffer(v59, qword_1EDFFCDE0);
        v17 = v77;
        (*(*(v59 - 8) + 16))(v77, v60, v59);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 6;
      }

      else
      {
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v70 = sub_1D725BD1C();
        v71 = __swift_project_value_buffer(v70, qword_1EDFFCCA8);
        v17 = v78;
        (*(*(v70 - 8) + 16))(v78, v71, v70);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v51 = 7;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCCE8);
      (*(*(v49 - 8) + 16))(v17, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 4;
    }

    else
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCCE8);
      v17 = v76;
      (*(*(v66 - 8) + 16))(v76, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = 5;
    }

    v57 = v82;
    sub_1D6420314(v51, v17);
    v64 = type metadata accessor for FormatVersionRequirement;
    v65 = v17;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v68 = sub_1D725BD1C();
      v69 = __swift_project_value_buffer(v68, qword_1EDFFCCE8);
      (*(*(v68 - 8) + 16))(v31, v69, v68);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = v82;
      sub_1D6420314(0, v31);
      v64 = type metadata accessor for FormatVersionRequirement;
      v65 = v31;
      goto LABEL_34;
    }

    v52 = *v35;
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v53 = sub_1D725BD1C();
    v54 = __swift_project_value_buffer(v53, qword_1EDFFCCE8);
    v55 = v74;
    (*(*(v53 - 8) + 16))(v74, v54, v53);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v56 = v52;
    v57 = v82;
    sub_1D63A2FF4(3, v56, v55);
    v58 = type metadata accessor for FormatVersionRequirement;
LABEL_23:
    v64 = v58;
    v65 = v55;
LABEL_34:
    sub_1D5D2CFE8(v65, v64);
    v48 = v57;
    return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
  }

  if (EnumCaseMultiPayload)
  {
    v55 = v79;
    sub_1D5C8F76C(v35, v79, type metadata accessor for FormatCommandOpenURL);
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v61 = sub_1D725BD1C();
    v62 = __swift_project_value_buffer(v61, qword_1EDFFCCE8);
    v63 = v75;
    (*(*(v61 - 8) + 16))(v75, v62, v61);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = v82;
    sub_1D63A2E20(2, v55, v63);
    sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
    v58 = type metadata accessor for FormatCommandOpenURL;
    goto LABEL_23;
  }

  sub_1D62B5F18(v35, v81);
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCCE8);
  (*(*(v45 - 8) + 16))(v27, v46, v45);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v47 = v82;
  sub_1D63A2C80(1, v81, v27);
  sub_1D62B5F74(v81);
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v48 = v47;
  return sub_1D5D2CFE8(v48, sub_1D5D30DC4);
}

uint64_t sub_1D64FD00C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663DE0();
  *a1 = result;
  return result;
}

void sub_1D64FD03C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65746167656C6564;
  v5 = 0xE800000000000000;
  v6 = 0x64656C6261736964;
  if (v2 != 6)
  {
    v6 = 0x726574756F72;
    v5 = 0xE600000000000000;
  }

  v7 = 0xEF79616C50726579;
  v8 = 0x616C506F65646976;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001D73BA8E0;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x4C52556E65706FLL;
  if (v2 != 2)
  {
    v10 = 0x6574756F72;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x676E69646E6962;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t FormatItemNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v355 = &v343 - v8;
  v357 = type metadata accessor for FormatItemNodeAction();
  v354 = *(v357 - 8);
  MEMORY[0x1EEE9AC00](v357, v9);
  v353 = &v343 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], v5);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  *&v372 = &v343 - v13;
  v14 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v345 = &v343 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v346 = &v343 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v347 = &v343 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v349 = &v343 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v351 = &v343 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v352 = &v343 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v356 = &v343 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v358 = &v343 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v359 = &v343 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v360 = &v343 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  *&v371 = &v343 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v343 - v49;
  sub_1D669BA8C();
  *&v369 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v343 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_1D5CC65A0();
  v58 = v57;
  v59 = sub_1D5B58B84(&qword_1EDF254D8, sub_1D5CC65A0);
  v405 = v54;
  sub_1D5D2EE70(v4, v58, v60, v55, v4, v58, &type metadata for FormatVersions.JazzkonC, v56, v54, v59, &off_1F51F6C78);
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v368 = v2;
  v63 = qword_1EDF31EB0;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD30);
  v66 = *(v64 - 8);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v367 = v64;
  v67(v50, v65, v64);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v372;
  v362 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v73 = v50;
  v364 = v67;
  v365 = v69;
  v366 = v68;
  *&v363 = v65;
  if (v72 == 1)
  {
    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v74 = v369;
    v75 = v405;
    v76 = &v405[*(v369 + 44)];
    v78 = *v76;
    v77 = *(v76 + 1);
    LOBYTE(v396) = 0;
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = v396;
    *(v79 + 40) = v78;
    *(v79 + 48) = v77;
    sub_1D669BB20();
    v81 = v80;
    v82 = sub_1D5B58B84(&qword_1EDF03518, sub_1D669BB20);

    *&v372 = v81;
    v361 = v82;
    v83 = sub_1D72647CC();
    LOBYTE(v396) = 0;
    v84 = swift_allocObject();
    *(v84 + 24) = 0;
    *(v84 + 32) = 0;
    *(v84 + 16) = v83;
    *(v84 + 40) = v396;
    v85 = __swift_project_boxed_opaque_existential_1((v75 + *(v74 + 36)), *(v75 + *(v74 + 36) + 24));
    MEMORY[0x1EEE9AC00](v85, v86);
    MEMORY[0x1EEE9AC00](v87, v88);
    *(&v343 - 4) = sub_1D5B4AA6C;
    *(&v343 - 3) = 0;
    v341 = sub_1D669BBB4;
    v342 = v79;
    v89 = v370;
    v91 = sub_1D5D2F7A4(v73, sub_1D615B49C, v90, sub_1D615B4A4, (&v343 - 6));
    if (v89)
    {
      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v75, sub_1D669BA8C);
    }

    v120 = v91;

    if (v120)
    {
      v396 = 0uLL;
      LOBYTE(v397) = 0;
      *&v389 = v362;
      *(&v389 + 1) = v61;
      sub_1D72647EC();

      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
      v67 = v364;
      v370 = 0;
    }

    else
    {
      v370 = 0;
      sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);

      v67 = v364;
    }

    v65 = v363;
  }

  else
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v93 = v368[4];
  v94 = v368[5];
  v67(v371, v65, v367);
  swift_storeEnumTagMultiPayload();
  v403 = v93;
  v404 = v94;
  v372 = xmmword_1D728CF30;
  v401 = xmmword_1D728CF30;
  v402 = 0;
  v95 = v369;
  v96 = v405;
  v97 = &v405[*(v369 + 44)];
  v98 = *v97;
  v99 = *(v97 + 1);
  LOBYTE(v396) = 0;
  v100 = swift_allocObject();
  v362 = &v343;
  *(v100 + 16) = v372;
  *(v100 + 32) = v396;
  *(v100 + 40) = v98;
  *(v100 + 48) = v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v361 = &v343 - 6;
  *(&v343 - 4) = sub_1D5B4AA6C;
  *(&v343 - 3) = 0;
  v341 = sub_1D6708AA8;
  v342 = v102;
  LOBYTE(v396) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v372;
  *(v103 + 32) = v396;
  v344 = v98;
  *(v103 + 40) = v98;
  *(v103 + 48) = v99;
  sub_1D669BB20();
  v105 = v104;
  v106 = sub_1D5B58B84(&qword_1EDF03518, sub_1D669BB20);
  v343 = v99;
  swift_retain_n();
  v350 = v105;
  v348 = v106;
  v107 = sub_1D72647CC();
  LOBYTE(v396) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v372;
  *(v108 + 40) = v396;
  v109 = v96;
  v110 = &v96[*(v95 + 36)];
  v111 = __swift_project_boxed_opaque_existential_1(v110, *(v110 + 3));
  MEMORY[0x1EEE9AC00](v111, v112);
  MEMORY[0x1EEE9AC00](v113, v114);
  v115 = v361;
  *(&v343 - 4) = sub_1D615B4A4;
  *(&v343 - 3) = v115;
  v341 = sub_1D6708AA8;
  v342 = v103;
  v116 = v370;
  v117 = v371;
  sub_1D5D2BC70(v371, sub_1D615B49C, v118, sub_1D615B4A4, (&v343 - 6));
  if (v116)
  {
    sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

    v119 = v109;
    return sub_1D5D2CFE8(v119, sub_1D669BA8C);
  }

  *&v372 = v110;

  sub_1D72647EC();
  sub_1D5D2CFE8(v371, type metadata accessor for FormatVersionRequirement);

  v121 = *(v368 + 6);
  v398 = *(v368 + 5);
  v399 = v121;
  v400 = *(v368 + 112);
  v122 = *(v368 + 4);
  v396 = *(v368 + 3);
  v397 = v122;
  v123 = v367;
  v124 = v364;
  (v364)(v360, v363);
  swift_storeEnumTagMultiPayload();
  v371 = xmmword_1D7297410;
  v394 = xmmword_1D7297410;
  v395 = 0;
  LOBYTE(v389) = 0;
  v125 = swift_allocObject();
  v127 = v125;
  *(v125 + 16) = v371;
  *(v125 + 32) = v389;
  v128 = v343;
  v129 = v344;
  *(v125 + 40) = v344;
  *(v125 + 48) = v128;
  if ((v400 & 0xFE) == 0x7E)
  {

    v130 = v363;
    v131 = v123;
LABEL_17:
    v132 = v368;
    goto LABEL_18;
  }

  v370 = &v343;
  v391 = v398;
  v392 = v399;
  v393 = v400;
  v389 = v396;
  v390 = v397;
  MEMORY[0x1EEE9AC00](v125, v126);
  *(&v343 - 4) = sub_1D5B4AA6C;
  *(&v343 - 3) = 0;
  v341 = sub_1D6708AA8;
  v342 = v127;
  LOBYTE(v373) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = v371;
  *(v147 + 32) = v373;
  *(v147 + 40) = v129;
  *(v147 + 48) = v128;
  swift_retain_n();
  sub_1D5D355B8(&v396, &v373, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v148 = sub_1D72647CC();
  LOBYTE(v373) = 0;
  v149 = swift_allocObject();
  *(v149 + 16) = v148;
  *(v149 + 24) = v371;
  *(v149 + 40) = v373;
  v150 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
  MEMORY[0x1EEE9AC00](v150, v151);
  MEMORY[0x1EEE9AC00](v152, v153);
  *(&v343 - 4) = sub_1D615B4A4;
  *(&v343 - 3) = (&v343 - 6);
  v341 = sub_1D6708AA8;
  v342 = v147;
  v159 = sub_1D5D2F7A4(v360, sub_1D615B49C, v154, sub_1D615B4A4, (&v343 - 6));

  if (v159)
  {
    sub_1D669BE6C();
    sub_1D72647EC();
    v160 = v367;
    v161 = v364;
    v130 = v363;

    v375[0] = v391;
    v375[1] = v392;
    v376 = v393;
    v373 = v389;
    v374 = v390;
    sub_1D669BE18(&v373);
    v128 = v343;
    v131 = v160;
    v124 = v161;
    goto LABEL_17;
  }

  v375[0] = v391;
  v375[1] = v392;
  v376 = v393;
  v373 = v389;
  v374 = v390;
  sub_1D669BE18(&v373);
  v131 = v367;
  v132 = v368;
  v124 = v364;
  v128 = v343;
  v130 = v363;
LABEL_18:
  sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);
  v133 = *(v132 + 17);
  v373 = *(v132 + 15);
  v374 = v133;
  v375[0] = *(v132 + 19);
  *(v375 + 9) = *(v132 + 161);
  v124(v359, v130, v131);
  swift_storeEnumTagMultiPayload();
  v371 = xmmword_1D72BAA60;
  v384 = xmmword_1D72BAA60;
  v385 = 0;
  LOBYTE(v386) = 0;
  v134 = swift_allocObject();
  v136 = v131;
  v137 = v134;
  *(v134 + 16) = v371;
  *(v134 + 32) = v386;
  v138 = v344;
  *(v134 + 40) = v344;
  *(v134 + 48) = v128;
  if (BYTE8(v375[1]) == 255)
  {

    v156 = v358;
    v155 = v359;
    v157 = v136;
    v158 = v368;
  }

  else
  {
    v386 = v373;
    v387 = v374;
    v388[0] = v375[0];
    *(v388 + 9) = *(v375 + 9);
    MEMORY[0x1EEE9AC00](v134, v135);
    *(&v343 - 4) = sub_1D5B4AA6C;
    *(&v343 - 3) = 0;
    v341 = sub_1D6708AA8;
    v342 = v137;
    LOBYTE(v377) = 0;
    v139 = swift_allocObject();
    *(v139 + 16) = v371;
    *(v139 + 32) = v377;
    *(v139 + 40) = v138;
    *(v139 + 48) = v128;
    swift_retain_n();
    sub_1D5D355B8(&v373, &v377, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v140 = sub_1D72647CC();
    LOBYTE(v377) = 0;
    v141 = swift_allocObject();
    *(v141 + 16) = v140;
    *(v141 + 24) = v371;
    *(v141 + 40) = v377;
    v142 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
    MEMORY[0x1EEE9AC00](v142, v143);
    MEMORY[0x1EEE9AC00](v144, v145);
    *(&v343 - 4) = sub_1D615B4A4;
    *(&v343 - 3) = (&v343 - 6);
    v341 = sub_1D6708AA8;
    v342 = v139;
    v162 = sub_1D5D2F7A4(v359, sub_1D615B49C, v146, sub_1D615B4A4, (&v343 - 6));

    v156 = v358;
    if (v162)
    {
      sub_1D669BDC4();
      sub_1D72647EC();
      v163 = v367;
      v158 = v368;

      v377 = v386;
      v378 = v387;
      v379[0] = v388[0];
      *(v379 + 9) = *(v388 + 9);
      sub_1D62B5EC4(&v377);
      v155 = v359;
      v157 = v163;
    }

    else
    {

      v377 = v386;
      v378 = v387;
      v379[0] = v388[0];
      *(v379 + 9) = *(v388 + 9);
      sub_1D62B5EC4(&v377);
      v157 = v367;
      v158 = v368;
      v155 = v359;
    }
  }

  v370 = 0;
  sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
  v164 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction;
  if (qword_1EDF31E90 != -1)
  {
    swift_once();
  }

  v165 = __swift_project_value_buffer(v157, qword_1EDFFCCE8);
  v166 = v157;
  v364(v156, v165, v157);
  swift_storeEnumTagMultiPayload();
  v371 = xmmword_1D72BAA70;
  v386 = xmmword_1D72BAA70;
  LOBYTE(v387) = 0;
  LOBYTE(v377) = 0;
  v167 = swift_allocObject();
  *(v167 + 16) = v371;
  *(v167 + 32) = v377;
  v169 = v343;
  v168 = v344;
  *(v167 + 40) = v344;
  *(v167 + 48) = v169;
  v170 = v158 + v164;
  v171 = v355;
  sub_1D5CDE2EC(v170, v355, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v354 + 48))(v171, 1, v357) == 1)
  {

    sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v171, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v172 = v166;
LABEL_32:
    v173 = v364;
    goto LABEL_33;
  }

  v219 = sub_1D5C8F76C(v171, v353, type metadata accessor for FormatItemNodeAction);
  *&v369 = &v343;
  MEMORY[0x1EEE9AC00](v219, v220);
  *(&v343 - 4) = sub_1D5B4AA6C;
  *(&v343 - 3) = 0;
  v341 = sub_1D6708AA8;
  v342 = v167;
  LOBYTE(v377) = 0;
  v221 = swift_allocObject();
  *(v221 + 16) = v371;
  *(v221 + 32) = v377;
  *(v221 + 40) = v168;
  *(v221 + 48) = v169;
  swift_retain_n();
  v222 = sub_1D72647CC();
  LOBYTE(v377) = 0;
  v223 = swift_allocObject();
  *(v223 + 16) = v222;
  *(v223 + 24) = v371;
  *(v223 + 40) = v377;
  v224 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
  MEMORY[0x1EEE9AC00](v224, v225);
  MEMORY[0x1EEE9AC00](v226, v227);
  *(&v343 - 4) = sub_1D615B4A4;
  *(&v343 - 3) = (&v343 - 6);
  v341 = sub_1D6708AA8;
  v342 = v221;
  v228 = v370;
  v230 = sub_1D5D2F7A4(v156, sub_1D615B49C, v229, sub_1D615B4A4, (&v343 - 6));
  if (v228)
  {

    v204 = v405;
    v231 = v358;
    sub_1D5D2CFE8(v353, type metadata accessor for FormatItemNodeAction);
    sub_1D5D2CFE8(v231, type metadata accessor for FormatVersionRequirement);
    goto LABEL_52;
  }

  v253 = v230;

  if ((v253 & 1) == 0)
  {
    v370 = 0;

    sub_1D5D2CFE8(v353, type metadata accessor for FormatItemNodeAction);
    sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);
    v172 = v367;
    v158 = v368;
    goto LABEL_32;
  }

  sub_1D5B58B84(&qword_1EDF0EE78, type metadata accessor for FormatItemNodeAction);
  v254 = v353;
  sub_1D72647EC();
  v255 = v367;
  v256 = v364;
  v257 = v358;
  v370 = 0;
  v277 = v368;

  sub_1D5D2CFE8(v254, type metadata accessor for FormatItemNodeAction);
  sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
  v172 = v255;
  v173 = v256;
  v158 = v277;
LABEL_33:
  v174 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v175 = __swift_project_value_buffer(v172, qword_1EDFFCD18);
  v176 = v356;
  v173(v356, v175, v172);
  swift_storeEnumTagMultiPayload();
  v371 = xmmword_1D72BAA80;
  v386 = xmmword_1D72BAA80;
  LOBYTE(v387) = 0;
  LOBYTE(v377) = 0;
  v177 = swift_allocObject();
  v179 = v177;
  *(v177 + 16) = v371;
  *(v177 + 32) = v377;
  v181 = v343;
  v180 = v344;
  *(v177 + 40) = v344;
  *(v177 + 48) = v181;
  if (v174 == 2)
  {
  }

  else
  {
    *&v369 = &v343;
    LOBYTE(v377) = v174 & 1;
    MEMORY[0x1EEE9AC00](v177, v178);
    *(&v343 - 4) = sub_1D5B4AA6C;
    *(&v343 - 3) = 0;
    v341 = sub_1D6708AA8;
    v342 = v179;
    LOBYTE(v384) = 0;
    v232 = swift_allocObject();
    *(v232 + 16) = v371;
    *(v232 + 32) = v384;
    *(v232 + 40) = v180;
    *(v232 + 48) = v181;
    swift_retain_n();
    v233 = sub_1D72647CC();
    LOBYTE(v384) = 0;
    v234 = swift_allocObject();
    *(v234 + 16) = v233;
    *(v234 + 24) = v371;
    *(v234 + 40) = v384;
    v235 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
    MEMORY[0x1EEE9AC00](v235, v236);
    MEMORY[0x1EEE9AC00](v237, v238);
    *(&v343 - 4) = sub_1D615B4A4;
    *(&v343 - 3) = (&v343 - 6);
    v341 = sub_1D6708AA8;
    v342 = v232;
    v239 = v370;
    v241 = sub_1D5D2F7A4(v176, sub_1D615B49C, v240, sub_1D615B4A4, (&v343 - 6));
    if (v239)
    {
      sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);

      v204 = v405;
      goto LABEL_52;
    }

    v270 = v241;

    if (v270)
    {
      sub_1D72647EC();
      v158 = v368;
      v370 = 0;
    }

    else
    {
      v370 = 0;
      v158 = v368;
    }

    v173 = v364;
  }

  sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);

  v182 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v183 = v367;
  v184 = __swift_project_value_buffer(v367, qword_1EDFFCDE0);
  v185 = v352;
  v173(v352, v184, v183);
  swift_storeEnumTagMultiPayload();
  v371 = xmmword_1D72BAA90;
  v386 = xmmword_1D72BAA90;
  LOBYTE(v387) = 0;
  LOBYTE(v377) = 0;
  v186 = swift_allocObject();
  v188 = v186;
  *(v186 + 16) = v371;
  *(v186 + 32) = v377;
  v190 = v343;
  v189 = v344;
  *(v186 + 40) = v344;
  *(v186 + 48) = v190;
  if (v182 == 2)
  {

    v191 = v190;
    v192 = v370;
  }

  else
  {
    *&v369 = &v343;
    LOBYTE(v377) = v182 & 1;
    MEMORY[0x1EEE9AC00](v186, v187);
    *(&v343 - 4) = sub_1D5B4AA6C;
    *(&v343 - 3) = 0;
    v341 = sub_1D6708AA8;
    v342 = v188;
    LOBYTE(v384) = 0;
    v242 = swift_allocObject();
    *(v242 + 16) = v371;
    *(v242 + 32) = v384;
    *(v242 + 40) = v189;
    *(v242 + 48) = v190;
    swift_retain_n();
    v243 = sub_1D72647CC();
    LOBYTE(v384) = 0;
    v244 = swift_allocObject();
    *(v244 + 16) = v243;
    *(v244 + 24) = v371;
    *(v244 + 40) = v384;
    v245 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
    MEMORY[0x1EEE9AC00](v245, v246);
    MEMORY[0x1EEE9AC00](v247, v248);
    *(&v343 - 4) = sub_1D615B4A4;
    *(&v343 - 3) = (&v343 - 6);
    v341 = sub_1D6708AA8;
    v342 = v242;
    v249 = v370;
    v251 = sub_1D5D2F7A4(v185, sub_1D615B49C, v250, sub_1D615B4A4, (&v343 - 6));
    v192 = v249;
    if (v249)
    {
      goto LABEL_54;
    }

    v271 = v251;

    if (v271)
    {
      sub_1D72647EC();
    }

    v158 = v368;
    v191 = v343;
  }

  v193 = v192;
  sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);

  v194 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v195 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v196 = v367;
  v197 = __swift_project_value_buffer(v367, qword_1EDFFCE98);
  v198 = v351;
  v364(v351, v197, v196);
  swift_storeEnumTagMultiPayload();
  v371 = xmmword_1D72BAAA0;
  v386 = xmmword_1D72BAAA0;
  LOBYTE(v387) = 0;
  LOBYTE(v377) = 0;
  v199 = swift_allocObject();
  v201 = v199;
  *(v199 + 16) = v371;
  *(v199 + 32) = v377;
  v202 = v344;
  *(v199 + 40) = v344;
  *(v199 + 48) = v191;
  if (v194 == 3)
  {

    sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);

    v203 = v364;
    v204 = v405;
LABEL_45:
    v205 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    v206 = *(v158 + v205);
    v207 = v349;
    v208 = v367;
    v203(v349, v363, v367);
    swift_storeEnumTagMultiPayload();
    if (*(v206 + 16))
    {
      LOBYTE(v386) = 0;
      v209 = swift_allocObject();
      v371 = xmmword_1D72BAAB0;
      *(v209 + 16) = xmmword_1D72BAAB0;
      *(v209 + 32) = v386;
      *(v209 + 40) = v344;
      *(v209 + 48) = v343;

      v210 = sub_1D72647CC();
      LOBYTE(v386) = 0;
      v211 = swift_allocObject();
      *(v211 + 16) = v210;
      *(v211 + 24) = v371;
      *(v211 + 40) = v386;
      v212 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
      v370 = &v343;
      MEMORY[0x1EEE9AC00](v212, v213);
      MEMORY[0x1EEE9AC00](v214, v215);
      *(&v343 - 4) = sub_1D5B4AA6C;
      *(&v343 - 3) = 0;
      v341 = sub_1D6708AA8;
      v342 = v209;
      v217 = sub_1D5D2F7A4(v207, sub_1D615B49C, v216, sub_1D615B4A4, (&v343 - 6));
      v218 = v193;
      if (v193)
      {
        sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);

LABEL_52:
        v119 = v204;
        return sub_1D5D2CFE8(v119, sub_1D669BA8C);
      }

      v275 = v217;

      if (v275)
      {
        v386 = v371;
        LOBYTE(v387) = 0;
        *&v384 = v206;
        sub_1D5B5BF78(0, &qword_1EDF04F40, type metadata accessor for FormatItemNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D669BC98();
        sub_1D72647EC();
        v276 = v367;
        v158 = v368;
        v272 = v347;

        sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);
        v273 = v276;
      }

      else
      {
        sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);

        v273 = v367;
        v158 = v368;
        v272 = v347;
      }
    }

    else
    {
      sub_1D5D2CFE8(v207, type metadata accessor for FormatVersionRequirement);
      v272 = v347;
      v273 = v208;
      v218 = v193;
    }

    v370 = v218;
    v278 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
    v369 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v363 = v278;
    v279 = *(v158 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
    v280 = v346;
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v281 = __swift_project_value_buffer(v273, qword_1EDFFCE68);
    v282 = v273;
    v364(v272, v281, v273);
    swift_storeEnumTagMultiPayload();
    v371 = xmmword_1D72BAAC0;
    v384 = xmmword_1D72BAAC0;
    v385 = 0;
    LOBYTE(v386) = 0;
    v283 = swift_allocObject();
    v285 = v283;
    *(v283 + 16) = v371;
    *(v283 + 32) = v386;
    v287 = v343;
    v286 = v344;
    *(v283 + 40) = v344;
    *(v283 + 48) = v287;
    if ((v279 & 0xFF00) == 0x400)
    {

      v288 = v370;
LABEL_80:
      sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);

      v289 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
      swift_beginAccess();
      v290 = *(v158 + v289);
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v291 = v282;
      v292 = __swift_project_value_buffer(v282, qword_1EDFFCE38);
      v364(v280, v292, v291);
      swift_storeEnumTagMultiPayload();
      v371 = xmmword_1D72BAAD0;
      v384 = xmmword_1D72BAAD0;
      v385 = 0;
      LOBYTE(v382) = 0;
      v293 = swift_allocObject();
      v295 = v293;
      *(v293 + 16) = v371;
      *(v293 + 32) = v382;
      v296 = v343;
      v297 = v344;
      *(v293 + 40) = v344;
      *(v293 + 48) = v296;
      if (v290 == 2)
      {

        v298 = v280;
LABEL_95:
        sub_1D5D2CFE8(v298, type metadata accessor for FormatVersionRequirement);

        v323 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
        swift_beginAccess();
        v324 = *(v158 + v323);
        v325 = v345;
        v364(v345, v292, v367);
        swift_storeEnumTagMultiPayload();
        v371 = xmmword_1D72BAAE0;
        v382 = xmmword_1D72BAAE0;
        v383 = 0;
        v381 = 0;
        v326 = swift_allocObject();
        v328 = v326;
        *(v326 + 16) = v371;
        *(v326 + 32) = v381;
        v329 = v344;
        *(v326 + 40) = v344;
        *(v326 + 48) = v296;
        if (v324 == 2)
        {

          v252 = v405;
        }

        else
        {
          *&v369 = &v343;
          v381 = v324 & 1;
          MEMORY[0x1EEE9AC00](v326, v327);
          v370 = v288;
          *(&v343 - 4) = sub_1D5B4AA6C;
          *(&v343 - 3) = 0;
          v341 = sub_1D6708AA8;
          v342 = v328;
          v380 = 0;
          v330 = swift_allocObject();
          *(v330 + 16) = v371;
          *(v330 + 32) = v380;
          *(v330 + 40) = v329;
          *(v330 + 48) = v296;
          swift_retain_n();
          v331 = sub_1D72647CC();
          v380 = 0;
          v332 = swift_allocObject();
          *(v332 + 16) = v331;
          *(v332 + 24) = v371;
          *(v332 + 40) = v380;
          v333 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
          MEMORY[0x1EEE9AC00](v333, v334);
          MEMORY[0x1EEE9AC00](v335, v336);
          *(&v343 - 4) = sub_1D615B4A4;
          *(&v343 - 3) = (&v343 - 6);
          v341 = sub_1D6708AA8;
          v342 = v330;
          v337 = v370;
          v339 = sub_1D5D2F7A4(v325, sub_1D615B49C, v338, sub_1D615B4A4, (&v343 - 6));
          if (v337)
          {
            sub_1D5D2CFE8(v325, type metadata accessor for FormatVersionRequirement);

            v119 = v405;
            return sub_1D5D2CFE8(v119, sub_1D669BA8C);
          }

          v340 = v339;

          if (v340)
          {
            v252 = v405;
            sub_1D72647EC();
          }

          else
          {
            v252 = v405;
          }

          v325 = v345;
        }

        sub_1D5D2CFE8(v325, type metadata accessor for FormatVersionRequirement);

        goto LABEL_55;
      }

      *&v363 = v292;
      *&v369 = &v343;
      LOBYTE(v382) = v290 & 1;
      MEMORY[0x1EEE9AC00](v293, v294);
      v370 = v288;
      *(&v343 - 4) = sub_1D5B4AA6C;
      *(&v343 - 3) = 0;
      v341 = sub_1D6708AA8;
      v342 = v295;
      v381 = 0;
      v311 = swift_allocObject();
      *(v311 + 16) = v371;
      *(v311 + 32) = v381;
      *(v311 + 40) = v297;
      *(v311 + 48) = v296;
      swift_retain_n();
      v312 = sub_1D72647CC();
      v381 = 0;
      v313 = swift_allocObject();
      *(v313 + 16) = v312;
      *(v313 + 24) = v371;
      *(v313 + 40) = v381;
      v314 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
      MEMORY[0x1EEE9AC00](v314, v315);
      MEMORY[0x1EEE9AC00](v316, v317);
      *(&v343 - 4) = sub_1D615B4A4;
      *(&v343 - 3) = (&v343 - 6);
      v341 = sub_1D6708AA8;
      v342 = v311;
      v318 = v370;
      v320 = sub_1D5D2F7A4(v280, sub_1D615B49C, v319, sub_1D615B4A4, (&v343 - 6));
      v288 = v318;
      if (!v318)
      {
        v322 = v320;

        v158 = v368;
        if (v322)
        {
          sub_1D72647EC();
          v298 = v346;
          v288 = 0;
        }

        else
        {
          v298 = v346;
        }

        v296 = v343;
        v292 = v363;
        goto LABEL_95;
      }

      sub_1D5D2CFE8(v280, type metadata accessor for FormatVersionRequirement);

      v252 = v405;
LABEL_55:
      v119 = v252;
      return sub_1D5D2CFE8(v119, sub_1D669BA8C);
    }

    v362 = &v343;
    v386 = v369;
    v387 = v363;
    LOWORD(v388[0]) = v279 & 0xFF01;
    MEMORY[0x1EEE9AC00](v283, v284);
    *(&v343 - 4) = sub_1D5B4AA6C;
    *(&v343 - 3) = 0;
    v341 = sub_1D6708AA8;
    v342 = v285;
    LOBYTE(v382) = 0;
    v299 = swift_allocObject();
    v300 = v272;
    v301 = v299;
    *(v299 + 16) = v371;
    *(v299 + 32) = v382;
    *(v299 + 40) = v286;
    *(v299 + 48) = v287;
    v185 = v300;
    swift_retain_n();
    v302 = sub_1D72647CC();
    LOBYTE(v382) = 0;
    v303 = swift_allocObject();
    *(v303 + 16) = v302;
    *(v303 + 24) = v371;
    *(v303 + 40) = v382;
    v304 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
    MEMORY[0x1EEE9AC00](v304, v305);
    MEMORY[0x1EEE9AC00](v306, v307);
    *(&v343 - 4) = sub_1D615B4A4;
    *(&v343 - 3) = (&v343 - 6);
    v341 = sub_1D6708AA8;
    v342 = v301;
    v308 = v370;
    v310 = sub_1D5D2F7A4(v185, sub_1D615B49C, v309, sub_1D615B4A4, (&v343 - 6));
    if (!v308)
    {
      v321 = v310;

      v280 = v346;
      if (v321)
      {
        sub_1D669BC44();
        sub_1D72647EC();
        v272 = v347;
        v288 = 0;
        v282 = v367;
        v158 = v368;
      }

      else
      {
        v288 = 0;
        v282 = v367;
        v158 = v368;
        v272 = v347;
      }

      goto LABEL_80;
    }

LABEL_54:
    sub_1D5D2CFE8(v185, type metadata accessor for FormatVersionRequirement);

    v252 = v405;
    goto LABEL_55;
  }

  *&v369 = &v343;
  *&v377 = v194;
  *(&v377 + 1) = v195;
  MEMORY[0x1EEE9AC00](v199, v200);
  v370 = v193;
  v362 = &v343 - 6;
  *(&v343 - 4) = sub_1D5B4AA6C;
  *(&v343 - 3) = 0;
  v341 = sub_1D6708AA8;
  v342 = v201;
  LOBYTE(v384) = 0;
  v258 = swift_allocObject();
  *(v258 + 16) = v371;
  *(v258 + 32) = v384;
  *(v258 + 40) = v202;
  *(v258 + 48) = v191;
  swift_retain_n();
  sub_1D62B7E1C(v194);
  v259 = sub_1D72647CC();
  LOBYTE(v384) = 0;
  v260 = swift_allocObject();
  *(v260 + 16) = v259;
  *(v260 + 24) = v371;
  *(v260 + 40) = v384;
  v261 = __swift_project_boxed_opaque_existential_1(v372, *(v372 + 24));
  MEMORY[0x1EEE9AC00](v261, v262);
  MEMORY[0x1EEE9AC00](v263, v264);
  v265 = v362;
  *(&v343 - 4) = sub_1D615B4A4;
  *(&v343 - 3) = v265;
  v341 = sub_1D6708AA8;
  v342 = v258;
  v266 = v370;
  v268 = sub_1D5D2F7A4(v198, sub_1D615B49C, v267, sub_1D615B4A4, (&v343 - 6));
  v193 = v266;
  if (!v266)
  {
    v274 = v268;

    if (v274)
    {
      sub_1D669BD70();
      v204 = v405;
      sub_1D72647EC();
      v158 = v368;
      v203 = v364;

      sub_1D62B5E24(v377);
      sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D62B5E24(v377);
      sub_1D5D2CFE8(v198, type metadata accessor for FormatVersionRequirement);
      v204 = v405;
      v158 = v368;
      v203 = v364;
    }

    goto LABEL_45;
  }

  v269 = v405;
  sub_1D62B5E24(v377);
  sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v269, sub_1D669BA8C);
}

uint64_t sub_1D65007E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669C2E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D650081C(uint64_t a1)
{
  v2 = sub_1D5CC6678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6500858(uint64_t a1)
{
  v2 = sub_1D5CC6678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v46 - v5;
  sub_1D669BEC0();
  v8 = v7;
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669BF54();
  sub_1D5B58B84(&qword_1EDF254C8, sub_1D669BF54);
  v12 = v81;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
    v14 = a1;
  }

  else
  {
    v81 = 0;
    v54 = v6;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v56;
    v18 = v11;
    v14 = a1;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = (v19 + 48);
        while (*v21 != 1)
        {
          v21 += 24;
          if (!--v20)
          {
            goto LABEL_8;
          }
        }

        v25 = *(v21 - 2);
        v24 = *(v21 - 1);

        v26 = sub_1D661E0EC();
        sub_1D5E2D970();
        v27 = swift_allocError();
        *v28 = v25;
        *(v28 + 8) = v24;
        *(v28 + 16) = v26;
        v13 = v27;
        *(v28 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v17 + 8))(v11, v8);
        goto LABEL_13;
      }

LABEL_8:
    }

    sub_1D5C36978();
    v76 = 0uLL;
    LOBYTE(v77) = 0;
    v22 = v81;
    sub_1D726431C();
    v13 = v22;
    if (!v22)
    {
      v23 = v69;
      v74 = xmmword_1D728CF30;
      v75 = 0;
      sub_1D5CC69A8();
      sub_1D726427C();
      v71 = v78;
      v72 = v79;
      v73 = v80;
      v69 = v76;
      v70 = v77;
      v64[2] = xmmword_1D7297410;
      v65 = 0;
      sub_1D5CC6A60();
      sub_1D726427C();
      v62 = v66;
      v63 = v67;
      v64[0] = v68[0];
      *(v64 + 9) = *(v68 + 9);
      type metadata accessor for FormatItemNodeAction();
      v59 = xmmword_1D72BAA60;
      LOBYTE(v60) = 0;
      sub_1D5B58B84(&qword_1EDF2AFC0, type metadata accessor for FormatItemNodeAction);
      sub_1D726427C();
      v59 = xmmword_1D72BAA70;
      LOBYTE(v60) = 0;
      v29 = sub_1D726423C();
      v59 = xmmword_1D72BAA80;
      LOBYTE(v60) = 0;
      LODWORD(v81) = sub_1D726423C();
      v59 = xmmword_1D72BAA90;
      LOBYTE(v60) = 0;
      sub_1D5CC6B08();
      sub_1D726427C();
      v52 = v29;
      v30 = *(&v57 + 1);
      v53 = v57;
      v57 = xmmword_1D72BAAA0;
      v58 = 0;
      sub_1D5CC6BAC();
      sub_1D726427C();
      v31 = v53;
      v51 = v30;
      v50 = v60;
      v48 = v59;
      v49 = v61;
      v59 = xmmword_1D72BAAB0;
      LOBYTE(v60) = 0;
      v47 = sub_1D726423C();
      v59 = xmmword_1D72BAAC0;
      LOBYTE(v60) = 0;
      v32 = v8;
      v33 = v18;
      v34 = sub_1D726423C();
      v46 = 0;
      v35 = v34;
      (*(v56 + 8))(v33, v32);
      v36 = type metadata accessor for FormatItemNodeStyle.Selector(0);
      v37 = v55;
      sub_1D5C4E944(v54, v55 + v36[7], qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
      v38 = v72;
      *(v37 + 48) = v71;
      *(v37 + 64) = v38;
      v39 = v70;
      *(v37 + 16) = v69;
      *(v37 + 32) = v39;
      v40 = v63;
      *(v37 + 88) = v62;
      *(v37 + 129) = *(v64 + 9);
      *(v37 + 120) = v64[0];
      *v37 = v23;
      *(v37 + 80) = v73;
      *(v37 + 104) = v40;
      *(v37 + v36[8]) = v52;
      *(v37 + v36[9]) = v81;
      v41 = (v37 + v36[10]);
      v42 = v51;
      *v41 = v31;
      v41[1] = v42;
      v43 = v37 + v36[11];
      v44 = v50;
      *v43 = v48;
      *(v43 + 16) = v44;
      *(v43 + 32) = v49;
      *(v37 + v36[12]) = v47;
      *(v37 + v36[13]) = v35;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v17 + 8))(v11, v8);
  }

LABEL_13:
  sub_1D61E4FBC(v14, v13);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t FormatItemNodeStyle.Selector.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v268 = v260 - v6;
  v271 = type metadata accessor for FormatItemNodeAction();
  v267 = *(v271 - 8);
  MEMORY[0x1EEE9AC00](v271, v7);
  v269 = v260 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v262 = v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v263 = v260 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v264 = (v260 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v265 = (v260 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v266 = v260 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v270 = (v260 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v272 = v260 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v275 = (v260 - v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v274 = v260 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  *&v287 = v260 - v38;
  sub_1D669C0D4();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v39, v41);
  v43 = v260 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D669BF54();
  v48 = v47;
  v49 = sub_1D5B58B84(&qword_1EDF254C8, sub_1D669BF54);
  v273 = v46;
  sub_1D5D2EE70(v46, v48, v50, v44, v46, v48, &type metadata for FormatVersions.JazzkonC, v45, v43, v49, &off_1F51F6C78);
  v51 = *v2;
  v52 = v2[1];
  v282 = v2;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  *&v277 = v54;
  v278 = v53;
  v279 = v55 + 16;
  v280 = v56;
  v56(v287);
  v281 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v315 = v51;
  v316 = v52;
  v312 = 0;
  v313 = 0;
  v314 = 0;
  v57 = &v43[*(v40 + 44)];
  v58 = *v57;
  v59 = *(v57 + 1);
  LOBYTE(v307) = 0;
  v60 = swift_allocObject();
  *&v285 = v260;
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = v307;
  *(v60 + 40) = v58;
  *(v60 + 48) = v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v260[-4] = sub_1D5B4AA6C;
  v260[-3] = 0;
  v258 = sub_1D6708AAC;
  v259 = v62;
  LOBYTE(v307) = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  *(v63 + 32) = v307;
  v276 = v58;
  *(v63 + 40) = v58;
  *(v63 + 48) = v59;
  sub_1D669C168();
  v65 = v64;
  v66 = sub_1D5B58B84(&qword_1EDF03508, sub_1D669C168);
  swift_retain_n();
  v283 = v65;
  v284 = v66;
  v67 = sub_1D72647CC();
  LOBYTE(v307) = 0;
  v68 = swift_allocObject();
  *(v68 + 24) = 0;
  *(v68 + 32) = 0;
  *(v68 + 16) = v67;
  *(v68 + 40) = v307;
  v69 = *(v40 + 36);
  v317 = v43;
  v70 = &v43[v69];
  v71 = __swift_project_boxed_opaque_existential_1(v70, *(v70 + 3));
  MEMORY[0x1EEE9AC00](v71, v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  v260[-4] = sub_1D615B4A4;
  v260[-3] = &v260[-6];
  v258 = sub_1D6708AAC;
  v259 = v63;
  v75 = v286;
  sub_1D5D2BC70(v287, sub_1D615B49C, v76, sub_1D615B4A4, &v260[-6]);
  if (v75)
  {
    v77 = v287;
LABEL_5:
    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v78 = v317;
    return sub_1D5D2CFE8(v78, sub_1D669C0D4);
  }

  v79 = v287;
  v261 = v70;
  v286 = v59;

  sub_1D5D3E60C();
  sub_1D72647EC();
  *&v285 = 0;
  sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

  v81 = *(v282 + 4);
  v309 = *(v282 + 3);
  v310 = v81;
  v311 = *(v282 + 80);
  v82 = *(v282 + 2);
  v307 = *(v282 + 1);
  v308 = v82;
  v83 = v274;
  v84 = v278;
  v85 = v280;
  v280(v274, v277, v278);
  swift_storeEnumTagMultiPayload();
  v287 = xmmword_1D728CF30;
  v305 = xmmword_1D728CF30;
  v306 = 0;
  LOBYTE(v300) = 0;
  v86 = swift_allocObject();
  v88 = v86;
  *(v86 + 16) = v287;
  *(v86 + 32) = v300;
  v89 = v276;
  v90 = v286;
  *(v86 + 40) = v276;
  *(v86 + 48) = v90;
  if ((v311 & 0xFE) == 0x7E)
  {

    goto LABEL_11;
  }

  v260[1] = v260;
  v302 = v309;
  v303 = v310;
  v304 = v311;
  v300 = v307;
  v301 = v308;
  MEMORY[0x1EEE9AC00](v86, v87);
  v260[-4] = sub_1D5B4AA6C;
  v260[-3] = 0;
  v258 = sub_1D6708AAC;
  v259 = v88;
  LOBYTE(v288) = 0;
  v109 = swift_allocObject();
  *(v109 + 16) = v287;
  *(v109 + 32) = v288;
  *(v109 + 40) = v89;
  *(v109 + 48) = v90;
  swift_retain_n();
  sub_1D5D355B8(&v307, &v288, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
  v110 = sub_1D72647CC();
  LOBYTE(v288) = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = v110;
  *(v111 + 24) = v287;
  *(v111 + 40) = v288;
  v112 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
  MEMORY[0x1EEE9AC00](v112, v113);
  MEMORY[0x1EEE9AC00](v114, v115);
  v260[-4] = sub_1D615B4A4;
  v260[-3] = &v260[-6];
  v258 = sub_1D6708AAC;
  v259 = v109;
  v116 = v285;
  v118 = sub_1D5D2F7A4(v83, sub_1D615B49C, v117, sub_1D615B4A4, &v260[-6]);
  *&v285 = v116;
  if (!v116)
  {
    v119 = v118;

    if (v119)
    {
      sub_1D669BE6C();
      v120 = v285;
      sub_1D72647EC();
      *&v285 = v120;
      v90 = v286;
      v89 = v276;
      v85 = v280;
      if (v120)
      {

        v290[0] = v302;
        v290[1] = v303;
        v291 = v304;
        v288 = v300;
        v289 = v301;
        sub_1D669BE18(&v288);
        goto LABEL_16;
      }

      v290[0] = v302;
      v290[1] = v303;
      v291 = v304;
      v288 = v300;
      v289 = v301;
      sub_1D669BE18(&v288);
      v84 = v278;
    }

    else
    {

      v290[0] = v302;
      v290[1] = v303;
      v291 = v304;
      v288 = v300;
      v289 = v301;
      sub_1D669BE18(&v288);
      v90 = v286;
      v89 = v276;
      v84 = v278;
      v85 = v280;
    }

LABEL_11:
    sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
    v91 = *(v282 + 13);
    v288 = *(v282 + 11);
    v289 = v91;
    v290[0] = *(v282 + 15);
    *(v290 + 9) = *(v282 + 129);
    v92 = v275;
    v85(v275, v277, v84);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D7297410;
    v298 = xmmword_1D7297410;
    v299 = 0;
    LOBYTE(v295) = 0;
    v93 = swift_allocObject();
    v95 = v93;
    *(v93 + 16) = v287;
    *(v93 + 32) = v295;
    *(v93 + 40) = v89;
    *(v93 + 48) = v90;
    if (BYTE8(v290[1]) == 255)
    {

      v106 = v285;
    }

    else
    {
      *&v277 = v260;
      v295 = v288;
      v296 = v289;
      v297[0] = v290[0];
      *(v297 + 9) = *(v290 + 9);
      MEMORY[0x1EEE9AC00](v93, v94);
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v95;
      LOBYTE(v292) = 0;
      v96 = swift_allocObject();
      *(v96 + 16) = v287;
      *(v96 + 32) = v292;
      *(v96 + 40) = v89;
      *(v96 + 48) = v90;
      swift_retain_n();
      sub_1D5D355B8(&v288, &v292, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v97 = sub_1D72647CC();
      LOBYTE(v292) = 0;
      v98 = swift_allocObject();
      *(v98 + 16) = v97;
      *(v98 + 24) = v287;
      *(v98 + 40) = v292;
      v99 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v99, v100);
      MEMORY[0x1EEE9AC00](v101, v102);
      v260[-4] = sub_1D615B4A4;
      v260[-3] = &v260[-6];
      v258 = sub_1D6708AAC;
      v259 = v96;
      v103 = v285;
      v105 = sub_1D5D2F7A4(v92, sub_1D615B49C, v104, sub_1D615B4A4, &v260[-6]);
      v106 = v103;
      if (v103)
      {

        v292 = v295;
        v293 = v296;
        v294[0] = v297[0];
        *(v294 + 9) = *(v297 + 9);
        sub_1D62B5EC4(&v292);
        v107 = v317;
        v108 = v92;
LABEL_55:
        sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
        goto LABEL_56;
      }

      v121 = v105;

      if (v121)
      {
        sub_1D669BDC4();
        sub_1D72647EC();
        v90 = v286;
        v122 = v272;

        v292 = v295;
        v293 = v296;
        v294[0] = v297[0];
        *(v294 + 9) = *(v297 + 9);
        sub_1D62B5EC4(&v292);
        v89 = v276;
        goto LABEL_26;
      }

      v292 = v295;
      v293 = v296;
      v294[0] = v297[0];
      *(v294 + 9) = *(v297 + 9);
      sub_1D62B5EC4(&v292);
      v90 = v286;
      v89 = v276;
    }

    v122 = v272;
LABEL_26:
    sub_1D5D2CFE8(v275, type metadata accessor for FormatVersionRequirement);
    v123 = v273[7];
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v124 = v278;
    v125 = __swift_project_value_buffer(v278, qword_1EDFFCCE8);
    v280(v122, v125, v124);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAA60;
    v295 = xmmword_1D72BAA60;
    LOBYTE(v296) = 0;
    LOBYTE(v292) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v287;
    *(v126 + 32) = v292;
    *(v126 + 40) = v89;
    *(v126 + 48) = v90;
    v127 = v282 + v123;
    v128 = v268;
    sub_1D5CDE2EC(v127, v268, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    if ((*(v267 + 48))(v128, 1, v271) == 1)
    {

      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

      sub_1D5D35558(v128, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5B5BF78);
    }

    else
    {
      v176 = sub_1D5C8F76C(v128, v269, type metadata accessor for FormatItemNodeAction);
      *&v285 = v260;
      MEMORY[0x1EEE9AC00](v176, v177);
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v126;
      LOBYTE(v292) = 0;
      v178 = swift_allocObject();
      *(v178 + 16) = v287;
      *(v178 + 32) = v292;
      *(v178 + 40) = v89;
      *(v178 + 48) = v90;
      swift_retain_n();
      v179 = sub_1D72647CC();
      LOBYTE(v292) = 0;
      v180 = swift_allocObject();
      *(v180 + 16) = v179;
      *(v180 + 24) = v287;
      *(v180 + 40) = v292;
      v181 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v181, v182);
      MEMORY[0x1EEE9AC00](v183, v184);
      v260[-4] = sub_1D615B4A4;
      v260[-3] = &v260[-6];
      v258 = sub_1D6708AAC;
      v259 = v178;
      v186 = sub_1D5D2F7A4(v272, sub_1D615B49C, v185, sub_1D615B4A4, &v260[-6]);
      if (v106)
      {

        v107 = v317;
        v187 = v272;
        sub_1D5D2CFE8(v269, type metadata accessor for FormatItemNodeAction);
        v108 = v187;
        goto LABEL_55;
      }

      v207 = v186;

      if (v207)
      {
        sub_1D5B58B84(&qword_1EDF0EE78, type metadata accessor for FormatItemNodeAction);
        v208 = v269;
        sub_1D72647EC();
        v90 = v286;
        v89 = v276;

        sub_1D5D2CFE8(v208, type metadata accessor for FormatItemNodeAction);
        sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v269, type metadata accessor for FormatItemNodeAction);
        sub_1D5D2CFE8(v272, type metadata accessor for FormatVersionRequirement);
        v90 = v286;
        v89 = v276;
      }
    }

    v129 = *(v282 + v273[8]);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v130 = v278;
    v131 = __swift_project_value_buffer(v278, qword_1EDFFCD18);
    v132 = v270;
    v280(v270, v131, v130);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAA70;
    v295 = xmmword_1D72BAA70;
    LOBYTE(v296) = 0;
    LOBYTE(v292) = 0;
    v133 = swift_allocObject();
    v135 = v133;
    *(v133 + 16) = v287;
    *(v133 + 32) = v292;
    *(v133 + 40) = v89;
    *(v133 + 48) = v90;
    if (v129 == 2)
    {
    }

    else
    {
      *&v285 = v260;
      LOBYTE(v292) = v129 & 1;
      MEMORY[0x1EEE9AC00](v133, v134);
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v135;
      LOBYTE(v298) = 0;
      v188 = swift_allocObject();
      *(v188 + 16) = v287;
      *(v188 + 32) = v298;
      *(v188 + 40) = v89;
      *(v188 + 48) = v90;
      swift_retain_n();
      v189 = sub_1D72647CC();
      LOBYTE(v298) = 0;
      v190 = swift_allocObject();
      *(v190 + 16) = v189;
      *(v190 + 24) = v287;
      *(v190 + 40) = v298;
      v191 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v191, v192);
      MEMORY[0x1EEE9AC00](v193, v194);
      v260[-4] = sub_1D615B4A4;
      v260[-3] = &v260[-6];
      v258 = sub_1D6708AAC;
      v259 = v188;
      v196 = sub_1D5D2F7A4(v132, sub_1D615B49C, v195, sub_1D615B4A4, &v260[-6]);
      if (v106)
      {
        v77 = v132;
        goto LABEL_5;
      }

      v220 = v196;

      if (v220)
      {
        sub_1D72647EC();
      }

      v90 = v286;
      v89 = v276;
    }

    sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);

    v136 = *(v282 + v273[9]);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    *&v285 = v106;
    v137 = v278;
    v138 = __swift_project_value_buffer(v278, qword_1EDFFCDE0);
    v139 = v266;
    v280(v266, v138, v137);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAA80;
    v295 = xmmword_1D72BAA80;
    LOBYTE(v296) = 0;
    LOBYTE(v292) = 0;
    v140 = swift_allocObject();
    v142 = v140;
    *(v140 + 16) = v287;
    *(v140 + 32) = v292;
    *(v140 + 40) = v89;
    *(v140 + 48) = v90;
    if (v136 == 2)
    {
    }

    else
    {
      *&v277 = v260;
      LOBYTE(v292) = v136 & 1;
      MEMORY[0x1EEE9AC00](v140, v141);
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v142;
      LOBYTE(v298) = 0;
      v197 = swift_allocObject();
      *(v197 + 16) = v287;
      *(v197 + 32) = v298;
      *(v197 + 40) = v89;
      *(v197 + 48) = v90;
      swift_retain_n();
      v198 = sub_1D72647CC();
      LOBYTE(v298) = 0;
      v199 = swift_allocObject();
      *(v199 + 16) = v198;
      *(v199 + 24) = v287;
      *(v199 + 40) = v298;
      v200 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v200, v201);
      MEMORY[0x1EEE9AC00](v202, v203);
      v260[-4] = sub_1D615B4A4;
      v260[-3] = &v260[-6];
      v258 = sub_1D6708AAC;
      v259 = v197;
      v204 = v285;
      v206 = sub_1D5D2F7A4(v139, sub_1D615B49C, v205, sub_1D615B4A4, &v260[-6]);
      if (v204)
      {
        goto LABEL_60;
      }

      v231 = v206;

      if (v231)
      {
        sub_1D72647EC();
        v89 = v276;
        *&v285 = 0;
        v90 = v286;
      }

      else
      {
        *&v285 = 0;
        v90 = v286;
        v89 = v276;
      }

      v139 = v266;
    }

    sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);

    v143 = (v282 + v273[10]);
    v145 = *v143;
    v144 = v143[1];
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v146 = v278;
    v147 = __swift_project_value_buffer(v278, qword_1EDFFCE98);
    v148 = v265;
    v280(v265, v147, v146);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAA90;
    v295 = xmmword_1D72BAA90;
    LOBYTE(v296) = 0;
    LOBYTE(v292) = 0;
    v149 = swift_allocObject();
    v151 = v149;
    *(v149 + 16) = v287;
    *(v149 + 32) = v292;
    *(v149 + 40) = v89;
    *(v149 + 48) = v90;
    if (v145 == 3)
    {

      sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);

      v152 = v285;
    }

    else
    {
      *&v277 = v260;
      *&v292 = v145;
      *(&v292 + 1) = v144;
      MEMORY[0x1EEE9AC00](v149, v150);
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v151;
      LOBYTE(v298) = 0;
      v209 = swift_allocObject();
      *(v209 + 16) = v287;
      *(v209 + 32) = v298;
      *(v209 + 40) = v89;
      *(v209 + 48) = v90;
      swift_retain_n();
      sub_1D62B7E1C(v145);
      v210 = sub_1D72647CC();
      LOBYTE(v298) = 0;
      v211 = swift_allocObject();
      *(v211 + 16) = v210;
      *(v211 + 24) = v287;
      *(v211 + 40) = v298;
      v212 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v212, v213);
      MEMORY[0x1EEE9AC00](v214, v215);
      v260[-4] = sub_1D615B4A4;
      v260[-3] = &v260[-6];
      v258 = sub_1D6708AAC;
      v259 = v209;
      v216 = v265;
      v217 = v285;
      v219 = sub_1D5D2F7A4(v265, sub_1D615B49C, v218, sub_1D615B4A4, &v260[-6]);
      v152 = v217;
      if (v217)
      {

        v107 = v317;
        sub_1D62B5E24(v292);
        v108 = v216;
        goto LABEL_55;
      }

      v242 = v219;

      if (v242)
      {
        sub_1D669BD70();
        sub_1D72647EC();
        v89 = v276;

        sub_1D62B5E24(v292);
        sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D62B5E24(v292);
        sub_1D5D2CFE8(v216, type metadata accessor for FormatVersionRequirement);
        v89 = v276;
      }
    }

    v153 = v282 + v273[11];
    v154 = *(v153 + 1);
    v285 = *v153;
    v277 = v154;
    v155 = *(v153 + 16);
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v156 = v278;
    v157 = __swift_project_value_buffer(v278, qword_1EDFFCE68);
    v158 = v264;
    v280(v264, v157, v156);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAAA0;
    v292 = xmmword_1D72BAAA0;
    LOBYTE(v293) = 0;
    LOBYTE(v295) = 0;
    v159 = swift_allocObject();
    v161 = v159;
    *(v159 + 16) = v287;
    *(v159 + 32) = v295;
    v162 = v286;
    *(v159 + 40) = v89;
    *(v159 + 48) = v162;
    if ((v155 & 0xFF00) == 0x400)
    {

      v107 = v317;
      v163 = v263;
    }

    else
    {
      v275 = v260;
      v295 = v285;
      v296 = v277;
      LOWORD(v297[0]) = v155 & 0xFF01;
      MEMORY[0x1EEE9AC00](v159, v160);
      *&v285 = &v260[-6];
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v161;
      LOBYTE(v298) = 0;
      v221 = swift_allocObject();
      *(v221 + 16) = v287;
      *(v221 + 32) = v298;
      *(v221 + 40) = v89;
      *(v221 + 48) = v162;
      swift_retain_n();
      v222 = sub_1D72647CC();
      LOBYTE(v298) = 0;
      v223 = swift_allocObject();
      *(v223 + 16) = v222;
      *(v223 + 24) = v287;
      *(v223 + 40) = v298;
      v224 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v224, v225);
      MEMORY[0x1EEE9AC00](v226, v227);
      v228 = v285;
      v260[-4] = sub_1D615B4A4;
      v260[-3] = v228;
      v258 = sub_1D6708AAC;
      v259 = v221;
      v230 = sub_1D5D2F7A4(v158, sub_1D615B49C, v229, sub_1D615B4A4, &v260[-6]);
      if (v152)
      {
        sub_1D5D2CFE8(v158, type metadata accessor for FormatVersionRequirement);

        goto LABEL_6;
      }

      v252 = v230;

      v163 = v263;
      if (v252)
      {
        sub_1D669BC44();
        v253 = v317;
        sub_1D72647EC();
        v89 = v276;
        v107 = v253;
      }

      else
      {
        v107 = v317;
        v89 = v276;
      }
    }

    sub_1D5D2CFE8(v264, type metadata accessor for FormatVersionRequirement);

    v164 = *(v282 + v273[12]);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v165 = v278;
    v166 = __swift_project_value_buffer(v278, qword_1EDFFCE38);
    v280(v163, v166, v165);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAAB0;
    v295 = xmmword_1D72BAAB0;
    LOBYTE(v296) = 0;
    LOBYTE(v292) = 0;
    v167 = swift_allocObject();
    v169 = v167;
    *(v167 + 16) = v287;
    *(v167 + 32) = v292;
    v170 = v286;
    *(v167 + 40) = v89;
    *(v167 + 48) = v170;
    if (v164 == 2)
    {
    }

    else
    {
      *&v285 = v260;
      LOBYTE(v292) = v164 & 1;
      MEMORY[0x1EEE9AC00](v167, v168);
      v260[-4] = sub_1D5B4AA6C;
      v260[-3] = 0;
      v258 = sub_1D6708AAC;
      v259 = v169;
      LOBYTE(v298) = 0;
      v232 = swift_allocObject();
      *(v232 + 16) = v287;
      *(v232 + 32) = v298;
      *(v232 + 40) = v89;
      *(v232 + 48) = v170;
      swift_retain_n();
      v233 = sub_1D72647CC();
      LOBYTE(v298) = 0;
      v234 = v152;
      v235 = swift_allocObject();
      *(v235 + 16) = v233;
      *(v235 + 24) = v287;
      *(v235 + 40) = v298;
      v236 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v236, v237);
      MEMORY[0x1EEE9AC00](v238, v239);
      v260[-4] = sub_1D615B4A4;
      v260[-3] = &v260[-6];
      v163 = v263;
      v258 = sub_1D6708AAC;
      v259 = v232;
      v241 = sub_1D5D2F7A4(v263, sub_1D615B49C, v240, sub_1D615B4A4, &v260[-6]);
      if (v234)
      {
        sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

        v78 = v317;
        return sub_1D5D2CFE8(v78, sub_1D669C0D4);
      }

      v254 = v241;

      if (v254)
      {
        v255 = v317;
        sub_1D72647EC();
        v152 = 0;
        v89 = v276;
        v170 = v286;
        v107 = v255;
      }

      else
      {
        v107 = v317;
        v152 = 0;
        v170 = v286;
        v89 = v276;
      }
    }

    sub_1D5D2CFE8(v163, type metadata accessor for FormatVersionRequirement);

    v171 = *(v282 + v273[13]);
    v172 = v262;
    v280(v262, v166, v278);
    swift_storeEnumTagMultiPayload();
    v287 = xmmword_1D72BAAC0;
    v295 = xmmword_1D72BAAC0;
    LOBYTE(v296) = 0;
    LOBYTE(v292) = 0;
    v173 = swift_allocObject();
    v175 = v173;
    *(v173 + 16) = v287;
    *(v173 + 32) = v292;
    *(v173 + 40) = v89;
    *(v173 + 48) = v170;
    if (v171 == 2)
    {

LABEL_52:
      sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);

LABEL_56:
      v78 = v107;
      return sub_1D5D2CFE8(v78, sub_1D669C0D4);
    }

    v286 = v260;
    LOBYTE(v292) = v171 & 1;
    MEMORY[0x1EEE9AC00](v173, v174);
    v260[-4] = sub_1D5B4AA6C;
    v260[-3] = 0;
    v258 = sub_1D6708AAC;
    v259 = v175;
    LOBYTE(v298) = 0;
    v243 = swift_allocObject();
    *(v243 + 16) = v287;
    *(v243 + 32) = v298;
    *(v243 + 40) = v89;
    *(v243 + 48) = v170;
    swift_retain_n();
    v244 = sub_1D72647CC();
    LOBYTE(v298) = 0;
    v139 = v172;
    v245 = swift_allocObject();
    *(v245 + 16) = v244;
    *(v245 + 24) = v287;
    *(v245 + 40) = v298;
    v246 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
    MEMORY[0x1EEE9AC00](v246, v247);
    MEMORY[0x1EEE9AC00](v248, v249);
    v260[-4] = sub_1D615B4A4;
    v260[-3] = &v260[-6];
    v258 = sub_1D669C1FC;
    v259 = v243;
    v251 = sub_1D5D2F7A4(v139, sub_1D615B49C, v250, sub_1D615B4A4, &v260[-6]);
    if (!v152)
    {
      v256 = v251;

      if (v256)
      {
        v257 = v317;
        sub_1D72647EC();
        v172 = v262;
        v107 = v257;
      }

      else
      {
        v107 = v317;
        v172 = v262;
      }

      goto LABEL_52;
    }

LABEL_60:
    sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);

    goto LABEL_6;
  }

  v290[0] = v302;
  v290[1] = v303;
  v291 = v304;
  v288 = v300;
  v289 = v301;
  sub_1D669BE18(&v288);
LABEL_16:
  sub_1D5D2CFE8(v83, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v317, sub_1D669C0D4);
}

uint64_t sub_1D6503ED0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x726F7463656C6573;
    v7 = 0x656C65536C6C6563;
    v8 = 0x697463416C6C6563;
    if (a1 != 3)
    {
      v8 = 0x426F547370696C63;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    v2 = 1885433183;
    if (a1 == 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    v4 = 0xD000000000000010;
    if (a1 != 6)
    {
      v4 = 0x7261507375636F66;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D650406C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669C71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65040A4(uint64_t a1)
{
  v2 = sub_1D669C02C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65040E0(uint64_t a1)
{
  v2 = sub_1D669C02C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemNodeSwipeActionStyle.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - v8;
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
          *(v22 + 16) = &unk_1F5115D78;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D669C28C();
    v26 = 0uLL;
    sub_1D726431C();
    if (v25 > 1u)
    {
      if (v25 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v24 = xmmword_1D7297410;
      }

      else
      {
        v25 = xmmword_1D7279980;
        sub_1D630BCE0();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v24 = v26;
      }
    }

    else if (v25)
    {
      (*(v11 + 8))(v15, v5);
      v24 = xmmword_1D728CF30;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0uLL;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatItemNodeSwipeActionStyle.encode(to:)(void *a1)
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
  v39 = v1[1];
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatItemNodeSwipeActionStyle, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatItemNodeSwipeActionStyle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstC, v25, v22, v26, &off_1F51F6B98);
  if (v23)
  {
    if (v23 == 1)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCE98);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419EE4(1, v14);
      v30 = v14;
    }

    else if (v23 == 2)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCE98);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6419EE4(2, v10);
      v30 = v10;
    }

    else
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCE98);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638AEA0(3, v23, v39, v6);
      v30 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F58[0] != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCE98);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6419EE4(0, v18);
    v30 = v18;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65049A0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6504A74()
{
  sub_1D72621EC();
}

uint64_t sub_1D6504B34()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6504C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66646D0();
  *a1 = result;
  return result;
}

void sub_1D6504C34(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x64656C6261736964;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (*v1 != 2)
  {
    v5 = 0x6F69736E656D6964;
    v4 = 0xE90000000000006ELL;
  }

  if (*v1)
  {
    v3 = 0x65736E65646E6F63;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1D6504D74()
{
  v1 = 0x57616572416E696DLL;
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
    return 0x69536E6F74747562;
  }
}

uint64_t sub_1D6504DD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669CABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6504E0C(uint64_t a1)
{
  v2 = sub_1D666ED04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6504E48(uint64_t a1)
{
  v2 = sub_1D666ED04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatItemTrait.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v290 = &v240 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v289 = &v240 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v288 = &v240 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v287 = &v240 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v286 = &v240 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v285 = &v240 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v284 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v283 = &v240 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v282 = &v240 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v281 = &v240 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v280 = &v240 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v279 = &v240 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v278 = &v240 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v277 = &v240 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v276 = &v240 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v275 = &v240 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v274 = &v240 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v273 = &v240 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v272 = &v240 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v271 = &v240 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v270 = &v240 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v269 = &v240 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v268 = &v240 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v267 = &v240 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v266 = &v240 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v265 = &v240 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v264 = &v240 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v263 = &v240 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v262 = &v240 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v261 = &v240 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v260 = &v240 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v259 = &v240 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v258 = &v240 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v256 = &v240 - v104;
  MEMORY[0x1EEE9AC00](v105, v106);
  v254 = &v240 - v107;
  MEMORY[0x1EEE9AC00](v108, v109);
  v253 = &v240 - v110;
  MEMORY[0x1EEE9AC00](v111, v112);
  v257 = &v240 - v113;
  MEMORY[0x1EEE9AC00](v114, v115);
  v255 = &v240 - v116;
  MEMORY[0x1EEE9AC00](v117, v118);
  v252 = &v240 - v119;
  MEMORY[0x1EEE9AC00](v120, v121);
  v251 = &v240 - v122;
  MEMORY[0x1EEE9AC00](v123, v124);
  v250 = &v240 - v125;
  MEMORY[0x1EEE9AC00](v126, v127);
  v249 = &v240 - v128;
  MEMORY[0x1EEE9AC00](v129, v130);
  v248 = &v240 - v131;
  MEMORY[0x1EEE9AC00](v132, v133);
  v247 = &v240 - v134;
  MEMORY[0x1EEE9AC00](v135, v136);
  v246 = &v240 - v137;
  MEMORY[0x1EEE9AC00](v138, v139);
  v245 = &v240 - v140;
  MEMORY[0x1EEE9AC00](v141, v142);
  v244 = &v240 - v143;
  MEMORY[0x1EEE9AC00](v144, v145);
  v243 = &v240 - v146;
  MEMORY[0x1EEE9AC00](v147, v148);
  v242 = &v240 - v149;
  MEMORY[0x1EEE9AC00](v150, v151);
  v241 = &v240 - v152;
  MEMORY[0x1EEE9AC00](v153, v154);
  v156 = &v240 - v155;
  v291 = *v1;
  v292 = a1;
  v157 = a1[3];
  v158 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v157);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v159 = sub_1D725BD1C();
  v160 = __swift_project_value_buffer(v159, qword_1EDFFCD30);
  v161 = *(*(v159 - 8) + 16);
  v161(v156, v160, v159);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v162 = v293;
  sub_1D5D2BEC4(v156, sub_1D5B4AA6C, 0, v157, v158);
  if (v162)
  {
    return sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
  v164 = v292[3];
  v165 = v292[4];
  __swift_project_boxed_opaque_existential_1(v292, v164);
  v166 = v159;
  switch(v291)
  {
    case 1:
      v167 = v242;
      v161(v242, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 2:
      v167 = v243;
      v161(v243, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 3:
      v167 = v244;
      v161(v244, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 4:
      v167 = v245;
      v161(v245, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 5:
      v167 = v246;
      v161(v246, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 6:
      v167 = v247;
      v161(v247, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 7:
      v167 = v248;
      v161(v248, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 8:
      v167 = v249;
      v161(v249, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 9:
      v167 = v250;
      v161(v250, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 10:
      v167 = v251;
      v161(v251, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 11:
      v167 = v252;
      v161(v252, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 12:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v193 = v166;
      v194 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v255;
      v161(v255, v194, v193);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 13:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v209 = v166;
      v210 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v257;
      v161(v257, v210, v209);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 14:
      v167 = v253;
      v161(v253, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 15:
      v167 = v254;
      v161(v254, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 16:
      v167 = v256;
      v161(v256, v160, v166);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 17:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v201 = v166;
      v202 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v258;
      v161(v258, v202, v201);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 18:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v211 = v166;
      v212 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v259;
      v161(v259, v212, v211);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 19:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v223 = v166;
      v224 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v260;
      v161(v260, v224, v223);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 20:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v205 = v166;
      v206 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v261;
      v161(v261, v206, v205);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 21:
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v207 = v166;
      v208 = __swift_project_value_buffer(v166, qword_1EDFFCD50);
      v167 = v262;
      v161(v262, v208, v207);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 22:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v219 = v166;
      v220 = __swift_project_value_buffer(v166, qword_1EDFFCD00);
      v167 = v263;
      v161(v263, v220, v219);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 23:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v227 = v166;
      v228 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v264;
      v161(v264, v228, v227);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 24:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v197 = v166;
      v198 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v265;
      v161(v265, v198, v197);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 25:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v195 = v166;
      v196 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v266;
      v161(v266, v196, v195);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 26:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v235 = v166;
      v236 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v267;
      v161(v267, v236, v235);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 27:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v178 = v166;
      v179 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v268;
      v161(v268, v179, v178);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 28:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v229 = v166;
      v230 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v269;
      v161(v269, v230, v229);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 29:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v231 = v166;
      v232 = __swift_project_value_buffer(v166, qword_1EDFFCDE0);
      v167 = v270;
      v161(v270, v232, v231);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 30:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v213 = v166;
      v214 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v271;
      v161(v271, v214, v213);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 31:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v199 = v166;
      v200 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v272;
      v161(v272, v200, v199);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 32:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v215 = v166;
      v216 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v273;
      v161(v273, v216, v215);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 33:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v184 = v166;
      v185 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v274;
      v161(v274, v185, v184);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 34:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v180 = v166;
      v181 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v275;
      v161(v275, v181, v180);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 35:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v174 = v166;
      v175 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v276;
      v161(v276, v175, v174);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 36:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v176 = v166;
      v177 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v277;
      v161(v277, v177, v176);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 37:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v170 = v166;
      v171 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v278;
      v161(v278, v171, v170);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 38:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v233 = v166;
      v234 = __swift_project_value_buffer(v166, qword_1EDFFCD80);
      v167 = v279;
      v161(v279, v234, v233);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 39:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v221 = v166;
      v222 = __swift_project_value_buffer(v166, qword_1EDFFCD68);
      v167 = v280;
      v161(v280, v222, v221);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 40:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v191 = v166;
      v192 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v281;
      v161(v281, v192, v191);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 41:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v203 = v166;
      v204 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v282;
      v161(v282, v204, v203);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 42:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v225 = v166;
      v226 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v283;
      v161(v283, v226, v225);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 43:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v168 = v166;
      v169 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v284;
      v161(v284, v169, v168);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 44:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v182 = v166;
      v183 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v285;
      v161(v285, v183, v182);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 45:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v217 = v166;
      v218 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v286;
      v161(v286, v218, v217);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 46:
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v237 = v166;
      v238 = __swift_project_value_buffer(v166, qword_1EDFFCCA8);
      v167 = v287;
      v161(v287, v238, v237);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 47:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v172 = v166;
      v173 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v288;
      v161(v288, v173, v172);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 48:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v186 = v166;
      v187 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v167 = v289;
      v161(v289, v187, v186);
      swift_storeEnumTagMultiPayload();
      goto LABEL_126;
    case 49:
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
        v166 = v159;
      }

      v188 = v166;
      v189 = __swift_project_value_buffer(v166, qword_1EDFFCE80);
      v190 = v290;
      v161(v290, v189, v188);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v190, sub_1D5B4AA6C, 0, v164, v165);
      v239 = v190;
      goto LABEL_127;
    default:
      v167 = v241;
      v161(v241, v160, v166);
      swift_storeEnumTagMultiPayload();
LABEL_126:
      sub_1D5D2BEC4(v167, sub_1D5B4AA6C, 0, v164, v165);
      v239 = v167;
LABEL_127:
      sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v292, v292[3]);
      sub_1D7264B3C();
      v296 = v291;
      FormatItemTrait.rawValue.getter();
      __swift_mutable_project_boxed_opaque_existential_1(v294, v295);
      sub_1D726473C();

      result = __swift_destroy_boxed_opaque_existential_1(v294);
      break;
  }

  return result;
}

uint64_t FormatJsonConfig.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D669CFF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5E1B248();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF256B8, sub_1D5E1B248);
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
  sub_1D5E1B20C(0);
  sub_1D5B58B84(&qword_1EDF03768, sub_1D5E1B20C);

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
  v39 = sub_1D669D08C;
  v40 = v27;
  v34 = v41;
  v36 = sub_1D5D2F7A4(v8, sub_1D615B49C, v35, sub_1D615B4A4, (&v41 - 6));
  if (!v34)
  {
    v37 = v36;

    if (v37)
    {
      sub_1D5E08360(v20, v13, 0, 0, 0);
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_10:
  sub_1D5D2CFE8(v8, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v13, sub_1D669CFF8);
}

uint64_t sub_1D65074BC()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 1937335659;
  }
}

uint64_t sub_1D65074E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1937335659 && a2 == 0xE400000000000000;
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

uint64_t sub_1D65075CC(uint64_t a1)
{
  v2 = sub_1D5E1B320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6507608(uint64_t a1)
{
  v2 = sub_1D5E1B320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatJsonConfigKey.encode(to:)(void *a1)
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
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD68);
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

uint64_t FormatLayeredMediaFilter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
          *(v21 + 16) = &unk_1F5115DC8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D669D108();
    v25 = 0uLL;
    sub_1D726431C();
    v24 = xmmword_1D7279980;
    sub_1D669D15C();
    sub_1D726431C();
    (*(v11 + 8))(v10, v6);
    v23 = v26;
    *v14 = v25;
    *(v14 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaFilter.Monochrome.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D669D1B0();
  v7 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D669D244();
  sub_1D5B58B84(&qword_1EDF25108, sub_1D669D244);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v31;
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

      v18 = v7;
      v19 = v13;
      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D661E3A4();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v10, v18);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5B570F8();
  v32 = 0uLL;
  v33 = 0;
  sub_1D726427C();
  v17 = v34;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  sub_1D5C35218();
  sub_1D726427C();
  v24 = v7;
  v25 = v13;
  v26 = v34;
  v32 = xmmword_1D7297410;
  v33 = 0;
  sub_1D726427C();
  (*(v25 + 8))(v10, v24);
  v28 = v34;
  v29 = v30;
  *v30 = v17;
  v29[1] = v26;
  v29[2] = v28;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaFilter.Monochrome.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v106 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v105 = v96 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v96 - v12;
  sub_1D669D3C4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v104 = v1[1];
  v102 = v1[2];
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D669D244();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25108, sub_1D669D244);
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaFilter.Monochrome, v23, v25, v20, &type metadata for FormatLayeredMediaFilter.Monochrome, v23, &type metadata for FormatVersions.StarSkyC, v21, v18, v24, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD00);
  v28 = *(v26 - 8);
  v109 = *(v28 + 16);
  v110 = v27;
  v108 = v28 + 16;
  v109(v13);
  v107 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v114 = 0uLL;
  v115 = 0;
  v29 = &v18[*(v15 + 44)];
  v31 = *v29;
  v30 = *(v29 + 1);
  LOBYTE(v116) = 0;
  v32 = swift_allocObject();
  v34 = v32;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v116;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  v112 = v18;
  *&v111 = v2;
  v103 = v15;
  if ((~v19 & 0xF000000000000007) != 0)
  {
    v101 = v26;
    v98 = v96;
    v116 = v19;
    MEMORY[0x1EEE9AC00](v32, v33);
    v97 = &v96[-6];
    v96[-4] = sub_1D5B4AA6C;
    v96[-3] = 0;
    v94 = sub_1D6708AB0;
    v95 = v34;
    v113 = 0;
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v113;
    *(v48 + 40) = v31;
    *(v48 + 48) = v30;
    swift_retain_n();
    sub_1D5CFCFAC(v19);
    sub_1D669D458();
    v50 = v49;
    v51 = sub_1D5B58B84(&qword_1EDF03098, sub_1D669D458);
    v99 = v30;
    v96[1] = v50;
    v52 = sub_1D72647CC();
    v113 = 0;
    v53 = swift_allocObject();
    v100 = v31;
    *(v53 + 24) = 0;
    *(v53 + 32) = 0;
    *(v53 + 16) = v52;
    *(v53 + 40) = v113;
    v54 = __swift_project_boxed_opaque_existential_1(&v18[*(v15 + 36)], *&v18[*(v15 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v54, v55);
    MEMORY[0x1EEE9AC00](v56, v57);
    v58 = v97;
    v96[-4] = sub_1D615B4A4;
    v96[-3] = v58;
    v94 = sub_1D6708AB0;
    v95 = v48;
    v59 = v111;
    v61 = sub_1D5D2F7A4(v13, sub_1D615B49C, v60, sub_1D615B4A4, &v96[-6]);
    if (v59)
    {

      v62 = v13;
      goto LABEL_14;
    }

    v89 = v61;
    *&v111 = v51;
    v90 = v100;

    if (v89)
    {
      sub_1D5B55CBC();
      sub_1D72647EC();
      v36 = v105;
      v26 = v101;
      v31 = v90;
      *&v111 = 0;

      v30 = v99;
    }

    else
    {
      *&v111 = 0;

      v36 = v105;
      v30 = v99;
      v31 = v90;
      v26 = v101;
    }

    v35 = v106;
  }

  else
  {

    v35 = v106;
    v36 = v105;
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  (v109)(v36, v110, v26);
  swift_storeEnumTagMultiPayload();
  v105 = xmmword_1D728CF30;
  v114 = xmmword_1D728CF30;
  v115 = 0;
  LOBYTE(v116) = 0;
  v37 = swift_allocObject();
  v39 = v37;
  *(v37 + 16) = v105;
  *(v37 + 32) = v116;
  *(v37 + 40) = v31;
  *(v37 + 48) = v30;
  v40 = v104;
  if ((~v104 & 0xF000000000000007) == 0)
  {
    v41 = v31;

    v42 = v111;
    v43 = v102;
    goto LABEL_7;
  }

  v101 = v26;
  v98 = v96;
  v116 = v104;
  MEMORY[0x1EEE9AC00](v37, v38);
  v96[-4] = sub_1D5B4AA6C;
  v96[-3] = 0;
  v94 = sub_1D6708AB0;
  v95 = v39;
  v113 = 0;
  v63 = swift_allocObject();
  *(v63 + 16) = v105;
  *(v63 + 32) = v113;
  *(v63 + 40) = v31;
  *(v63 + 48) = v30;
  swift_retain_n();
  sub_1D5D04BD4(v40);
  sub_1D669D458();
  v65 = v64;
  sub_1D5B58B84(&qword_1EDF03098, sub_1D669D458);
  v99 = v30;
  v66 = v112;
  v104 = v65;
  v67 = sub_1D72647CC();
  v113 = 0;
  v68 = swift_allocObject();
  v100 = v31;
  *(v68 + 16) = v67;
  *(v68 + 24) = v105;
  *(v68 + 40) = v113;
  v69 = __swift_project_boxed_opaque_existential_1(&v66[*(v103 + 36)], *&v66[*(v103 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v69, v70);
  MEMORY[0x1EEE9AC00](v71, v72);
  v96[-4] = sub_1D615B4A4;
  v96[-3] = &v96[-6];
  v94 = sub_1D6708AB0;
  v95 = v63;
  v73 = v111;
  v75 = sub_1D5D2F7A4(v36, sub_1D615B49C, v74, sub_1D615B4A4, &v96[-6]);
  v42 = v73;
  if (!v73)
  {
    v91 = v75;
    v41 = v100;

    v43 = v102;
    if (v91)
    {
      sub_1D5C3526C();
      sub_1D72647EC();
      v26 = v101;

      v30 = v99;
    }

    else
    {

      v30 = v99;
      v26 = v101;
    }

    v35 = v106;
LABEL_7:
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
    (v109)(v35, v110, v26);
    swift_storeEnumTagMultiPayload();
    v111 = xmmword_1D7297410;
    v114 = xmmword_1D7297410;
    v115 = 0;
    LOBYTE(v116) = 0;
    v44 = swift_allocObject();
    v46 = v44;
    *(v44 + 16) = v111;
    *(v44 + 32) = v116;
    *(v44 + 40) = v41;
    *(v44 + 48) = v30;
    if ((~v43 & 0xF000000000000007) == 0)
    {

LABEL_9:

      v47 = v112;
LABEL_27:
      sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
      v76 = v47;
      return sub_1D5D2CFE8(v76, sub_1D669D3C4);
    }

    v110 = v96;
    v116 = v43;
    MEMORY[0x1EEE9AC00](v44, v45);
    v96[-4] = sub_1D5B4AA6C;
    v96[-3] = 0;
    v94 = sub_1D6708AB0;
    v95 = v46;
    v113 = 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v111;
    *(v77 + 32) = v113;
    *(v77 + 40) = v41;
    *(v77 + 48) = v30;
    swift_retain_n();
    sub_1D5D04BD4(v43);
    sub_1D669D458();
    v79 = v78;
    sub_1D5B58B84(&qword_1EDF03098, sub_1D669D458);
    v80 = v112;
    v109 = v79;
    v81 = sub_1D72647CC();
    v113 = 0;
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v111;
    *(v82 + 40) = v113;
    v83 = __swift_project_boxed_opaque_existential_1(&v80[*(v103 + 36)], *&v80[*(v103 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v83, v84);
    MEMORY[0x1EEE9AC00](v85, v86);
    v96[-4] = sub_1D615B4A4;
    v96[-3] = &v96[-6];
    v35 = v106;
    v94 = sub_1D669D4EC;
    v95 = v77;
    v88 = sub_1D5D2F7A4(v106, sub_1D615B49C, v87, sub_1D615B4A4, &v96[-6]);
    if (v42)
    {

      v47 = v112;
    }

    else
    {
      v92 = v88;

      if ((v92 & 1) == 0)
      {

        goto LABEL_9;
      }

      sub_1D5C3526C();
      v47 = v112;
      sub_1D72647EC();
    }

    goto LABEL_27;
  }

  v62 = v36;
LABEL_14:
  sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
  v76 = v112;
  return sub_1D5D2CFE8(v76, sub_1D669D3C4);
}

unint64_t sub_1D6508FD4()
{
  v1 = 0x726F6C6F63;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746E756F6D61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6509044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669D568(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D650907C(uint64_t a1)
{
  v2 = sub_1D669D31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65090B8(uint64_t a1)
{
  v2 = sub_1D669D31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v297 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v301 = &v297 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v302 = &v297 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v304 = &v297 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v303 = &v297 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v305 = &v297 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v306 = &v297 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v307 = &v297 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v308 = &v297 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v310 = &v297 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v311 = &v297 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v312 = &v297 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  *&v322 = &v297 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v297 - v47;
  sub_1D669E6CC();
  *&v321 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v297 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1[3];
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v53);
  sub_1D5E1B058();
  v56 = v55;
  v57 = sub_1D5B58B84(&qword_1EDF25258, sub_1D5E1B058);
  sub_1D5D2EE70(v4, v56, v58, v53, v4, v56, &type metadata for FormatVersions.AzdenC, v54, v52, v57, &off_1F51F6BB8);
  swift_beginAccess();
  v60 = v2[2];
  v59 = v2[3];
  v320 = v2;
  v61 = qword_1EDF31EF0;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = sub_1D725BD1C();
  v63 = __swift_project_value_buffer(v62, qword_1EDFFCDB0);
  v64 = *(v62 - 8);
  v65 = *(v64 + 16);
  v66 = v64 + 16;
  v319 = v63;
  v65(v48);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v68 = sub_1D725895C();
  v69 = (*(*(v68 - 8) + 48))(v8, 1, v68);
  v316 = v65;
  v315 = v66;
  v317 = v67;
  if (v69 != 1)
  {
    v318 = v62;
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_9:
    v89 = v322;
    v90 = v321;
    goto LABEL_10;
  }

  v313 = v60;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v70 = v321;
  v71 = &v52[*(v321 + 44)];
  v73 = *v71;
  v72 = *(v71 + 1);
  LOBYTE(v324) = 0;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = v324;
  *(v74 + 40) = v73;
  *(v74 + 48) = v72;
  sub_1D5E1B01C(0);
  v76 = v75;
  v77 = sub_1D5B58B84(&qword_1EDF03218, sub_1D5E1B01C);

  v314 = v76;
  v309 = v77;
  v78 = sub_1D72647CC();
  LOBYTE(v324) = 0;
  v79 = swift_allocObject();
  *(v79 + 24) = 0;
  *(v79 + 32) = 0;
  *(v79 + 16) = v78;
  *(v79 + 40) = v324;
  v80 = __swift_project_boxed_opaque_existential_1(&v52[*(v70 + 36)], *&v52[*(v70 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v80, v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  *(&v297 - 4) = sub_1D5B4AA6C;
  *(&v297 - 3) = 0;
  v295 = sub_1D669E760;
  v296 = v74;
  v84 = v323;
  v86 = sub_1D5D2F7A4(v48, sub_1D615B49C, v85, sub_1D615B4A4, (&v297 - 6));
  *&v323 = v84;
  if (v84)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v87 = v52;
    return sub_1D5D2CFE8(v87, sub_1D669E6CC);
  }

  v114 = v86;
  v318 = v62;

  if ((v114 & 1) == 0)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v65 = v316;
    goto LABEL_9;
  }

  v324 = 0uLL;
  LOBYTE(v325) = 0;
  v336 = v313;
  v337 = v59;
  v115 = v323;
  sub_1D72647EC();

  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  *&v323 = v115;
  v65 = v316;
  v89 = v322;
  v90 = v321;
  if (v115)
  {
    goto LABEL_6;
  }

LABEL_10:
  v91 = v320[4];
  (v65)(v89, v319, v318);
  swift_storeEnumTagMultiPayload();
  v336 = v91;
  v321 = xmmword_1D728CF30;
  v324 = xmmword_1D728CF30;
  LOBYTE(v325) = 0;
  v92 = &v52[*(v90 + 44)];
  v93 = *v92;
  v94 = *(v92 + 1);
  LOBYTE(v335) = 0;
  v95 = swift_allocObject();
  v314 = &v297;
  *(v95 + 16) = v321;
  *(v95 + 32) = v335;
  *(v95 + 40) = v93;
  *(v95 + 48) = v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v313 = &v297 - 6;
  *(&v297 - 4) = sub_1D5B4AA6C;
  *(&v297 - 3) = 0;
  v295 = sub_1D6708AB4;
  v296 = v97;
  LOBYTE(v335) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v321;
  *(v98 + 32) = v335;
  v299 = v93;
  *(v98 + 40) = v93;
  *(v98 + 48) = v94;
  sub_1D5E1B01C(0);
  v100 = v99;
  v101 = sub_1D5B58B84(&qword_1EDF03218, sub_1D5E1B01C);
  v298 = v94;
  swift_retain_n();
  v309 = v100;
  v300 = v101;
  v102 = sub_1D72647CC();
  LOBYTE(v335) = 0;
  v103 = swift_allocObject();
  *(v103 + 16) = v102;
  *(v103 + 24) = v321;
  *(v103 + 40) = v335;
  v104 = v52;
  v105 = &v52[*(v90 + 36)];
  v106 = __swift_project_boxed_opaque_existential_1(v105, *(v105 + 3));
  MEMORY[0x1EEE9AC00](v106, v107);
  MEMORY[0x1EEE9AC00](v108, v109);
  v110 = v313;
  *(&v297 - 4) = sub_1D615B4A4;
  *(&v297 - 3) = v110;
  v295 = sub_1D6708AB4;
  v296 = v98;
  v111 = v322;
  v112 = v323;
  sub_1D5D2BC70(v322, sub_1D615B49C, v113, sub_1D615B4A4, (&v297 - 6));
  if (!v112)
  {
    *&v321 = v105;

    sub_1D669E7F0();
    sub_1D72647EC();
    sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);

    v116 = v320;
    v117 = v320[5];
    v118 = v312;
    v119 = v316;
    (v316)(v312, v319, v318);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D7297410;
    v324 = xmmword_1D7297410;
    LOBYTE(v325) = 0;
    LOBYTE(v336) = 0;
    v120 = swift_allocObject();
    v122 = v120;
    *(v120 + 16) = v323;
    *(v120 + 32) = v336;
    v123 = v299;
    v124 = v298;
    *(v120 + 40) = v299;
    *(v120 + 48) = v124;
    v297 = v104;
    if (v117)
    {
      *&v322 = &v297;
      v336 = v117;
      MEMORY[0x1EEE9AC00](v120, v121);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v122;
      LOBYTE(v335) = 0;
      v125 = swift_allocObject();
      *(v125 + 16) = v323;
      *(v125 + 32) = v335;
      *(v125 + 40) = v123;
      *(v125 + 48) = v124;
      swift_retain_n();

      v126 = sub_1D72647CC();
      LOBYTE(v335) = 0;
      v127 = swift_allocObject();
      *(v127 + 16) = v126;
      *(v127 + 24) = v323;
      *(v127 + 40) = v335;
      v128 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v128, v129);
      MEMORY[0x1EEE9AC00](v130, v131);
      *(&v297 - 4) = sub_1D615B4A4;
      *(&v297 - 3) = (&v297 - 6);
      v295 = sub_1D6708AB4;
      v296 = v125;
      v133 = sub_1D5D2F7A4(v118, sub_1D615B49C, v132, sub_1D615B4A4, (&v297 - 6));

      if (v133)
      {
        type metadata accessor for FormatLayeredMediaNodeStyle();
        sub_1D5B58B84(&qword_1EDF0AFD8, type metadata accessor for FormatLayeredMediaNodeStyle);
        sub_1D72647EC();
        v116 = v320;
        v119 = v316;
        v124 = v298;
        v123 = v299;
      }

      else
      {

        v116 = v320;
        v119 = v316;
        v124 = v298;
        v123 = v299;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v312, type metadata accessor for FormatVersionRequirement);
    v134 = v116[6];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v135 = __swift_project_value_buffer(v318, qword_1EDFFCD50);
    v136 = v311;
    v314 = v135;
    v119(v311);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAA60;
    v324 = xmmword_1D72BAA60;
    LOBYTE(v325) = 0;
    LOBYTE(v336) = 0;
    v137 = swift_allocObject();
    v139 = v137;
    *(v137 + 16) = v323;
    *(v137 + 32) = v336;
    *(v137 + 40) = v123;
    *(v137 + 48) = v124;
    if (v134)
    {
      *&v322 = &v297;
      v336 = v134;
      MEMORY[0x1EEE9AC00](v137, v138);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v139;
      LOBYTE(v335) = 0;
      v140 = swift_allocObject();
      *(v140 + 16) = v323;
      *(v140 + 32) = v335;
      *(v140 + 40) = v123;
      *(v140 + 48) = v124;
      swift_retain_n();

      v141 = sub_1D72647CC();
      LOBYTE(v335) = 0;
      v142 = swift_allocObject();
      *(v142 + 16) = v141;
      *(v142 + 24) = v323;
      *(v142 + 40) = v335;
      v143 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v143, v144);
      MEMORY[0x1EEE9AC00](v145, v146);
      *(&v297 - 4) = sub_1D615B4A4;
      *(&v297 - 3) = (&v297 - 6);
      v295 = sub_1D6708AB4;
      v296 = v140;
      v148 = sub_1D5D2F7A4(v136, sub_1D615B49C, v147, sub_1D615B4A4, (&v297 - 6));
      v151 = v148;

      if (v151)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
        sub_1D72647EC();
        v116 = v320;
        v119 = v316;
        v150 = v319;
        v123 = v299;

        v149 = v298;
      }

      else
      {

        v116 = v320;
        v119 = v316;
        v150 = v319;
        v149 = v298;
        v123 = v299;
      }
    }

    else
    {

      v149 = v124;
      v150 = v319;
    }

    sub_1D5D2CFE8(v311, type metadata accessor for FormatVersionRequirement);
    v152 = v116[7];
    v153 = v310;
    (v119)(v310, v150, v318);
    swift_storeEnumTagMultiPayload();
    v336 = v152;
    v323 = xmmword_1D72BAA70;
    v324 = xmmword_1D72BAA70;
    LOBYTE(v325) = 0;
    LOBYTE(v335) = 0;
    v154 = swift_allocObject();
    *&v322 = &v297;
    *(v154 + 16) = v323;
    *(v154 + 32) = v335;
    *(v154 + 40) = v123;
    *(v154 + 48) = v149;
    MEMORY[0x1EEE9AC00](v154, v155);
    *(&v297 - 4) = sub_1D5B4AA6C;
    *(&v297 - 3) = 0;
    v295 = sub_1D6708AB4;
    v296 = v156;
    LOBYTE(v335) = 0;
    v157 = swift_allocObject();
    *(v157 + 16) = v323;
    *(v157 + 32) = v335;
    *(v157 + 40) = v123;
    *(v157 + 48) = v149;
    swift_retain_n();
    v158 = sub_1D72647CC();
    LOBYTE(v335) = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v323;
    *(v159 + 40) = v335;
    v160 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
    MEMORY[0x1EEE9AC00](v160, v161);
    MEMORY[0x1EEE9AC00](v162, v163);
    *(&v297 - 4) = sub_1D615B4A4;
    *(&v297 - 3) = (&v297 - 6);
    v295 = sub_1D6708AB4;
    v296 = v157;
    sub_1D5D2BC70(v153, sub_1D615B49C, v164, sub_1D615B4A4, (&v297 - 6));

    sub_1D5CA1E90();
    sub_1D72647EC();
    sub_1D5D2CFE8(v310, type metadata accessor for FormatVersionRequirement);

    v165 = v320;
    v166 = v320[8];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v167 = v318;
    v168 = __swift_project_value_buffer(v318, qword_1EDFFCD68);
    v169 = v308;
    v170 = v316;
    (v316)(v308, v168, v167);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAA80;
    v324 = xmmword_1D72BAA80;
    LOBYTE(v325) = 0;
    LOBYTE(v336) = 0;
    v172 = swift_allocObject();
    *(v172 + 16) = v323;
    *(v172 + 32) = v336;
    v173 = v299;
    *(v172 + 40) = v299;
    v174 = v298;
    *(v172 + 48) = v298;
    if (v166)
    {
      v175 = v174;
      *&v322 = &v297;
      v336 = v166;
      MEMORY[0x1EEE9AC00](v174, v171);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v172;
      LOBYTE(v335) = 0;
      v176 = swift_allocObject();
      *(v176 + 16) = v323;
      *(v176 + 32) = v335;
      *(v176 + 40) = v173;
      *(v176 + 48) = v175;
      swift_retain_n();

      v177 = sub_1D72647CC();
      LOBYTE(v335) = 0;
      v178 = swift_allocObject();
      *(v178 + 16) = v177;
      *(v178 + 24) = v323;
      *(v178 + 40) = v335;
      v179 = v321;
      v180 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v180, v181);
      MEMORY[0x1EEE9AC00](v182, v183);
      *(&v297 - 4) = sub_1D615B4A4;
      *(&v297 - 3) = (&v297 - 6);
      v295 = sub_1D6708AB4;
      v296 = v176;
      v185 = sub_1D5D2F7A4(v169, sub_1D615B49C, v184, sub_1D615B4A4, (&v297 - 6));
      v186 = v185;

      if (v186)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v165 = v320;
        v170 = v316;
      }

      else
      {

        v165 = v320;
        v170 = v316;
      }
    }

    else
    {

      v179 = v321;
    }

    sub_1D5D2CFE8(v308, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v187 = v165[9];
    v188 = v307;
    v170(v307, v319, v318);
    swift_storeEnumTagMultiPayload();
    if (*(v187 + 16))
    {
      LOBYTE(v324) = 0;
      v189 = swift_allocObject();
      v323 = xmmword_1D72BAA90;
      *(v189 + 16) = xmmword_1D72BAA90;
      *(v189 + 32) = v324;
      *(v189 + 40) = v299;
      *(v189 + 48) = v298;

      v190 = sub_1D72647CC();
      LOBYTE(v324) = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v190;
      *(v191 + 24) = v323;
      *(v191 + 40) = v324;
      v192 = __swift_project_boxed_opaque_existential_1(v179, v179[3]);
      *&v322 = &v297;
      MEMORY[0x1EEE9AC00](v192, v193);
      MEMORY[0x1EEE9AC00](v194, v195);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v189;
      v197 = sub_1D5D2F7A4(v188, sub_1D615B49C, v196, sub_1D615B4A4, (&v297 - 6));
      v198 = v197;

      if (v198)
      {
        v324 = v323;
        LOBYTE(v325) = 0;
        v335 = v187;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v199 = v307;

        sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v307, type metadata accessor for FormatVersionRequirement);
      }

      v165 = v320;
    }

    else
    {
      sub_1D5D2CFE8(v188, type metadata accessor for FormatVersionRequirement);
    }

    swift_beginAccess();
    v200 = v165[10];
    v201 = v306;
    (v316)(v306, v319, v318);
    swift_storeEnumTagMultiPayload();
    if (v200)
    {
      LOBYTE(v324) = 0;
      v202 = v201;
      v203 = swift_allocObject();
      v323 = xmmword_1D72BAAA0;
      *(v203 + 16) = xmmword_1D72BAAA0;
      *(v203 + 32) = v324;
      *(v203 + 40) = v299;
      *(v203 + 48) = v298;

      v204 = sub_1D72647CC();
      LOBYTE(v324) = 0;
      v205 = swift_allocObject();
      *(v205 + 16) = v204;
      *(v205 + 24) = v323;
      *(v205 + 40) = v324;
      v206 = __swift_project_boxed_opaque_existential_1(v179, v179[3]);
      *&v322 = &v297;
      MEMORY[0x1EEE9AC00](v206, v207);
      MEMORY[0x1EEE9AC00](v208, v209);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v203;
      v211 = sub_1D5D2F7A4(v202, sub_1D615B49C, v210, sub_1D615B4A4, (&v297 - 6));
      v213 = v211;

      if (v213)
      {
        v324 = v323;
        LOBYTE(v325) = 0;
        v334 = v200;
        sub_1D72647EC();
      }

      sub_1D5D2CFE8(v306, type metadata accessor for FormatVersionRequirement);
      v165 = v320;
      v212 = v316;
    }

    else
    {
      sub_1D5D2CFE8(v201, type metadata accessor for FormatVersionRequirement);
      v212 = v316;
    }

    swift_beginAccess();
    v214 = v165[11];
    v215 = v305;
    v212(v305, v314, v318);
    swift_storeEnumTagMultiPayload();
    if (v214 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v324) = 0;
      v216 = swift_allocObject();
      v323 = xmmword_1D72BAAB0;
      *(v216 + 16) = xmmword_1D72BAAB0;
      *(v216 + 32) = v324;
      *(v216 + 40) = v299;
      *(v216 + 48) = v298;

      sub_1D5EB1500(v214);
      v217 = sub_1D72647CC();
      LOBYTE(v324) = 0;
      v218 = swift_allocObject();
      *(v218 + 16) = v217;
      *(v218 + 24) = v323;
      *(v218 + 40) = v324;
      v219 = __swift_project_boxed_opaque_existential_1(v179, v179[3]);
      MEMORY[0x1EEE9AC00](v219, v220);
      MEMORY[0x1EEE9AC00](v221, v222);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v216;
      v224 = sub_1D5D2F7A4(v215, sub_1D615B49C, v223, sub_1D615B4A4, (&v297 - 6));

      if (v224)
      {
        v324 = v323;
        LOBYTE(v325) = 0;
        v333 = v214;
        sub_1D5DF6A60();
        sub_1D72647EC();
        sub_1D5EB15C4(v333);
        sub_1D5D2CFE8(v305, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5EB15C4(v214);
        sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
      }

      v165 = v320;
      v212 = v316;
    }

    swift_beginAccess();
    v225 = *(v165 + 96);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v226 = v318;
    v227 = __swift_project_value_buffer(v318, qword_1EDFFCD00);
    v228 = v303;
    v212(v303, v227, v226);
    swift_storeEnumTagMultiPayload();
    if (v225)
    {
      sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v324) = 0;
      v229 = swift_allocObject();
      v323 = xmmword_1D72BAAC0;
      *(v229 + 16) = xmmword_1D72BAAC0;
      *(v229 + 32) = v324;
      *(v229 + 40) = v299;
      *(v229 + 48) = v298;

      v230 = sub_1D72647CC();
      LOBYTE(v324) = 0;
      v231 = swift_allocObject();
      *(v231 + 16) = v230;
      *(v231 + 24) = v323;
      *(v231 + 40) = v324;
      v232 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v232, v233);
      MEMORY[0x1EEE9AC00](v234, v235);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v229;
      sub_1D5D2F7A4(v228, sub_1D615B49C, v236, sub_1D615B4A4, (&v297 - 6));

      v324 = v323;
      LOBYTE(v325) = 0;
      LOBYTE(v331) = 0;
      sub_1D72647EC();
      sub_1D5D2CFE8(v303, type metadata accessor for FormatVersionRequirement);
      v165 = v320;
      v212 = v316;
    }

    v237 = v165[13];
    v238 = *(v165 + 112);
    v212(v304, v319, v318);
    swift_storeEnumTagMultiPayload();
    v323 = xmmword_1D72BAAD0;
    v324 = xmmword_1D72BAAD0;
    LOBYTE(v325) = 0;
    LOBYTE(v331) = 0;
    v240 = swift_allocObject();
    *(v240 + 16) = v323;
    *(v240 + 32) = v331;
    *(v240 + 40) = v299;
    v241 = v298;
    *(v240 + 48) = v298;
    if (v238 <= 0xFD)
    {
      v242 = v241;
      v331 = v237;
      v332 = v238;
      MEMORY[0x1EEE9AC00](v241, v239);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v240;
      LOBYTE(v329) = 0;
      v243 = swift_allocObject();
      *(v243 + 16) = v323;
      *(v243 + 32) = v329;
      *(v243 + 40) = v299;
      *(v243 + 48) = v242;
      swift_retain_n();
      v244 = sub_1D72647CC();
      LOBYTE(v329) = 0;
      v245 = swift_allocObject();
      *(v245 + 16) = v244;
      *(v245 + 24) = v323;
      *(v245 + 40) = v329;
      v246 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v246, v247);
      MEMORY[0x1EEE9AC00](v248, v249);
      *(&v297 - 4) = sub_1D615B4A4;
      *(&v297 - 3) = (&v297 - 6);
      v295 = sub_1D6708AB4;
      v296 = v243;
      v251 = sub_1D5D2F7A4(v304, sub_1D615B49C, v250, sub_1D615B4A4, (&v297 - 6));
      *&v323 = 0;
      LOBYTE(v244) = v251;

      if (v244)
      {
        sub_1D5F8F434();
        v252 = v323;
        sub_1D72647EC();
        *&v323 = v252;
        if (v252)
        {
          v253 = &v331;
          goto LABEL_83;
        }
      }

      v165 = v320;
      v212 = v316;
    }

    else
    {
      *&v323 = 0;
    }

    sub_1D5D2CFE8(v304, type metadata accessor for FormatVersionRequirement);

    swift_beginAccess();
    v254 = v165[15];
    v255 = v302;
    v212(v302, v319, v318);
    swift_storeEnumTagMultiPayload();
    if (*(v254 + 16))
    {
      LOBYTE(v324) = 0;
      v256 = swift_allocObject();
      v322 = xmmword_1D72BAAE0;
      *(v256 + 16) = xmmword_1D72BAAE0;
      *(v256 + 32) = v324;
      *(v256 + 40) = v299;
      *(v256 + 48) = v298;

      v257 = sub_1D72647CC();
      LOBYTE(v324) = 0;
      v258 = swift_allocObject();
      *(v258 + 16) = v257;
      *(v258 + 24) = v322;
      *(v258 + 40) = v324;
      v259 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v259, v260);
      MEMORY[0x1EEE9AC00](v261, v262);
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v256;
      v263 = v323;
      v265 = sub_1D5D2F7A4(v255, sub_1D615B49C, v264, sub_1D615B4A4, (&v297 - 6));
      *&v323 = v263;
      if (v263)
      {

LABEL_72:
        v266 = (&v329 + 8);
LABEL_88:
        sub_1D5D2CFE8(*(v266 - 32), type metadata accessor for FormatVersionRequirement);
        goto LABEL_89;
      }

      v267 = v265;

      if (v267)
      {
        v268 = v323;
        sub_1D5E07754(v254, v297, 0xB, 0, 0);
        *&v323 = v268;
        if (v268)
        {

          goto LABEL_72;
        }
      }

      v165 = v320;
      v255 = v302;
    }

    sub_1D5D2CFE8(v255, type metadata accessor for FormatVersionRequirement);
    v269 = v165[16];
    v270 = v165[17];
    v271 = v165[18];
    v272 = v165[19];
    v273 = v165[20];
    v274 = v165[21];
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v275 = v318;
    v276 = __swift_project_value_buffer(v318, qword_1EDFFCE38);
    (v316)(v301, v276, v275);
    swift_storeEnumTagMultiPayload();
    v322 = xmmword_1D72BAAF0;
    v329 = xmmword_1D72BAAF0;
    v330 = 0;
    LOBYTE(v324) = 0;
    v277 = swift_allocObject();
    v279 = v277;
    *(v277 + 16) = v322;
    *(v277 + 32) = v324;
    v280 = v298;
    *(v277 + 40) = v299;
    *(v277 + 48) = v280;
    if (v269)
    {
      v320 = &v297;
      *&v324 = v269;
      *(&v324 + 1) = v270;
      v325 = v271;
      v326 = v272;
      v327 = v273;
      v328 = v274;
      MEMORY[0x1EEE9AC00](v277, v278);
      v319 = &v297 - 6;
      *(&v297 - 4) = sub_1D5B4AA6C;
      *(&v297 - 3) = 0;
      v295 = sub_1D6708AB4;
      v296 = v279;
      v338 = 0;
      v281 = swift_allocObject();
      *(v281 + 16) = v322;
      *(v281 + 32) = v338;
      *(v281 + 40) = v299;
      *(v281 + 48) = v280;
      swift_retain_n();
      sub_1D5EB1D80(v269, v270, v271, v272, v273);
      v282 = sub_1D72647CC();
      v338 = 0;
      v283 = swift_allocObject();
      *(v283 + 16) = v282;
      *(v283 + 24) = v322;
      *(v283 + 40) = v338;
      v284 = __swift_project_boxed_opaque_existential_1(v321, *(v321 + 24));
      MEMORY[0x1EEE9AC00](v284, v285);
      MEMORY[0x1EEE9AC00](v286, v287);
      v288 = v319;
      *(&v297 - 4) = sub_1D615B4A4;
      *(&v297 - 3) = v288;
      v295 = sub_1D6708AB4;
      v296 = v281;
      v289 = v323;
      v291 = sub_1D5D2F7A4(v301, sub_1D615B49C, v290, sub_1D615B4A4, (&v297 - 6));
      *&v323 = v289;
      if (v289)
      {
      }

      else
      {
        v292 = v291;

        if (v292)
        {
          sub_1D6659A24();
          v293 = v323;
          sub_1D72647EC();
          *&v323 = v293;
        }
      }

      v294 = v327;

      sub_1D5CBF568(v294);

      v266 = &v329;
      goto LABEL_88;
    }

    v253 = &v329;
LABEL_83:
    sub_1D5D2CFE8(*(v253 - 32), type metadata accessor for FormatVersionRequirement);

LABEL_89:
    v87 = v297;
    return sub_1D5D2CFE8(v87, sub_1D669E6CC);
  }

  sub_1D5D2CFE8(v111, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v52, sub_1D669E6CC);
}

unint64_t sub_1D650C7E4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
      result = 0x656C797473;
      break;
    case 3:
      result = 0x6F6974616D696E61;
      break;
    case 4:
      result = 1702521203;
      break;
    case 5:
      result = 0x657A69736572;
      break;
    case 6:
      result = 0x656D7473756A6461;
      break;
    case 7:
      result = 0x7865646E497ALL;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x726F7463656C6573;
      break;
    case 12:
      result = 2019912806;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D650C960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D669E97C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D650C998(uint64_t a1)
{
  v2 = sub_1D5E1B130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D650C9D4(uint64_t a1)
{
  v2 = sub_1D5E1B130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayeredMediaNodeContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
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
          *(v20 + 16) = &unk_1F5115E18;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D669E844();
    v28 = 0uLL;
    sub_1D726431C();
    if (v27)
    {
      sub_1D5C30060(0, &qword_1EC886D80, sub_1D669E898, &type metadata for FormatLayeredMediaNodeContent, type metadata accessor for FormatSelectorValue);
      v27 = xmmword_1D7279980;
      sub_1D669E8EC();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = v28;
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v24 | 0x8000000000000000;
    }

    else
    {
      v28 = xmmword_1D7279980;
      sub_1D5F2BD8C();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v26 = v27;
      v25 = swift_allocObject();
      *(v25 + 16) = v26;
    }

    *v22 = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatLayeredMediaNodeContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatLayeredMediaNodeContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatLayeredMediaNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenC, v17, v14, v18, &off_1F51F6BB8);
  if (v15 < 0)
  {
    v24 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v25 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v26 = qword_1EDF31ED0;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCD50);
    (*(*(v27 - 8) + 16))(v6, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B1CC(1, v24, v25, v6);

    v23 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    if (qword_1EDF31EF0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCDB0);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B034(0, v20, v10);
    v23 = v10;
  }

  sub_1D5D2CFE8(v23, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}