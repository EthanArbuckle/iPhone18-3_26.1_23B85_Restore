uint64_t sub_1D643FA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667146C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D643FAAC(uint64_t a1)
{
  v2 = sub_1D5CC31E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D643FAE8(uint64_t a1)
{
  v2 = sub_1D5CC31E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAdMetricsNodeBinding.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAdMetricsNodeBinding, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatAdMetricsNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v11, v9, v12, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDF8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D641B2C0(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t FormatAdMetricsNodeContent.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAdMetricsNodeContent, &type metadata for FormatCodingKeys, v13, v10, &type metadata for FormatAdMetricsNodeContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v11, v9, v12, &off_1F51F6B78);
  if (qword_1EDF31F10 != -1)
  {
    swift_once();
  }

  v14 = sub_1D725BD1C();
  v15 = __swift_project_value_buffer(v14, qword_1EDFFCDF8);
  (*(*(v14 - 8) + 16))(v5, v15, v14);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D638E554(v5);
  sub_1D5D2CFE8(v5, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v9, sub_1D5D30DC4);
}

uint64_t sub_1D643FF6C(char a1)
{
  result = 0x7465736E69;
  switch(a1)
  {
    case 1:
      return 0x726F68636E61;
    case 2:
      return 0x74657366666FLL;
    case 3:
      return 0x747265766E69;
    case 4:
      return 0x69577473756A6461;
    case 5:
      return 0x65487473756A6461;
    case 6:
      v5 = 1466853741;
      return v5 | 0x6874646900000000;
    case 7:
      v5 = 1467507053;
      return v5 | 0x6874646900000000;
    case 8:
      v4 = 1215195501;
      return v4 | 0x6867696500000000;
    case 9:
      v4 = 1215848813;
      return v4 | 0x6867696500000000;
    case 10:
      return 0x63657073416E696DLL;
    case 11:
    case 12:
      return 0x796C7069746C756DLL;
    case 13:
      return 0x657A69736572;
    case 14:
      return 0x6E41657A69736572;
    case 15:
      return 0xD000000000000012;
    case 16:
      v3 = 0x427473726966;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7361000000000000;
    case 17:
      return 0x656E696C65736162;
    case 18:
      return 0xD000000000000012;
    case 19:
      return 0xD00000000000001ALL;
    case 20:
      v3 = 0x42726568746FLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x7361000000000000;
    case 21:
      return 0xD000000000000015;
    case 22:
      v6 = 1416522093;
      goto LABEL_31;
    case 23:
      v6 = 1417175405;
LABEL_31:
      result = v6 | 0x4C74786500000000;
      break;
    case 24:
      result = 0x7274654D746E6F66;
      break;
    case 25:
      result = 0x726765746E496F6ELL;
      break;
    case 26:
      result = 0x6F426F5470696C63;
      break;
    case 27:
      result = 0x686374697773;
      break;
    case 28:
      result = 0x797274656D6F6567;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6440320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D643FF6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D644039C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D64404C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D644039C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64404F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_227);
  *a2 = result;
  return result;
}

uint64_t sub_1D6440538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D644058C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatAnchor.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v45 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v43 = &v39 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v42 = &v39 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v41 = &v39 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v39 - v26;
  v48 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v52;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v35 = v49;
  v36 = v49[3];
  v40 = v49[4];
  v52 = __swift_project_boxed_opaque_existential_1(v49, v36);
  if (v48 <= 2)
  {
    if (!v48)
    {
      v38 = v41;
      v32(v41, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v36, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      goto LABEL_19;
    }

    if (v48 == 1)
    {
      v37 = v42;
      v32(v42, v31, v30);
    }

    else
    {
      v37 = v43;
      v32(v43, v31, v30);
    }
  }

  else if (v48 > 4)
  {
    if (v48 == 5)
    {
      v37 = v46;
      v32(v46, v31, v30);
    }

    else
    {
      v37 = v47;
      v32(v47, v31, v30);
    }
  }

  else if (v48 == 3)
  {
    v37 = v44;
    v32(v44, v31, v30);
  }

  else
  {
    v37 = v45;
    v32(v45, v31, v30);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v36, v40);
  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
LABEL_19:
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t sub_1D6440D94(uint64_t a1)
{
  v2 = sub_1D5C57518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6440DD0(uint64_t a1)
{
  v2 = sub_1D5C57518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeAnimation.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
    v11 = a1;
LABEL_10:
    sub_1D61E4FBC(v11, v3);
    swift_willThrow();

    v24 = v11;
  }

  else
  {
    v12 = v7;
    v13 = v35;
    v14 = a1[3];
    v34 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v15 = sub_1D7264AFC();
    LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v16 = v10;
    if (v14)
    {
      v17 = sub_1D726433C();
      v18 = (v17 + 40);
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        v20 = v18 + 2;
        v21 = *v18;
        v18 += 2;
        if (v21 >= 4)
        {
          v22 = *(v20 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = &unk_1F5114130;
          *(v23 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v12 + 8))(v16, v6);
          v11 = v34;
          goto LABEL_10;
        }
      }
    }

    sub_1D6671140();
    v36 = 0uLL;
    sub_1D726431C();
    if (v37)
    {
      v26 = v13;
      if (v37 == 1)
      {
        type metadata accessor for FormatAnimationNodeSpringAnimation();
        v36 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF163E0, type metadata accessor for FormatAnimationNodeSpringAnimation);
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v27 = v37;
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        v29 = v28 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for FormatAnimationNodeGroupAnimation();
        v36 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC882BC8, type metadata accessor for FormatAnimationNodeGroupAnimation);
        sub_1D726431C();
        (*(v12 + 8))(v16, v6);
        v31 = v37;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v29 = v32 | 0x8000000000000000;
      }
    }

    else
    {
      type metadata accessor for FormatAnimationNodeBasicAnimation();
      v36 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EC886650, type metadata accessor for FormatAnimationNodeBasicAnimation);
      sub_1D726431C();
      v26 = v13;
      (*(v12 + 8))(v16, v6);
      v30 = v37;
      v29 = swift_allocObject();
      *(v29 + 16) = v30;
    }

    v33 = v34;
    *v26 = v29;
    v24 = v33;
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t FormatAnimationNodeAnimation.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v38 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v38 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAnimationNodeAnimation, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatAnimationNodeAnimation, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v21, v18, v22, &off_1F51F6CD8);
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v24 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = qword_1EDF31ED0;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD50);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63C6314(1, v24, v10);

      v28 = v10;
    }

    else
    {
      v33 = *((v19 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
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
      sub_1D63C64E0(2, v33, v6);

      v28 = v6;
    }
  }

  else
  {
    v29 = *(v19 + 16);
    v30 = qword_1EDF31ED0;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = sub_1D725BD1C();
    v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
    (*(*(v31 - 8) + 16))(v14, v32, v31);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C6148(0, v29, v14);

    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D6441744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727073;
  if (v2 != 1)
  {
    v4 = 0x70756F7267;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6369736162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x676E69727073;
  if (*a2 != 1)
  {
    v8 = 0x70756F7267;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6369736162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
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

uint64_t sub_1D6441834()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64418CC()
{
  sub_1D72621EC();
}

uint64_t sub_1D6441950()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D64419E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663590();
  *a1 = result;
  return result;
}

void sub_1D6441A14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x676E69727073;
  if (v2 != 1)
  {
    v5 = 0x70756F7267;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6369736162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatAnimationNodeBasicAnimation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v133 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v134 = &v132 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v142 = (&v132 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v132 - v16;
  sub_1D6671E00();
  v187 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D6671F28();
  v25 = v24;
  v26 = sub_1D5B58B84(&qword_1EC886688, sub_1D6671F28);
  sub_1D5D2EE70(v4, v25, v27, v22, v4, v25, &type metadata for FormatVersions.StarSky, v23, v21, v26, &off_1F51F6CD8);
  v28 = *(v2 + 1);
  v146 = *(v2 + 2);
  v147 = v28;
  v29 = v2[6];
  v30 = v2[7];
  v138 = v2;
  v31 = *(v2 + 64);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v32 = sub_1D725BD1C();
  v33 = __swift_project_value_buffer(v32, qword_1EDFFCD50);
  v34 = *(v32 - 8);
  v140 = *(v34 + 16);
  v141 = v33;
  v135 = v32;
  v139 = v34 + 16;
  v140(v17);
  v136 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v174 = v147;
  v175 = v146;
  *&v176 = v29;
  *(&v176 + 1) = v30;
  LOBYTE(v177) = v31;
  v166 = 0uLL;
  LOBYTE(v167) = 0;
  v35 = v187;
  v36 = &v21[*(v187 + 11)];
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v157) = 0;
  v39 = swift_allocObject();
  *&v147 = &v132;
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = v157;
  *(v39 + 40) = v37;
  *(v39 + 48) = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v145 = (&v132 - 6);
  *&v146 = v17;
  *(&v132 - 4) = sub_1D5B4AA6C;
  *(&v132 - 3) = 0;
  v130 = sub_1D6708974;
  v131 = v41;
  LOBYTE(v157) = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = v157;
  v137 = v37;
  *(v42 + 40) = v37;
  *(v42 + 48) = v38;
  sub_1D6671E94();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EC886690, sub_1D6671E94);
  swift_retain_n();
  v143 = v45;
  v144 = v44;
  v46 = sub_1D72647CC();
  LOBYTE(v157) = 0;
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 32) = 0;
  *(v47 + 16) = v46;
  *(v47 + 40) = v157;
  v48 = *(v35 + 9);
  v187 = v21;
  v49 = &v21[v48];
  v50 = __swift_project_boxed_opaque_existential_1(v49, *(v49 + 3));
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = v145;
  v54 = v146;
  *(&v132 - 4) = sub_1D615B4A4;
  *(&v132 - 3) = v55;
  v130 = sub_1D6708974;
  v131 = v42;
  v56 = v54;
  v57 = v148;
  sub_1D5D2BC70(v54, sub_1D615B49C, v58, sub_1D615B4A4, (&v132 - 6));
  if (!v57)
  {
    v145 = v49;
    *&v148 = v38;

    sub_1D66720A8();
    sub_1D72647EC();
    sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

    v61 = v138[9];
    v62 = v138[10];
    v63 = *(v138 + 88);
    v64 = v135;
    (v140)(v142, v141, v135);
    swift_storeEnumTagMultiPayload();
    v147 = xmmword_1D728CF30;
    v174 = xmmword_1D728CF30;
    LOBYTE(v175) = 0;
    LOBYTE(v166) = 0;
    v65 = swift_allocObject();
    v67 = v65;
    *(v65 + 16) = v147;
    *(v65 + 32) = v166;
    v68 = v137;
    v69 = v148;
    *(v65 + 40) = v137;
    *(v65 + 48) = v69;
    if (v63 == 255)
    {
      *&v146 = 0;

      sub_1D5D2CFE8(v142, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v146 = &v132;
      *&v166 = v61;
      *(&v166 + 1) = v62;
      LOBYTE(v167) = v63 & 1;
      MEMORY[0x1EEE9AC00](v65, v66);
      *(&v132 - 4) = sub_1D5B4AA6C;
      *(&v132 - 3) = 0;
      v130 = sub_1D6708974;
      v131 = v67;
      LOBYTE(v157) = 0;
      v70 = swift_allocObject();
      v71 = v69;
      v72 = v70;
      *(v70 + 16) = v147;
      *(v70 + 32) = v157;
      *(v70 + 40) = v68;
      *(v70 + 48) = v71;
      swift_retain_n();
      sub_1D6189668(v61, v62, v63);
      v73 = sub_1D72647CC();
      LOBYTE(v157) = 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      *(v74 + 24) = v147;
      *(v74 + 40) = v157;
      v75 = __swift_project_boxed_opaque_existential_1(v145, *(v145 + 3));
      MEMORY[0x1EEE9AC00](v75, v76);
      MEMORY[0x1EEE9AC00](v77, v78);
      *(&v132 - 4) = sub_1D615B4A4;
      *(&v132 - 3) = (&v132 - 6);
      v130 = sub_1D6708974;
      v131 = v72;
      v79 = v142;
      v81 = sub_1D5D2F7A4(v142, sub_1D615B49C, v80, sub_1D615B4A4, (&v132 - 6));
      v82 = v81;

      if (v82)
      {
        sub_1D60ED320();
        sub_1D72647EC();
        v69 = v148;
        v64 = v135;
        *&v146 = 0;

        sub_1D5D2F2C8(v166, *(&v166 + 1), v167);
        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v146 = 0;

        sub_1D5D2F2C8(v166, *(&v166 + 1), v167);
        sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);
        v69 = v148;
        v64 = v135;
      }
    }

    v83 = v138[12];
    v84 = v138[13];
    v85 = *(v138 + 112);
    v86 = v134;
    (v140)(v134, v141, v64);
    swift_storeEnumTagMultiPayload();
    v147 = xmmword_1D7297410;
    v185 = xmmword_1D7297410;
    v186 = 0;
    LOBYTE(v174) = 0;
    v87 = swift_allocObject();
    v89 = v87;
    *(v87 + 16) = v147;
    *(v87 + 32) = v174;
    v90 = v137;
    *(v87 + 40) = v137;
    *(v87 + 48) = v69;
    if (v85 == 255)
    {

      sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

      v106 = v69;
      v104 = v187;
      v103 = v146;
    }

    else
    {
      v142 = &v132;
      v182 = v83;
      v183 = v84;
      v184 = v85 & 1;
      MEMORY[0x1EEE9AC00](v87, v88);
      *(&v132 - 4) = sub_1D5B4AA6C;
      *(&v132 - 3) = 0;
      v130 = sub_1D6708974;
      v131 = v89;
      LOBYTE(v174) = 0;
      v91 = swift_allocObject();
      v92 = v69;
      v93 = v91;
      *(v91 + 16) = v147;
      *(v91 + 32) = v174;
      *(v91 + 40) = v90;
      *(v91 + 48) = v92;
      swift_retain_n();
      sub_1D6189668(v83, v84, v85);
      v94 = sub_1D72647CC();
      LOBYTE(v174) = 0;
      v95 = swift_allocObject();
      *(v95 + 16) = v94;
      *(v95 + 24) = v147;
      *(v95 + 40) = v174;
      v96 = __swift_project_boxed_opaque_existential_1(v145, *(v145 + 3));
      MEMORY[0x1EEE9AC00](v96, v97);
      MEMORY[0x1EEE9AC00](v98, v99);
      *(&v132 - 4) = sub_1D615B4A4;
      *(&v132 - 3) = (&v132 - 6);
      v130 = sub_1D6708974;
      v131 = v93;
      v100 = v146;
      v102 = sub_1D5D2F7A4(v86, sub_1D615B49C, v101, sub_1D615B4A4, (&v132 - 6));
      v103 = v100;
      if (v100)
      {

        v104 = v187;
        sub_1D5D2F2C8(v182, v183, v184);
        v105 = v134;
        goto LABEL_25;
      }

      v107 = v102;

      if (v107)
      {
        sub_1D60ED320();
        v104 = v187;
        sub_1D72647EC();
        v109 = v140;
        v108 = v141;

        sub_1D5D2F2C8(v182, v183, v184);
        sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
        v129 = v108;
        v106 = v148;
LABEL_21:
        v110 = *(v138 + 25);
        v111 = *(v138 + 29);
        v172 = *(v138 + 27);
        v173[0] = v111;
        *(v173 + 9) = *(v138 + 241);
        v112 = *(v138 + 17);
        v113 = *(v138 + 21);
        v168 = *(v138 + 19);
        v169 = v113;
        v170 = *(v138 + 23);
        v171 = v110;
        v166 = *(v138 + 15);
        v167 = v112;
        v114 = v133;
        v109(v133, v129, v135);
        swift_storeEnumTagMultiPayload();
        v148 = xmmword_1D72BAA60;
        v164[2] = xmmword_1D72BAA60;
        v165 = 0;
        LOBYTE(v157) = 0;
        v115 = swift_allocObject();
        *(v115 + 16) = v148;
        *(v115 + 32) = v157;
        v116 = v137;
        *(v115 + 40) = v137;
        *(v115 + 48) = v106;
        v180 = v172;
        v181[0] = v173[0];
        *(v181 + 9) = *(v173 + 9);
        v176 = v168;
        v177 = v169;
        v178 = v170;
        v179 = v171;
        v174 = v166;
        v175 = v167;
        v117 = sub_1D60486AC(&v174);
        if (v117 == 1)
        {

          sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);

LABEL_26:
          v59 = v104;
          return sub_1D5D2CFE8(v59, sub_1D6671E00);
        }

        *&v147 = &v132;
        v163 = v172;
        v164[0] = v173[0];
        *(v164 + 9) = *(v173 + 9);
        v159 = v168;
        v160 = v169;
        v161 = v170;
        v162 = v171;
        v157 = v166;
        v158 = v167;
        MEMORY[0x1EEE9AC00](v117, v118);
        *(&v132 - 4) = sub_1D5B4AA6C;
        *(&v132 - 3) = 0;
        v130 = sub_1D6708974;
        v131 = v115;
        LOBYTE(v149) = 0;
        v119 = swift_allocObject();
        *(v119 + 16) = v148;
        *(v119 + 32) = v149;
        *(v119 + 40) = v116;
        *(v119 + 48) = v106;
        swift_retain_n();
        sub_1D5D355B8(&v166, &v149, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v120 = sub_1D72647CC();
        LOBYTE(v149) = 0;
        v121 = swift_allocObject();
        *(v121 + 16) = v120;
        *(v121 + 24) = v148;
        *(v121 + 40) = v149;
        v122 = __swift_project_boxed_opaque_existential_1(v145, *(v145 + 3));
        MEMORY[0x1EEE9AC00](v122, v123);
        MEMORY[0x1EEE9AC00](v124, v125);
        *(&v132 - 4) = sub_1D615B4A4;
        *(&v132 - 3) = (&v132 - 6);
        v130 = sub_1D66720FC;
        v131 = v119;
        v127 = sub_1D5D2F7A4(v133, sub_1D615B49C, v126, sub_1D615B4A4, (&v132 - 6));
        if (v103)
        {

          v155 = v163;
          v156[0] = v164[0];
          *(v156 + 9) = *(v164 + 9);
          v151 = v159;
          v152 = v160;
          v153 = v161;
          v154 = v162;
          v149 = v157;
          v150 = v158;
          sub_1D62B49F0(&v149);
          v104 = v187;
          v105 = v133;
        }

        else
        {
          v128 = v127;

          if ((v128 & 1) == 0)
          {

            v155 = v163;
            v156[0] = v164[0];
            *(v156 + 9) = *(v164 + 9);
            v151 = v159;
            v152 = v160;
            v153 = v161;
            v154 = v162;
            v149 = v157;
            v150 = v158;
            sub_1D62B49F0(&v149);
            sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
            v104 = v187;
            goto LABEL_26;
          }

          sub_1D6662A38();
          v104 = v187;
          sub_1D72647EC();

          v155 = v163;
          v156[0] = v164[0];
          *(v156 + 9) = *(v164 + 9);
          v151 = v159;
          v152 = v160;
          v153 = v161;
          v154 = v162;
          v149 = v157;
          v150 = v158;
          sub_1D62B49F0(&v149);
          v105 = v133;
        }

LABEL_25:
        sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);
        goto LABEL_26;
      }

      sub_1D5D2F2C8(v182, v183, v184);
      sub_1D5D2CFE8(v134, type metadata accessor for FormatVersionRequirement);
      v104 = v187;
      v106 = v148;
    }

    v109 = v140;
    v129 = v141;
    goto LABEL_21;
  }

  sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);

  v59 = v187;
  return sub_1D5D2CFE8(v59, sub_1D6671E00);
}

uint64_t sub_1D6442DE0()
{
  v1 = *v0;
  v2 = 0x6874615079656BLL;
  v3 = 0x6576697469646461;
  v4 = 0x6D6954616964656DLL;
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
    v2 = 0x6974616C756D7563;
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

uint64_t sub_1D6442E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6672310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6442EB8(uint64_t a1)
{
  v2 = sub_1D6672000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6442EF4(uint64_t a1)
{
  v2 = sub_1D6672000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6442F30()
{
  v1 = 0x6D6954616964656DLL;
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
    return 0x6F6974616D696E61;
  }
}

uint64_t sub_1D6442F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66724CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6442FC8(uint64_t a1)
{
  v2 = sub_1D6662824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6443004(uint64_t a1)
{
  v2 = sub_1D6662824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeKeyPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
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

    v13 = v32;
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
          *(v20 + 16) = &unk_1F5114180;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6672178();
    v27 = 0uLL;
    sub_1D726431C();
    v22 = v31;
    if (v31 == 4)
    {
      sub_1D5C30060(0, &qword_1EC886698, sub_1D619B420, &type metadata for FormatSizeEquation, type metadata accessor for FormatAnimationNodeKeyPathAnimation);
      v31 = xmmword_1D7279980;
      sub_1D6672268();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v24 = v27;
      v25 = v28;
      v26 = v29;
      v23 = v30;
    }

    else
    {
      sub_1D66721CC();
      v31 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF15FE0, sub_1D66721CC);
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v23 = 0;
      v24 = v27;
      v25 = v28;
      v26 = 0uLL;
    }

    *v13 = v24;
    *(v13 + 16) = v25;
    *(v13 + 24) = v26;
    *(v13 + 40) = v23;
    *(v13 + 48) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAnimationNodeKeyPath.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v98 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v97 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v96 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v95 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v94 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v93 = &v89 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v92 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v89 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v91 = &v89 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v90 = &v89 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v89 = &v89 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v89 - v39;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v89 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v1 + 16);
  v99 = *v1;
  v100 = v45;
  v46 = *(v1 + 32);
  v47 = *(v1 + 40);
  v48 = *(v1 + 48);
  v49 = a1[3];
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v49);
  v51 = sub_1D5C30408();
  v104 = v44;
  sub_1D5D2EE70(&type metadata for FormatAnimationNodeKeyPath, &type metadata for FormatCodingKeys, v52, v49, &type metadata for FormatAnimationNodeKeyPath, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v50, v44, v51, &off_1F51F6CD8);
  if (v48 > 5)
  {
    if (v48 > 8)
    {
      if (v48 == 9)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v78 = sub_1D725BD1C();
        v79 = __swift_project_value_buffer(v78, qword_1EDFFCD50);
        v27 = v96;
        (*(*(v78 - 8) + 16))(v96, v79, v78);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v63 = *(&v99 + 1);
        v62 = v99;
        v64 = v100;
        v65 = 9;
      }

      else if (v48 == 10)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
        v27 = v97;
        (*(*(v69 - 8) + 16))(v97, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v63 = *(&v99 + 1);
        v62 = v99;
        v64 = v100;
        v65 = 10;
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v86 = sub_1D725BD1C();
        v87 = __swift_project_value_buffer(v86, qword_1EDFFCD50);
        v27 = v98;
        (*(*(v86 - 8) + 16))(v98, v87, v86);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v63 = *(&v99 + 1);
        v62 = v99;
        v64 = v100;
        v65 = 11;
      }
    }

    else if (v48 == 6)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v74 = sub_1D725BD1C();
      v75 = __swift_project_value_buffer(v74, qword_1EDFFCD50);
      v27 = v93;
      (*(*(v74 - 8) + 16))(v93, v75, v74);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(&v99 + 1);
      v62 = v99;
      v64 = v100;
      v65 = 6;
    }

    else if (v48 == 7)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v60 = sub_1D725BD1C();
      v61 = __swift_project_value_buffer(v60, qword_1EDFFCD50);
      v27 = v94;
      (*(*(v60 - 8) + 16))(v94, v61, v60);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(&v99 + 1);
      v62 = v99;
      v64 = v100;
      v65 = 7;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v82 = sub_1D725BD1C();
      v83 = __swift_project_value_buffer(v82, qword_1EDFFCD50);
      v27 = v95;
      (*(*(v82 - 8) + 16))(v95, v83, v82);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v63 = *(&v99 + 1);
      v62 = v99;
      v64 = v100;
      v65 = 8;
    }

    goto LABEL_49;
  }

  if (v48 > 2)
  {
    if (v48 == 3)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCD50);
      v55 = v91;
      (*(*(v76 - 8) + 16))(v91, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = *(&v99 + 1);
      v56 = v99;
      v58 = v100;
      v59 = 3;
      goto LABEL_39;
    }

    if (v48 == 4)
    {
      v101[0] = v99;
      v101[1] = v100;
      v102 = v46;
      v103 = v47;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v66 = sub_1D725BD1C();
      v67 = __swift_project_value_buffer(v66, qword_1EDFFCD50);
      (*(*(v66 - 8) + 16))(v27, v67, v66);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v68 = v104;
      sub_1D638E374(4, v101, v27);
      goto LABEL_50;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v84 = sub_1D725BD1C();
    v85 = __swift_project_value_buffer(v84, qword_1EDFFCD50);
    v27 = v92;
    (*(*(v84 - 8) + 16))(v92, v85, v84);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v63 = *(&v99 + 1);
    v62 = v99;
    v64 = v100;
    v65 = 5;
LABEL_49:
    v68 = v104;
    sub_1D638E1A4(v65, v62, v63, v64, v27);
LABEL_50:
    v73 = v27;
    goto LABEL_51;
  }

  if (v48)
  {
    if (v48 == 1)
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD50);
      v55 = v89;
      (*(*(v53 - 8) + 16))(v89, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = *(&v99 + 1);
      v56 = v99;
      v58 = v100;
      v59 = 1;
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v80 = sub_1D725BD1C();
      v81 = __swift_project_value_buffer(v80, qword_1EDFFCD50);
      v55 = v90;
      (*(*(v80 - 8) + 16))(v90, v81, v80);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v57 = *(&v99 + 1);
      v56 = v99;
      v58 = v100;
      v59 = 2;
    }

LABEL_39:
    v68 = v104;
    sub_1D638E1A4(v59, v56, v57, v58, v55);
    v73 = v55;
    goto LABEL_51;
  }

  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v71 = sub_1D725BD1C();
  v72 = __swift_project_value_buffer(v71, qword_1EDFFCD50);
  (*(*(v71 - 8) + 16))(v40, v72, v71);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v68 = v104;
  sub_1D638E1A4(0, v99, *(&v99 + 1), v100, v40);
  v73 = v40;
LABEL_51:
  sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v68, sub_1D5D30DC4);
}

uint64_t sub_1D64440DC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      return 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000011;
      if (a1 == 7)
      {
        v3 = 0xD000000000000013;
      }

      if (a1 == 6)
      {
        return 0xD000000000000013;
      }

      else
      {
        return v3;
      }
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    if (a1 != 4)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 == 3)
    {
      v1 = 0x726F66736E617274;
    }

    if (a1 <= 2u)
    {
      return 0x726F66736E617274;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D64442C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66644B4();
  *a1 = result;
  return result;
}

uint64_t sub_1D64442F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D64440DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatAnimationNodeKeyPathAnimation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v69 = a4;
  v7 = sub_1D726393C();
  v73 = *(v7 - 8);
  v74 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v67 = &v63 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v66 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v70 = &v63 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v75 = &v63 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v77 = &v63 - v24;
  v78 = a2;
  v80 = a3;
  v25 = _s10CodingKeysOMa_225();
  WitnessTable = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  *&v81 = v25;
  *(&v81 + 1) = WitnessTable;
  v76 = WitnessTable;
  v72 = v27;
  v82 = v27;
  v83 = v28;
  v29 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v30 = sub_1D726435C();
  v79 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v63 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v84;
  sub_1D7264B0C();
  v35 = v34;
  if (v34)
  {
    goto LABEL_13;
  }

  v63 = v28;
  v64 = v25;
  v65 = 0;
  v71 = v33;
  v84 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = sub_1D7264AFC();
  v37 = Dictionary<>.errorOnUnknownKeys.getter(v36);

  if ((v37 & 1) == 0)
  {
LABEL_10:
    v81 = 0uLL;
    LOBYTE(v82) = 0;
    v51 = v84;
    v52 = v71;
    v53 = v65;
    sub_1D726427C();
    if (!v53)
    {
      v81 = xmmword_1D728CF30;
      LOBYTE(v82) = 0;
      sub_1D726427C();
      v81 = xmmword_1D7297410;
      LOBYTE(v82) = 0;
      v54 = v70;
      v55 = v71;
      sub_1D726427C();
      v57 = v73;
      v56 = v74;
      (*(v79 + 8))(v55, v51);
      v58 = *(v57 + 32);
      v59 = v66;
      v58(v66, v77, v56);
      v60 = v67;
      v58(v67, v75, v56);
      v61 = v54;
      v62 = v68;
      v58(v68, v61, v56);
      sub_1D715AF78(v59, v60, v62, v69);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v79 + 8))(v52, v51);
    v35 = v53;
LABEL_13:
    sub_1D61E4FBC(a1, v35);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = 0;
  v39 = (sub_1D726433C() + 48);
  v40 = v76;
  v41 = v64;
  while (1)
  {
    if (v38 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v42 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v42 & 1) == 0)
    {
      break;
    }

    v44 = *v39;
    v81 = *(v39 - 1);
    LOBYTE(v82) = v44;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_16;
    }

    v45 = sub_1D6AFC82C(v29);
    ++v38;
    v39 += 24;
    if (v46)
    {
      v47 = v45;
      v48 = v46;

      v49 = sub_1D6AFC690(v41, v40, v72, v63);
      sub_1D5E2D970();
      v35 = swift_allocError();
      *v50 = v47;
      *(v50 + 8) = v48;
      *(v50 + 16) = v49;
      *(v50 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v79 + 8))(v71, v84);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatAnimationNodeKeyPathAnimation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v41 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - v12;
  v14 = *(a2 + 24);
  v51 = *(a2 + 16);
  v44 = v14;
  v15 = _s10CodingKeysOMa_225();
  WitnessTable = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  *&v48 = v15;
  *(&v48 + 1) = WitnessTable;
  v49 = v17;
  v50 = v18;
  v19 = type metadata accessor for FormatCodingKeysContainer();
  v20 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v21 = type metadata accessor for VersionedKeyedEncodingContainer();
  v46 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v43 = a2;
  sub_1D5D2EE70(a2, v19, v27, v25, a2, v19, &type metadata for FormatVersions.StarSky, v26, v24, v20, &off_1F51F6CD8);
  v48 = 0uLL;
  LOBYTE(v49) = 0;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD50);
  v42 = *(*(v28 - 8) + 16);
  v42(v13, v29, v28);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = v45;
  v44 = *(v44 + 16);
  sub_1D5D432A4(v47, &v48, v13, sub_1D5B4AA6C, 0, v21, v51, v44);
  if (!v30)
  {
    sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
    v31 = *(v43 + 36);
    v48 = xmmword_1D728CF30;
    LOBYTE(v49) = 0;
    v32 = v29;
    v33 = v41;
    v45 = v32;
    (v42)(v41);
    swift_storeEnumTagMultiPayload();
    v34 = v47;
    sub_1D5D432A4(v47 + v31, &v48, v33, sub_1D5B4AA6C, 0, v21, v51, v44);
    sub_1D5D2CFE8(v33, type metadata accessor for FormatVersionRequirement);
    v36 = v34;
    v37 = *(v43 + 40);
    v48 = xmmword_1D7297410;
    LOBYTE(v49) = 0;
    v38 = v40;
    v42(v40, v45, v28);
    swift_storeEnumTagMultiPayload();
    v39 = v36 + v37;
    v13 = v38;
    sub_1D5D432A4(v39, &v48, v38, sub_1D5B4AA6C, 0, v21, v51, v44);
  }

  sub_1D5D2CFE8(v13, type metadata accessor for FormatVersionRequirement);
  return (*(v46 + 8))(v24, v21);
}

uint64_t sub_1D6444FB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566D6F7266 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C61566F74 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C61567962 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D6445124()
{
  _s10CodingKeysOMa_225();
  sub_1D72644CC();
  swift_allocObject();
  v0 = sub_1D726270C();
  *v1 = 50462976;

  return sub_1D5BFCB60(v0);
}

uint64_t sub_1D6445194(unsigned __int8 a1)
{
  v1 = 0x756C61566D6F7266;
  v2 = 0x65756C61567962;
  if (a1 != 2)
  {
    v2 = 1885433183;
  }

  if (a1)
  {
    v1 = 0x65756C61566F74;
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

uint64_t sub_1D644521C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6444FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D644524C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5F1ED8C();
  *a1 = result;
  return result;
}

uint64_t sub_1D6445278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6445124();
  *a1 = result;
  return result;
}

uint64_t sub_1D64452A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D64452FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatAnimationNodeSpringAnimation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v245 = &v244 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v246 = (&v244 - v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v247 = (&v244 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v248 = (&v244 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v249 = (&v244 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v250 = (&v244 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v251 = (&v244 - v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v244 - v28;
  sub_1D6673008();
  v301 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v244 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D6673130();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF0C380, sub_1D6673130);
  sub_1D5D2EE70(v4, v37, v39, v34, v4, v37, &type metadata for FormatVersions.StarSky, v35, v33, v38, &off_1F51F6CD8);
  v40 = *(v2 + 1);
  v262 = *(v2 + 2);
  v263 = v40;
  v41 = v2[6];
  v42 = v2[7];
  v256 = v2;
  v43 = *(v2 + 64);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD50);
  v46 = *(v44 - 8);
  v47 = *(v46 + 16);
  v252 = v44;
  v253 = v45;
  v257 = v46 + 16;
  v258 = v47;
  (v47)(v29);
  v254 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v290 = v263;
  v291 = v262;
  *&v292 = v41;
  *(&v292 + 1) = v42;
  LOBYTE(v293) = v43;
  v282 = 0uLL;
  LOBYTE(v283) = 0;
  v48 = v301;
  v49 = &v33[*(v301 + 11)];
  *&v262 = v29;
  v50 = *v49;
  v51 = *(v49 + 1);
  LOBYTE(v273) = 0;
  v52 = swift_allocObject();
  *&v263 = &v244;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v273;
  *(v52 + 40) = v50;
  *(v52 + 48) = v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v261 = (&v244 - 6);
  *(&v244 - 4) = sub_1D5B4AA6C;
  *(&v244 - 3) = 0;
  v242 = sub_1D6708978;
  v243 = v54;
  LOBYTE(v273) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v273;
  v255 = v50;
  *(v55 + 40) = v50;
  *(v55 + 48) = v51;
  sub_1D667309C();
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EDF029E8, sub_1D667309C);
  swift_retain_n();
  v259 = v57;
  v260 = v58;
  v59 = sub_1D72647CC();
  LOBYTE(v273) = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v273;
  v61 = *(v48 + 9);
  v301 = v33;
  v62 = &v33[v61];
  v63 = __swift_project_boxed_opaque_existential_1(&v33[v61], *&v33[v61 + 24]);
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v68 = v261;
  v67 = v262;
  *(&v244 - 4) = sub_1D615B4A4;
  *(&v244 - 3) = v68;
  v242 = sub_1D6708978;
  v243 = v55;
  v69 = v67;
  v70 = v264;
  sub_1D5D2BC70(v67, sub_1D615B49C, v71, sub_1D615B4A4, (&v244 - 6));
  if (v70)
  {
    sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

    v72 = v301;
    return sub_1D5D2CFE8(v72, sub_1D6673008);
  }

  v261 = v62;
  *&v264 = v51;

  sub_1D66720A8();
  sub_1D72647EC();
  *&v263 = 0;
  sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);

  v74 = v256[9];
  v75 = v256[10];
  v76 = *(v256 + 88);
  v77 = v251;
  v78 = v252;
  v79 = v253;
  v258(v251, v253, v252);
  swift_storeEnumTagMultiPayload();
  v262 = xmmword_1D728CF30;
  v290 = xmmword_1D728CF30;
  LOBYTE(v291) = 0;
  LOBYTE(v282) = 0;
  v80 = swift_allocObject();
  v82 = v80;
  *(v80 + 16) = v262;
  *(v80 + 32) = v282;
  v83 = v264;
  *(v80 + 40) = v255;
  *(v80 + 48) = v83;
  if (v76 == 255)
  {

    sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v244 = &v244;
    *&v282 = v74;
    *(&v282 + 1) = v75;
    LOBYTE(v283) = v76 & 1;
    MEMORY[0x1EEE9AC00](v80, v81);
    v84 = v83;
    v86 = v85;
    *(&v244 - 4) = sub_1D5B4AA6C;
    *(&v244 - 3) = 0;
    v242 = sub_1D6708978;
    v243 = v82;
    LOBYTE(v273) = 0;
    v87 = swift_allocObject();
    v88 = v84;
    v89 = v87;
    *(v87 + 16) = v262;
    *(v87 + 32) = v273;
    *(v87 + 40) = v86;
    *(v87 + 48) = v88;
    swift_retain_n();
    sub_1D6189668(v74, v75, v76);
    v90 = sub_1D72647CC();
    LOBYTE(v273) = 0;
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v262;
    *(v91 + 40) = v273;
    v92 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
    MEMORY[0x1EEE9AC00](v92, v93);
    MEMORY[0x1EEE9AC00](v94, v95);
    *(&v244 - 4) = sub_1D615B4A4;
    *(&v244 - 3) = &v244 - 6;
    v242 = sub_1D6708978;
    v243 = v89;
    v96 = v263;
    v98 = sub_1D5D2F7A4(v77, sub_1D615B49C, v97, sub_1D615B4A4, (&v244 - 6));
    if (v96)
    {

      v99 = v301;
      sub_1D5D2F2C8(v282, *(&v282 + 1), v283);
      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
      v72 = v99;
      return sub_1D5D2CFE8(v72, sub_1D6673008);
    }

    v100 = v98;

    if (v100)
    {
      sub_1D60ED320();
      sub_1D72647EC();
      v83 = v264;
      v78 = v252;
      v79 = v253;
      *&v263 = 0;

      sub_1D5D2F2C8(v282, *(&v282 + 1), v283);
      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v263 = 0;

      sub_1D5D2F2C8(v282, *(&v282 + 1), v283);
      sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);
      v83 = v264;
      v78 = v252;
      v79 = v253;
    }
  }

  v101 = v256[12];
  v102 = v256[13];
  v103 = *(v256 + 112);
  v104 = v250;
  v258(v250, v79, v78);
  swift_storeEnumTagMultiPayload();
  v262 = xmmword_1D7297410;
  v290 = xmmword_1D7297410;
  LOBYTE(v291) = 0;
  LOBYTE(v282) = 0;
  v105 = swift_allocObject();
  v107 = v105;
  *(v105 + 16) = v262;
  *(v105 + 32) = v282;
  *(v105 + 40) = v255;
  *(v105 + 48) = v83;
  if (v103 == 255)
  {

    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);

    v121 = v301;
    goto LABEL_24;
  }

  v251 = &v244;
  *&v282 = v101;
  *(&v282 + 1) = v102;
  LOBYTE(v283) = v103 & 1;
  MEMORY[0x1EEE9AC00](v105, v106);
  v109 = v108;
  v244 = &v244 - 6;
  *(&v244 - 4) = sub_1D5B4AA6C;
  *(&v244 - 3) = 0;
  v242 = sub_1D6708978;
  v243 = v107;
  LOBYTE(v273) = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = v262;
  *(v110 + 32) = v273;
  *(v110 + 40) = v109;
  *(v110 + 48) = v83;
  swift_retain_n();
  sub_1D6189668(v101, v102, v103);
  v111 = sub_1D72647CC();
  LOBYTE(v273) = 0;
  v112 = swift_allocObject();
  *(v112 + 16) = v111;
  *(v112 + 24) = v262;
  *(v112 + 40) = v273;
  v113 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
  MEMORY[0x1EEE9AC00](v113, v114);
  MEMORY[0x1EEE9AC00](v115, v116);
  v117 = v244;
  *(&v244 - 4) = sub_1D615B4A4;
  *(&v244 - 3) = v117;
  v242 = sub_1D6708978;
  v243 = v110;
  v118 = v263;
  v120 = sub_1D5D2F7A4(v104, sub_1D615B49C, v119, sub_1D615B4A4, (&v244 - 6));
  *&v263 = v118;
  if (!v118)
  {
    v123 = v120;

    if (v123)
    {
      sub_1D60ED320();
      v121 = v301;
      v124 = v263;
      sub_1D72647EC();
      *&v263 = v124;
      v83 = v264;
      v78 = v252;
      v79 = v253;
      if (v124)
      {

        v104 = v250;
        goto LABEL_17;
      }

      sub_1D5D2F2C8(v282, *(&v282 + 1), v283);
      sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2F2C8(v282, *(&v282 + 1), v283);
      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
      v121 = v301;
      v83 = v264;
      v78 = v252;
      v79 = v253;
    }

LABEL_24:
    v125 = v256[15];
    v126 = v249;
    v258(v249, v79, v78);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA60;
    v290 = xmmword_1D72BAA60;
    LOBYTE(v291) = 0;
    LOBYTE(v282) = 0;
    v127 = swift_allocObject();
    v129 = v127;
    *(v127 + 16) = v262;
    *(v127 + 32) = v282;
    *(v127 + 40) = v255;
    *(v127 + 48) = v83;
    if (v125)
    {
      v251 = &v244;
      *&v282 = v125;
      MEMORY[0x1EEE9AC00](v127, v128);
      v130 = v83;
      v132 = v131;
      *(&v244 - 4) = sub_1D5B4AA6C;
      *(&v244 - 3) = 0;
      v242 = sub_1D6708978;
      v243 = v129;
      LOBYTE(v273) = 0;
      v133 = swift_allocObject();
      v134 = v130;
      v135 = v133;
      *(v133 + 16) = v262;
      *(v133 + 32) = v273;
      *(v133 + 40) = v132;
      *(v133 + 48) = v134;
      swift_retain_n();

      v136 = sub_1D72647CC();
      LOBYTE(v273) = 0;
      v137 = swift_allocObject();
      *(v137 + 16) = v136;
      *(v137 + 24) = v262;
      *(v137 + 40) = v273;
      v138 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v138, v139);
      MEMORY[0x1EEE9AC00](v140, v141);
      *(&v244 - 4) = sub_1D615B4A4;
      *(&v244 - 3) = &v244 - 6;
      v242 = sub_1D6708978;
      v243 = v135;
      v142 = v263;
      v144 = sub_1D5D2F7A4(v126, sub_1D615B49C, v143, sub_1D615B4A4, (&v244 - 6));
      *&v263 = v142;
      if (v142)
      {
LABEL_34:

        v121 = v301;
        goto LABEL_35;
      }

      v145 = v144;

      if (v145)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v121 = v301;
        v146 = v263;
        sub_1D72647EC();
        *&v263 = v146;
        v83 = v264;
        v78 = v252;
        v79 = v253;
        if (v146)
        {

          v126 = v249;
LABEL_35:

          v122 = v126;
          goto LABEL_36;
        }

        sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
        v121 = v301;
        v83 = v264;
        v78 = v252;
        v79 = v253;
      }
    }

    else
    {

      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
    }

    v147 = v256[16];
    v126 = v248;
    v258(v248, v79, v78);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA70;
    v290 = xmmword_1D72BAA70;
    LOBYTE(v291) = 0;
    LOBYTE(v282) = 0;
    v148 = swift_allocObject();
    v150 = v148;
    *(v148 + 16) = v262;
    *(v148 + 32) = v282;
    *(v148 + 40) = v255;
    *(v148 + 48) = v83;
    if (v147)
    {
      v251 = &v244;
      *&v282 = v147;
      MEMORY[0x1EEE9AC00](v148, v149);
      v151 = v83;
      v153 = v152;
      *(&v244 - 4) = sub_1D5B4AA6C;
      *(&v244 - 3) = 0;
      v242 = sub_1D6708978;
      v243 = v150;
      LOBYTE(v273) = 0;
      v154 = swift_allocObject();
      v155 = v151;
      v156 = v154;
      *(v154 + 16) = v262;
      *(v154 + 32) = v273;
      *(v154 + 40) = v153;
      *(v154 + 48) = v155;
      swift_retain_n();

      v157 = sub_1D72647CC();
      LOBYTE(v273) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v157;
      *(v158 + 24) = v262;
      *(v158 + 40) = v273;
      v159 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v159, v160);
      MEMORY[0x1EEE9AC00](v161, v162);
      *(&v244 - 4) = sub_1D615B4A4;
      *(&v244 - 3) = &v244 - 6;
      v242 = sub_1D6708978;
      v243 = v156;
      v163 = v263;
      v165 = sub_1D5D2F7A4(v126, sub_1D615B49C, v164, sub_1D615B4A4, (&v244 - 6));
      *&v263 = v163;
      if (v163)
      {
        goto LABEL_34;
      }

      v166 = v165;

      if (v166)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v121 = v301;
        v167 = v263;
        sub_1D72647EC();
        *&v263 = v167;
        v83 = v264;
        v78 = v252;
        v79 = v253;
        if (v167)
        {

          v126 = v248;
          goto LABEL_35;
        }

        sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
        v121 = v301;
        v83 = v264;
        v78 = v252;
        v79 = v253;
      }
    }

    else
    {

      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
    }

    v168 = v256[17];
    v126 = v247;
    v258(v247, v79, v78);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA80;
    v290 = xmmword_1D72BAA80;
    LOBYTE(v291) = 0;
    LOBYTE(v282) = 0;
    v169 = swift_allocObject();
    v171 = v169;
    *(v169 + 16) = v262;
    *(v169 + 32) = v282;
    *(v169 + 40) = v255;
    *(v169 + 48) = v83;
    if (v168)
    {
      *&v282 = v168;
      MEMORY[0x1EEE9AC00](v169, v170);
      v172 = v83;
      v174 = v173;
      *(&v244 - 4) = sub_1D5B4AA6C;
      *(&v244 - 3) = 0;
      v242 = sub_1D6708978;
      v243 = v171;
      LOBYTE(v273) = 0;
      v175 = swift_allocObject();
      v176 = v172;
      v177 = v175;
      *(v175 + 16) = v262;
      *(v175 + 32) = v273;
      *(v175 + 40) = v174;
      *(v175 + 48) = v176;
      swift_retain_n();

      v178 = sub_1D72647CC();
      LOBYTE(v273) = 0;
      v179 = swift_allocObject();
      *(v179 + 16) = v178;
      *(v179 + 24) = v262;
      *(v179 + 40) = v273;
      v180 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v180, v181);
      MEMORY[0x1EEE9AC00](v182, v183);
      *(&v244 - 4) = sub_1D615B4A4;
      *(&v244 - 3) = &v244 - 6;
      v242 = sub_1D6708978;
      v243 = v177;
      v184 = v263;
      v186 = sub_1D5D2F7A4(v126, sub_1D615B49C, v185, sub_1D615B4A4, (&v244 - 6));
      *&v263 = v184;
      if (v184)
      {
        goto LABEL_34;
      }

      v188 = v186;

      if (v188)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v121 = v301;
        v189 = v263;
        sub_1D72647EC();
        *&v263 = v189;
        v83 = v264;
        if (v189)
        {

          v126 = v247;
          goto LABEL_35;
        }

        v187 = v252;

        sub_1D5D2CFE8(v247, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
        v121 = v301;
        v83 = v264;
        v187 = v252;
      }
    }

    else
    {

      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

      v187 = v78;
    }

    v190 = v256[18];
    v191 = v246;
    v258(v246, v253, v187);
    swift_storeEnumTagMultiPayload();
    v262 = xmmword_1D72BAA90;
    v299 = xmmword_1D72BAA90;
    v300 = 0;
    LOBYTE(v290) = 0;
    v192 = swift_allocObject();
    v194 = v192;
    *(v192 + 16) = v262;
    *(v192 + 32) = v290;
    *(v192 + 40) = v255;
    *(v192 + 48) = v83;
    if (v190)
    {
      v251 = &v244;
      v298 = v190;
      MEMORY[0x1EEE9AC00](v192, v193);
      v195 = v83;
      v197 = v196;
      *(&v244 - 4) = sub_1D5B4AA6C;
      *(&v244 - 3) = 0;
      v242 = sub_1D6708978;
      v243 = v194;
      LOBYTE(v290) = 0;
      v198 = swift_allocObject();
      v199 = v195;
      v200 = v198;
      *(v198 + 16) = v262;
      *(v198 + 32) = v290;
      *(v198 + 40) = v197;
      *(v198 + 48) = v199;
      swift_retain_n();

      v201 = sub_1D72647CC();
      LOBYTE(v290) = 0;
      v202 = swift_allocObject();
      *(v202 + 16) = v201;
      *(v202 + 24) = v262;
      *(v202 + 40) = v290;
      v203 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
      MEMORY[0x1EEE9AC00](v203, v204);
      MEMORY[0x1EEE9AC00](v205, v206);
      *(&v244 - 4) = sub_1D615B4A4;
      *(&v244 - 3) = &v244 - 6;
      v242 = sub_1D6708978;
      v243 = v200;
      v207 = v263;
      v209 = sub_1D5D2F7A4(v191, sub_1D615B49C, v208, sub_1D615B4A4, (&v244 - 6));
      *&v263 = v207;
      if (v207)
      {

        v121 = v301;
LABEL_56:
        v210 = v246;

LABEL_57:
        v122 = v210;
        goto LABEL_36;
      }

      v215 = v209;

      if (v215)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v121 = v301;
        v216 = v263;
        sub_1D72647EC();
        *&v263 = v216;
        v217 = v264;
        v218 = v253;
        v212 = v258;
        if (v216)
        {

          goto LABEL_56;
        }

        v219 = v252;

        sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
        v214 = v219;
        v211 = v218;
        v213 = v217;
      }

      else
      {

        sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
        v121 = v301;
        v213 = v264;
        v214 = v252;
        v211 = v253;
        v212 = v258;
      }
    }

    else
    {

      sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

      v211 = v253;
      v212 = v258;
      v213 = v83;
      v214 = v187;
    }

    v220 = *(v256 + 29);
    v221 = *(v256 + 33);
    v288 = *(v256 + 31);
    v289[0] = v221;
    *(v289 + 9) = *(v256 + 273);
    v222 = *(v256 + 21);
    v223 = *(v256 + 25);
    v284 = *(v256 + 23);
    v285 = v223;
    v286 = *(v256 + 27);
    v287 = v220;
    v282 = *(v256 + 19);
    v283 = v222;
    v224 = v245;
    v212(v245, v211, v214);
    swift_storeEnumTagMultiPayload();
    v264 = xmmword_1D72BAAA0;
    v280[2] = xmmword_1D72BAAA0;
    v281 = 0;
    LOBYTE(v273) = 0;
    v225 = swift_allocObject();
    *(v225 + 16) = v264;
    *(v225 + 32) = v273;
    v226 = v255;
    *(v225 + 40) = v255;
    *(v225 + 48) = v213;
    v296 = v288;
    v297[0] = v289[0];
    *(v297 + 9) = *(v289 + 9);
    v292 = v284;
    v293 = v285;
    v294 = v286;
    v295 = v287;
    v290 = v282;
    v291 = v283;
    v227 = sub_1D60486AC(&v290);
    if (v227 == 1)
    {

      sub_1D5D2CFE8(v224, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v121, sub_1D6673008);
    }

    *&v262 = &v244;
    v279 = v288;
    v280[0] = v289[0];
    *(v280 + 9) = *(v289 + 9);
    v275 = v284;
    v276 = v285;
    v277 = v286;
    v278 = v287;
    v273 = v282;
    v274 = v283;
    MEMORY[0x1EEE9AC00](v227, v228);
    *(&v244 - 4) = sub_1D5B4AA6C;
    *(&v244 - 3) = 0;
    v242 = sub_1D6708978;
    v243 = v225;
    LOBYTE(v265) = 0;
    v229 = swift_allocObject();
    *(v229 + 16) = v264;
    *(v229 + 32) = v265;
    *(v229 + 40) = v226;
    *(v229 + 48) = v213;
    swift_retain_n();
    sub_1D5D355B8(&v282, &v265, &qword_1EDF10BF0, &type metadata for FormatMediaTiming, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v230 = sub_1D72647CC();
    LOBYTE(v265) = 0;
    v231 = v224;
    v232 = swift_allocObject();
    *(v232 + 16) = v230;
    *(v232 + 24) = v264;
    *(v232 + 40) = v265;
    v233 = __swift_project_boxed_opaque_existential_1(v261, *(v261 + 3));
    MEMORY[0x1EEE9AC00](v233, v234);
    MEMORY[0x1EEE9AC00](v235, v236);
    *(&v244 - 4) = sub_1D615B4A4;
    *(&v244 - 3) = &v244 - 6;
    v242 = sub_1D66732B0;
    v243 = v229;
    v237 = v263;
    v239 = sub_1D5D2F7A4(v231, sub_1D615B49C, v238, sub_1D615B4A4, (&v244 - 6));
    *&v263 = v237;
    if (v237)
    {

      v271 = v279;
      v272[0] = v280[0];
      *(v272 + 9) = *(v280 + 9);
      v267 = v275;
      v268 = v276;
      v269 = v277;
      v270 = v278;
      v265 = v273;
      v266 = v274;
      sub_1D62B49F0(&v265);
      v121 = v301;
      v122 = v245;
      goto LABEL_36;
    }

    v240 = v239;

    if ((v240 & 1) == 0)
    {

      v271 = v279;
      v272[0] = v280[0];
      *(v272 + 9) = *(v280 + 9);
      v267 = v275;
      v268 = v276;
      v269 = v277;
      v270 = v278;
      v265 = v273;
      v266 = v274;
      sub_1D62B49F0(&v265);
      sub_1D5D2CFE8(v245, type metadata accessor for FormatVersionRequirement);
      v121 = v301;
      return sub_1D5D2CFE8(v121, sub_1D6673008);
    }

    sub_1D6662A38();
    v121 = v301;
    v241 = v263;
    sub_1D72647EC();
    v210 = v245;
    *&v263 = v241;
    if (v241)
    {

      v271 = v279;
      v272[0] = v280[0];
      *(v272 + 9) = *(v280 + 9);
      v267 = v275;
      v268 = v276;
      v269 = v277;
      v270 = v278;
      v265 = v273;
      v266 = v274;
      sub_1D62B49F0(&v265);
      v122 = v210;
      goto LABEL_36;
    }

    v271 = v279;
    v272[0] = v280[0];
    *(v272 + 9) = *(v280 + 9);
    v267 = v275;
    v268 = v276;
    v269 = v277;
    v270 = v278;
    v265 = v273;
    v266 = v274;
    sub_1D62B49F0(&v265);
    goto LABEL_57;
  }

  v121 = v301;
LABEL_17:
  sub_1D5D2F2C8(v282, *(&v282 + 1), v283);
  v122 = v104;
LABEL_36:
  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v121, sub_1D6673008);
}

uint64_t sub_1D64475DC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6874615079656BLL;
    v6 = 0x6576697469646461;
    if (a1 != 2)
    {
      v6 = 1936941421;
    }

    if (a1)
    {
      v5 = 0x6974616C756D7563;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x566C616974696E69;
    v2 = 0x6D6954616964656DLL;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73656E6666697473;
    if (a1 != 4)
    {
      v3 = 0x676E69706D6164;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D644770C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6673340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6447744(uint64_t a1)
{
  v2 = sub_1D6673208();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6447780(uint64_t a1)
{
  v2 = sub_1D6673208();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v174 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v178 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v179 = &v174 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v180 = &v174 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v181 = (&v174 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v191 = &v174 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v174 - v26;
  sub_1D6673CC4();
  *&v190 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D6673DEC();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF0C4D0, sub_1D6673DEC);
  sub_1D5D2EE70(v4, v35, v37, v32, v4, v35, &type metadata for FormatVersions.StarSky, v33, v31, v36, &off_1F51F6CD8);
  swift_beginAccess();
  v38 = v2[2];
  v39 = v2[3];
  v188 = v2;
  v40 = qword_1EDF31ED0;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = sub_1D725BD1C();
  v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
  v43 = *(v41 - 8);
  v44 = *(v43 + 16);
  v187 = v41;
  v186 = v43 + 16;
  v44(v27, v42, v41);
  v185 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v45 = sub_1D725895C();
  v46 = (*(*(v45 - 8) + 48))(v8, 1, v45);
  v183 = v42;
  v184 = v44;
  if (v46 == 1)
  {
    v177 = v38;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v47 = v190;
    v48 = &v31[*(v190 + 44)];
    v50 = *v48;
    v49 = *(v48 + 1);
    LOBYTE(v196) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = v196;
    *(v51 + 40) = v50;
    *(v51 + 48) = v49;
    sub_1D6673D58();
    v53 = v52;
    sub_1D5B58B84(&qword_1EDF030F8, sub_1D6673D58);

    v176 = v53;
    v54 = sub_1D72647CC();
    LOBYTE(v196) = 0;
    v55 = v31;
    v56 = swift_allocObject();
    *(v56 + 24) = 0;
    *(v56 + 32) = 0;
    *(v56 + 16) = v54;
    *(v56 + 40) = v196;
    v57 = __swift_project_boxed_opaque_existential_1(&v55[*(v47 + 36)], *&v55[*(v47 + 36) + 24]);
    v182 = &v174;
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v174 - 4) = sub_1D5B4AA6C;
    *(&v174 - 3) = 0;
    v172 = sub_1D6673F6C;
    v173 = v51;
    v61 = v189;
    v63 = sub_1D5D2F7A4(v27, sub_1D615B49C, v62, sub_1D615B4A4, (&v174 - 6));
    if (v61)
    {
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v64 = v55;
      return sub_1D5D2CFE8(v64, sub_1D6673CC4);
    }

    v89 = v63;

    if (v89)
    {
      v196 = 0uLL;
      v197 = 0;
      *&v194 = v177;
      *(&v194 + 1) = v39;
      v31 = v55;
      sub_1D72647EC();

      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
      v42 = v183;
      v44 = v184;
      v65 = v191;
      v189 = 0;
    }

    else
    {
      v189 = 0;
      sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

      v31 = v55;
      v42 = v183;
      v44 = v184;
      v65 = v191;
    }
  }

  else
  {
    sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v65 = v191;
    v47 = v190;
  }

  v66 = v188[4];
  v67 = v188[5];
  v44(v65, v42, v187);
  swift_storeEnumTagMultiPayload();
  *&v194 = v66;
  *(&v194 + 1) = v67;
  v190 = xmmword_1D728CF30;
  v196 = xmmword_1D728CF30;
  v197 = 0;
  v68 = &v31[*(v47 + 44)];
  v69 = v47;
  v70 = *v68;
  v71 = *(v68 + 1);
  LOBYTE(v192) = 0;
  v72 = swift_allocObject();
  v182 = &v174;
  *(v72 + 16) = v190;
  *(v72 + 32) = v192;
  *(v72 + 40) = v70;
  *(v72 + 48) = v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v174 - 4) = sub_1D5B4AA6C;
  *(&v174 - 3) = 0;
  v172 = sub_1D670897C;
  v173 = v74;
  LOBYTE(v192) = 0;
  v75 = swift_allocObject();
  *(v75 + 16) = v190;
  *(v75 + 32) = v192;
  v175 = v70;
  *(v75 + 40) = v70;
  *(v75 + 48) = v71;
  sub_1D6673D58();
  v77 = v76;
  v78 = sub_1D5B58B84(&qword_1EDF030F8, sub_1D6673D58);
  swift_retain_n();
  v176 = v77;
  v177 = v78;
  v79 = sub_1D72647CC();
  LOBYTE(v192) = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;
  *(v80 + 24) = v190;
  *(v80 + 40) = v192;
  v81 = &v31[*(v69 + 36)];
  v82 = __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
  MEMORY[0x1EEE9AC00](v82, v83);
  MEMORY[0x1EEE9AC00](v84, v85);
  *(&v174 - 4) = sub_1D615B4A4;
  *(&v174 - 3) = (&v174 - 6);
  v172 = sub_1D670897C;
  v173 = v75;
  v86 = v191;
  v87 = v189;
  sub_1D5D2BC70(v191, sub_1D615B49C, v88, sub_1D615B4A4, (&v174 - 6));
  if (v87)
  {
    sub_1D5D2CFE8(v86, type metadata accessor for FormatVersionRequirement);

LABEL_12:
    v64 = v31;
    return sub_1D5D2CFE8(v64, sub_1D6673CC4);
  }

  v174 = v81;
  *&v190 = v71;

  sub_1D72647EC();
  v182 = v31;
  sub_1D5D2CFE8(v191, type metadata accessor for FormatVersionRequirement);

  v91 = v188[6];
  v92 = v188[7];
  v93 = *(v188 + 64);
  v94 = v181;
  v95 = v183;
  v96 = v184;
  v184(v181, v183, v187);
  swift_storeEnumTagMultiPayload();
  v191 = xmmword_1D7297410;
  v196 = xmmword_1D7297410;
  v197 = 0;
  LOBYTE(v194) = 0;
  v98 = swift_allocObject();
  *(v98 + 16) = v191;
  *(v98 + 32) = v194;
  *(v98 + 40) = v175;
  v99 = v190;
  *(v98 + 48) = v190;
  if (v93)
  {
    v189 = 0;

    v100 = v94;
LABEL_17:
    v101 = v174;
    goto LABEL_18;
  }

  v189 = &v174;
  *&v194 = v91;
  *(&v194 + 1) = v92;
  MEMORY[0x1EEE9AC00](v99, v97);
  *(&v174 - 4) = sub_1D5B4AA6C;
  *(&v174 - 3) = 0;
  v172 = sub_1D670897C;
  v173 = v98;
  LOBYTE(v192) = 0;
  v117 = v116;
  v119 = v118;
  v120 = swift_allocObject();
  *(v120 + 16) = v191;
  *(v120 + 32) = v192;
  *(v120 + 40) = v119;
  *(v120 + 48) = v117;
  swift_retain_n();
  v121 = sub_1D72647CC();
  LOBYTE(v192) = 0;
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v191;
  *(v122 + 40) = v192;
  v123 = __swift_project_boxed_opaque_existential_1(v174, *(v174 + 3));
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](v125, v126);
  *(&v174 - 4) = sub_1D615B4A4;
  *(&v174 - 3) = (&v174 - 6);
  v172 = sub_1D670897C;
  v173 = v120;
  v128 = sub_1D5D2F7A4(v94, sub_1D615B49C, v127, sub_1D615B4A4, (&v174 - 6));
  v129 = v128;

  if ((v129 & 1) == 0)
  {
    v189 = 0;
    v95 = v183;
    v96 = v184;
    v100 = v181;
    goto LABEL_17;
  }

  sub_1D5F5A70C();
  sub_1D72647EC();
  v95 = v183;
  v96 = v184;
  v101 = v174;
  v189 = 0;
  v100 = v181;
LABEL_18:
  sub_1D5D2CFE8(v100, type metadata accessor for FormatVersionRequirement);

  v102 = v188;
  swift_beginAccess();
  v103 = v102[9];
  v104 = v180;
  v96(v180, v95, v187);
  swift_storeEnumTagMultiPayload();
  if (!v103)
  {
    sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    goto LABEL_30;
  }

  LOBYTE(v194) = 0;
  v105 = swift_allocObject();
  v191 = xmmword_1D72BAA60;
  *(v105 + 16) = xmmword_1D72BAA60;
  *(v105 + 32) = v194;
  v106 = v190;
  *(v105 + 40) = v175;
  *(v105 + 48) = v106;

  v107 = sub_1D72647CC();
  LOBYTE(v194) = 0;
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v191;
  *(v108 + 40) = v194;
  v109 = __swift_project_boxed_opaque_existential_1(v101, *(v101 + 3));
  MEMORY[0x1EEE9AC00](v109, v110);
  MEMORY[0x1EEE9AC00](v111, v112);
  *(&v174 - 4) = sub_1D5B4AA6C;
  *(&v174 - 3) = 0;
  v172 = sub_1D670897C;
  v173 = v105;
  v113 = v189;
  v115 = sub_1D5D2F7A4(v104, sub_1D615B49C, v114, sub_1D615B4A4, (&v174 - 6));
  v189 = v113;
  if (!v113)
  {
    v130 = v115;

    if (v130)
    {
      v194 = v191;
      v195 = 0;
      *&v192 = v103;
      sub_1D667412C(0, &qword_1EC8866A8, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation);
      sub_1D6674198();
      v131 = v182;
      v132 = v189;
      sub_1D72647EC();
      v95 = v183;
      if (v132)
      {

        sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
        v64 = v131;
        return sub_1D5D2CFE8(v64, sub_1D6673CC4);
      }

      v189 = 0;

      sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v180, type metadata accessor for FormatVersionRequirement);
      v95 = v183;
    }

LABEL_30:
    v133 = *(v188 + 84);
    v134 = *(v188 + 20);
    v135 = v179;
    v184(v179, v95, v187);
    swift_storeEnumTagMultiPayload();
    v191 = xmmword_1D72BAA70;
    v194 = xmmword_1D72BAA70;
    v195 = 0;
    LOBYTE(v192) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v191;
    *(v137 + 32) = v192;
    *(v137 + 40) = v175;
    v138 = v190;
    *(v137 + 48) = v190;
    if (v133 <= 0xFEuLL)
    {
      v181 = &v174;
      v155 = v134 & 0xFFFFFF00FFFFFFFFLL | (v133 << 32);
      LODWORD(v192) = v155;
      BYTE4(v192) = BYTE4(v155);
      MEMORY[0x1EEE9AC00](v138, v136);
      *(&v174 - 4) = sub_1D5B4AA6C;
      *(&v174 - 3) = 0;
      v172 = sub_1D670897C;
      v173 = v137;
      LOBYTE(v198) = 0;
      v157 = v156;
      v159 = v158;
      v160 = swift_allocObject();
      *(v160 + 16) = v191;
      *(v160 + 32) = v198;
      *(v160 + 40) = v159;
      *(v160 + 48) = v157;
      swift_retain_n();
      v161 = sub_1D72647CC();
      LOBYTE(v198) = 0;
      v162 = swift_allocObject();
      *(v162 + 16) = v161;
      *(v162 + 24) = v191;
      *(v162 + 40) = v198;
      v163 = __swift_project_boxed_opaque_existential_1(v101, *(v101 + 3));
      MEMORY[0x1EEE9AC00](v163, v164);
      MEMORY[0x1EEE9AC00](v165, v166);
      *(&v174 - 4) = sub_1D615B4A4;
      *(&v174 - 3) = (&v174 - 6);
      v172 = sub_1D670897C;
      v173 = v160;
      v167 = v189;
      v169 = sub_1D5D2F7A4(v135, sub_1D615B49C, v168, sub_1D615B4A4, (&v174 - 6));
      v139 = v167;
      if (v167)
      {
        sub_1D5D2CFE8(v135, type metadata accessor for FormatVersionRequirement);

        v140 = v182;
        goto LABEL_38;
      }

      v170 = v169;

      if (v170)
      {
        sub_1D66740D8();
        v140 = v182;
        sub_1D72647EC();
        v95 = v183;
        v142 = v184;
        v141 = v179;
      }

      else
      {
        v140 = v182;
        v141 = v179;
        v95 = v183;
        v142 = v184;
      }
    }

    else
    {

      v139 = v189;
      v140 = v182;
      v141 = v135;
      v142 = v184;
    }

    sub_1D5D2CFE8(v141, type metadata accessor for FormatVersionRequirement);

    v143 = v188;
    swift_beginAccess();
    v144 = v143[11];
    v145 = v178;
    v142(v178, v95, v187);
    swift_storeEnumTagMultiPayload();
    if (*(v144 + 16))
    {
      LOBYTE(v192) = 0;
      v31 = v140;
      v146 = swift_allocObject();
      v191 = xmmword_1D72BAA80;
      *(v146 + 16) = xmmword_1D72BAA80;
      *(v146 + 32) = v192;
      *(v146 + 40) = v175;
      *(v146 + 48) = v190;

      v147 = sub_1D72647CC();
      LOBYTE(v192) = 0;
      v148 = swift_allocObject();
      *(v148 + 16) = v147;
      *(v148 + 24) = v191;
      *(v148 + 40) = v192;
      v149 = __swift_project_boxed_opaque_existential_1(v174, *(v174 + 3));
      MEMORY[0x1EEE9AC00](v149, v150);
      MEMORY[0x1EEE9AC00](v151, v152);
      *(&v174 - 4) = sub_1D5B4AA6C;
      *(&v174 - 3) = 0;
      v172 = sub_1D670897C;
      v173 = v146;
      v154 = sub_1D5D2F7A4(v145, sub_1D615B49C, v153, sub_1D615B4A4, (&v174 - 6));
      if (v139)
      {
        sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v171 = v154;

        if (v171)
        {
          v192 = v191;
          v193 = 0;
          v198 = v144;
          sub_1D5C34D84(0, &unk_1EDF04D38, &type metadata for FormatAnimationNodeStyle.Selector, MEMORY[0x1E69E62F8]);
          sub_1D6673FE8();
          sub_1D72647EC();

          sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
        }
      }

      goto LABEL_12;
    }

    sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
LABEL_38:
    v64 = v140;
    return sub_1D5D2CFE8(v64, sub_1D6673CC4);
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v182, sub_1D6673CC4);
}

uint64_t sub_1D644928C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x726F7463656C6573;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x6F6974616D696E61;
  if (v1 != 3)
  {
    v4 = 0x65646F4D6E7572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7373616C63;
  if (v1 != 1)
  {
    v5 = 0x6F50726F68636E61;
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

uint64_t sub_1D644936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66751F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64493A4(uint64_t a1)
{
  v2 = sub_1D6673EC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64493E0(uint64_t a1)
{
  v2 = sub_1D6673EC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAnimationNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D6674228();
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66742BC();
  sub_1D5B58B84(&qword_1EDF0C4C0, sub_1D66742BC);
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

  v13 = v41;
  v14 = v10;
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

      v19 = v7;
      v20 = v13;
      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6618C90();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v20 + 8))(v14, v19);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v18 = v37;
  v37 = xmmword_1D728CF30;
  v38 = 0;
  sub_1D5C7B870();
  sub_1D726427C();
  v36 = v18;
  v25 = v7;
  v26 = *(&v39 + 1);
  v35 = v39;
  v27 = v40;
  sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
  v39 = xmmword_1D7297410;
  v40 = 0;
  sub_1D667443C();
  sub_1D726427C();
  HIDWORD(v33) = v27;
  v34 = v26;
  v29 = v37;
  v39 = xmmword_1D72BAA60;
  v40 = 0;
  sub_1D667452C();
  sub_1D726427C();
  (*(v41 + 8))(v10, v25);
  v30 = v37;
  v31 = BYTE4(v37);
  v32 = v35;
  *a2 = v36;
  *(a2 + 8) = *(&v18 + 1);
  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  *(a2 + 32) = BYTE4(v33);
  *(a2 + 40) = v29;
  *(a2 + 52) = v31;
  *(a2 + 48) = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAnimationNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v112 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v110 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v119 = &v110 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v110 - v14;
  sub_1D6674580();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = v1[1];
  v23 = v1[2];
  v24 = v1[3];
  LODWORD(v114) = *(v1 + 32);
  v113 = v1[5];
  v111 = *(v1 + 52);
  v110 = *(v1 + 12);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D66742BC();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EDF0C4C0, sub_1D66742BC);
  sub_1D5D2EE70(&type metadata for FormatAnimationNodeStyle.Selector, v28, v30, v25, &type metadata for FormatAnimationNodeStyle.Selector, v28, &type metadata for FormatVersions.StarSky, v26, v20, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v118 = v32;
  v116 = v31;
  v120 = v34;
  v122 = v33 + 16;
  (v34)(v15);
  v121 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v131 = v21;
  v132 = v22;
  v129 = 0uLL;
  v130 = 0;
  v35 = &v20[*(v17 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v133 = 0;
  v38 = swift_allocObject();
  *&v126 = &v110;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v133;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v125 = (&v110 - 6);
  *(&v110 - 4) = sub_1D5B4AA6C;
  *(&v110 - 3) = 0;
  v108 = sub_1D6708980;
  v109 = v40;
  v133 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v133;
  v117 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D6674614();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EDF030E8, sub_1D6674614);
  swift_retain_n();
  v123 = v43;
  v124 = v44;
  v45 = sub_1D72647CC();
  v133 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v133;
  v47 = *(v17 + 36);
  v48 = v15;
  v128 = v20;
  v49 = &v20[v47];
  v50 = __swift_project_boxed_opaque_existential_1(&v20[v47], *&v20[v47 + 24]);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v54 = v125;
  *(&v110 - 4) = sub_1D615B4A4;
  *(&v110 - 3) = v54;
  v108 = sub_1D6708980;
  v109 = v41;
  v55 = v127;
  sub_1D5D2BC70(v48, sub_1D615B49C, v56, sub_1D615B4A4, (&v110 - 6));
  if (!v55)
  {
    v125 = v49;
    *&v127 = v37;

    sub_1D5D3E60C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v59 = v118;
    v60 = v119;
    v61 = v116;
    v120(v119, v118, v116);
    swift_storeEnumTagMultiPayload();
    v126 = xmmword_1D728CF30;
    v129 = xmmword_1D728CF30;
    v130 = 0;
    LOBYTE(v131) = 0;
    v62 = swift_allocObject();
    v64 = v62;
    *(v62 + 16) = v126;
    *(v62 + 32) = v131;
    v65 = v117;
    v66 = v127;
    *(v62 + 40) = v117;
    *(v62 + 48) = v66;
    if (v114)
    {

      v67 = v115;
      v68 = v113;
    }

    else
    {
      v114 = &v110;
      v131 = v23;
      v132 = v24;
      MEMORY[0x1EEE9AC00](v62, v63);
      *(&v110 - 4) = sub_1D5B4AA6C;
      *(&v110 - 3) = 0;
      v108 = sub_1D6708980;
      v109 = v64;
      v133 = 0;
      v83 = swift_allocObject();
      *(v83 + 16) = v126;
      *(v83 + 32) = v133;
      *(v83 + 40) = v65;
      *(v83 + 48) = v66;
      swift_retain_n();
      v84 = sub_1D72647CC();
      v133 = 0;
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v85 + 24) = v126;
      *(v85 + 40) = v133;
      v86 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
      MEMORY[0x1EEE9AC00](v86, v87);
      MEMORY[0x1EEE9AC00](v88, v89);
      *(&v110 - 4) = sub_1D615B4A4;
      *(&v110 - 3) = (&v110 - 6);
      v108 = sub_1D6708980;
      v109 = v83;
      v91 = sub_1D5D2F7A4(v60, sub_1D615B49C, v90, sub_1D615B4A4, (&v110 - 6));
      v92 = v91;

      v67 = v115;
      if (v92)
      {
        sub_1D5F5A70C();
        sub_1D72647EC();
        v65 = v117;
        v68 = v113;
        v61 = v116;
        v59 = v118;
        v66 = v127;
      }

      else
      {
        v66 = v127;
        v65 = v117;
        v68 = v113;
        v61 = v116;
        v59 = v118;
      }
    }

    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);

    v69 = v120;
    v120(v67, v59, v61);
    swift_storeEnumTagMultiPayload();
    v126 = xmmword_1D7297410;
    v129 = xmmword_1D7297410;
    v130 = 0;
    LOBYTE(v131) = 0;
    v70 = swift_allocObject();
    v72 = v70;
    *(v70 + 16) = v126;
    *(v70 + 32) = v131;
    *(v70 + 40) = v65;
    *(v70 + 48) = v66;
    if (v68)
    {
      v123 = &v110;
      v131 = v68;
      MEMORY[0x1EEE9AC00](v70, v71);
      *(&v110 - 4) = sub_1D5B4AA6C;
      *(&v110 - 3) = 0;
      v108 = sub_1D6708980;
      v109 = v72;
      v133 = 0;
      v73 = swift_allocObject();
      *(v73 + 16) = v126;
      *(v73 + 32) = v133;
      *(v73 + 40) = v65;
      *(v73 + 48) = v66;
      swift_retain_n();

      v74 = sub_1D72647CC();
      v133 = 0;
      v75 = swift_allocObject();
      *(v75 + 16) = v74;
      *(v75 + 24) = v126;
      *(v75 + 40) = v133;
      v76 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
      MEMORY[0x1EEE9AC00](v76, v77);
      MEMORY[0x1EEE9AC00](v78, v79);
      *(&v110 - 4) = sub_1D615B4A4;
      *(&v110 - 3) = (&v110 - 6);
      v80 = v115;
      v108 = sub_1D6708980;
      v109 = v73;
      v82 = sub_1D5D2F7A4(v115, sub_1D615B49C, v81, sub_1D615B4A4, (&v110 - 6));
      v93 = v82;

      if (v93)
      {
        sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
        sub_1D66628CC();
        sub_1D72647EC();
        v65 = v117;
        v61 = v116;
        v69 = v120;

        sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
        v66 = v127;
      }

      else
      {

        sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
        v66 = v127;
        v65 = v117;
        v61 = v116;
        v69 = v120;
      }
    }

    else
    {

      sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);
    }

    v94 = v110 | (v111 << 32);
    v95 = v112;
    v69(v112, v118, v61);
    swift_storeEnumTagMultiPayload();
    v127 = xmmword_1D72BAA60;
    v129 = xmmword_1D72BAA60;
    v130 = 0;
    LOBYTE(v131) = 0;
    v96 = swift_allocObject();
    v98 = v96;
    *(v96 + 16) = v127;
    *(v96 + 32) = v131;
    *(v96 + 40) = v65;
    *(v96 + 48) = v66;
    if (HIDWORD(v94) <= 0xFE)
    {
      *&v126 = &v110;
      LODWORD(v131) = v94;
      BYTE4(v131) = BYTE4(v94);
      MEMORY[0x1EEE9AC00](v96, v97);
      *(&v110 - 4) = sub_1D5B4AA6C;
      *(&v110 - 3) = 0;
      v108 = sub_1D6708980;
      v109 = v98;
      v133 = 0;
      v100 = swift_allocObject();
      *(v100 + 16) = v127;
      *(v100 + 32) = v133;
      *(v100 + 40) = v65;
      *(v100 + 48) = v66;
      swift_retain_n();
      v101 = sub_1D72647CC();
      v133 = 0;
      v102 = swift_allocObject();
      *(v102 + 16) = v101;
      *(v102 + 24) = v127;
      *(v102 + 40) = v133;
      v103 = __swift_project_boxed_opaque_existential_1(v125, *(v125 + 3));
      MEMORY[0x1EEE9AC00](v103, v104);
      MEMORY[0x1EEE9AC00](v105, v106);
      *(&v110 - 4) = sub_1D615B4A4;
      *(&v110 - 3) = (&v110 - 6);
      v108 = sub_1D66746A8;
      v109 = v100;
      LOBYTE(v101) = sub_1D5D2F7A4(v95, sub_1D615B49C, v107, sub_1D615B4A4, (&v110 - 6));

      if (v101)
      {
        sub_1D66740D8();
        v99 = v128;
        sub_1D72647EC();
        goto LABEL_22;
      }
    }

    else
    {
    }

    v99 = v128;
LABEL_22:
    sub_1D5D2CFE8(v95, type metadata accessor for FormatVersionRequirement);

    v57 = v99;
    return sub_1D5D2CFE8(v57, sub_1D6674580);
  }

  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v57 = v128;
  return sub_1D5D2CFE8(v57, sub_1D6674580);
}

uint64_t sub_1D644A97C()
{
  v1 = *v0;
  v2 = 0x726F7463656C6573;
  v3 = 0x6F6974616D696E61;
  v4 = 0x65646F4D6E7572;
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
    v2 = 0x6F50726F68636E61;
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

uint64_t sub_1D644AA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667544C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D644AA54(uint64_t a1)
{
  v2 = sub_1D6674394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D644AA90(uint64_t a1)
{
  v2 = sub_1D6674394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArrayIndex.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D6674724();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66747B8();
  sub_1D5B58B84(&qword_1EDF25708, sub_1D66747B8);
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

      v20 = sub_1D6628490(0x7865646E69, 0xE500000000000000);
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

  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  v17 = sub_1D72642FC();
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatArrayIndex.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6674938();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D66747B8();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF25708, sub_1D66747B8);
  sub_1D5D2EE70(&type metadata for FormatArrayIndex, v16, v18, v13, &type metadata for FormatArrayIndex, v16, &type metadata for FormatVersions.SydroF, v14, v11, v17, &off_1F51F6C58);
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD68);
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
  v41[2] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D6708984;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66749CC();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF037D8, sub_1D66749CC);
  swift_retain_n();
  v41[1] = v29;
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
  v39 = sub_1D6674A60;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6674938);
}

uint64_t sub_1D644B298()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1D644B2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
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

uint64_t sub_1D644B3B0(uint64_t a1)
{
  v2 = sub_1D6674890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D644B3EC(uint64_t a1)
{
  v2 = sub_1D6674890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArraySubscript.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v48 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v47 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v51 = &v44 - v8;
  v52 = v7;
  v55 = v9;
  v10 = _s10CodingKeysOMa_220();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v56 = v10;
  *(&v56 + 1) = WitnessTable;
  v53 = WitnessTable;
  v50 = v12;
  v57 = v12;
  v58 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v44 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v59;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    goto LABEL_12;
  }

  v45 = v13;
  v46 = 0;
  v59 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v56 = 0uLL;
    LOBYTE(v57) = 0;
    v37 = v59;
    v38 = v46;
    v39 = sub_1D72642FC();
    v20 = v38;
    if (!v38)
    {
      v40 = v39;
      v56 = xmmword_1D728CF30;
      LOBYTE(v57) = 0;
      v42 = v51;
      v41 = v52;
      sub_1D726431C();
      (*(v54 + 8))(v37, v15);
      v43 = v47;
      (*(v48 + 32))(v47, v42, v41);
      sub_1D6925984(v40, v43, v41, v49);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v54 + 8))(v37, v15);
LABEL_12:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v24 = (sub_1D726433C() + 48);
  v25 = v10;
  v26 = v53;
  while (1)
  {
    if (v23 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v24;
    v56 = *(v24 - 1);
    LOBYTE(v57) = v29;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

    v30 = sub_1D6AFC82C(v14);
    ++v23;
    v24 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v25, v26, v50, v45);
      sub_1D5E2D970();
      v35 = swift_allocError();
      *v36 = v32;
      *(v36 + 8) = v33;
      v20 = v35;
      *(v36 + 16) = v34;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v54 + 8))(v59, v15);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatArraySubscript.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  v13 = *(a2 + 24);
  v36 = *(a2 + 16);
  v34 = v13;
  v14 = _s10CodingKeysOMa_220();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v42 = v14;
  *(&v42 + 1) = WitnessTable;
  v43 = v16;
  v44 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  v19 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v41 = type metadata accessor for VersionedKeyedEncodingContainer();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v20);
  v22 = &v34 - v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v35 = a2;
  sub_1D5D2EE70(a2, v18, v25, v23, a2, v18, &type metadata for FormatVersions.SydroF, v24, v22, v19, &off_1F51F6C58);
  v37 = v3;
  v45 = *v3;
  v42 = 0uLL;
  LOBYTE(v43) = 0;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD68);
  v28 = *(*(v26 - 8) + 16);
  v28(v12, v27, v26);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v29 = v40;
  sub_1D5D38930(&v45, &v42, v12, sub_1D5B4AA6C, 0, v41, MEMORY[0x1E69E6530], MEMORY[0x1E69E6538]);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);
  if (v29)
  {
    return (*(v39 + 8))(v22, v41);
  }

  v31 = *(v35 + 36);
  v42 = xmmword_1D728CF30;
  LOBYTE(v43) = 0;
  v32 = v38;
  v28(v38, v27, v26);
  swift_storeEnumTagMultiPayload();
  v33 = v41;
  sub_1D5D38930(v37 + v31, &v42, v32, sub_1D5B4AA6C, 0, v41, v36, *(v34 + 16));
  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return (*(v39 + 8))(v22, v33);
}

uint64_t sub_1D644BD7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
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

uint64_t sub_1D644BE8C(char a1)
{
  if (!a1)
  {
    return 0x7865646E69;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1885433183;
}

uint64_t sub_1D644BEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D644BD7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D644BF10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_220);
  *a2 = result;
  return result;
}

uint64_t sub_1D644BF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D644BFA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatAssetURL.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1D5C2E60C(0, &qword_1EDF43AC8, sub_1D5C6838C, sub_1D5C683E0);
  v4 = v3;
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - v6;
  sub_1D6674AF4();
  v9 = v8;
  v36 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6674B88();
  sub_1D5B58B84(&qword_1EDF3ED58, sub_1D6674B88);
  v13 = v41;
  sub_1D7264B0C();
  v14 = v13;
  if (v13)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v14);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v35;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v20 - 2);
      v26 = *(v20 - 1);

      v28 = sub_1D6627E68(0x65756C6176, 0xE500000000000000, 0x6574656D61726170, 0xEA00000000007372);
      sub_1D5E2D970();
      v14 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v36 + 8))(v12, v9);
      goto LABEL_11;
    }

LABEL_7:
  }

  v39 = 0uLL;
  v40 = 0;
  v21 = sub_1D72642BC();
  v23 = v22;
  v33 = v21;
  v32 = xmmword_1D728CF30;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  v24 = sub_1D726434C();
  v25 = v36;
  if (v24)
  {
    v37 = v32;
    v38 = 0;
    sub_1D5C8000C();
    sub_1D726431C();
    v31 = sub_1D725A74C();
    (*(v34 + 8))(v41, v4);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  (*(v25 + 8))(v12, v9);
  *v17 = v33;
  v17[1] = v23;
  v17[2] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAssetURL.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D6674D08();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v75 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6674B88();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF3ED58, sub_1D6674B88);
  sub_1D5D2EE70(&type metadata for FormatAssetURL, v20, v22, v17, &type metadata for FormatAssetURL, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v70 = v23;
  v72 = v25 + 16;
  v73 = v26;
  v26(v9, v24, v23);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v84 = v16;
  v81 = 0uLL;
  v82 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v85 = 0;
  v30 = swift_allocObject();
  *&v78 = &v68;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v85;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D670896C;
  v67 = v32;
  v85 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v85;
  v68 = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D6674D9C();
  v34 = v9;
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02B28, sub_1D6674D9C);
  v69 = v29;
  swift_retain_n();
  v76 = v37;
  v77 = v36;
  v38 = sub_1D72647CC();
  v85 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v85;
  v40 = *(v11 + 36);
  v80 = v14;
  v41 = &v14[v40];
  v42 = __swift_project_boxed_opaque_existential_1(&v14[v40], *&v14[v40 + 24]);
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v66 = sub_1D670896C;
  v67 = v33;
  v46 = v79;
  sub_1D5D2BC70(v34, sub_1D615B49C, v47, sub_1D615B4A4, (&v68 - 6));
  if (v46)
  {
    v48 = v80;
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v50 = v48;
  }

  else
  {
    v79 = v41;

    v49 = v80;
    sub_1D72647EC();
    sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);

    v52 = qword_1EDF31EA8;
    v53 = v75;

    if (v52 != -1)
    {
      swift_once();
    }

    v54 = v70;
    v55 = __swift_project_value_buffer(v70, qword_1EDFFCD18);
    v56 = v74;
    v73(v74, v55, v54);
    swift_storeEnumTagMultiPayload();
    v57 = v49;
    if (*(v53 + 16) && (LOBYTE(v81) = 0, v58 = swift_allocObject(), v78 = xmmword_1D728CF30, *(v58 + 16) = xmmword_1D728CF30, *(v58 + 32) = v81, *(v58 + 40) = v68, *(v58 + 48) = v69, , v59 = sub_1D72647CC(), LOBYTE(v81) = 0, v60 = swift_allocObject(), *(v60 + 16) = v59, *(v60 + 24) = v78, *(v60 + 40) = v81, v61 = __swift_project_boxed_opaque_existential_1(v79, *(v79 + 3)), MEMORY[0x1EEE9AC00](v61, v62), MEMORY[0x1EEE9AC00](v63, v64), *(&v68 - 4) = sub_1D5B4AA6C, *(&v68 - 3) = 0, v66 = sub_1D670896C, v67 = v58, LOBYTE(v59) = sub_1D5D2F7A4(v56, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6)), v57 = v80, , , (v59 & 1) != 0))
    {
      v81 = v78;
      v82 = 0;
      v83 = v75;
      sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
      sub_1D6670830();
      sub_1D72647EC();

      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v56, type metadata accessor for FormatVersionRequirement);
    }

    v50 = v57;
  }

  return sub_1D5D2CFE8(v50, sub_1D6674D08);
}

uint64_t sub_1D644CD54(uint64_t a1)
{
  v2 = sub_1D6674C60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D644CD90(uint64_t a1)
{
  v2 = sub_1D6674C60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatAsyncImageContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v107 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v108 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v106 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v104 = &v102 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v105 = &v102 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v109 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v103 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v102 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v102 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v102 - v35;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v2;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v44 = sub_1D5C30408();
  v120 = v40;
  sub_1D5D2EE70(&type metadata for FormatAsyncImageContent, &type metadata for FormatCodingKeys, v45, v43, &type metadata for FormatAsyncImageContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v42, v40, v44, &off_1F51F6C78);
  v46 = v41 >> 60;
  if ((v41 >> 60) > 4)
  {
    if (v46 <= 6)
    {
      if (v46 == 5)
      {
        v65 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v66 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v67 = qword_1EDF31EB0;

        if (v67 != -1)
        {
          swift_once();
        }

        v68 = sub_1D725BD1C();
        v69 = __swift_project_value_buffer(v68, qword_1EDFFCD30);
        v28 = v104;
        (*(*(v68 - 8) + 16))(v104, v69, v68);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v70 = v110;
        sub_1D6397828(6, v65, v66, v28);
        if (v70)
        {

          v36 = v28;
LABEL_49:
          v64 = v36;
          goto LABEL_60;
        }

LABEL_59:
        v64 = v28;
        goto LABEL_60;
      }

      v95 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v97 = qword_1EDF31EA8;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD18);
      v36 = v106;
      (*(*(v98 - 8) + 16))(v106, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      v100 = v110;
      sub_1D63979FC(7, v95, v96, v36);
      if (v100)
      {

        goto LABEL_48;
      }
    }

    else
    {
      if (v46 == 7)
      {
        v75 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v77 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v78 = qword_1EDF31EA8;

        if (v78 != -1)
        {
          swift_once();
        }

        v79 = sub_1D725BD1C();
        v80 = __swift_project_value_buffer(v79, qword_1EDFFCD18);
        v28 = v108;
        (*(*(v79 - 8) + 16))(v108, v80, v79);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v81 = v110;
        sub_1D6397BD0(8, v75, v76, v77, v28);
        if (v81)
        {

          goto LABEL_32;
        }

        goto LABEL_52;
      }

      if (v46 != 8)
      {
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v88 = sub_1D725BD1C();
        v89 = __swift_project_value_buffer(v88, qword_1EDFFCD18);
        (*(*(v88 - 8) + 16))(v36, v89, v88);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v90 = v110;
        sub_1D641D3B4(0, v36);
        if (v90)
        {
          goto LABEL_49;
        }

        goto LABEL_58;
      }

      v55 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v57 = qword_1EDF31ED0;

      if (v57 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD50);
      v36 = v107;
      (*(*(v58 - 8) + 16))(v107, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      v60 = v110;
      sub_1D6397D68(9, v55, v56, v36);
      if (v60)
      {

LABEL_48:

        goto LABEL_49;
      }
    }

    goto LABEL_58;
  }

  if (v46 <= 1)
  {
    if (v46)
    {
      v91 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v114[3] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v114[4] = v91;
      v114[5] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v115 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v92 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v114[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v114[1] = v92;
      v114[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D5D0322C(v114, v111);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD30);
      (*(*(v93 - 8) + 16))(v28, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      sub_1D639714C(2, v114, v28);
      sub_1D5D07BBC(v114);
      goto LABEL_59;
    }

    v61 = *(v41 + 32);
    v112 = *(v41 + 16);
    v113[0] = v61;
    *(v113 + 9) = *(v41 + 41);
    sub_1D6675044(&v112, v111);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v62 = sub_1D725BD1C();
    v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
    (*(*(v62 - 8) + 16))(v32, v63, v62);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v53 = v120;
    sub_1D6396FAC(1, &v112, v32);
    sub_1D66750A0(&v112);
    v64 = v32;
  }

  else
  {
    if (v46 != 2)
    {
      if (v46 == 3)
      {
        v47 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v48 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v49 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v50 = qword_1EDF31EB0;

        if (v50 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
        v28 = v109;
        (*(*(v51 - 8) + 16))(v109, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v53 = v120;
        v54 = v110;
        sub_1D63974A4(4, v47, v48, v49, v28);
        if (v54)
        {

LABEL_32:

          v36 = v28;
          goto LABEL_49;
        }

LABEL_52:

        goto LABEL_59;
      }

      v82 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v118[4] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v118[5] = v82;
      v118[6] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v119 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v83 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v118[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v118[1] = v83;
      v84 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v118[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v118[3] = v84;
      sub_1D5D093E8(v118, v111);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD30);
      v36 = v105;
      (*(*(v85 - 8) + 16))(v105, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v53 = v120;
      v87 = v110;
      sub_1D6397670(5, v118, v36);
      if (v87)
      {
        sub_1D5D09904(v118);
        goto LABEL_49;
      }

      sub_1D5D09904(v118);
LABEL_58:
      v28 = v36;
      goto LABEL_59;
    }

    v71 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v116[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v116[1] = v71;
    v116[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v117 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
    sub_1D66591DC(v116, v111);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v72 = sub_1D725BD1C();
    v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
    v74 = v103;
    (*(*(v72 - 8) + 16))(v103, v73, v72);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v53 = v120;
    sub_1D63972FC(3, v116, v74);
    sub_1D6659238(v116);
    v64 = v74;
  }

LABEL_60:
  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v53, sub_1D5D30DC4);
}

uint64_t sub_1D644DA88(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x65746E4972657375;
    v6 = 0x656C797473;
    if (a1 != 8)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65746F6D6572;
    if (a1 != 5)
    {
      v7 = 0x686374697773;
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
    v1 = 0x7974706D65;
    v2 = 0x6D6574737973;
    v3 = 0x656C646E7562;
    if (a1 != 3)
    {
      v3 = 0x646E616D6D6F63;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x676E69646E6962;
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

uint64_t sub_1D644DC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D644DA88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatAudioTrackBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v34 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatAudioTrackBinding.Command, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatAudioTrackBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v17, v14, v18, &off_1F51F6BF8);
  sub_1D5B58478();
  v21 = *(v20 + 48);
  v22 = *(v20 + 64);
  if (v15)
  {
    v23 = &v6[v22];
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v24 = sub_1D725BD1C();
    v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
    v26 = *(*(v24 - 8) + 16);
    v26(v6, v25, v24);
    if (qword_1EDF31E90 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v24, qword_1EDFFCCE8);
    v26(&v6[v21], v27, v24);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v23 = 0;
    *(v23 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D641D10C(1, v6);
    v28 = v6;
  }

  else
  {
    v29 = &v10[v22];
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD18);
    v32 = *(*(v30 - 8) + 16);
    v32(v10, v31, v30);
    v32(&v10[v21], v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v29 = 0;
    *(v29 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    sub_1D641D10C(0, v10);
    v28 = v10;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D644E060(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B63616279616C70;
  }

  else
  {
    v3 = 2036427888;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B63616279616C70;
  }

  else
  {
    v5 = 2036427888;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1D644E100()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D644E17C()
{
  sub_1D72621EC();
}

uint64_t sub_1D644E1E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D644E268(uint64_t *a1@<X8>)
{
  v2 = 2036427888;
  if (*v1)
  {
    v2 = 0x6B63616279616C70;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatAudioTrackBinding.Text.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
          *(v22 + 16) = &unk_1F5114270;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6675148();
    v28 = 0uLL;
    sub_1D726431C();
    if (v29 > 1u)
    {
      if (v29 == 2)
      {
        (*(v11 + 8))(v15, v5);
        v24 = 4;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D667519C();
        sub_1D726427C();
        v25 = v29;
        if (v29 == 2)
        {
          swift_beginAccess();
          v25 = byte_1EC89B4D8;
        }

        (*(v11 + 8))(v15, v5);
        v24 = v25 & 1;
      }
    }

    else if (v29)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 3;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v24 = 2;
    }

    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatAudioTrackBinding.Text.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatAudioTrackBinding.Text, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatAudioTrackBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v25, v22, v26, &off_1F51F6BF8);
  switch(v23)
  {
    case 2:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCD18);
      (*(*(v33 - 8) + 16))(v18, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D260(0, v18);
      v30 = v18;
      break;
    case 3:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD18);
      (*(*(v31 - 8) + 16))(v14, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D260(1, v14);
      v30 = v14;
      break;
    case 4:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v28 = sub_1D725BD1C();
      v29 = __swift_project_value_buffer(v28, qword_1EDFFCD18);
      (*(*(v28 - 8) + 16))(v10, v29, v28);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D641D260(2, v10);
      v30 = v10;
      break;
    default:
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD18);
      (*(*(v35 - 8) + 16))(v6, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6396E14(3, v23 & 1, v6);
      v30 = v6;
      break;
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D644EBE4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D644ECB0()
{
  sub_1D72621EC();
}

uint64_t sub_1D644ED68()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D644EE30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664170();
  *a1 = result;
  return result;
}

void sub_1D644EE60(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E65727574616566;
  if (*v1 != 2)
  {
    v5 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
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

uint64_t FormatAuxiliaryNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v133 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v138 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v139 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v142 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v151 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v133 - v23;
  sub_1D6676004();
  v149 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5E1BFF0();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF25508, sub_1D5E1BFF0);
  v150 = v28;
  sub_1D5D2EE70(v4, v32, v34, v29, v4, v32, &type metadata for FormatVersions.SydroF, v30, v28, v33, &off_1F51F6C58);
  swift_beginAccess();
  v35 = v2[2];
  v36 = v2[3];
  v37 = qword_1EDF31ED8;

  if (v37 != -1)
  {
    swift_once();
  }

  v38 = sub_1D725BD1C();
  v39 = __swift_project_value_buffer(v38, qword_1EDFFCD68);
  v40 = *(v38 - 8);
  v41 = *(v40 + 16);
  v42 = v40 + 16;
  v41(v24, v39, v38);
  v148 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v43 = sub_1D725895C();
  v44 = (*(*(v43 - 8) + 48))(v8, 1, v43);
  v141 = v2;
  v146 = v38;
  v145 = v39;
  v144 = v41;
  v147 = v42;
  if (v44 != 1)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v61 = v150;
LABEL_7:
    v62 = v151;
    goto LABEL_8;
  }

  *&v143 = v36;
  v140 = v35;
  sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v45 = v149;
  v46 = v150;
  v47 = &v150[*(v149 + 11)];
  v49 = *v47;
  v48 = *(v47 + 1);
  LOBYTE(v160) = 0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v160;
  *(v50 + 40) = v49;
  *(v50 + 48) = v48;
  sub_1D5E1BFB4(0);
  sub_1D5B58B84(&qword_1EDF03548, sub_1D5E1BFB4);

  v51 = sub_1D72647CC();
  LOBYTE(v160) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v160;
  v53 = __swift_project_boxed_opaque_existential_1((v46 + *(v45 + 9)), *(v46 + *(v45 + 9) + 24));
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v133 - 4) = sub_1D5B4AA6C;
  *(&v133 - 3) = 0;
  v131 = sub_1D6676098;
  v132 = v50;
  v57 = v152;
  v59 = sub_1D5D2F7A4(v24, sub_1D615B49C, v58, sub_1D615B4A4, (&v133 - 6));
  *&v152 = v57;
  if (v57)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v46, sub_1D6676004);
  }

  v89 = v59;

  if ((v89 & 1) == 0)
  {
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);

    v61 = v150;
    v2 = v141;
    v38 = v146;
    v39 = v145;
    v41 = v144;
    goto LABEL_7;
  }

  v160 = 0;
  v161 = 0;
  v162 = 0;
  *&v158 = v140;
  *(&v158 + 1) = v143;
  v61 = v150;
  v90 = v152;
  sub_1D72647EC();

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v38 = v146;
  v62 = v151;
  if (!v90)
  {
    *&v152 = 0;
    v2 = v141;
    v39 = v145;
    v41 = v144;
LABEL_8:
    swift_beginAccess();
    v63 = v2[4];
    v41(v62, v39, v38);
    swift_storeEnumTagMultiPayload();
    v64 = v149;
    v65 = (v61 + *(v149 + 11));
    v66 = *v65;
    v67 = v65[1];
    LOBYTE(v158) = 0;
    v68 = swift_allocObject();
    v143 = xmmword_1D728CF30;
    *(v68 + 16) = xmmword_1D728CF30;
    *(v68 + 32) = v158;
    v135 = v66;
    *(v68 + 40) = v66;
    *(v68 + 48) = v67;
    sub_1D5E1BFB4(0);
    v70 = v69;
    v71 = sub_1D5B58B84(&qword_1EDF03548, sub_1D5E1BFB4);
    v140 = v63;

    v136 = v70;
    v137 = v71;
    v72 = sub_1D72647CC();
    LOBYTE(v158) = 0;
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v143;
    *(v73 + 40) = v158;
    v74 = (v61 + *(v64 + 9));
    v75 = __swift_project_boxed_opaque_existential_1(v74, v74[3]);
    v76 = v61;
    v149 = &v133;
    MEMORY[0x1EEE9AC00](v75, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v133 - 4) = sub_1D5B4AA6C;
    *(&v133 - 3) = 0;
    v131 = sub_1D6708988;
    v132 = v68;
    v80 = v151;
    v81 = v152;
    v83 = sub_1D5D2F7A4(v151, sub_1D615B49C, v82, sub_1D615B4A4, (&v133 - 6));
    if (v81)
    {
      sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

      v84 = v61;
    }

    else
    {
      v85 = v83;
      v86 = v140;
      v134 = v74;
      *&v152 = v67;

      if (v85)
      {
        v158 = v143;
        v159 = 0;
        v157 = v86;
        sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
        sub_1D66594A0();
        sub_1D72647EC();
        v87 = v146;
        v88 = v142;

        sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v151, type metadata accessor for FormatVersionRequirement);

        v87 = v146;
        v88 = v142;
      }

      v91 = v76;
      v92 = v141;
      swift_beginAccess();
      v93 = v92[5];
      v144(v88, v145, v87);
      swift_storeEnumTagMultiPayload();
      if (*(v93 + 16))
      {
        LOBYTE(v157) = 0;
        v94 = swift_allocObject();
        v151 = xmmword_1D7297410;
        *(v94 + 16) = xmmword_1D7297410;
        *(v94 + 32) = v157;
        *(v94 + 40) = v135;
        *(v94 + 48) = v152;

        v95 = sub_1D72647CC();
        LOBYTE(v157) = 0;
        v96 = swift_allocObject();
        *(v96 + 16) = v95;
        *(v96 + 24) = v151;
        *(v96 + 40) = v157;
        v97 = __swift_project_boxed_opaque_existential_1(v134, v134[3]);
        MEMORY[0x1EEE9AC00](v97, v98);
        MEMORY[0x1EEE9AC00](v99, v100);
        *(&v133 - 4) = sub_1D5B4AA6C;
        *(&v133 - 3) = 0;
        v131 = sub_1D6708988;
        v132 = v94;
        v102 = sub_1D5D2F7A4(v88, sub_1D615B49C, v101, sub_1D615B4A4, (&v133 - 6));
        v104 = v102;

        v91 = v150;
        if (v104)
        {
          sub_1D5E07B78(v93, v150, 2, 0, 0);
          v103 = v139;
          v88 = v142;
        }

        else
        {
          v88 = v142;
          v103 = v139;
        }

        v92 = v141;
        v87 = v146;
      }

      else
      {
        v103 = v139;
      }

      sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);
      swift_beginAccess();
      v105 = v92[6];
      v144(v103, v145, v87);
      swift_storeEnumTagMultiPayload();
      if (*(v105 + 16))
      {
        LOBYTE(v155) = 0;
        v106 = swift_allocObject();
        v151 = xmmword_1D72BAA60;
        *(v106 + 16) = xmmword_1D72BAA60;
        *(v106 + 32) = v155;
        *(v106 + 40) = v135;
        *(v106 + 48) = v152;

        v107 = sub_1D72647CC();
        LOBYTE(v155) = 0;
        v108 = swift_allocObject();
        *(v108 + 16) = v107;
        *(v108 + 24) = v151;
        *(v108 + 40) = v155;
        v109 = __swift_project_boxed_opaque_existential_1(v134, v134[3]);
        MEMORY[0x1EEE9AC00](v109, v110);
        MEMORY[0x1EEE9AC00](v111, v112);
        *(&v133 - 4) = sub_1D5B4AA6C;
        *(&v133 - 3) = 0;
        v131 = sub_1D6708988;
        v132 = v106;
        v114 = sub_1D5D2F7A4(v103, sub_1D615B49C, v113, sub_1D615B4A4, (&v133 - 6));
        v115 = v114;

        if (v115)
        {
          v155 = v151;
          v156 = 0;
          *&v153 = v105;
          sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
          sub_1D60AD304();
          v91 = v150;
          sub_1D72647EC();

          sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
        }

        else
        {
          sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);

          v91 = v150;
        }

        v92 = v141;
        v87 = v146;
      }

      else
      {
        sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
      }

      v116 = v152;
      swift_beginAccess();
      v117 = *(v92 + 56);
      v118 = v138;
      v144(v138, v145, v87);
      swift_storeEnumTagMultiPayload();
      v119 = v135;
      v120 = v134;
      if ((v117 & 1) == 0)
      {
        LOBYTE(v153) = 0;
        v121 = swift_allocObject();
        v152 = xmmword_1D72BAA70;
        *(v121 + 16) = xmmword_1D72BAA70;
        *(v121 + 32) = v153;
        *(v121 + 40) = v119;
        *(v121 + 48) = v116;

        v122 = sub_1D72647CC();
        LOBYTE(v153) = 0;
        v123 = swift_allocObject();
        *(v123 + 16) = v122;
        *(v123 + 24) = v152;
        *(v123 + 40) = v153;
        v124 = __swift_project_boxed_opaque_existential_1(v120, v120[3]);
        MEMORY[0x1EEE9AC00](v124, v125);
        MEMORY[0x1EEE9AC00](v126, v127);
        *(&v133 - 4) = sub_1D5B4AA6C;
        *(&v133 - 3) = 0;
        v131 = sub_1D6708988;
        v132 = v121;
        v129 = sub_1D5D2F7A4(v118, sub_1D615B49C, v128, sub_1D615B4A4, (&v133 - 6));
        v130 = v129;

        if (v130)
        {
          v153 = v152;
          v154 = 0;
          v163 = 0;
          sub_1D72647EC();
        }
      }

      sub_1D5D2CFE8(v118, type metadata accessor for FormatVersionRequirement);
      v84 = v91;
    }

    return sub_1D5D2CFE8(v84, sub_1D6676004);
  }

  v84 = v61;
  return sub_1D5D2CFE8(v84, sub_1D6676004);
}

uint64_t sub_1D6450560()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  v4 = 0x73776F726874;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6572646C696863;
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

uint64_t sub_1D6450618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66799A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6450650(uint64_t a1)
{
  v2 = sub_1D5E1C0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D645068C(uint64_t a1)
{
  v2 = sub_1D5E1C0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPath.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D6676284();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6676318();
  sub_1D5B58B84(&qword_1EDF0C600, sub_1D6676318);
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

      v19 = sub_1D6628490(0x6E656E6F706D6F63, 0xEA00000000007374);
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

  sub_1D5C34D84(0, &qword_1EDF04CD0, &type metadata for FormatBezierPathComponent, MEMORY[0x1E69E62F8]);
  sub_1D6676498();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPath.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6676588();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D6676318();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF0C600, sub_1D6676318);
  sub_1D5D2EE70(&type metadata for FormatBezierPath, v16, v18, v13, &type metadata for FormatBezierPath, v16, &type metadata for FormatVersions.StarSky, v14, v11, v17, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD50);
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
  v41[2] = v41;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v42;
  *(v24 + 40) = v23;
  *(v24 + 48) = v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v41[-4] = sub_1D5B4AA6C;
  v41[-3] = 0;
  v39 = sub_1D670898C;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D667661C();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF037C8, sub_1D667661C);
  swift_retain_n();
  v41[1] = v29;
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
  v39 = sub_1D66766B0;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF04CD0, &type metadata for FormatBezierPathComponent, MEMORY[0x1E69E62F8]);
    sub_1D667672C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D6676588);
}

uint64_t sub_1D6450F38()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6E656E6F706D6F63;
  }
}

uint64_t sub_1D6450F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374;
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

uint64_t sub_1D6451064(uint64_t a1)
{
  v2 = sub_1D66763F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64510A0(uint64_t a1)
{
  v2 = sub_1D66763F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPathArcComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  sub_1D667681C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66768B0();
  sub_1D5B58B84(&qword_1EC8866F8, sub_1D66768B0);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v7;
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
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

      v21 = sub_1D6619044();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v35 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8DC6C();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v18 = v37;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v39 = xmmword_1D728CF30;
  v40 = 0;
  sub_1D5C35368();
  sub_1D726431C();
  v34 = v18;
  v24 = v37;
  v39 = xmmword_1D7297410;
  v40 = 0;
  sub_1D726431C();
  v33 = v24;
  v25 = v37;
  v39 = xmmword_1D72BAA60;
  v40 = 0;
  sub_1D726431C();
  v32 = v25;
  v26 = v37;
  v31 = xmmword_1D72BAA70;
  v39 = xmmword_1D72BAA70;
  v40 = 0;
  v27 = sub_1D726434C();
  v28 = v35;
  if (v27)
  {
    v37 = v31;
    v38 = 0;
    sub_1D726431C();
    (*(v28 + 8))(v14, v6);
    v29 = v41;
  }

  else
  {
    (*(v35 + 8))(v14, v6);
    v29 = 1;
  }

  *v11 = v18;
  v30 = v32;
  *(v11 + 16) = v33;
  *(v11 + 24) = v30;
  *(v11 + 32) = v26;
  *(v11 + 40) = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathArcComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v121 = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v123 = v118 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v125 = v118 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = v118 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v118 - v17;
  sub_1D6676A30();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = *v1;
  v24 = *(v1 + 3);
  v126 = *(v1 + 2);
  v124 = v24;
  v122 = *(v1 + 4);
  v143 = *(v1 + 40);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D66768B0();
  v28 = v27;
  v29 = sub_1D5B58B84(&qword_1EC8866F8, sub_1D66768B0);
  sub_1D5D2EE70(&type metadata for FormatBezierPathArcComponent, v28, v30, v25, &type metadata for FormatBezierPathArcComponent, v28, &type metadata for FormatVersions.StarSky, v26, v23, v29, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v31 = sub_1D725BD1C();
  v32 = __swift_project_value_buffer(v31, qword_1EDFFCD50);
  v33 = *(v31 - 8);
  v34 = *(v33 + 16);
  v132 = v32;
  v133 = v31;
  v130 = v33 + 16;
  v131 = v34;
  (v34)(v18);
  v129 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v141 = v138;
  v139 = 0uLL;
  v140 = 0;
  v35 = &v23[*(v20 + 44)];
  v36 = *v35;
  v37 = *(v35 + 1);
  v142 = 0;
  v38 = swift_allocObject();
  v136 = v118;
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v142;
  *(v38 + 40) = v36;
  *(v38 + 48) = v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v118[-4] = sub_1D5B4AA6C;
  v118[-3] = 0;
  v116 = sub_1D6708990;
  v117 = v40;
  v142 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v142;
  v128 = v36;
  *(v41 + 40) = v36;
  *(v41 + 48) = v37;
  sub_1D6676AC4();
  v43 = v42;
  v44 = sub_1D5B58B84(&qword_1EC886710, sub_1D6676AC4);
  swift_retain_n();
  v134 = v44;
  v135 = v43;
  v45 = sub_1D72647CC();
  v142 = 0;
  v46 = swift_allocObject();
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 16) = v45;
  *(v46 + 40) = v142;
  v47 = *(v20 + 36);
  v48 = v18;
  v49 = &v23[v47];
  *&v138 = v23;
  v50 = __swift_project_boxed_opaque_existential_1(&v23[v47], *&v23[v47 + 24]);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v118[-4] = sub_1D615B4A4;
  v118[-3] = &v118[-6];
  v116 = sub_1D6708990;
  v117 = v41;
  v54 = v137;
  sub_1D5D2BC70(v48, sub_1D615B49C, v55, sub_1D615B4A4, &v118[-6]);
  if (!v54)
  {
    v119 = v49;
    v120 = v37;

    sub_1D6676B58();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v59 = v127;
    v131(v127, v132, v133);
    swift_storeEnumTagMultiPayload();
    *&v141 = v126;
    v137 = xmmword_1D728CF30;
    v139 = xmmword_1D728CF30;
    v140 = 0;
    v142 = 0;
    v60 = swift_allocObject();
    v136 = v118;
    *(v60 + 16) = v137;
    *(v60 + 32) = v142;
    v61 = v128;
    v62 = v120;
    *(v60 + 40) = v128;
    *(v60 + 48) = v62;
    MEMORY[0x1EEE9AC00](v60, v63);
    v118[-4] = sub_1D5B4AA6C;
    v118[-3] = 0;
    v116 = sub_1D6708990;
    v117 = v64;
    v142 = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = v137;
    *(v65 + 32) = v142;
    *(v65 + 40) = v61;
    *(v65 + 48) = v62;
    swift_retain_n();
    v66 = sub_1D72647CC();
    v142 = 0;
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v137;
    *(v67 + 40) = v142;
    v68 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    v118[-4] = sub_1D615B4A4;
    v118[-3] = &v118[-6];
    sub_1D5D2BC70(v59, sub_1D615B49C, v72, sub_1D615B4A4, &v118[-6]);

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v74 = v73;
    v75 = sub_1D66582DC();
    sub_1D72647EC();
    v118[1] = v75;
    v126 = v74;
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);

    v131(v125, v132, v133);
    swift_storeEnumTagMultiPayload();
    *&v141 = v124;
    v137 = xmmword_1D7297410;
    v139 = xmmword_1D7297410;
    v140 = 0;
    v142 = 0;
    v76 = swift_allocObject();
    v136 = v118;
    *(v76 + 16) = v137;
    *(v76 + 32) = v142;
    v77 = v128;
    v78 = v120;
    *(v76 + 40) = v128;
    *(v76 + 48) = v78;
    MEMORY[0x1EEE9AC00](v76, v79);
    v118[-4] = sub_1D5B4AA6C;
    v118[-3] = 0;
    v116 = sub_1D6708990;
    v117 = v80;
    v142 = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = v137;
    *(v81 + 32) = v142;
    *(v81 + 40) = v77;
    *(v81 + 48) = v78;
    swift_retain_n();
    v82 = sub_1D72647CC();
    v142 = 0;
    v83 = swift_allocObject();
    *(v83 + 16) = v82;
    *(v83 + 24) = v137;
    *(v83 + 40) = v142;
    v84 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
    MEMORY[0x1EEE9AC00](v84, v85);
    MEMORY[0x1EEE9AC00](v86, v87);
    v118[-4] = sub_1D615B4A4;
    v118[-3] = &v118[-6];
    sub_1D5D2BC70(v125, sub_1D615B49C, v88, sub_1D615B4A4, &v118[-6]);

    sub_1D72647EC();
    sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);

    v89 = v123;
    v131(v123, v132, v133);
    swift_storeEnumTagMultiPayload();
    *&v141 = v122;
    v137 = xmmword_1D72BAA60;
    v139 = xmmword_1D72BAA60;
    v140 = 0;
    v142 = 0;
    v90 = swift_allocObject();
    v136 = v118;
    *(v90 + 16) = v137;
    *(v90 + 32) = v142;
    v91 = v128;
    v92 = v120;
    *(v90 + 40) = v128;
    *(v90 + 48) = v92;
    MEMORY[0x1EEE9AC00](v90, v93);
    v118[-4] = sub_1D5B4AA6C;
    v118[-3] = 0;
    v116 = sub_1D6708990;
    v117 = v94;
    v142 = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v137;
    *(v95 + 32) = v142;
    *(v95 + 40) = v91;
    *(v95 + 48) = v92;
    swift_retain_n();
    v96 = sub_1D72647CC();
    v142 = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v137;
    *(v97 + 40) = v142;
    v98 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
    MEMORY[0x1EEE9AC00](v98, v99);
    MEMORY[0x1EEE9AC00](v100, v101);
    v118[-4] = sub_1D615B4A4;
    v118[-3] = &v118[-6];
    v102 = v89;
    v116 = sub_1D6708990;
    v117 = v95;
    sub_1D5D2BC70(v89, sub_1D615B49C, v103, sub_1D615B4A4, &v118[-6]);
    v104 = v133;

    v105 = v138;
    sub_1D72647EC();
    sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);

    v106 = v121;
    v131(v121, v132, v104);
    swift_storeEnumTagMultiPayload();
    if ((v143 & 1) == 0)
    {
      LOBYTE(v139) = 0;
      v108 = swift_allocObject();
      v137 = xmmword_1D72BAA70;
      *(v108 + 16) = xmmword_1D72BAA70;
      *(v108 + 32) = v139;
      *(v108 + 40) = v128;
      *(v108 + 48) = v120;

      v109 = sub_1D72647CC();
      LOBYTE(v139) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = v137;
      *(v110 + 40) = v139;
      v111 = __swift_project_boxed_opaque_existential_1(v119, *(v119 + 3));
      MEMORY[0x1EEE9AC00](v111, v112);
      MEMORY[0x1EEE9AC00](v113, v114);
      v118[-4] = sub_1D5B4AA6C;
      v118[-3] = 0;
      v116 = sub_1D6676BAC;
      v117 = v108;
      LOBYTE(v109) = sub_1D5D2F7A4(v106, sub_1D615B49C, v115, sub_1D615B4A4, &v118[-6]);

      if (v109)
      {
        v139 = v137;
        v140 = 0;
        LOBYTE(v141) = 0;
        sub_1D72647EC();
        v107 = v121;
        goto LABEL_9;
      }

      v106 = v121;
    }

    v107 = v106;
LABEL_9:
    sub_1D5D2CFE8(v107, type metadata accessor for FormatVersionRequirement);
    v57 = v105;
    return sub_1D5D2CFE8(v57, sub_1D6676A30);
  }

  v56 = v138;
  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v57 = v56;
  return sub_1D5D2CFE8(v57, sub_1D6676A30);
}

uint64_t sub_1D64528E4()
{
  v1 = *v0;
  v2 = 0x7265746E6563;
  v3 = 0x656C676E41646E65;
  v4 = 0x7369776B636F6C63;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x737569646172;
  if (v1 != 1)
  {
    v5 = 0x676E417472617473;
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

uint64_t sub_1D6452998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6679BB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64529D0(uint64_t a1)
{
  v2 = sub_1D6676988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6452A0C(uint64_t a1)
{
  v2 = sub_1D6676988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPathComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v33;
    v14 = v9;
    if (v12)
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
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5114360;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v6 + 8))(v14, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D6676C28();
    v28 = 0uLL;
    sub_1D726431C();
    v23 = v32;
    if (v32 > 2u)
    {
      if (v32 == 3)
      {
        v32 = xmmword_1D7279980;
        sub_1D6676CD0();
        sub_1D726431C();
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        v25 = 0;
        v26 = v28;
        v27 = v29;
      }

      else
      {
        if (v32 != 4)
        {
          (*(v6 + 8))(v14, v5);
          v24 = 0;
          v25 = 0;
          v26 = 0uLL;
          goto LABEL_21;
        }

        v32 = xmmword_1D7279980;
        sub_1D6676C7C();
        sub_1D726431C();
        (*(v6 + 8))(v14, v5);
        v26 = v28;
        v27 = v29;
        v24 = v30;
        v25 = v31;
      }
    }

    else
    {
      if (!v32 || v32 == 1)
      {
        v32 = xmmword_1D7279980;
        sub_1D5C8DC6C();
        sub_1D726431C();
        (*(v6 + 8))(v14, v5);
        v24 = 0;
        v25 = 0;
        v26 = v28;
LABEL_21:
        v27 = 0uLL;
        goto LABEL_22;
      }

      v32 = xmmword_1D7279980;
      sub_1D6676D24();
      sub_1D726431C();
      (*(v6 + 8))(v14, v5);
      v26 = v28;
      v27 = v29;
      v24 = v30;
      v25 = v31;
    }

LABEL_22:
    *v13 = v26;
    *(v13 + 16) = v27;
    *(v13 + 32) = v24;
    *(v13 + 40) = v25;
    *(v13 + 48) = v23;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v10);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v51 = &v51 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 8);
  *&v57 = *v1;
  *(&v57 + 1) = v28;
  v29 = *(v1 + 24);
  v55 = *(v1 + 16);
  v56 = v29;
  v30 = *(v1 + 32);
  v54 = *(v1 + 40);
  v31 = *(v1 + 48);
  v33 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v34 = sub_1D5C30408();
  v68 = v27;
  sub_1D5D2EE70(&type metadata for FormatBezierPathComponent, &type metadata for FormatCodingKeys, v35, v33, &type metadata for FormatBezierPathComponent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v32, v27, v34, &off_1F51F6CD8);
  if (v31 > 2)
  {
    if (v31 != 3)
    {
      v38 = v68;
      if (v31 == 4)
      {
        v63 = v57;
        v64 = v55;
        v65 = v56;
        v66 = v30;
        v67 = v54 & 1;
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v39 = sub_1D725BD1C();
        v40 = __swift_project_value_buffer(v39, qword_1EDFFCD50);
        v19 = v52;
        (*(*(v39 - 8) + 16))(v52, v40, v39);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6391414(4, &v63, v19);
      }

      else
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCD50);
        v19 = v53;
        (*(*(v48 - 8) + 16))(v53, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D641B800(5, v19);
      }

      goto LABEL_24;
    }

    v38 = v68;
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD50);
    (*(*(v44 - 8) + 16))(v12, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639127C(3, v57, *(&v57 + 1), v55, v56, v12);
    v43 = v12;
  }

  else
  {
    if (v31)
    {
      if (v31 == 1)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v36 = sub_1D725BD1C();
        v37 = __swift_project_value_buffer(v36, qword_1EDFFCD50);
        (*(*(v36 - 8) + 16))(v19, v37, v36);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v38 = v68;
        sub_1D6390F48(1, v57, *(&v57 + 1), v19);
      }

      else
      {
        v58 = v57;
        v59 = v55;
        v60 = v56;
        v61 = v30;
        v62 = v54;
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v46 = sub_1D725BD1C();
        v47 = __swift_project_value_buffer(v46, qword_1EDFFCD50);
        v19 = v51;
        (*(*(v46 - 8) + 16))(v51, v47, v46);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v38 = v68;
        sub_1D63910DC(2, &v58, v19);
      }

LABEL_24:
      v43 = v19;
      goto LABEL_25;
    }

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v41 = sub_1D725BD1C();
    v42 = __swift_project_value_buffer(v41, qword_1EDFFCD50);
    (*(*(v41 - 8) + 16))(v23, v42, v41);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38 = v68;
    sub_1D6390F48(0, v57, *(&v57 + 1), v23);
    v43 = v23;
  }

LABEL_25:
  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v38, sub_1D5D30DC4);
}

uint64_t sub_1D64535E0()
{
  sub_1D72621EC();
}

uint64_t sub_1D64536B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666441C();
  *a1 = result;
  return result;
}

void sub_1D64536E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1702260589;
  v5 = 0xE900000000000065;
  v6 = 0x7672754364617571;
  v7 = 0xE300000000000000;
  v8 = 6517345;
  if (v2 != 4)
  {
    v8 = 0x65736F6C63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701734764;
  if (v2 != 1)
  {
    v10 = 0x6576727563;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t FormatBezierPathCurveComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D6676D78();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6676E0C();
  sub_1D5B58B84(&qword_1EC886758, sub_1D6676E0C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v7;
  v11 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v30;
    if (v16)
    {
      v18 = (v15 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6619208();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v14, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8DC6C();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v19 = v33;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  sub_1D726431C();
  v28 = *(&v33 + 1);
  v29 = v33;
  v31 = xmmword_1D7297410;
  v32 = 0;
  sub_1D726431C();
  (*(v30 + 8))(v10, v6);
  v25 = v33;
  *v11 = v19;
  v26 = v28;
  *(v11 + 16) = v29;
  *(v11 + 24) = v26;
  *(v11 + 32) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathCurveComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v87 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v96 = (&v84 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v84 - v11;
  sub_1D6676F8C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[1];
  v99 = *v1;
  v88 = v18;
  v86 = v1[2];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D6676E0C();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC886758, sub_1D6676E0C);
  sub_1D5D2EE70(&type metadata for FormatBezierPathCurveComponent, v22, v24, v19, &type metadata for FormatBezierPathCurveComponent, v22, &type metadata for FormatVersions.StarSky, v20, v17, v23, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD50);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v92 = v26;
  v93 = v25;
  v90 = v27 + 16;
  v91 = v28;
  (v28)(v12);
  v89 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v103 = v99;
  v101 = 0uLL;
  v102 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v104 = 0;
  v32 = swift_allocObject();
  *&v99 = &v84;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v104;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v84 - 4) = sub_1D5B4AA6C;
  *(&v84 - 3) = 0;
  v82 = sub_1D6708994;
  v83 = v34;
  v104 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v104;
  v94 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D6677020();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC886770, sub_1D6677020);
  v95 = v31;
  swift_retain_n();
  v97 = v38;
  v98 = v37;
  v39 = sub_1D72647CC();
  v104 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v104;
  v41 = &v17[*(v14 + 36)];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v84 - 4) = sub_1D615B4A4;
  *(&v84 - 3) = (&v84 - 6);
  v82 = sub_1D66770B4;
  v83 = v35;
  v46 = v100;
  sub_1D5D2BC70(v12, sub_1D615B49C, v47, sub_1D615B4A4, (&v84 - 6));
  if (v46)
  {
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v48 = v17;
  }

  else
  {
    v85 = v41;

    v49 = sub_1D6676B58();
    sub_1D72647EC();
    v48 = v17;
    v84 = v49;
    sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

    v50 = v96;
    v91(v96, v92, v93);
    swift_storeEnumTagMultiPayload();
    v103 = v88;
    v100 = xmmword_1D728CF30;
    v101 = xmmword_1D728CF30;
    v102 = 0;
    v104 = 0;
    v51 = swift_allocObject();
    *&v88 = &v84;
    *(v51 + 16) = v100;
    *(v51 + 32) = v104;
    v53 = v94;
    v52 = v95;
    *(v51 + 40) = v94;
    *(v51 + 48) = v52;
    MEMORY[0x1EEE9AC00](v51, v54);
    *&v99 = 0;
    *(&v84 - 4) = sub_1D5B4AA6C;
    *(&v84 - 3) = 0;
    v82 = sub_1D6708994;
    v83 = v55;
    v104 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v100;
    *(v56 + 32) = v104;
    *(v56 + 40) = v53;
    *(v56 + 48) = v52;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v104 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v100;
    *(v58 + 40) = v104;
    v59 = v85;
    v60 = __swift_project_boxed_opaque_existential_1(v85, *(v85 + 3));
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v84 - 4) = sub_1D615B4A4;
    *(&v84 - 3) = (&v84 - 6);
    v82 = sub_1D6708994;
    v83 = v56;
    v64 = v99;
    sub_1D5D2BC70(v50, sub_1D615B49C, v65, sub_1D615B4A4, (&v84 - 6));
    if (v64 || (, , sub_1D72647EC(), sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement), , v50 = v87, v91(v87, v92, v93), swift_storeEnumTagMultiPayload(), v103 = v86, v100 = xmmword_1D7297410, v101 = xmmword_1D7297410, v102 = 0, v104 = 0, v67 = swift_allocObject(), v96 = &v84, *(v67 + 16) = v100, *(v67 + 32) = v104, v68 = v59, v70 = v94, v69 = v95, *(v67 + 40) = v94, *(v67 + 48) = v69, MEMORY[0x1EEE9AC00](v67, v71), *&v99 = 0, *(&v84 - 4) = sub_1D5B4AA6C, *(&v84 - 3) = 0, v82 = sub_1D6708994, v83 = v72, v104 = 0, v73 = swift_allocObject(), *(v73 + 16) = v100, *(v73 + 32) = v104, *(v73 + 40) = v70, *(v73 + 48) = v69, swift_retain_n(), v74 = sub_1D72647CC(), v104 = 0, v75 = swift_allocObject(), *(v75 + 16) = v74, *(v75 + 24) = v100, *(v75 + 40) = v104, v76 = __swift_project_boxed_opaque_existential_1(v68, *(v68 + 3)), MEMORY[0x1EEE9AC00](v76, v77), MEMORY[0x1EEE9AC00](v78, v79), *(&v84 - 4) = sub_1D615B4A4, *(&v84 - 3) = (&v84 - 6), v82 = sub_1D6708994, v83 = v73, v80 = v99, sub_1D5D2BC70(v50, sub_1D615B49C, v81, sub_1D615B4A4, (&v84 - 6)), v80))
    {
      sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D72647EC();
      sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    }
  }

  return sub_1D5D2CFE8(v48, sub_1D6676F8C);
}

uint64_t sub_1D64547BC()
{
  v1 = 0x746E696F70;
  v2 = 0x506C6F72746E6F63;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x506C6F72746E6F63;
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

uint64_t sub_1D6454844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6679DB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D645487C(uint64_t a1)
{
  v2 = sub_1D6676EE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64548B8(uint64_t a1)
{
  v2 = sub_1D6676EE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBezierPathQuadCurveComponent.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D6677130();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66771C4();
  sub_1D5B58B84(&qword_1EC8867A0, sub_1D66771C4);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v11 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  if (v13)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    v16 = v26;
    if (v15)
    {
      v17 = (v14 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6627E68(0x746E696F70, 0xE500000000000000, 0x506C6F72746E6F63, 0xEC000000746E696FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v16 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8DC6C();
  v27 = 0uLL;
  v28 = 0;
  sub_1D726431C();
  v18 = v29;
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v10, v6);
  v24 = v29;
  *v11 = v18;
  v11[1] = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBezierPathQuadCurveComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D6677344();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[1];
  v80 = *v1;
  v72 = v15;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66771C4();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8867A0, sub_1D66771C4);
  sub_1D5D2EE70(&type metadata for FormatBezierPathQuadCurveComponent, v19, v21, v16, &type metadata for FormatBezierPathQuadCurveComponent, v19, &type metadata for FormatVersions.StarSky, v17, v14, v20, &off_1F51F6CD8);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD50);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v74 = v23;
  v75 = v22;
  v70 = v25;
  v69 = v24 + 16;
  (v25)(v9);
  v68 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v80;
  v81 = 0uLL;
  v82 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v78 = &v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v80 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708998;
  v65 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66773D8();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8867B8, sub_1D66773D8);
  swift_retain_n();
  v76 = v35;
  v77 = v34;
  v36 = sub_1D72647CC();
  v84 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v84;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v43 = v79;
  v44 = v80;
  v64 = sub_1D667746C;
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

    v48 = sub_1D6676B58();
    sub_1D72647EC();
    v66 = v48;
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v50 = v73;
    v70(v73, v47, v46);
    swift_storeEnumTagMultiPayload();
    v83 = v72;
    v80 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    v84 = 0;
    v51 = swift_allocObject();
    v78 = &v66;
    *(v51 + 16) = v80;
    *(v51 + 32) = v84;
    v52 = v71;
    v53 = v79;
    *(v51 + 40) = v71;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708998;
    v65 = v55;
    v84 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v80;
    *(v56 + 32) = v84;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v84 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v80;
    *(v58 + 40) = v84;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708998;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D6677344);
}

uint64_t sub_1D6455514()
{
  v1 = 0x506C6F72746E6F63;
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
    return 0x746E696F70;
  }
}

uint64_t sub_1D645556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6679F24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D64555A4(uint64_t a1)
{
  v2 = sub_1D667729C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D64555E0(uint64_t a1)
{
  v2 = sub_1D667729C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindExpression.encode(to:)(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v118 - v5;
  v7 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v121 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v124 = v118 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v130 = v118 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v118 - v18;
  sub_1D66774E8();
  v132 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[3];
  *&v133 = v1[2];
  v122 = v1[4];
  v123 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D5CB78D8();
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF25418, sub_1D5CB78D8);
  sub_1D5D2EE70(&type metadata for FormatBindExpression, v30, v32, v27, &type metadata for FormatBindExpression, v30, &type metadata for FormatVersions.JazzkonC, v28, v23, v31, &off_1F51F6C78);
  v33 = qword_1EDF31EB0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_1D725BD1C();
  v35 = __swift_project_value_buffer(v34, qword_1EDFFCD30);
  v36 = *(v34 - 8);
  v37 = *(v36 + 16);
  v38 = v36 + 16;
  v37(v19, v35, v34);
  v131 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v120 = v24;
  sub_1D725892C();
  v39 = sub_1D725895C();
  v40 = (*(*(v39 - 8) + 48))(v6, 1, v39);
  v128 = v37;
  v129 = v34;
  v127 = v35;
  if (v40 != 1)
  {
    sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_7;
  }

  *&v125 = v38;
  sub_1D5D35558(v6, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v41 = v132;
  v42 = &v23[*(v132 + 11)];
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v136) = 0;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = v136;
  *(v45 + 40) = v43;
  *(v45 + 48) = v44;
  sub_1D5E1BF78(0);
  v47 = v46;
  sub_1D5B58B84(&qword_1EDF03458, sub_1D5E1BF78);

  v119 = v47;
  v48 = sub_1D72647CC();
  LOBYTE(v136) = 0;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v48;
  *(v49 + 40) = v136;
  v50 = __swift_project_boxed_opaque_existential_1(&v23[*(v41 + 9)], *&v23[*(v41 + 9) + 24]);
  MEMORY[0x1EEE9AC00](v50, v51);
  MEMORY[0x1EEE9AC00](v52, v53);
  v118[-4] = sub_1D5B4AA6C;
  v118[-3] = 0;
  v116 = sub_1D667757C;
  v117 = v45;
  v54 = v138;
  v56 = sub_1D5D2F7A4(v19, sub_1D615B49C, v55, sub_1D615B4A4, &v118[-6]);
  if (!v54)
  {
    v85 = v56;

    if (v85)
    {
      v136 = 0uLL;
      v137 = 0;
      v134 = v120;
      v135 = v25;
      sub_1D72647EC();

      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);
      v37 = v128;
      v34 = v129;
      v38 = v125;
      v35 = v127;
      v138 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

      v138 = 0;
      v37 = v128;
      v34 = v129;
      v35 = v127;
      v38 = v125;
    }

LABEL_7:
    v58 = v130;
    v37(v130, v35, v34);
    swift_storeEnumTagMultiPayload();
    v59 = v132;
    v60 = &v23[*(v132 + 11)];
    v61 = v23;
    v63 = *v60;
    v62 = *(v60 + 1);
    LOBYTE(v136) = 0;
    v64 = swift_allocObject();
    v125 = xmmword_1D728CF30;
    *(v64 + 16) = xmmword_1D728CF30;
    *(v64 + 32) = v136;
    v119 = v63;
    *(v64 + 40) = v63;
    *(v64 + 48) = v62;
    v65 = v62;
    sub_1D5E1BF78(0);
    v67 = v66;
    v68 = sub_1D5B58B84(&qword_1EDF03458, sub_1D5E1BF78);

    v120 = v67;
    v118[1] = v68;
    v69 = sub_1D72647CC();
    LOBYTE(v136) = 0;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v125;
    *(v70 + 40) = v136;
    v71 = *(v59 + 9);
    v126 = v61;
    v72 = (v61 + v71);
    v73 = __swift_project_boxed_opaque_existential_1((v61 + v71), *(v61 + v71 + 24));
    MEMORY[0x1EEE9AC00](v73, v74);
    MEMORY[0x1EEE9AC00](v75, v76);
    v118[-4] = sub_1D5B4AA6C;
    v118[-3] = 0;
    v116 = sub_1D670899C;
    v117 = v64;
    v77 = v138;
    v79 = sub_1D5D2F7A4(v58, sub_1D615B49C, v78, sub_1D615B4A4, &v118[-6]);
    if (v77)
    {
      sub_1D5D2CFE8(v58, type metadata accessor for FormatVersionRequirement);

      v80 = v126;
      return sub_1D5D2CFE8(v80, sub_1D66774E8);
    }

    v82 = v79;
    v132 = v72;
    v83 = v119;
    *&v125 = v38;

    if (v82)
    {
      v80 = v126;
      sub_1D5E078D8(v133, v126, 1, 0, 0);
      v84 = v129;
      v86 = v65;
      v138 = 0;
      v87 = v130;
    }

    else
    {
      v138 = 0;
      v80 = v126;
      v84 = v129;
      v87 = v130;
      v86 = v65;
    }

    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

    v88 = v124;
    v128(v124, v127, v84);
    swift_storeEnumTagMultiPayload();
    if (v123 == 1)
    {
      v89 = v88;
    }

    else
    {
      LOBYTE(v136) = 0;
      v102 = swift_allocObject();
      v133 = xmmword_1D7297410;
      *(v102 + 16) = xmmword_1D7297410;
      *(v102 + 32) = v136;
      *(v102 + 40) = v83;
      *(v102 + 48) = v86;

      v103 = sub_1D72647CC();
      LOBYTE(v136) = 0;
      v104 = swift_allocObject();
      *(v104 + 16) = v103;
      *(v104 + 24) = v133;
      *(v104 + 40) = v136;
      v105 = __swift_project_boxed_opaque_existential_1(v132, v132[3]);
      v131 = v118;
      MEMORY[0x1EEE9AC00](v105, v106);
      MEMORY[0x1EEE9AC00](v107, v108);
      v118[-4] = sub_1D5B4AA6C;
      v118[-3] = 0;
      v116 = sub_1D670899C;
      v117 = v102;
      v109 = v138;
      v111 = sub_1D5D2F7A4(v88, sub_1D615B49C, v110, sub_1D615B4A4, &v118[-6]);
      v138 = v109;
      if (v109)
      {
        sub_1D5D2CFE8(v88, type metadata accessor for FormatVersionRequirement);

        v57 = v126;
        return sub_1D5D2CFE8(v57, sub_1D66774E8);
      }

      v112 = v111;

      if ((v112 & 1) == 0)
      {
        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        v80 = v126;
        v90 = v122;
        v84 = v129;
        v86 = v65;
LABEL_19:
        v91 = v121;
        v128(v121, v127, v84);
        swift_storeEnumTagMultiPayload();
        if (*(v90 + 16))
        {
          LOBYTE(v136) = 0;
          v92 = swift_allocObject();
          v133 = xmmword_1D72BAA60;
          *(v92 + 16) = xmmword_1D72BAA60;
          *(v92 + 32) = v136;
          *(v92 + 40) = v83;
          *(v92 + 48) = v86;

          v93 = sub_1D72647CC();
          LOBYTE(v136) = 0;
          v94 = swift_allocObject();
          *(v94 + 16) = v93;
          *(v94 + 24) = v133;
          *(v94 + 40) = v136;
          v95 = __swift_project_boxed_opaque_existential_1(v132, v132[3]);
          MEMORY[0x1EEE9AC00](v95, v96);
          MEMORY[0x1EEE9AC00](v97, v98);
          v118[-4] = sub_1D5B4AA6C;
          v118[-3] = 0;
          v116 = sub_1D670899C;
          v117 = v92;
          v99 = v138;
          v101 = sub_1D5D2F7A4(v91, sub_1D615B49C, v100, sub_1D615B4A4, &v118[-6]);
          if (v99)
          {
            sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

            v57 = v80;
          }

          else
          {
            v114 = v101;

            if (v114)
            {
              v136 = v133;
              v137 = 0;
              v134 = v122;
              sub_1D5C34D84(0, &qword_1EDF1B2E8, &type metadata for FormatItemTrait, MEMORY[0x1E69E62F8]);
              sub_1D66775F8();
              v115 = v126;
              sub_1D72647EC();

              sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
              v57 = v115;
            }

            else
            {
              sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

              v57 = v126;
            }
          }
        }

        else
        {
          sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
          v57 = v80;
        }

        return sub_1D5D2CFE8(v57, sub_1D66774E8);
      }

      v136 = v133;
      v137 = 0;
      v134 = v123;
      v80 = v126;
      v113 = v138;
      sub_1D72647EC();
      v84 = v129;
      if (v113)
      {
        sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);
        return sub_1D5D2CFE8(v80, sub_1D66774E8);
      }

      v86 = v65;
      v138 = 0;
      v89 = v124;
    }

    sub_1D5D2CFE8(v89, type metadata accessor for FormatVersionRequirement);
    v90 = v122;
    goto LABEL_19;
  }

  sub_1D5D2CFE8(v19, type metadata accessor for FormatVersionRequirement);

  v57 = v23;
  return sub_1D5D2CFE8(v57, sub_1D66774E8);
}

uint64_t sub_1D64566EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6456724(uint64_t a1)
{
  v2 = sub_1D5CB79B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6456760(uint64_t a1)
{
  v2 = sub_1D5CB79B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingBoolExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1D6677694();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 4);
  v82 = *(v1 + 10);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C785D0();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24F78, sub_1D5C785D0);
  sub_1D5D2EE70(&type metadata for FormatBindingBoolExpression, v20, v22, v17, &type metadata for FormatBindingBoolExpression, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
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
  v62 = sub_1D67089A0;
  v63 = v33;
  v81 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v81;
  v65 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D6677728();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EDF02EF8, sub_1D6677728);
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
  v62 = sub_1D67089A0;
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

    sub_1D66777BC();
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
      v62 = sub_1D6677810;
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

  return sub_1D5D2CFE8(v50, sub_1D6677694);
}

uint64_t sub_1D6456F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A1E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6456FCC(uint64_t a1)
{
  v2 = sub_1D5C982E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6457008(uint64_t a1)
{
  v2 = sub_1D5C982E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6457044()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7470697263736564;
  v4 = 0x746E65746E6F63;
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
    v2 = 1701667182;
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

uint64_t sub_1D64570DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A2FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6457114(uint64_t a1)
{
  v2 = sub_1D66632F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6457150(uint64_t a1)
{
  v2 = sub_1D66632F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingDateTimeExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  sub_1D667788C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6677920();
  sub_1D5B58B84(&qword_1EDF24E68, sub_1D6677920);
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v32;
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

      v20 = sub_1D6627E68(0x656D695465746164, 0xE800000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D60344C0();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726431C();
  v17 = v28;
  v25 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v25;
    v29 = 0;
    sub_1D5F2E958();
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    v24 = v26;
    v23 = v27;
    sub_1D620757C(v26, v27);
    sub_1D6207594(v24, v23);
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v23 = 0;
    v24 = 13;
  }

  *v13 = v17;
  v13[1] = v24;
  v13[2] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingDateTimeExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D6677AA0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v70 = v1[2];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6677920();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24E68, sub_1D6677920);
  sub_1D5D2EE70(&type metadata for FormatBindingDateTimeExpression, v19, v21, v16, &type metadata for FormatBindingDateTimeExpression, v19, &type metadata for FormatVersions.Dawnburst, v17, v14, v20, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCCA8);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v68 = v23;
  v69 = v22;
  v66[2] = v24 + 16;
  v67 = v25;
  (v25)(v9);
  v66[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v78 = v15;
  v80 = 0uLL;
  v81 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v82 = 0;
  v29 = swift_allocObject();
  *&v76 = v66;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v82;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D67089A4;
  v65 = v31;
  v82 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v82;
  v66[0] = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6677B34();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02DA8, sub_1D6677B34);
  swift_retain_n();
  v73 = v34;
  v74 = v35;
  v36 = sub_1D72647CC();
  v82 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v82;
  v38 = *(v11 + 36);
  v75 = v14;
  v39 = &v14[v38];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v64 = sub_1D67089A4;
  v65 = v32;
  v44 = v77;
  sub_1D5D2BC70(v9, sub_1D615B49C, v45, sub_1D615B4A4, &v66[-6]);
  if (v44)
  {
    v46 = v75;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v48 = v46;
  }

  else
  {
    v77 = v39;

    sub_1D6034514();
    v47 = v75;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v50 = v71;
    v67(v71, v68, v69);
    swift_storeEnumTagMultiPayload();
    v51 = v72;
    if (v72 == 13)
    {
      sub_1D620757C(v72, v70);
      v52 = v47;
    }

    else
    {
      LOBYTE(v80) = 0;
      v53 = swift_allocObject();
      v76 = xmmword_1D728CF30;
      *(v53 + 16) = xmmword_1D728CF30;
      *(v53 + 32) = v80;
      *(v53 + 40) = v66[0];
      *(v53 + 48) = v28;

      v54 = v70;
      sub_1D620757C(v51, v70);
      v52 = v47;
      v55 = sub_1D72647CC();
      LOBYTE(v80) = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v76;
      *(v56 + 40) = v80;
      v57 = __swift_project_boxed_opaque_existential_1(v77, *(v77 + 3));
      MEMORY[0x1EEE9AC00](v57, v58);
      MEMORY[0x1EEE9AC00](v59, v60);
      v66[-4] = sub_1D5B4AA6C;
      v66[-3] = 0;
      v64 = sub_1D6677BC8;
      v65 = v53;
      LOBYTE(v55) = sub_1D5D2F7A4(v50, sub_1D615B49C, v61, sub_1D615B4A4, &v66[-6]);

      if (v55)
      {
        v80 = v76;
        v81 = 0;
        v78 = v72;
        v79 = v54;
        sub_1D5F2E9AC();
        sub_1D72647EC();
        v62 = v78;
        v63 = v79;
      }

      else
      {
        v62 = v72;
        v63 = v54;
      }

      sub_1D6207594(v62, v63);
    }

    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
    v48 = v52;
  }

  return sub_1D5D2CFE8(v48, sub_1D6677AA0);
}

uint64_t sub_1D6457D60()
{
  v1 = 0x6369676F6CLL;
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
    return 0x656D695465746164;
  }
}

uint64_t sub_1D6457DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6457DE8(uint64_t a1)
{
  v2 = sub_1D66779F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6457E24(uint64_t a1)
{
  v2 = sub_1D66779F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6457E60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66649C8();
  *a1 = result;
  return result;
}

uint64_t sub_1D6457F40()
{
  v1 = 0x656D695465746164;
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
    return 0x726F74617265706FLL;
  }
}

uint64_t sub_1D6457F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D667A5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6457FCC(uint64_t a1)
{
  v2 = sub_1D666E0EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6458008(uint64_t a1)
{
  v2 = sub_1D666E0EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v91 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v89 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v88 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v90 = &v87 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v87 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v103 = &v87 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v102 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v101 = &v87 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v100 = &v87 - v29;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *v1;
  v109 = v1[1];
  v105 = *(v1 + 2) | (*(v1 + 3) << 32);
  v108 = *(v1 + 4);
  v107 = v1[10];
  v104 = *(v1 + 11) | (v1[15] << 32);
  v34 = *(v1 + 3);
  v106 = *(v1 + 2);
  v92 = v34;
  v97 = *(v1 + 4);
  v99 = v1[40];
  v98 = v1[41];
  v96 = *(v1 + 23);
  v95 = *(v1 + 42);
  v35 = *(v1 + 3);
  v94 = *(v1 + 4);
  v93 = v35;
  v36 = *(v1 + 10);
  v37 = *(v1 + 11);
  v38 = *(v1 + 12);
  v39 = v1[106];
  v40 = *(v1 + 52);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v43 = sub_1D5C30408();
  v110 = v33;
  sub_1D5D2EE70(&type metadata for FormatBindingExpression, &type metadata for FormatCodingKeys, v44, v41, &type metadata for FormatBindingExpression, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v42, v33, v43, &off_1F51F6C78);
  v45 = (v39 >> 1) & 8 | (v40 >> 13);
  if (v45 > 3)
  {
    if (v45 <= 5)
    {
      v46 = v110;
      if (v45 == 4)
      {
        if (qword_1EDF31ED0 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD50);
        v71 = v87;
        (*(*(v69 - 8) + 16))(v87, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D639661C(4, v111 & 1, v71);
        v72 = v71;
        goto LABEL_44;
      }

      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD68);
      v50 = v90;
      (*(*(v85 - 8) + 16))(v90, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63967B4(5, v111 | (v109 << 8) | (v105 << 16), v108 | (v107 << 16) | (v104 << 24), v106, v92, v50);
    }

    else
    {
      v46 = v110;
      if (v45 == 6)
      {
        v73 = v111 | (v109 << 8) | (v105 << 16);
        v74 = v108 | (v107 << 16) | (v104 << 24);
        if (qword_1EDF31E80 != -1)
        {
          swift_once();
        }

        v75 = sub_1D725BD1C();
        v76 = __swift_project_value_buffer(v75, qword_1EDFFCCA8);
        v50 = v88;
        (*(*(v75 - 8) + 16))(v88, v76, v75);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6396950(6, v73, v74, v106, v50);
      }

      else if (v45 == 7)
      {
        v47 = v108 | (v107 << 16) | (v104 << 24);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCE80);
        v50 = v89;
        (*(*(v48 - 8) + 16))(v89, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6396AE8(7, v111, v47, v106, v50);
      }

      else
      {
        if (qword_1EDF31F30 != -1)
        {
          swift_once();
        }

        v83 = sub_1D725BD1C();
        v84 = __swift_project_value_buffer(v83, qword_1EDFFCE20);
        v50 = v91;
        (*(*(v83 - 8) + 16))(v91, v84, v83);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6396C80(8, v111, v50);
      }
    }

    v72 = v50;
LABEL_44:
    sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
    v82 = v46;
    return sub_1D5D2CFE8(v82, sub_1D5D30DC4);
  }

  v51 = v38;
  v52 = v37;
  v53 = v36;
  v54 = v102;
  v55 = v100;
  v56 = v103;
  v57 = v101;
  if (v45 > 1)
  {
    if (v45 == 2)
    {
      v64 = v110;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v65 = sub_1D725BD1C();
      v66 = __swift_project_value_buffer(v65, qword_1EDFFCD30);
      (*(*(v65 - 8) + 16))(v54, v66, v65);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      if (v107)
      {
        v67 = 0x10000;
      }

      else
      {
        v67 = 0;
      }

      sub_1D63962DC(2, v111 | (v109 << 8) | (v105 << 16), v67 | v108, v54);
      v68 = v54;
    }

    else
    {
      v64 = v110;
      if (qword_1EDF31EF0 != -1)
      {
        swift_once();
      }

      v79 = sub_1D725BD1C();
      v80 = __swift_project_value_buffer(v79, qword_1EDFFCDB0);
      (*(*(v79 - 8) + 16))(v56, v80, v79);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      if (v109)
      {
        v81 = 256;
      }

      else
      {
        v81 = 0;
      }

      sub_1D639647C(3, v81 & 0xFFFE | v111 & 1, v56);
      v68 = v56;
    }

    goto LABEL_36;
  }

  if (v45)
  {
    LOBYTE(v118) = v111;
    BYTE1(v118) = v109;
    *(&v118 + 2) = v105;
    WORD3(v118) = WORD2(v105);
    WORD4(v118) = v108;
    BYTE10(v118) = v107;
    *(&v118 + 11) = v104;
    HIBYTE(v118) = BYTE4(v104);
    v119 = v106;
    v120 = v92;
    v121 = v97;
    v122 = v99;
    v123 = v98;
    v124 = v95;
    v125 = (v95 | (v96 << 32)) >> 32;
    v126 = v93;
    v127 = v94;
    v128 = v53;
    v129 = v52;
    v130 = v51;
    v131 = v40 & 0x1FFF;
    v132 = ((v40 | (v39 << 16)) & 0xEF1FFF) >> 16;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v77 = sub_1D725BD1C();
    v78 = __swift_project_value_buffer(v77, qword_1EDFFCD30);
    (*(*(v77 - 8) + 16))(v57, v78, v77);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v64 = v110;
    sub_1D639612C(1, &v118, v57);
    v68 = v57;
LABEL_36:
    sub_1D5D2CFE8(v68, type metadata accessor for FormatVersionRequirement);
    v82 = v64;
    return sub_1D5D2CFE8(v82, sub_1D5D30DC4);
  }

  LOBYTE(v112) = v111;
  BYTE1(v112) = v109;
  *(&v112 + 2) = v105;
  WORD3(v112) = WORD2(v105);
  WORD4(v112) = v108;
  BYTE10(v112) = v107;
  *(&v112 + 11) = v104;
  HIBYTE(v112) = BYTE4(v104);
  v113 = v106;
  v114 = v92;
  v115 = v97;
  v116 = v99;
  v117 = v98 & 1;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1D725BD1C();
  v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
  v60 = v55;
  (*(*(v58 - 8) + 16))(v55, v59, v58);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v61 = v55;
  v62 = v110;
  sub_1D6395F8C(0, &v112, v61);
  sub_1D5D2CFE8(v60, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v62, sub_1D5D30DC4);
}

uint64_t sub_1D6458E24(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6567616D69;
    v6 = 1819242338;
    if (a1 != 2)
    {
      v6 = 0x4D6465726579616CLL;
    }

    if (a1)
    {
      v5 = 1954047348;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D695465746164;
    v2 = 0x74616F6C66;
    if (a1 != 7)
    {
      v2 = 0x73726F736E6F7073;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6572616873;
    if (a1 != 4)
    {
      v3 = 7107189;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D6458F70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6458E24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatBindingFloatExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D6677DE8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6677E7C();
  sub_1D5B58B84(&qword_1EDF24F18, sub_1D6677E7C);
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

  v13 = v32;
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

      v22 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D6677FFC();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726431C();
  v17 = v28;
  v25 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v25;
    v29 = 0;
    sub_1D5F2EA7C();
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v19 = v26;
    v18 = v27;
    sub_1D62B50D4(v26);
    sub_1D62B5230(v19);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 0;
    v19 = 13;
  }

  *v13 = v17;
  *(v13 + 8) = v19;
  *(v13 + 16) = v18;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFloatExpression.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v66 - v8;
  sub_1D6678050();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 2);
  v72 = *(v1 + 1);
  v70 = v16;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D6677E7C();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24F18, sub_1D6677E7C);
  sub_1D5D2EE70(&type metadata for FormatBindingFloatExpression, v20, v22, v17, &type metadata for FormatBindingFloatExpression, v20, &type metadata for FormatVersions.DawnburstF, v18, v14, v21, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCE80);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v68 = v24;
  v69 = v23;
  v66[2] = v25 + 16;
  v67 = v26;
  (v26)(v9);
  v66[1] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v78) = v15;
  v80 = 0uLL;
  v81 = 0;
  v27 = &v14[*(v11 + 44)];
  v28 = *v27;
  v29 = *(v27 + 1);
  v82 = 0;
  v30 = swift_allocObject();
  *&v76 = v66;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v82;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v66[-4] = sub_1D5B4AA6C;
  v66[-3] = 0;
  v64 = sub_1D67088A4;
  v65 = v32;
  v82 = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v82;
  v66[0] = v28;
  *(v33 + 40) = v28;
  *(v33 + 48) = v29;
  sub_1D66780E4();
  v35 = v34;
  v36 = sub_1D5B58B84(&qword_1EDF02E78, sub_1D66780E4);
  swift_retain_n();
  v73 = v35;
  v74 = v36;
  v37 = sub_1D72647CC();
  v82 = 0;
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 16) = v37;
  *(v38 + 40) = v82;
  v39 = *(v11 + 36);
  v75 = v14;
  v40 = &v14[v39];
  v41 = __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v66[-4] = sub_1D615B4A4;
  v66[-3] = &v66[-6];
  v64 = sub_1D67088A4;
  v65 = v33;
  v45 = v77;
  sub_1D5D2BC70(v9, sub_1D615B49C, v46, sub_1D615B4A4, &v66[-6]);
  if (v45)
  {
    v47 = v75;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v49 = v47;
  }

  else
  {
    v77 = v40;

    sub_1D6678178();
    v48 = v75;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v51 = v71;
    v67(v71, v68, v69);
    swift_storeEnumTagMultiPayload();
    v52 = v72;
    if (v72 == 13)
    {
      sub_1D62B50D4(v72);
      v53 = v48;
    }

    else
    {
      LOBYTE(v80) = 0;
      v54 = swift_allocObject();
      v76 = xmmword_1D728CF30;
      *(v54 + 16) = xmmword_1D728CF30;
      *(v54 + 32) = v80;
      *(v54 + 40) = v66[0];
      *(v54 + 48) = v29;

      v55 = v70;
      sub_1D62B50D4(v52);
      v53 = v48;
      v56 = sub_1D72647CC();
      LOBYTE(v80) = 0;
      v57 = swift_allocObject();
      *(v57 + 16) = v56;
      *(v57 + 24) = v76;
      *(v57 + 40) = v80;
      v58 = __swift_project_boxed_opaque_existential_1(v77, *(v77 + 3));
      MEMORY[0x1EEE9AC00](v58, v59);
      MEMORY[0x1EEE9AC00](v60, v61);
      v66[-4] = sub_1D5B4AA6C;
      v66[-3] = 0;
      v64 = sub_1D67088A4;
      v65 = v54;
      LOBYTE(v56) = sub_1D5D2F7A4(v51, sub_1D615B49C, v62, sub_1D615B4A4, &v66[-6]);

      if (v56)
      {
        v80 = v76;
        v81 = 0;
        v78 = v72;
        v79 = v55;
        sub_1D5F2EAD0();
        sub_1D72647EC();
        v63 = v78;
      }

      else
      {
        v63 = v72;
      }

      sub_1D62B5230(v63);
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);
    v49 = v53;
  }

  return sub_1D5D2CFE8(v49, sub_1D6678050);
}

uint64_t sub_1D6459BC4(uint64_t a1)
{
  v2 = sub_1D6677F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6459C00(uint64_t a1)
{
  v2 = sub_1D6677F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatBindingFloatExpressionLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v28 = a2;
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
    v12 = v28;
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
          *(v21 + 16) = &unk_1F5114400;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D6678230();
    v26 = 0;
    v27 = 0;
    sub_1D726431C();
    if (v25)
    {
      if (v25 == 1)
      {
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = 12;
      }

      else
      {
        (*(v11 + 8))(v10, v6);
        v23 = 0;
        v24 = 13;
      }
    }

    else
    {
      v25 = xmmword_1D7279980;
      sub_1D6678284();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v24 = v26;
      v23 = v27;
    }

    *v12 = v24;
    v12[1] = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFloatExpressionLogic.encode(to:)(void *a1)
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
  v20 = *(v1 + 1);
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v23 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatBindingFloatExpressionLogic, &type metadata for FormatCodingKeys, v24, v22, &type metadata for FormatBindingFloatExpressionLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.DawnburstF, v21, v18, v23, &off_1F51F6BD8);
  if (v19 == 12)
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
    sub_1D64196EC(1, v10);
    v27 = v10;
  }

  else if (v19 == 13)
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCE80);
    (*(*(v25 - 8) + 16))(v6, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D64196EC(2, v6);
    v27 = v6;
  }

  else
  {
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCE80);
    (*(*(v30 - 8) + 16))(v14, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6387870(0, v19, v20, v14);
    v27 = v14;
  }

  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D645A3A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7974706D457369;
  if (v2 != 1)
  {
    v5 = 0x7974706D45746F6ELL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x657261706D6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x7974706D457369;
  if (*a2 != 1)
  {
    v8 = 0x7974706D45746F6ELL;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657261706D6F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D645A4A4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645A548()
{
  sub_1D72621EC();
}

uint64_t sub_1D645A5D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D645A678@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D666484C();
  *a1 = result;
  return result;
}

uint64_t FormatBindingFloatExpressionLogicCompare.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66782D8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D667836C();
  sub_1D5B58B84(&qword_1EDF24D48, sub_1D667836C);
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

      v20 = sub_1D6627E68(0x726F74617265706FLL, 0xE800000000000000, 0x65756C6176, 0xE500000000000000);
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

  sub_1D5C5813C();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C35218();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatBindingFloatExpressionLogicCompare.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D66784EC();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = *(v1 + 1);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D667836C();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24D48, sub_1D667836C);
  sub_1D5D2EE70(&type metadata for FormatBindingFloatExpressionLogicCompare, v19, v21, v16, &type metadata for FormatBindingFloatExpressionLogicCompare, v19, &type metadata for FormatVersions.DawnburstF, v17, v14, v20, &off_1F51F6BD8);
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE80);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v68 = v24 + 16;
  v69 = v25;
  (v25)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v80) = v15;
  v81 = 0uLL;
  v82 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v83 = 0;
  v29 = swift_allocObject();
  v77 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v83;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D67089A8;
  v64 = v31;
  v83 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v83;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D6678580();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02C28, sub_1D6678580);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
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
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v78;
  v44 = v79;
  v63 = sub_1D6678614;
  v64 = v32;
  sub_1D5D2BC70(v79, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v66 = v38;
    v47 = v73;
    v46 = v74;
    v78 = v28;

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v49 = v72;
    v69(v72, v47, v46);
    swift_storeEnumTagMultiPayload();
    v80 = v71;
    v79 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    v83 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v83;
    v51 = v70;
    v52 = v78;
    *(v50 + 40) = v70;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D67089A8;
    v64 = v54;
    v83 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v79;
    *(v55 + 32) = v83;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v83 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v79;
    *(v57 + 40) = v83;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D67089A8;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D5C3526C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66784EC);
}

uint64_t sub_1D645B304()
{
  v1 = 0x65756C6176;
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
    return 0x726F74617265706FLL;
  }
}