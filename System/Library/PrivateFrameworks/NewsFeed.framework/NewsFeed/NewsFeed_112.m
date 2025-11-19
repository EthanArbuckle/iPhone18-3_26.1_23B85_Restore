uint64_t sub_1D65B990C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C6DD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65B9944(uint64_t a1)
{
  v2 = sub_1D5C55D64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B9980(uint64_t a1)
{
  v2 = sub_1D5C55D64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65B99BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
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

uint64_t sub_1D65B9AA8(uint64_t a1)
{
  v2 = sub_1D5C5D29C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65B9AE4(uint64_t a1)
{
  v2 = sub_1D5C5D29C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSwitchValue.encode(to:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  v13 = *(a2 + 16);
  v45 = *(a2 + 24);
  v46 = v13;
  v14 = _s10CodingKeysOMa_42();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v49 = v14;
  *(&v49 + 1) = WitnessTable;
  v50 = v16;
  v51 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  v19 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v47 = type metadata accessor for VersionedKeyedEncodingContainer();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v20);
  v22 = &v39 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v25 = __swift_project_boxed_opaque_existential_1(a1, v23);
  v40 = a2;
  sub_1D5D2EE70(a2, v18, v25, v23, a2, v18, &type metadata for FormatVersions.JazzkonC, v24, v22, v19, &off_1F51F6C78);
  v41 = v3;
  v52 = *v3;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  v26 = qword_1EDF31EB0;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(*(v27 - 8) + 16);
  v39 = v28;
  v29(v12);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatSwitchValue.CaseValue();
  v30 = sub_1D72627FC();
  v48 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v32 = v43;
  sub_1D5D38930(&v52, &v49, v12, sub_1D5B4AA6C, 0, v47, v30, v31);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v32)
  {
    return (*(v44 + 8))(v22, v47);
  }

  v34 = *(v40 + 36);
  v49 = xmmword_1D728CF30;
  LOBYTE(v50) = 0;
  v35 = v42;
  (v29)(v42, v39, v27);
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for FormatSwitchValue.DefaultValue();
  v37 = swift_getWitnessTable();
  v38 = v47;
  sub_1D5D38930(v41 + v34, &v49, v35, sub_1D5B4AA6C, 0, v47, v36, v37);
  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return (*(v44 + 8))(v22, v38);
}

uint64_t sub_1D65BA02C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D65BA140@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_42);
  *a2 = result;
  return result;
}

uint64_t sub_1D65BA184(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65BA1D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65BA22C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37 - v11;
  v13 = *(a2 + 24);
  v39 = *(a2 + 16);
  v37 = v13;
  v14 = _s10CodingKeysOMa_308();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v45 = v14;
  *(&v45 + 1) = WitnessTable;
  v46 = v16;
  v47 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  v19 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v20 = type metadata accessor for VersionedKeyedEncodingContainer();
  v43 = *(v20 - 8);
  v44 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v37 - v22;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v38 = a2;
  sub_1D5D2EE70(a2, v18, v26, v24, a2, v18, &type metadata for FormatVersions.JazzkonC, v25, v23, v19, &off_1F51F6C78);
  v40 = v3;
  v48 = *v3;
  v45 = 0uLL;
  LOBYTE(v46) = 0;
  v27 = qword_1EDF31EB0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = sub_1D725BD1C();
  v29 = __swift_project_value_buffer(v28, qword_1EDFFCD30);
  v30 = *(*(v28 - 8) + 16);
  v30(v12, v29, v28);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v31 = sub_1D66596F4();
  v32 = v42;
  sub_1D5D38930(&v48, &v45, v12, sub_1D5B4AA6C, 0, v44, &type metadata for FormatExpression, v31);
  sub_1D5D2CFE8(v12, type metadata accessor for FormatVersionRequirement);

  if (v32)
  {
    return (*(v43 + 8))(v23, v44);
  }

  v34 = *(v38 + 36);
  v45 = xmmword_1D728CF30;
  LOBYTE(v46) = 0;
  v35 = v41;
  v30(v41, v29, v28);
  swift_storeEnumTagMultiPayload();
  v36 = v44;
  sub_1D5D38930(v40 + v34, &v45, v35, sub_1D5B4AA6C, 0, v44, v39, *(v37 + 16));
  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return (*(v43 + 8))(v23, v36);
}

uint64_t sub_1D65BA6B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL;
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

uint64_t sub_1D65BA7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65BA6B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BA804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_308);
  *a2 = result;
  return result;
}

uint64_t sub_1D65BA848(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65BA89C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSwitchValue.DefaultValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v26 = *(a2 + 24);
  v27 = v8;
  v9 = _s10CodingKeysOMa_41();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v29 = v9;
  v30 = WitnessTable;
  v31 = v11;
  v32 = v12;
  v13 = type metadata accessor for FormatCodingKeysContainer();
  v14 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v15 = type metadata accessor for VersionedKeyedEncodingContainer();
  v25 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5D2EE70(a2, v13, v21, v19, a2, v13, &type metadata for FormatVersions.JazzkonC, v20, v18, v14, &off_1F51F6C78);
  v29 = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  (*(*(v22 - 8) + 16))(v7, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D38930(v28, &v29, v7, sub_1D5B4AA6C, 0, v15, v27, *(v26 + 16));
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return (*(v25 + 8))(v18, v15);
}

uint64_t sub_1D65BAC44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DFB88(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_41);
  *a2 = result;
  return result;
}

uint64_t sub_1D65BAC88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65BACDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatSymbolConfig.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v46 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - v19;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v1;
  v48 = *(v1 + 8);
  v49 = v25;
  v26 = *(v1 + 16);
  v27 = *(v1 + 17);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v50 = v24;
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatSymbolConfig, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v29, v24, v30, &off_1F51F6C78);
  if (v27 <= 1)
  {
    if (!v27)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v35 = sub_1D725BD1C();
      v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
      (*(*(v35 - 8) + 16))(v20, v36, v35);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v50;
      sub_1D63A74A8(0, v49, v48, v20);
      goto LABEL_17;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v42 = sub_1D725BD1C();
    v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
    (*(*(v42 - 8) + 16))(v16, v43, v42);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v50;
    sub_1D63A7640(1, v49, v48, v26, v16);
    v39 = v16;
  }

  else
  {
    if (v27 != 2)
    {
      if (v27 == 3)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v32 = sub_1D725BD1C();
        v33 = __swift_project_value_buffer(v32, qword_1EDFFCD30);
        v20 = v46;
        (*(*(v32 - 8) + 16))(v46, v33, v32);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v34 = v50;
        sub_1D63A797C(3, v49, v20);
      }

      else
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v40 = sub_1D725BD1C();
        v41 = __swift_project_value_buffer(v40, qword_1EDFFCD30);
        v20 = v47;
        (*(*(v40 - 8) + 16))(v47, v41, v40);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v34 = v50;
        sub_1D63A7B10(4, v49, v20);
      }

LABEL_17:
      v39 = v20;
      goto LABEL_21;
    }

    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
    (*(*(v37 - 8) + 16))(v12, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v34 = v50;
    sub_1D63A77DC(2, v49, v48, v12);
    v39 = v12;
  }

LABEL_21:
  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v34, sub_1D5D30DC4);
}

uint64_t sub_1D65BB310()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65BB3E0()
{
  sub_1D72621EC();
}

uint64_t sub_1D65BB49C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65BB568(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1953394534;
  v5 = 0xE400000000000000;
  v6 = 1702521203;
  v7 = 0xE600000000000000;
  v8 = 0x746867696577;
  if (v2 != 3)
  {
    v8 = 0x656C616373;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C79745374786574;
    v3 = 0xE900000000000065;
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

uint64_t FormatSymbolConfig.Font.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C3648();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C36DC();
  sub_1D5B58B84(&qword_1EC8874F0, sub_1D66C36DC);
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

      v20 = sub_1D6627E68(1953394534, 0xE400000000000000, 0x656C616373, 0xE500000000000000);
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

  sub_1D5B556F4();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.Font.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v63 - v8;
  sub_1D66C385C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v68 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C36DC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8874F0, sub_1D66C36DC);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Font, v19, v21, v16, &type metadata for FormatSymbolConfig.Font, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v65 = v23;
  v66 = v22;
  v63[1] = v24 + 16;
  v64 = v25;
  v25(v9);
  v63[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v78 = v15;
  v76 = 0uLL;
  v77 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v75 = 0;
  v29 = swift_allocObject();
  v72 = v63;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v75;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v74 = v9;
  v63[-4] = sub_1D5B4AA6C;
  v63[-3] = 0;
  v61 = sub_1D6708BC4;
  v62 = v31;
  v75 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v75;
  v67 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C38F0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887508, sub_1D66C38F0);
  swift_retain_n();
  v70 = v35;
  v71 = v34;
  v36 = sub_1D72647CC();
  v75 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v75;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  v63[-4] = sub_1D615B4A4;
  v63[-3] = &v63[-6];
  v43 = v73;
  v44 = v74;
  v61 = sub_1D6708BC4;
  v62 = v32;
  sub_1D5D2BC70(v74, sub_1D615B49C, v45, sub_1D615B4A4, &v63[-6]);
  if (v43)
  {
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v46 = v14;
  }

  else
  {
    v73 = v38;

    sub_1D5B57BA4();
    v46 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);

    v47 = v69;
    v64(v69, v65, v66);
    swift_storeEnumTagMultiPayload();
    v74 = xmmword_1D728CF30;
    v76 = xmmword_1D728CF30;
    v77 = 0;
    LOBYTE(v78) = 0;
    v48 = swift_allocObject();
    v50 = v48;
    *(v48 + 16) = v74;
    *(v48 + 32) = v78;
    v51 = v67;
    *(v48 + 40) = v67;
    *(v48 + 48) = v28;
    if (v68 == 5)
    {
    }

    else
    {
      v66 = v63;
      LOBYTE(v78) = v68;
      MEMORY[0x1EEE9AC00](v48, v49);
      v63[-4] = sub_1D5B4AA6C;
      v63[-3] = 0;
      v61 = sub_1D6708BC4;
      v62 = v50;
      v75 = 0;
      v53 = swift_allocObject();
      *(v53 + 16) = v74;
      *(v53 + 32) = v75;
      *(v53 + 40) = v51;
      *(v53 + 48) = v28;
      swift_retain_n();
      v72 = v46;
      v54 = sub_1D72647CC();
      v75 = 0;
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      *(v55 + 24) = v74;
      *(v55 + 40) = v75;
      v56 = __swift_project_boxed_opaque_existential_1(v73, *(v73 + 3));
      MEMORY[0x1EEE9AC00](v56, v57);
      MEMORY[0x1EEE9AC00](v58, v59);
      v63[-4] = sub_1D615B4A4;
      v63[-3] = &v63[-6];
      v47 = v69;
      v61 = sub_1D66C3984;
      v62 = v53;
      LOBYTE(v54) = sub_1D5D2F7A4(v69, sub_1D615B49C, v60, sub_1D615B4A4, &v63[-6]);

      if (v54)
      {
        sub_1D66C3A00();
        v46 = v72;
        sub_1D72647EC();
      }

      else
      {
        v46 = v72;
      }
    }

    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v46, sub_1D66C385C);
}

uint64_t sub_1D65BC1E4()
{
  v1 = 0x656C616373;
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
    return 1953394534;
  }
}

uint64_t sub_1D65BC22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C6EF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BC264(uint64_t a1)
{
  v2 = sub_1D66C37B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BC2A0(uint64_t a1)
{
  v2 = sub_1D66C37B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.Scale.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C3A54();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C3AE8();
  sub_1D5B58B84(&qword_1EDF25568, sub_1D66C3AE8);
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

      v20 = sub_1D6627E68(0x656C616373, 0xE500000000000000, 0x746867696577, 0xE600000000000000);
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

  sub_1D5C954A4();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C76094();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.Scale.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v65 - v8;
  sub_1D66C3C68();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v79 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C3AE8();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF25568, sub_1D66C3AE8);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Scale, v19, v21, v16, &type metadata for FormatSymbolConfig.Scale, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v66 = *(v24 + 16);
  v67 = v22;
  v65[1] = v24 + 16;
  v66(v9, v23, v22);
  v65[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v78 = v15;
  v76 = 0uLL;
  v77 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v75 = 0;
  v28 = swift_allocObject();
  v72 = v65;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v75;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v74 = v9;
  v65[-4] = sub_1D5B4AA6C;
  v65[-3] = 0;
  v63 = sub_1D6708BC8;
  v64 = v30;
  v75 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v75;
  v68 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66C3CFC();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF035C8, sub_1D66C3CFC);
  swift_retain_n();
  v70 = v33;
  v71 = v34;
  v35 = sub_1D72647CC();
  v75 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v75;
  v37 = &v14[*(v11 + 36)];
  v38 = __swift_project_boxed_opaque_existential_1(v37, *(v37 + 3));
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v65[-4] = sub_1D615B4A4;
  v65[-3] = &v65[-6];
  v42 = v73;
  v43 = v74;
  v63 = sub_1D6708BC8;
  v64 = v31;
  sub_1D5D2BC70(v74, sub_1D615B49C, v44, sub_1D615B4A4, &v65[-6]);
  if (v42)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v45 = v14;
  }

  else
  {
    v73 = v37;

    sub_1D66C3A00();
    v45 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v46 = v67;
    v47 = __swift_project_value_buffer(v67, qword_1EDFFCD98);
    v48 = v69;
    v66(v69, v47, v46);
    swift_storeEnumTagMultiPayload();
    v74 = xmmword_1D728CF30;
    v76 = xmmword_1D728CF30;
    v77 = 0;
    v78 = 0;
    v49 = swift_allocObject();
    v51 = v49;
    *(v49 + 16) = v74;
    *(v49 + 32) = v78;
    v52 = v68;
    *(v49 + 40) = v68;
    *(v49 + 48) = v27;
    if (v79 == 10)
    {
    }

    else
    {
      v72 = v65;
      v78 = v79;
      MEMORY[0x1EEE9AC00](v49, v50);
      v65[-4] = sub_1D5B4AA6C;
      v65[-3] = 0;
      v63 = sub_1D6708BC8;
      v64 = v51;
      v75 = 0;
      v54 = swift_allocObject();
      *(v54 + 16) = v74;
      *(v54 + 32) = v75;
      *(v54 + 40) = v52;
      *(v54 + 48) = v27;
      swift_retain_n();
      v55 = sub_1D72647CC();
      v75 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v74;
      *(v56 + 40) = v75;
      v57 = __swift_project_boxed_opaque_existential_1(v73, *(v73 + 3));
      MEMORY[0x1EEE9AC00](v57, v58);
      MEMORY[0x1EEE9AC00](v59, v60);
      v65[-4] = sub_1D615B4A4;
      v65[-3] = &v65[-6];
      v48 = v69;
      v63 = sub_1D66C3D90;
      v64 = v54;
      v62 = sub_1D5D2F7A4(v69, sub_1D615B49C, v61, sub_1D615B4A4, &v65[-6]);

      if (v62)
      {
        sub_1D61B9A34();
        v45 = v14;
        sub_1D72647EC();
      }

      else
      {
        v45 = v14;
      }
    }

    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v45, sub_1D66C3C68);
}

uint64_t sub_1D65BCEE4()
{
  v1 = 0x746867696577;
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
    return 0x656C616373;
  }
}

uint64_t sub_1D65BCF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C700C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BCF68(uint64_t a1)
{
  v2 = sub_1D66C3BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BCFA4(uint64_t a1)
{
  v2 = sub_1D66C3BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.Size.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v86 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v88 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v81 - v11;
  sub_1D66C3E0C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v84 = *(v1 + 9);
  v85 = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5C94ECC();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF25578, sub_1D5C94ECC);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Size, v23, v25, v20, &type metadata for FormatSymbolConfig.Size, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v91 = *(v28 + 16);
  v92 = v27;
  v90 = v28 + 16;
  v91(v12);
  v89 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v102 = v18;
  v100 = 0uLL;
  v101 = 0;
  v29 = &v17[*(v14 + 44)];
  v30 = *v29;
  v31 = *(v29 + 1);
  v99 = 0;
  v32 = swift_allocObject();
  v95 = &v81;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v99;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v98 = v12;
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D6708BCC;
  v80 = v34;
  v99 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v99;
  v87 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66C3EA0();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF035D8, sub_1D66C3EA0);
  swift_retain_n();
  v93 = v38;
  v94 = v37;
  v39 = sub_1D72647CC();
  v99 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v99;
  v41 = *(v14 + 36);
  v96 = v17;
  v42 = &v17[v41];
  v43 = __swift_project_boxed_opaque_existential_1(v42, *(v42 + 3));
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v81 - 4) = sub_1D615B4A4;
  *(&v81 - 3) = (&v81 - 6);
  v47 = v97;
  v48 = v98;
  v79 = sub_1D6708BCC;
  v80 = v35;
  sub_1D5D2BC70(v98, sub_1D615B49C, v49, sub_1D615B4A4, (&v81 - 6));
  if (v47)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v50 = v96;
  }

  else
  {
    v82 = v42;
    v97 = v26;
    v83 = v31;

    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D66582DC();
    v50 = v96;
    sub_1D72647EC();
    sub_1D5D2CFE8(v98, type metadata accessor for FormatVersionRequirement);

    v51 = v88;
    (v91)(v88, v92, v97);
    swift_storeEnumTagMultiPayload();
    v98 = xmmword_1D728CF30;
    v100 = xmmword_1D728CF30;
    v101 = 0;
    LOBYTE(v102) = 0;
    v52 = swift_allocObject();
    v54 = v52;
    *(v52 + 16) = v98;
    *(v52 + 32) = v102;
    v55 = v87;
    v56 = v83;
    *(v52 + 40) = v87;
    *(v52 + 48) = v56;
    if (v85 == 10)
    {

      v57 = v86;
    }

    else
    {
      v95 = &v81;
      LOBYTE(v102) = v85;
      MEMORY[0x1EEE9AC00](v52, v53);
      *(&v81 - 4) = sub_1D5B4AA6C;
      *(&v81 - 3) = 0;
      v79 = sub_1D6708BCC;
      v80 = v54;
      v99 = 0;
      v58 = swift_allocObject();
      *(v58 + 16) = v98;
      *(v58 + 32) = v99;
      *(v58 + 40) = v55;
      *(v58 + 48) = v56;
      swift_retain_n();
      v59 = sub_1D72647CC();
      v99 = 0;
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v98;
      *(v60 + 40) = v99;
      v61 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
      MEMORY[0x1EEE9AC00](v61, v62);
      MEMORY[0x1EEE9AC00](v63, v64);
      *(&v81 - 4) = sub_1D615B4A4;
      *(&v81 - 3) = (&v81 - 6);
      v79 = sub_1D6708BCC;
      v80 = v58;
      sub_1D5D2F7A4(v51, sub_1D615B49C, v65, sub_1D615B4A4, (&v81 - 6));

      v57 = v86;
      sub_1D61B9A34();
      sub_1D72647EC();
      v51 = v88;
      v56 = v83;
      v55 = v87;
    }

    sub_1D5D2CFE8(v51, type metadata accessor for FormatVersionRequirement);

    (v91)(v57, v92, v97);
    swift_storeEnumTagMultiPayload();
    v98 = xmmword_1D7297410;
    v100 = xmmword_1D7297410;
    v101 = 0;
    LOBYTE(v102) = 0;
    v66 = swift_allocObject();
    v68 = v66;
    *(v66 + 16) = v98;
    *(v66 + 32) = v102;
    *(v66 + 40) = v55;
    *(v66 + 48) = v56;
    if (v84 == 5)
    {
    }

    else
    {
      v97 = &v81;
      LOBYTE(v102) = v84;
      MEMORY[0x1EEE9AC00](v66, v67);
      *(&v81 - 4) = sub_1D5B4AA6C;
      *(&v81 - 3) = 0;
      v79 = sub_1D6708BCC;
      v80 = v68;
      v99 = 0;
      v70 = swift_allocObject();
      *(v70 + 16) = v98;
      *(v70 + 32) = v99;
      *(v70 + 40) = v55;
      *(v70 + 48) = v56;
      swift_retain_n();
      v71 = sub_1D72647CC();
      v99 = 0;
      v72 = swift_allocObject();
      *(v72 + 16) = v71;
      *(v72 + 24) = v98;
      *(v72 + 40) = v99;
      v73 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
      MEMORY[0x1EEE9AC00](v73, v74);
      MEMORY[0x1EEE9AC00](v75, v76);
      *(&v81 - 4) = sub_1D615B4A4;
      *(&v81 - 3) = (&v81 - 6);
      v57 = v86;
      v79 = sub_1D66C3F34;
      v80 = v70;
      v78 = sub_1D5D2F7A4(v86, sub_1D615B49C, v77, sub_1D615B4A4, (&v81 - 6));

      if (v78)
      {
        sub_1D66C3A00();
        sub_1D72647EC();
      }
    }

    sub_1D5D2CFE8(v57, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v50, sub_1D66C3E0C);
}

uint64_t sub_1D65BDC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C711C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BDC60(uint64_t a1)
{
  v2 = sub_1D5C95344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BDC9C(uint64_t a1)
{
  v2 = sub_1D5C95344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.TextStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66C3FB0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C4044();
  sub_1D5B58B84(&qword_1EDF0C5A0, sub_1D66C4044);
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

      v22 = sub_1D6624B98();
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

  sub_1D5CA9754();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v19 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 16) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.TextStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v97 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v103 = v94 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v94 - v11;
  sub_1D66C41C4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v98 = *(v1 + 1);
  v114 = v1[16];
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66C4044();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EDF0C5A0, sub_1D66C4044);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.TextStyle, v22, v24, v19, &type metadata for FormatSymbolConfig.TextStyle, v22, &type metadata for FormatVersions.JazzkonC, v20, v17, v23, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD30);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v96 = v26;
  v101 = v27 + 16;
  v102 = v28;
  (v28)(v12);
  v100 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v110) = v18;
  v111 = 0uLL;
  v112 = 0;
  v29 = &v17[*(v14 + 44)];
  v31 = *v29;
  v30 = *(v29 + 1);
  v113 = 0;
  v32 = swift_allocObject();
  v106 = v94;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v113;
  *(v32 + 40) = v31;
  *(v32 + 48) = v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v109 = v12;
  v94[-4] = sub_1D5B4AA6C;
  v94[-3] = 0;
  v92 = sub_1D6708BD0;
  v93 = v34;
  v113 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v113;
  v99 = v31;
  *(v35 + 40) = v31;
  *(v35 + 48) = v30;
  sub_1D66C4258();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EDF035B8, sub_1D66C4258);
  swift_retain_n();
  v104 = v37;
  v105 = v38;
  v39 = sub_1D72647CC();
  v113 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v113;
  v41 = &v17[*(v14 + 36)];
  v108 = v17;
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v94[-4] = sub_1D615B4A4;
  v94[-3] = &v94[-6];
  v46 = v109;
  v92 = sub_1D6708BD0;
  v93 = v35;
  v47 = v107;
  sub_1D5D2BC70(v109, sub_1D615B49C, v48, sub_1D615B4A4, &v94[-6]);
  if (!v47)
  {
    v95 = v41;
    v107 = v25;
    v50 = v30;

    sub_1D668B4C0();
    sub_1D72647EC();
    v106 = 0;
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v52 = v107;
    v53 = __swift_project_value_buffer(v107, qword_1EDFFCD50);
    v54 = v103;
    v102(v103, v53, v52);
    swift_storeEnumTagMultiPayload();
    v109 = xmmword_1D728CF30;
    v111 = xmmword_1D728CF30;
    v112 = 0;
    LOBYTE(v110) = 0;
    v55 = swift_allocObject();
    v57 = v55;
    *(v55 + 16) = v109;
    *(v55 + 32) = v110;
    v59 = v98;
    v58 = v99;
    *(v55 + 40) = v99;
    *(v55 + 48) = v50;
    v60 = v50;
    if (v59)
    {
      v94[1] = v94;
      v110 = v59;
      MEMORY[0x1EEE9AC00](v55, v56);
      v94[-4] = sub_1D5B4AA6C;
      v94[-3] = 0;
      v92 = sub_1D6708BD0;
      v93 = v57;
      v113 = 0;
      v61 = swift_allocObject();
      *(v61 + 16) = v109;
      *(v61 + 32) = v113;
      *(v61 + 40) = v58;
      *(v61 + 48) = v50;
      swift_retain_n();

      v62 = sub_1D72647CC();
      v113 = 0;
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = v109;
      *(v63 + 40) = v113;
      v64 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
      MEMORY[0x1EEE9AC00](v64, v65);
      MEMORY[0x1EEE9AC00](v66, v67);
      v94[-4] = sub_1D615B4A4;
      v94[-3] = &v94[-6];
      v92 = sub_1D6708BD0;
      v93 = v61;
      v68 = v106;
      v70 = sub_1D5D2F7A4(v54, sub_1D615B49C, v69, sub_1D615B4A4, &v94[-6]);
      v71 = v68;
      if (v68)
      {

        v72 = v108;
        v73 = v103;

        sub_1D5D2CFE8(v73, type metadata accessor for FormatVersionRequirement);
        goto LABEL_22;
      }

      v74 = v70;

      if (v74)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v72 = v108;
        sub_1D72647EC();
        v75 = v103;
        v52 = v107;
        v76 = v96;
        v60 = v50;

        sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
        v91 = v76;
        v58 = v99;
LABEL_17:
        v77 = v97;
        v102(v97, v91, v52);
        swift_storeEnumTagMultiPayload();
        v109 = xmmword_1D7297410;
        v111 = xmmword_1D7297410;
        v112 = 0;
        LOBYTE(v110) = 0;
        v78 = swift_allocObject();
        v80 = v78;
        *(v78 + 16) = v109;
        *(v78 + 32) = v110;
        *(v78 + 40) = v58;
        *(v78 + 48) = v60;
        if (v114 == 5)
        {
        }

        else
        {
          v107 = v94;
          LOBYTE(v110) = v114;
          MEMORY[0x1EEE9AC00](v78, v79);
          v94[-4] = sub_1D5B4AA6C;
          v94[-3] = 0;
          v92 = sub_1D6708BD0;
          v93 = v80;
          v113 = 0;
          v81 = swift_allocObject();
          *(v81 + 16) = v109;
          *(v81 + 32) = v113;
          *(v81 + 40) = v58;
          *(v81 + 48) = v60;
          swift_retain_n();
          v82 = sub_1D72647CC();
          v113 = 0;
          v83 = swift_allocObject();
          *(v83 + 16) = v82;
          *(v83 + 24) = v109;
          *(v83 + 40) = v113;
          v84 = __swift_project_boxed_opaque_existential_1(v95, *(v95 + 3));
          MEMORY[0x1EEE9AC00](v84, v85);
          MEMORY[0x1EEE9AC00](v86, v87);
          v94[-4] = sub_1D615B4A4;
          v94[-3] = &v94[-6];
          v92 = sub_1D66C42EC;
          v93 = v81;
          v89 = sub_1D5D2F7A4(v77, sub_1D615B49C, v88, sub_1D615B4A4, &v94[-6]);
          if (v71)
          {
            sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

            v72 = v108;
            goto LABEL_22;
          }

          v90 = v89;

          if (v90)
          {
            sub_1D66C3A00();
            v72 = v108;
            sub_1D72647EC();
          }

          else
          {
            v72 = v108;
          }

          v77 = v97;
        }

        sub_1D5D2CFE8(v77, type metadata accessor for FormatVersionRequirement);

LABEL_22:
        v49 = v72;
        return sub_1D5D2CFE8(v49, sub_1D66C41C4);
      }

      sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
      v52 = v107;
      v72 = v108;
      v60 = v50;
      v58 = v99;
    }

    else
    {

      sub_1D5D2CFE8(v54, type metadata accessor for FormatVersionRequirement);

      v72 = v108;
      v71 = v106;
    }

    v91 = v96;
    goto LABEL_17;
  }

  sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

  v49 = v108;
  return sub_1D5D2CFE8(v49, sub_1D66C41C4);
}

uint64_t sub_1D65BEDC4()
{
  v1 = 0x656C797473;
  v2 = 0x656C616373;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 1702521203;
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

uint64_t sub_1D65BEE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C7278(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BEE5C(uint64_t a1)
{
  v2 = sub_1D66C411C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BEE98(uint64_t a1)
{
  v2 = sub_1D66C411C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolConfig.Weight.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C4368();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C43FC();
  sub_1D5B58B84(&qword_1EC887530, sub_1D66C43FC);
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

      v20 = sub_1D6627E68(0x746867696577, 0xE600000000000000, 0x656C616373, 0xE500000000000000);
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

  sub_1D5C76094();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSymbolConfig.Weight.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v69 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v65 - v8;
  sub_1D66C457C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v79 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C43FC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887530, sub_1D66C43FC);
  sub_1D5D2EE70(&type metadata for FormatSymbolConfig.Weight, v19, v21, v16, &type metadata for FormatSymbolConfig.Weight, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  v24 = *(v22 - 8);
  v66 = *(v24 + 16);
  v67 = v22;
  v65[1] = v24 + 16;
  v66(v9, v23, v22);
  v65[0] = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v78 = v15;
  v76 = 0uLL;
  v77 = 0;
  v25 = &v14[*(v11 + 44)];
  v26 = *v25;
  v27 = *(v25 + 1);
  v75 = 0;
  v28 = swift_allocObject();
  v72 = v65;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v75;
  *(v28 + 40) = v26;
  *(v28 + 48) = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  *&v74 = v9;
  v65[-4] = sub_1D5B4AA6C;
  v65[-3] = 0;
  v63 = sub_1D6708BD4;
  v64 = v30;
  v75 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v75;
  v68 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66C4610();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EC887548, sub_1D66C4610);
  swift_retain_n();
  v70 = v33;
  v71 = v34;
  v35 = sub_1D72647CC();
  v75 = 0;
  v36 = swift_allocObject();
  *(v36 + 24) = 0;
  *(v36 + 32) = 0;
  *(v36 + 16) = v35;
  *(v36 + 40) = v75;
  v37 = &v14[*(v11 + 36)];
  v38 = __swift_project_boxed_opaque_existential_1(v37, *(v37 + 3));
  MEMORY[0x1EEE9AC00](v38, v39);
  MEMORY[0x1EEE9AC00](v40, v41);
  v65[-4] = sub_1D615B4A4;
  v65[-3] = &v65[-6];
  v42 = v73;
  v43 = v74;
  v63 = sub_1D6708BD4;
  v64 = v31;
  sub_1D5D2BC70(v74, sub_1D615B49C, v44, sub_1D615B4A4, &v65[-6]);
  if (v42)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v45 = v14;
  }

  else
  {
    v73 = v37;

    sub_1D61B9A34();
    v45 = v14;
    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v46 = v67;
    v47 = __swift_project_value_buffer(v67, qword_1EDFFCD98);
    v48 = v69;
    v66(v69, v47, v46);
    swift_storeEnumTagMultiPayload();
    v74 = xmmword_1D728CF30;
    v76 = xmmword_1D728CF30;
    v77 = 0;
    v78 = 0;
    v49 = swift_allocObject();
    v51 = v49;
    *(v49 + 16) = v74;
    *(v49 + 32) = v78;
    v52 = v68;
    *(v49 + 40) = v68;
    *(v49 + 48) = v27;
    if (v79 == 5)
    {
    }

    else
    {
      v72 = v65;
      v78 = v79;
      MEMORY[0x1EEE9AC00](v49, v50);
      v65[-4] = sub_1D5B4AA6C;
      v65[-3] = 0;
      v63 = sub_1D6708BD4;
      v64 = v51;
      v75 = 0;
      v54 = swift_allocObject();
      *(v54 + 16) = v74;
      *(v54 + 32) = v75;
      *(v54 + 40) = v52;
      *(v54 + 48) = v27;
      swift_retain_n();
      v55 = sub_1D72647CC();
      v75 = 0;
      v56 = swift_allocObject();
      *(v56 + 16) = v55;
      *(v56 + 24) = v74;
      *(v56 + 40) = v75;
      v57 = __swift_project_boxed_opaque_existential_1(v73, *(v73 + 3));
      MEMORY[0x1EEE9AC00](v57, v58);
      MEMORY[0x1EEE9AC00](v59, v60);
      v65[-4] = sub_1D615B4A4;
      v65[-3] = &v65[-6];
      v48 = v69;
      v63 = sub_1D66C46A4;
      v64 = v54;
      v62 = sub_1D5D2F7A4(v69, sub_1D615B49C, v61, sub_1D615B4A4, &v65[-6]);

      if (v62)
      {
        sub_1D66C3A00();
        v45 = v14;
        sub_1D72647EC();
      }

      else
      {
        v45 = v14;
      }
    }

    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v45, sub_1D66C457C);
}

uint64_t sub_1D65BFADC()
{
  v1 = 0x656C616373;
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
    return 0x746867696577;
  }
}

uint64_t sub_1D65BFB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C73D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BFB60(uint64_t a1)
{
  v2 = sub_1D66C44D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BFB9C(uint64_t a1)
{
  v2 = sub_1D66C44D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65BFBD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C74E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65BFC10(uint64_t a1)
{
  v2 = sub_1D5C75A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65BFC4C(uint64_t a1)
{
  v2 = sub_1D5C75A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65BFC94()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65BFD8C()
{
  sub_1D72621EC();
}

uint64_t sub_1D65BFE70()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65BFF64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66640D8();
  *a1 = result;
  return result;
}

void sub_1D65BFF94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x657474656C6170;
  v5 = 0xEA0000000000726FLL;
  v6 = 0x6C6F6369746C756DLL;
  v7 = 0x6F7268636F6E6F6DLL;
  v8 = 0xEA0000000000656DLL;
  if (v2 != 3)
  {
    v7 = 0x726F7463656C6573;
    v8 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6863726172656968;
    v3 = 0xEC0000006C616369;
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

uint64_t sub_1D65C00F8()
{
  v1 = 0x6F436C6F626D7973;
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
    return 0x6F6C6F436C6C6966;
  }
}

uint64_t sub_1D65C0158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C76D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65C0190(uint64_t a1)
{
  v2 = sub_1D665E8D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C01CC(uint64_t a1)
{
  v2 = sub_1D665E8D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatSymbolScale.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v41;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v41 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t sub_1D65C07E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C646E7562;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6D6574737973;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x656C646E7562;
  if (*a2 != 1)
  {
    v8 = 0x726F7463656C6573;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6574737973;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
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

uint64_t sub_1D65C08DC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65C0978()
{
  sub_1D72621EC();
}

uint64_t sub_1D65C0A00()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65C0A98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C646E7562;
  if (v2 != 1)
  {
    v5 = 0x726F7463656C6573;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574737973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D65C0B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C77FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65C0B78(uint64_t a1)
{
  v2 = sub_1D5C48BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C0BB4(uint64_t a1)
{
  v2 = sub_1D5C48BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTagBinding.Bool.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v188 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v187 = &v164 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v186 = &v164 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v185 = &v164 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v184 = &v164 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v183 = &v164 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v182 = &v164 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v181 = &v164 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v180 = &v164 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v179 = &v164 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v178 = &v164 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v177 = &v164 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v176 = &v164 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v175 = &v164 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v174 = &v164 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v172 = &v164 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v171 = &v164 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v170 = &v164 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v169 = &v164 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v168 = &v164 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v167 = &v164 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v166 = &v164 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v165 = &v164 - v71;
  MEMORY[0x1EEE9AC00](v72, v73);
  v164 = &v164 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v173 = &v164 - v77;
  MEMORY[0x1EEE9AC00](v78, v79);
  v81 = &v164 - v80;
  MEMORY[0x1EEE9AC00](v82, v83);
  v85 = &v164 - v84;
  MEMORY[0x1EEE9AC00](v86, v87);
  v89 = &v164 - v88;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v90 - 8, v91);
  v93 = &v164 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *v1;
  v95 = a1[3];
  v96 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v95);
  v97 = sub_1D5C30408();
  v98 = v93;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Bool, &type metadata for FormatCodingKeys, v99, v95, &type metadata for FormatTagBinding.Bool, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.Azden, v96, v93, v97, &off_1F51F6B78);
  switch(v94)
  {
    case 1:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v134 = sub_1D725BD1C();
      v135 = __swift_project_value_buffer(v134, qword_1EDFFCDF8);
      (*(*(v134 - 8) + 16))(v85, v135, v134);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423A6C(1, v85);
      v102 = v85;
      goto LABEL_47;
    case 2:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v126 = sub_1D725BD1C();
      v127 = __swift_project_value_buffer(v126, qword_1EDFFCDF8);
      (*(*(v126 - 8) + 16))(v81, v127, v126);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423A6C(2, v81);
      v102 = v81;
      goto LABEL_47;
    case 3:
      v103 = v93;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v130 = sub_1D725BD1C();
      v131 = __swift_project_value_buffer(v130, qword_1EDFFCD00);
      v108 = v173;
      (*(*(v130 - 8) + 16))(v173, v131, v130);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 3;
      goto LABEL_87;
    case 4:
      v103 = v93;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v116 = sub_1D725BD1C();
      v117 = __swift_project_value_buffer(v116, qword_1EDFFCDE0);
      v108 = v164;
      (*(*(v116 - 8) + 16))(v164, v117, v116);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 4;
      goto LABEL_87;
    case 5:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCD80);
      v108 = v165;
      (*(*(v141 - 8) + 16))(v165, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 5;
      goto LABEL_87;
    case 6:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v147 = sub_1D725BD1C();
      v148 = __swift_project_value_buffer(v147, qword_1EDFFCD80);
      v108 = v166;
      (*(*(v147 - 8) + 16))(v166, v148, v147);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 6;
      goto LABEL_87;
    case 7:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v132 = sub_1D725BD1C();
      v133 = __swift_project_value_buffer(v132, qword_1EDFFCD80);
      v108 = v167;
      (*(*(v132 - 8) + 16))(v167, v133, v132);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 7;
      goto LABEL_87;
    case 8:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v153 = sub_1D725BD1C();
      v154 = __swift_project_value_buffer(v153, qword_1EDFFCD80);
      v108 = v168;
      (*(*(v153 - 8) + 16))(v168, v154, v153);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 8;
      goto LABEL_87;
    case 9:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCD80);
      v108 = v169;
      (*(*(v120 - 8) + 16))(v169, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 9;
      goto LABEL_87;
    case 10:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v151 = sub_1D725BD1C();
      v152 = __swift_project_value_buffer(v151, qword_1EDFFCD80);
      v108 = v170;
      (*(*(v151 - 8) + 16))(v170, v152, v151);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 10;
      goto LABEL_87;
    case 11:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD80);
      v108 = v171;
      (*(*(v114 - 8) + 16))(v171, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 11;
      goto LABEL_87;
    case 12:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v118 = sub_1D725BD1C();
      v119 = __swift_project_value_buffer(v118, qword_1EDFFCD80);
      v108 = v172;
      (*(*(v118 - 8) + 16))(v172, v119, v118);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 12;
      goto LABEL_87;
    case 13:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v145 = sub_1D725BD1C();
      v146 = __swift_project_value_buffer(v145, qword_1EDFFCD80);
      v108 = v174;
      (*(*(v145 - 8) + 16))(v174, v146, v145);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 13;
      goto LABEL_87;
    case 14:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v112 = sub_1D725BD1C();
      v113 = __swift_project_value_buffer(v112, qword_1EDFFCD80);
      v108 = v175;
      (*(*(v112 - 8) + 16))(v175, v113, v112);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 14;
      goto LABEL_87;
    case 15:
      v103 = v93;
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v128 = sub_1D725BD1C();
      v129 = __swift_project_value_buffer(v128, qword_1EDFFCD80);
      v108 = v176;
      (*(*(v128 - 8) + 16))(v176, v129, v128);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 15;
      goto LABEL_87;
    case 16:
      v103 = v93;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD68);
      v108 = v177;
      (*(*(v110 - 8) + 16))(v177, v111, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 16;
      goto LABEL_87;
    case 17:
      v103 = v93;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v137 = sub_1D725BD1C();
      v138 = __swift_project_value_buffer(v137, qword_1EDFFCD68);
      v108 = v178;
      (*(*(v137 - 8) + 16))(v178, v138, v137);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 17;
      goto LABEL_87;
    case 18:
      v103 = v93;
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v149 = sub_1D725BD1C();
      v150 = __swift_project_value_buffer(v149, qword_1EDFFCE68);
      v108 = v179;
      (*(*(v149 - 8) + 16))(v179, v150, v149);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 18;
      goto LABEL_87;
    case 19:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v157 = sub_1D725BD1C();
      v158 = __swift_project_value_buffer(v157, qword_1EDFFCE38);
      v108 = v180;
      (*(*(v157 - 8) + 16))(v180, v158, v157);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 19;
      goto LABEL_87;
    case 20:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v139 = sub_1D725BD1C();
      v140 = __swift_project_value_buffer(v139, qword_1EDFFCE38);
      v108 = v181;
      (*(*(v139 - 8) + 16))(v181, v140, v139);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 20;
      goto LABEL_87;
    case 21:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v143 = sub_1D725BD1C();
      v144 = __swift_project_value_buffer(v143, qword_1EDFFCE38);
      v108 = v182;
      (*(*(v143 - 8) + 16))(v182, v144, v143);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 21;
      goto LABEL_87;
    case 22:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v155 = sub_1D725BD1C();
      v156 = __swift_project_value_buffer(v155, qword_1EDFFCE38);
      v108 = v183;
      (*(*(v155 - 8) + 16))(v183, v156, v155);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 22;
      goto LABEL_87;
    case 23:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v159 = sub_1D725BD1C();
      v160 = __swift_project_value_buffer(v159, qword_1EDFFCE38);
      v108 = v184;
      (*(*(v159 - 8) + 16))(v184, v160, v159);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 23;
      goto LABEL_87;
    case 24:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCE38);
      v108 = v185;
      (*(*(v124 - 8) + 16))(v185, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 24;
      goto LABEL_87;
    case 25:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v122 = sub_1D725BD1C();
      v123 = __swift_project_value_buffer(v122, qword_1EDFFCE38);
      v108 = v186;
      (*(*(v122 - 8) + 16))(v186, v123, v122);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 26;
      goto LABEL_87;
    case 26:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v161 = sub_1D725BD1C();
      v162 = __swift_project_value_buffer(v161, qword_1EDFFCE38);
      v108 = v187;
      (*(*(v161 - 8) + 16))(v187, v162, v161);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 25;
LABEL_87:
      v109 = v108;
      goto LABEL_88;
    case 27:
      v103 = v93;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v104 = sub_1D725BD1C();
      v105 = __swift_project_value_buffer(v104, qword_1EDFFCE38);
      v106 = v188;
      (*(*(v104 - 8) + 16))(v188, v105, v104);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v107 = 27;
      v108 = v106;
      v109 = v106;
LABEL_88:
      sub_1D6423A6C(v107, v109);
      sub_1D5D2CFE8(v108, type metadata accessor for FormatVersionRequirement);
      v136 = v103;
      break;
    default:
      if (qword_1EDF31F10 != -1)
      {
        swift_once();
      }

      v100 = sub_1D725BD1C();
      v101 = __swift_project_value_buffer(v100, qword_1EDFFCDF8);
      (*(*(v100 - 8) + 16))(v89, v101, v100);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6423A6C(0, v89);
      v102 = v89;
LABEL_47:
      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v136 = v98;
      break;
  }

  return sub_1D5D2CFE8(v136, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.Command.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v58 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v57 - v23;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  *&v60 = v1[1];
  *(&v60 + 1) = v29;
  v30 = *(v1 + 16);
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v33 = sub_1D5C30408();
  v61 = v28;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Command, &type metadata for FormatCodingKeys, v34, v31, &type metadata for FormatTagBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v32, v28, v33, &off_1F51F6C78);
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
      (*(*(v39 - 8) + 16))(v9, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v61;
      sub_1D6485814(4, *(&v60 + 1), v9);
      v38 = v9;
    }

    else
    {
      if (v60 == 0)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v51 = sub_1D725BD1C();
        v52 = __swift_project_value_buffer(v51, qword_1EDFFCD30);
        (*(*(v51 - 8) + 16))(v20, v52, v51);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v50 = 1;
        v53 = v20;
        v37 = v61;
      }

      else
      {
        if (*(&v60 + 1) ^ 1 | v60)
        {
          v37 = v61;
          if (qword_1EDF31F38 != -1)
          {
            swift_once();
          }

          v54 = sub_1D725BD1C();
          v55 = __swift_project_value_buffer(v54, qword_1EDFFCE38);
          v20 = v59;
          (*(*(v54 - 8) + 16))(v59, v55, v54);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v50 = 5;
        }

        else
        {
          v37 = v61;
          if (qword_1EDF31F10 != -1)
          {
            swift_once();
          }

          v48 = sub_1D725BD1C();
          v49 = __swift_project_value_buffer(v48, qword_1EDFFCDF8);
          v20 = v58;
          (*(*(v48 - 8) + 16))(v58, v49, v48);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v50 = 3;
        }

        v53 = v20;
      }

      sub_1D642351C(v50, v53);
      v38 = v20;
    }
  }

  else if (v30)
  {
    sub_1D5B58478();
    v42 = *(v41 + 48);
    v43 = &v16[*(v41 + 64)];
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
    v46 = *(*(v44 - 8) + 16);
    v46(v16, v45, v44);
    if (qword_1EDF31F10 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v44, qword_1EDFFCDF8);
    v46(&v16[v42], v47, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    *v43 = 0;
    *(v43 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v37 = v61;
    sub_1D63B3CDC(2, *(&v60 + 1), v60, v16);
    v38 = v16;
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    (*(*(v35 - 8) + 16))(v24, v36, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v61;
    sub_1D63B3B44(0, BYTE8(v60) & 1, v24);
    v38 = v24;
  }

  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t FormatTagBinding.Image.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v44 - v8;
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
    v12 = v46;
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
          *(v22 + 16) = &unk_1F5117C70;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D66C4844();
    v48 = 0;
    v49 = 0;
    sub_1D726431C();
    if (v47 <= 1u)
    {
      v27 = 0x1000000000000004;
      if (v47)
      {
        (*(v11 + 8))(v15, v5);
        v28 = 0;
        v24 = 0;
        v26 = 1;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v26 = 0;
        v28 = 0;
        v24 = 0;
      }
    }

    else if (v47 == 2)
    {
      v47 = xmmword_1D7279980;
      sub_1D66C4898();
      sub_1D726427C();
      if (v50)
      {
        v24 = v51;
        v27 = v49;
        v26 = v48;
        v29 = *(v11 + 8);
        v30 = v50;
        v29(v15, v5);
        v28 = v30;
      }

      else
      {
        if (qword_1EDF1C278 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v27 = qword_1EDF1C280;
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        sub_1D5F3FE24();
        v33 = swift_allocObject();
        v44 = xmmword_1D7273AE0;
        v45 = v33;
        *(v33 + 16) = xmmword_1D7273AE0;
        *(v33 + 32) = v32;
        *(v33 + 40) = 0;
        v34 = swift_allocObject();
        *(v34 + 16) = 0x4020000000000000;
        v24 = swift_allocObject();
        *(v24 + 16) = v44;
        *(v24 + 32) = v34;
        *(v24 + 40) = 0;
        v52 = 1;
        v35 = *(v11 + 8);

        v35(v15, v5);
        v28 = v45;
        v26 = v52;
      }
    }

    else
    {
      if (v47 == 3)
      {
        v47 = xmmword_1D7279980;
        sub_1D66C4898();
        sub_1D726427C();
        if (v50)
        {
          v45 = v50;
          v24 = v51;
          v25 = v49;
          v26 = v48;
          (*(v11 + 8))(v15, v5);
        }

        else
        {
          if (qword_1EDF1C278 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v25 = qword_1EDF1C280;
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          sub_1D5F3FE24();
          v37 = swift_allocObject();
          v44 = xmmword_1D7273AE0;
          *(v37 + 16) = xmmword_1D7273AE0;
          *(v37 + 32) = v36;
          v45 = v37;
          *(v37 + 40) = 0;
          v38 = swift_allocObject();
          *(v38 + 16) = 0x4020000000000000;
          v24 = swift_allocObject();
          *(v24 + 16) = v44;
          *(v24 + 32) = v38;
          *(v24 + 40) = 0;
          v52 = 1;
          v39 = *(v11 + 8);

          v39(v15, v5);
          v26 = v52;
        }

        v27 = v25 | 4;
      }

      else
      {
        v47 = xmmword_1D7279980;
        sub_1D66C4898();
        sub_1D726427C();
        if (v50)
        {
          v45 = v50;
          v24 = v51;
          v31 = v49;
          v26 = v48;
          (*(v11 + 8))(v15, v5);
        }

        else
        {
          if (qword_1EDF1C278 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v31 = qword_1EDF1C280;
          v40 = swift_allocObject();
          *(v40 + 16) = 0;
          sub_1D5F3FE24();
          v41 = swift_allocObject();
          v44 = xmmword_1D7273AE0;
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v40;
          v45 = v41;
          *(v41 + 40) = 0;
          v42 = swift_allocObject();
          *(v42 + 16) = 0x4020000000000000;
          v24 = swift_allocObject();
          *(v24 + 16) = v44;
          *(v24 + 32) = v42;
          *(v24 + 40) = 0;
          v52 = 1;
          v43 = *(v11 + 8);

          v43(v15, v5);
          v26 = v52;
        }

        v27 = v31 | 0x1000000000000000;
      }

      v28 = v45;
    }

    *v12 = v26 & 1;
    v12[1] = v27;
    v12[2] = v28;
    v12[3] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTagBinding.Image.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v49 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v48 - v20;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1[1];
  v28 = v1[2];
  v27 = v1[3];
  v50 = *v1;
  v51 = v28;
  v52 = v27;
  v30 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v31 = sub_1D5C30408();
  v53 = v25;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Image, &type metadata for FormatCodingKeys, v32, v30, &type metadata for FormatTagBinding.Image, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v29, v25, v31, &off_1F51F6C78);
  v33 = (v26 >> 59) & 2 | (v26 >> 2) & 1;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v38 = sub_1D725BD1C();
      v39 = __swift_project_value_buffer(v38, qword_1EDFFCE98);
      (*(*(v38 - 8) + 16))(v6, v39, v38);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v53;
      sub_1D63B3E70(4, v50 & 1, v26 & 0xEFFFFFFFFFFFFFFBLL, v51, v52, v6);
      v37 = v6;
    }

    else if (v26 != 0x1000000000000004 || v52 | v51 | v50)
    {
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v44 = sub_1D725BD1C();
      v45 = __swift_project_value_buffer(v44, qword_1EDFFCDE0);
      v46 = v49;
      (*(*(v44 - 8) + 16))(v49, v45, v44);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v53;
      sub_1D6423670(1, v46);
      v37 = v46;
    }

    else
    {
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCD30);
      (*(*(v42 - 8) + 16))(v21, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v53;
      sub_1D6423670(0, v21);
      v37 = v21;
    }
  }

  else if (v33)
  {
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v40 = sub_1D725BD1C();
    v41 = __swift_project_value_buffer(v40, qword_1EDFFCDE0);
    (*(*(v40 - 8) + 16))(v10, v41, v40);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v53;
    sub_1D63B3E70(3, v50 & 1, v26 & 0xEFFFFFFFFFFFFFFBLL, v51, v52, v10);
    v37 = v10;
  }

  else
  {
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v34 = sub_1D725BD1C();
    v35 = __swift_project_value_buffer(v34, qword_1EDFFCD98);
    (*(*(v34 - 8) + 16))(v14, v35, v34);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = v53;
    sub_1D63B3E70(2, v50 & 1, v26, v51, v52, v14);
    v37 = v14;
  }

  sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v36, sub_1D5D30DC4);
}

uint64_t sub_1D65C3988()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65C3A84()
{
  sub_1D72621EC();
}

uint64_t sub_1D65C3B6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65C3C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D66637A4();
  *a1 = result;
  return result;
}

void sub_1D65C3C94(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006F676F4C72;
  v4 = 0x656873696C627570;
  v5 = 0xE400000000000000;
  v6 = 1852793705;
  v7 = 0xEA00000000006F67;
  if (v2 != 3)
  {
    v7 = 0xED0000746C416F67;
  }

  if (v2 != 2)
  {
    v6 = 0x6F4C7374726F7073;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001D73B9BF0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t FormatTagBinding.SourceItemTip.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatTagBinding.SourceItemTip, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatTagBinding.SourceItemTip, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlow, v17, v14, v18, &off_1F51F6B38);
  if (v15)
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v20 = sub_1D725BD1C();
    v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
    (*(*(v20 - 8) + 16))(v6, v21, v20);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423D04(1, v6);
    v22 = v6;
  }

  else
  {
    if (qword_1EDF31F48 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCE68);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6423D04(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65C4134(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73756C507377656ELL;
  }

  else
  {
    v3 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEF736569726F7453;
  }

  if (*a2)
  {
    v5 = 0x73756C507377656ELL;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (*a2)
  {
    v6 = 0xEF736569726F7453;
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

uint64_t sub_1D65C41E4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65C4270()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatTagBinding.Text.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v155 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v154 = &v136 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v153 = &v136 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v136 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v151 = &v136 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v150 = &v136 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v149 = &v136 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v148 = &v136 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v147 = &v136 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v146 = &v136 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v145 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v144 = &v136 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v142 = &v136 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v141 = &v136 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v140 = &v136 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v139 = &v136 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v138 = &v136 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v137 = &v136 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v143 = &v136 - v59;
  MEMORY[0x1EEE9AC00](v60, v61);
  v136 = &v136 - v62;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v136 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v136 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v74 = &v136 - v73;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v75 - 8, v76);
  v78 = &v136 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *v1;
  v80 = a1[3];
  v81 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v80);
  v82 = sub_1D5C30408();
  v156 = v78;
  sub_1D5D2EE70(&type metadata for FormatTagBinding.Text, &type metadata for FormatCodingKeys, v83, v80, &type metadata for FormatTagBinding.Text, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v81, v78, v82, &off_1F51F6C78);
  switch(v79)
  {
    case 1:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v111 = sub_1D725BD1C();
      v112 = __swift_project_value_buffer(v111, qword_1EDFFCD30);
      (*(*(v111 - 8) + 16))(v70, v112, v111);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D6423918(1, v70);
      v104 = v70;
      break;
    case 2:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCDE0);
      (*(*(v101 - 8) + 16))(v66, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v103 = v156;
      sub_1D6423918(2, v66);
      v104 = v66;
      break;
    case 3:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      v74 = v136;
      (*(*(v107 - 8) + 16))(v136, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 3;
      goto LABEL_32;
    case 4:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v95 = sub_1D725BD1C();
      v96 = __swift_project_value_buffer(v95, qword_1EDFFCD80);
      v89 = v143;
      (*(*(v95 - 8) + 16))(v143, v96, v95);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 4;
      goto LABEL_72;
    case 5:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD80);
      v89 = v137;
      (*(*(v117 - 8) + 16))(v137, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 5;
      goto LABEL_72;
    case 6:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v123 = sub_1D725BD1C();
      v124 = __swift_project_value_buffer(v123, qword_1EDFFCD30);
      v89 = v138;
      (*(*(v123 - 8) + 16))(v138, v124, v123);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 6;
      goto LABEL_72;
    case 7:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v109 = sub_1D725BD1C();
      v110 = __swift_project_value_buffer(v109, qword_1EDFFCD00);
      v89 = v139;
      (*(*(v109 - 8) + 16))(v139, v110, v109);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 7;
      goto LABEL_72;
    case 8:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v129 = sub_1D725BD1C();
      v130 = __swift_project_value_buffer(v129, qword_1EDFFCD00);
      v89 = v140;
      (*(*(v129 - 8) + 16))(v140, v130, v129);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 8;
      goto LABEL_72;
    case 9:
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v99 = sub_1D725BD1C();
      v100 = __swift_project_value_buffer(v99, qword_1EDFFCD00);
      v89 = v141;
      (*(*(v99 - 8) + 16))(v141, v100, v99);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 9;
      goto LABEL_72;
    case 10:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v127 = sub_1D725BD1C();
      v128 = __swift_project_value_buffer(v127, qword_1EDFFCDE0);
      v89 = v142;
      (*(*(v127 - 8) + 16))(v142, v128, v127);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 10;
      goto LABEL_72;
    case 11:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCDE0);
      v89 = v144;
      (*(*(v93 - 8) + 16))(v144, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 11;
      goto LABEL_72;
    case 12:
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCE98);
      v89 = v145;
      (*(*(v97 - 8) + 16))(v145, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 12;
      goto LABEL_72;
    case 13:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v121 = sub_1D725BD1C();
      v122 = __swift_project_value_buffer(v121, qword_1EDFFCDE0);
      v89 = v146;
      (*(*(v121 - 8) + 16))(v146, v122, v121);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 13;
      goto LABEL_72;
    case 14:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v91 = sub_1D725BD1C();
      v92 = __swift_project_value_buffer(v91, qword_1EDFFCDE0);
      v89 = v147;
      (*(*(v91 - 8) + 16))(v147, v92, v91);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 14;
      goto LABEL_72;
    case 15:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v105 = sub_1D725BD1C();
      v106 = __swift_project_value_buffer(v105, qword_1EDFFCDE0);
      v89 = v148;
      (*(*(v105 - 8) + 16))(v148, v106, v105);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 15;
      goto LABEL_72;
    case 16:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v87 = sub_1D725BD1C();
      v88 = __swift_project_value_buffer(v87, qword_1EDFFCD80);
      v89 = v149;
      (*(*(v87 - 8) + 16))(v149, v88, v87);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 16;
      goto LABEL_72;
    case 17:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCD80);
      v89 = v150;
      (*(*(v113 - 8) + 16))(v150, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 17;
      goto LABEL_72;
    case 18:
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v125 = sub_1D725BD1C();
      v126 = __swift_project_value_buffer(v125, qword_1EDFFCDE0);
      v89 = v151;
      (*(*(v125 - 8) + 16))(v151, v126, v125);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 18;
      goto LABEL_72;
    case 19:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD80);
      v89 = v152;
      (*(*(v133 - 8) + 16))(v152, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 19;
      goto LABEL_72;
    case 20:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v115 = sub_1D725BD1C();
      v116 = __swift_project_value_buffer(v115, qword_1EDFFCD80);
      v89 = v153;
      (*(*(v115 - 8) + 16))(v153, v116, v115);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 20;
      goto LABEL_72;
    case 21:
      if (qword_1EDF31EE0 != -1)
      {
        swift_once();
      }

      v119 = sub_1D725BD1C();
      v120 = __swift_project_value_buffer(v119, qword_1EDFFCD80);
      v89 = v154;
      (*(*(v119 - 8) + 16))(v154, v120, v119);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 21;
      goto LABEL_72;
    case 22:
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v131 = sub_1D725BD1C();
      v132 = __swift_project_value_buffer(v131, qword_1EDFFCD68);
      v89 = v155;
      (*(*(v131 - 8) + 16))(v155, v132, v131);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v90 = 22;
LABEL_72:
      v103 = v156;
      sub_1D6423918(v90, v89);
      v104 = v89;
      break;
    default:
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v84 = sub_1D725BD1C();
      v85 = __swift_project_value_buffer(v84, qword_1EDFFCD30);
      (*(*(v84 - 8) + 16))(v74, v85, v84);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v86 = 0;
LABEL_32:
      v103 = v156;
      sub_1D6423918(v86, v74);
      v104 = v74;
      break;
  }

  sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v103, sub_1D5D30DC4);
}

uint64_t FormatTagFollowContext.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C4940();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C70A78();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF25208, sub_1D5C70A78);
  sub_1D5D2EE70(&type metadata for FormatTagFollowContext, v17, v19, v14, &type metadata for FormatTagFollowContext, v17, &type metadata for FormatVersions.CrystalGlowC, v15, v12, v18, &off_1F51F6AF8);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCE50);
  (*(*(v20 - 8) + 16))(v7, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (v13)
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
    sub_1D66C49D4();
    v27 = v26;
    sub_1D5B58B84(&qword_1EDF031C8, sub_1D66C49D4);

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
    v38 = sub_1D66C4A68;
    v39 = v25;
    v35 = sub_1D5D2F7A4(v7, sub_1D615B49C, v34, sub_1D615B4A4, (&v40 - 6));
    if (v2)
    {
      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      return sub_1D5D2CFE8(v12, sub_1D66C4940);
    }

    v37 = v35;

    if (v37)
    {
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 1;
      sub_1D5F94F84();
      sub_1D72647EC();
    }
  }

  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v12, sub_1D66C4940);
}

uint64_t sub_1D65C5C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001D73D27D0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D65C5CF8(uint64_t a1)
{
  v2 = sub_1D5C70AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C5D34(uint64_t a1)
{
  v2 = sub_1D5C70AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTagIconPreferredSource.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatTagIconPreferredSource, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatTagIconPreferredSource, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSky, v17, v14, v18, &off_1F51F6CD8);
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
    sub_1D641A038(1, v6);
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
    sub_1D641A038(0, v10);
    v22 = v10;
  }

  sub_1D5D2CFE8(v22, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65C609C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x76614E64656566;
  }

  else
  {
    v3 = 0x616D497265766F63;
  }

  if (v2)
  {
    v4 = 0xEA00000000006567;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x76614E64656566;
  }

  else
  {
    v5 = 0x616D497265766F63;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEA00000000006567;
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

uint64_t sub_1D65C6148()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65C61D0()
{
  sub_1D72621EC();
}

uint64_t sub_1D65C6244()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65C62D4(uint64_t *a1@<X8>)
{
  v2 = 0x616D497265766F63;
  if (*v1)
  {
    v2 = 0x76614E64656566;
  }

  v3 = 0xEA00000000006567;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatTagIconStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66C4B38();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C4BCC();
  sub_1D5B58B84(&qword_1EDF25558, sub_1D66C4BCC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_18:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v7;
  v11 = v29;
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

      v21 = *(v17 - 2);
      v20 = *(v17 - 1);

      v22 = sub_1D6624FB8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v28 + 8))(v14, v6);
      goto LABEL_18;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  if (sub_1D726434C())
  {
    v32 = 0uLL;
    v33 = 0;
    sub_1D66C4D4C();
    sub_1D726431C();
    v18 = v34;
  }

  else
  {
    v18 = 1;
  }

  v27 = xmmword_1D728CF30;
  v32 = xmmword_1D728CF30;
  v33 = 0;
  if (sub_1D726434C())
  {
    v30 = v27;
    v31 = 0;
    sub_1D5B556F4();
    sub_1D726431C();
    v19 = v34;
  }

  else
  {
    if (qword_1EDF1C278 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v19 = qword_1EDF1C280;
  }

  sub_1D660C130(sub_1D66C4B38, &v32, 0.0);
  v25 = v32;
  sub_1D660C130(sub_1D66C4B38, &v32, 8.0);
  (*(v28 + 8))(v10, v6);
  v26 = v32;
  *v11 = v18;
  *(v11 + 8) = v19;
  *(v11 + 16) = v25;
  *(v11 + 24) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTagIconStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v132 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v133 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v139 = &v127 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v127 - v14;
  sub_1D66C4DA0();
  *&v141 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v22 = v1[1];
  v21 = v1[2];
  v134 = v1[3];
  v135 = v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D66C4BCC();
  v26 = v25;
  v27 = sub_1D5B58B84(&qword_1EDF25558, sub_1D66C4BCC);
  sub_1D5D2EE70(&type metadata for FormatTagIconStyle, v26, v28, v23, &type metadata for FormatTagIconStyle, v26, &type metadata for FormatVersions.AzdenE, v24, v19, v27, &off_1F51F6C18);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725BD1C();
  v30 = __swift_project_value_buffer(v29, qword_1EDFFCD50);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v33 = v31 + 16;
  v32(v15, v30, v29);
  v140 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v136 = v29;
  v137 = v32;
  v138 = v33;
  if (v20)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
    v34 = v159;
LABEL_5:
    v35 = v139;
    goto LABEL_6;
  }

  v44 = v141;
  v45 = &v19[*(v141 + 44)];
  v47 = *v45;
  v46 = *(v45 + 1);
  LOBYTE(v154) = 0;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  *(v48 + 32) = v154;
  *(v48 + 40) = v47;
  *(v48 + 48) = v46;
  sub_1D66C4E34();
  v50 = v49;
  sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34);

  *&v130 = v50;
  v51 = sub_1D72647CC();
  LOBYTE(v154) = 0;
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  *(v52 + 32) = 0;
  *(v52 + 16) = v51;
  *(v52 + 40) = v154;
  v53 = __swift_project_boxed_opaque_existential_1(&v19[*(v44 + 36)], *&v19[*(v44 + 36) + 24]);
  v131 = &v127;
  MEMORY[0x1EEE9AC00](v53, v54);
  MEMORY[0x1EEE9AC00](v55, v56);
  *(&v127 - 4) = sub_1D5B4AA6C;
  *(&v127 - 3) = 0;
  v125 = sub_1D66C4EC8;
  v126 = v48;
  v57 = v159;
  v59 = sub_1D5D2F7A4(v15, sub_1D615B49C, v58, sub_1D615B4A4, (&v127 - 6));
  v34 = v57;
  if (v57)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v19, sub_1D66C4DA0);
  }

  v77 = v59;

  if ((v77 & 1) == 0)
  {
    sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
    v29 = v136;
    v32 = v137;
    goto LABEL_5;
  }

  v154 = 0uLL;
  LOBYTE(v155) = 0;
  LOBYTE(v152[0]) = 0;
  sub_1D66C4F44();
  sub_1D72647EC();
  v29 = v136;
  v32 = v137;
  v35 = v139;
  sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
LABEL_6:
  v36 = qword_1EDF31EE8;

  v37 = v141;
  if (v36 != -1)
  {
    swift_once();
  }

  v159 = v34;
  v131 = __swift_project_value_buffer(v29, qword_1EDFFCD98);
  (v32)(v35);
  swift_storeEnumTagMultiPayload();
  if (v22 >> 61)
  {
    goto LABEL_15;
  }

  v38 = *(v22 + 48);
  v150[1] = *(v22 + 32);
  v150[2] = v38;
  v150[3] = *(v22 + 64);
  v151 = *(v22 + 80);
  v150[0] = *(v22 + 16);
  v39 = *(v22 + 64);
  v148[2] = *(v22 + 48);
  v148[3] = v39;
  v149 = *(v22 + 80);
  v40 = *(v22 + 32);
  v148[0] = *(v22 + 16);
  v148[1] = v40;
  sub_1D5D3F188(v150, &v143);
  if (qword_1EDF1C290 != -1)
  {
    swift_once();
  }

  v152[2] = xmmword_1EDF1C2B8;
  v152[3] = unk_1EDF1C2C8;
  v153 = word_1EDF1C2D8;
  v152[0] = xmmword_1EDF1C298;
  v152[1] = *&word_1EDF1C2A8;
  v145 = xmmword_1EDF1C2B8;
  v146 = unk_1EDF1C2C8;
  v147 = word_1EDF1C2D8;
  v143 = xmmword_1EDF1C298;
  v144 = *&word_1EDF1C2A8;
  sub_1D5D3F188(v152, &v142);
  v42 = _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(v148, &v143, v41);
  v156 = v145;
  v157 = v146;
  v158 = v147;
  v154 = v143;
  v155 = v144;
  sub_1D5D41588(&v154);
  sub_1D5D41588(v150);
  if ((v42 & 1) == 0)
  {
LABEL_15:
    *&v129 = v22;
    v61 = &v19[*(v37 + 44)];
    v63 = *v61;
    v62 = *(v61 + 1);
    LOBYTE(v154) = 0;
    v64 = v35;
    v65 = swift_allocObject();
    v130 = xmmword_1D728CF30;
    *(v65 + 16) = xmmword_1D728CF30;
    *(v65 + 32) = v154;
    *(v65 + 40) = v63;
    *(v65 + 48) = v62;
    sub_1D66C4E34();
    v67 = v66;
    sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34);

    v127 = v67;
    v68 = sub_1D72647CC();
    LOBYTE(v154) = 0;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v130;
    *(v69 + 40) = v154;
    v70 = __swift_project_boxed_opaque_existential_1(&v19[*(v37 + 36)], *&v19[*(v37 + 36) + 24]);
    v128 = &v127;
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v127 - 4) = sub_1D5B4AA6C;
    *(&v127 - 3) = 0;
    v125 = sub_1D6708BDC;
    v126 = v65;
    v74 = v159;
    v76 = sub_1D5D2F7A4(v64, sub_1D615B49C, v75, sub_1D615B4A4, (&v127 - 6));
    if (v74)
    {
      sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v19, sub_1D66C4DA0);
    }

    v78 = v76;

    if (v78)
    {
      v154 = v130;
      LOBYTE(v155) = 0;
      *&v152[0] = v129;
      sub_1D5B57BA4();

      sub_1D72647EC();
      v37 = v141;
      v79 = v137;
      v80 = v139;
      v159 = 0;

      sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

      v43 = v133;
      v79(v133, v131, v136);
    }

    else
    {
      v159 = 0;
      sub_1D5D2CFE8(v139, type metadata accessor for FormatVersionRequirement);

      v37 = v141;
      v43 = v133;
      v137(v133, v131, v136);
    }
  }

  else
  {
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);

    v43 = v133;
    v32(v133, v131, v29);
  }

  swift_storeEnumTagMultiPayload();
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  sub_1D5F3FE24();
  v139 = v82;
  inited = swift_initStackObject();
  v130 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = v81;
  *(inited + 40) = 0;

  LOBYTE(v81) = sub_1D633A310(v84, inited);
  swift_setDeallocating();
  sub_1D5C30060(0, qword_1EDF2C898, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquationToken);
  v86 = v85;
  swift_arrayDestroy();
  if ((v81 & 1) == 0)
  {
    v127 = v86;
    v88 = &v19[*(v37 + 44)];
    v90 = *v88;
    v89 = *(v88 + 1);
    LOBYTE(v154) = 0;
    v91 = swift_allocObject();
    v129 = xmmword_1D7297410;
    *(v91 + 16) = xmmword_1D7297410;
    *(v91 + 32) = v154;
    *(v91 + 40) = v90;
    *(v91 + 48) = v89;
    sub_1D66C4E34();
    v93 = v92;
    sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34);

    v128 = v93;
    v94 = sub_1D72647CC();
    LOBYTE(v154) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = v94;
    *(v95 + 24) = v129;
    *(v95 + 40) = v154;
    v96 = __swift_project_boxed_opaque_existential_1(&v19[*(v37 + 36)], *&v19[*(v37 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v96, v97);
    MEMORY[0x1EEE9AC00](v98, v99);
    *(&v127 - 4) = sub_1D5B4AA6C;
    *(&v127 - 3) = 0;
    v125 = sub_1D6708BDC;
    v126 = v91;
    v100 = v159;
    v102 = sub_1D5D2F7A4(v43, sub_1D615B49C, v101, sub_1D615B4A4, (&v127 - 6));
    v159 = v100;
    if (v100)
    {
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2CFE8(v19, sub_1D66C4DA0);
    }

    v103 = v102;

    if (v103)
    {
      v154 = v129;
      LOBYTE(v155) = 0;
      *&v152[0] = v135;
      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
      sub_1D66582DC();

      v104 = v159;
      sub_1D72647EC();
      v159 = v104;
      v87 = v132;
      if (v104)
      {

        sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2CFE8(v19, sub_1D66C4DA0);
      }

      sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v133, type metadata accessor for FormatVersionRequirement);

      v87 = v132;
    }

    v37 = v141;
    goto LABEL_33;
  }

  sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

  v87 = v132;
LABEL_33:
  v137(v87, v131, v136);
  swift_storeEnumTagMultiPayload();
  v105 = swift_allocObject();
  *(v105 + 16) = 0x4020000000000000;
  v106 = swift_initStackObject();
  *(v106 + 16) = v130;
  *(v106 + 32) = v105;
  *(v106 + 40) = 0;

  LOBYTE(v105) = sub_1D633A310(v107, v106);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v105)
  {
    goto LABEL_34;
  }

  v109 = &v19[*(v37 + 44)];
  v111 = *v109;
  v110 = *(v109 + 1);
  LOBYTE(v154) = 0;
  v112 = swift_allocObject();
  v141 = xmmword_1D72BAA60;
  *(v112 + 16) = xmmword_1D72BAA60;
  *(v112 + 32) = v154;
  *(v112 + 40) = v111;
  *(v112 + 48) = v110;
  sub_1D66C4E34();
  v114 = v113;
  sub_1D5B58B84(&qword_1EDF035A8, sub_1D66C4E34);

  v140 = v114;
  v115 = sub_1D72647CC();
  LOBYTE(v154) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v115;
  *(v116 + 24) = v141;
  *(v116 + 40) = v154;
  v117 = __swift_project_boxed_opaque_existential_1(&v19[*(v37 + 36)], *&v19[*(v37 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v117, v118);
  MEMORY[0x1EEE9AC00](v119, v120);
  *(&v127 - 4) = sub_1D5B4AA6C;
  *(&v127 - 3) = 0;
  v125 = sub_1D6708BDC;
  v126 = v112;
  v121 = v159;
  v123 = sub_1D5D2F7A4(v87, sub_1D615B49C, v122, sub_1D615B4A4, (&v127 - 6));
  v159 = v121;
  if (v121)
  {
    sub_1D5D2CFE8(v87, type metadata accessor for FormatVersionRequirement);

    v108 = v19;
    goto LABEL_37;
  }

  v124 = v123;

  if ((v124 & 1) == 0)
  {
LABEL_34:
    sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
    v108 = v19;
LABEL_37:
    sub_1D5D2CFE8(v108, sub_1D66C4DA0);
  }

  v154 = v141;
  LOBYTE(v155) = 0;
  *&v152[0] = v134;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D66582DC();

  sub_1D72647EC();

  sub_1D5D2CFE8(v132, type metadata accessor for FormatVersionRequirement);
  sub_1D5D2CFE8(v19, sub_1D66C4DA0);
}

uint64_t sub_1D65C7B94()
{
  v1 = *v0;
  v2 = 0x5373726566657270;
  v3 = 0x676E6964646170;
  v4 = 0x615272656E726F63;
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
    v2 = 1953394534;
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

uint64_t sub_1D65C7C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C79F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65C7C6C(uint64_t a1)
{
  v2 = sub_1D66C4CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C7CA8(uint64_t a1)
{
  v2 = sub_1D66C4CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTagNavigate.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C4F98();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C6EE38();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF255E8, sub_1D5C6EE38);
  sub_1D5D2EE70(&type metadata for FormatTagNavigate, v16, v18, v13, &type metadata for FormatTagNavigate, v16, &type metadata for FormatVersions.JazzkonG, v14, v11, v17, &off_1F51F6BF8);
  v19 = qword_1EDF31EA8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCD18);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  if (!*(v12 + 16))
  {
    goto LABEL_9;
  }

  v22 = &v11[*(v8 + 44)];
  v24 = *v22;
  v23 = *(v22 + 1);
  LOBYTE(v44) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v44;
  *(v25 + 40) = v24;
  *(v25 + 48) = v23;
  sub_1D66C502C();
  v27 = v26;
  v28 = sub_1D5B58B84(&qword_1EDF03648, sub_1D66C502C);

  v42[1] = v27;
  v29 = sub_1D72647CC();
  LOBYTE(v44) = 0;
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = v29;
  *(v30 + 40) = v44;
  v31 = __swift_project_boxed_opaque_existential_1(&v11[*(v8 + 36)], *&v11[*(v8 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v31, v32);
  MEMORY[0x1EEE9AC00](v33, v34);
  v42[-4] = sub_1D5B4AA6C;
  v42[-3] = 0;
  v40 = sub_1D66C50C0;
  v41 = v25;
  v35 = v43;
  v37 = sub_1D5D2F7A4(v6, sub_1D615B49C, v36, sub_1D615B4A4, &v42[-6]);
  if (!v35)
  {
    v38 = v37;
    v43 = v28;

    if (v38)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = v12;
      sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
      sub_1D6670830();
      sub_1D72647EC();

      sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v11, sub_1D66C4F98);
    }

LABEL_9:
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v11, sub_1D66C4F98);
  }

  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v11, sub_1D66C4F98);
}

uint64_t sub_1D65C81F0(uint64_t a1)
{
  v2 = sub_1D5C6EFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C822C(uint64_t a1)
{
  v2 = sub_1D5C6EFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTemperatureFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D66C513C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C51D0();
  sub_1D5B58B84(&qword_1EDF0C390, sub_1D66C51D0);
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

      v20 = sub_1D6628490(0x74696E55776F6873, 0xE800000000000000);
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

  sub_1D5CDCE98();
  v23[1] = 0;
  v23[2] = 0;
  v24 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v17 = v26;
  *v13 = v25;
  *(v13 + 16) = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTemperatureFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C5350();
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D66C51D0();
  v17 = v16;
  v18 = sub_1D5B58B84(&qword_1EDF0C390, sub_1D66C51D0);
  sub_1D5D2EE70(&type metadata for FormatTemperatureFormat, v17, v19, v14, &type metadata for FormatTemperatureFormat, v17, &type metadata for FormatVersions.Sydro, v15, v10, v18, &off_1F51F6C38);
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v20 = sub_1D725BD1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDFFCDE0);
  (*(*(v20 - 8) + 16))(v6, v21, v20);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v46 = v6;
  v22 = v47;
  v23 = &v10[*(v47 + 44)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v55 = 0;
  v26 = swift_allocObject();
  v45[2] = v45;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v55;
  *(v26 + 40) = v25;
  *(v26 + 48) = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v45[-4] = sub_1D5B4AA6C;
  v45[-3] = 0;
  v43 = sub_1D6708BE0;
  v44 = v28;
  v55 = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v55;
  *(v29 + 40) = v25;
  *(v29 + 48) = v24;
  sub_1D66C53E4();
  v31 = v30;
  sub_1D5B58B84(&qword_1EDF029F8, sub_1D66C53E4);
  swift_retain_n();
  v45[1] = v31;
  v32 = sub_1D72647CC();
  v55 = 0;
  v33 = swift_allocObject();
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 16) = v32;
  *(v33 + 40) = v55;
  v34 = *(v22 + 36);
  v35 = v46;
  v36 = __swift_project_boxed_opaque_existential_1(&v10[v34], *&v10[v34 + 24]);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v45[-4] = sub_1D615B4A4;
  v45[-3] = &v45[-6];
  v43 = sub_1D66C5478;
  v44 = v29;
  v40 = v48;
  sub_1D5D2BC70(v35, sub_1D615B49C, v41, sub_1D615B4A4, &v45[-6]);
  if (v40)
  {
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D60ED320();
    sub_1D72647EC();
    sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v10, sub_1D66C5350);
}

uint64_t sub_1D65C8A70()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x74696E55776F6873;
  }
}

uint64_t sub_1D65C8AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696E55776F6873 && a2 == 0xE800000000000000;
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

uint64_t sub_1D65C8B90(uint64_t a1)
{
  v2 = sub_1D66C52A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C8BCC(uint64_t a1)
{
  v2 = sub_1D66C52A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65C8C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
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

uint64_t sub_1D65C8CF0(uint64_t a1)
{
  v2 = sub_1D5CA1BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C8D2C(uint64_t a1)
{
  v2 = sub_1D5CA1BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65C8D68()
{
  v1 = 0x63697274656DLL;
  v2 = 0x656D7473756A6461;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x656C797473;
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

uint64_t sub_1D65C8DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C7BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65C8E10(uint64_t a1)
{
  v2 = sub_1D665DC78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C8E4C(uint64_t a1)
{
  v2 = sub_1D665DC78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextAdjustmentOtherBaseline.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D66C54F4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v72 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5CA052C();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24DB8, sub_1D5CA052C);
  sub_1D5D2EE70(&type metadata for FormatTextAdjustmentOtherBaseline, v20, v22, v17, &type metadata for FormatTextAdjustmentOtherBaseline, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v70 = v24;
  v74 = v23;
  v68 = v25 + 16;
  v69(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v82 = v15;
  v83 = v16;
  v80 = 0uLL;
  v81 = 0;
  v26 = &v14[*(v11 + 44)];
  v77 = v9;
  v27 = *v26;
  v28 = *(v26 + 1);
  v84 = 0;
  v29 = swift_allocObject();
  v78 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v84;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D6708BE4;
  v64 = v31;
  v84 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v84;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C5588();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EDF02CB8, sub_1D66C5588);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
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
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v77;
  v63 = sub_1D66C561C;
  v64 = v32;
  v44 = v79;
  sub_1D5D2BC70(v77, sub_1D615B49C, v45, sub_1D615B4A4, (&v65 - 6));
  if (v44)
  {
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v47 = v14;
  }

  else
  {
    v66 = v38;
    v46 = v74;

    sub_1D72647EC();
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);

    v49 = v73;
    (v69)(v73, v70, v46);
    swift_storeEnumTagMultiPayload();
    v82 = v72;
    v79 = xmmword_1D728CF30;
    v80 = xmmword_1D728CF30;
    v81 = 0;
    v84 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v84;
    v51 = v71;
    *(v50 + 40) = v71;
    *(v50 + 48) = v28;
    MEMORY[0x1EEE9AC00](v50, v52);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D6708BE4;
    v64 = v53;
    v84 = 0;
    v54 = swift_allocObject();
    *(v54 + 16) = v79;
    *(v54 + 32) = v84;
    *(v54 + 40) = v51;
    *(v54 + 48) = v28;
    swift_retain_n();
    v78 = v14;
    v55 = sub_1D72647CC();
    v84 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v79;
    *(v56 + 40) = v84;
    v57 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v57, v58);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D6708BE4;
    v64 = v54;
    sub_1D5D2BC70(v49, sub_1D615B49C, v61, sub_1D615B4A4, (&v65 - 6));

    type metadata accessor for FormatTextNodeStyle();
    sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle);
    v62 = v78;
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v47 = v62;
  }

  return sub_1D5D2CFE8(v47, sub_1D66C54F4);
}

uint64_t sub_1D65C9724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C7D18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65C975C(uint64_t a1)
{
  v2 = sub_1D5CA061C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65C9798(uint64_t a1)
{
  v2 = sub_1D5CA061C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextAlignment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v35 = v33 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v34 = v33 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v33[1] = v33 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v33[0] = v33 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v33 - v20;
  v37 = *v1;
  v22 = a1[3];
  v23 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v26(v21, v25, v24);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = v41;
  sub_1D5D2BEC4(v21, sub_1D5B4AA6C, 0, v22, v23);
  result = sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
  if (!v27)
  {
    v29 = v38[3];
    v30 = v38[4];
    v41 = __swift_project_boxed_opaque_existential_1(v38, v29);
    if (v37 <= 1)
    {
      v32 = v33[0];
      v26(v33[0], v25, v24);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v32, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      if (v37 == 2)
      {
        v31 = v34;
        v26(v34, v25, v24);
      }

      else
      {
        v31 = v35;
        v26(v35, v25, v24);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v31, sub_1D5B4AA6C, 0, v29, v30);
      sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  return result;
}

uint64_t FormatTextContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v115 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v114 = &v108 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v112 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v113 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v108 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v110 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v109 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v108 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v108 - v35;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *v2;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  v44 = sub_1D5C30408();
  v116 = v40;
  sub_1D5D2EE70(&type metadata for FormatTextContent, &type metadata for FormatCodingKeys, v45, v43, &type metadata for FormatTextContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v42, v40, v44, &off_1F51F6C78);
  v46 = v41 >> 60;
  if ((v41 >> 60) > 4)
  {
    if (v46 <= 6)
    {
      v62 = v46 == 5;
      v51 = v116;
      v63 = v41 & 0xFFFFFFFFFFFFFFFLL;
      if (!v62)
      {
        v102 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
        v122[5] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
        v122[6] = v102;
        v122[7] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
        v123 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
        v103 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v122[1] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v122[2] = v103;
        v104 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
        v122[3] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v122[4] = v104;
        v122[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D62B52F8(v122, v117);
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v105 = sub_1D725BD1C();
        v106 = __swift_project_value_buffer(v105, qword_1EDFFCD18);
        v25 = v113;
        (*(*(v105 - 8) + 16))(v113, v106, v105);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AF560(6, v122, v25);
        sub_1D62B52A4(v122);
        goto LABEL_43;
      }

      v64 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *(v63 + 24);
      v66 = qword_1EDF31EB0;

      if (v66 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
      v69 = v111;
      (*(*(v67 - 8) + 16))(v111, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AF38C(5, v64, v65, v69);
    }

    else
    {
      v51 = v116;
      if (v46 == 7)
      {
        v81 = v41 & 0xFFFFFFFFFFFFFFFLL;
        v82 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v83 = *(v81 + 24);
        v84 = qword_1EDF31EE8;

        if (v84 != -1)
        {
          swift_once();
        }

        v85 = sub_1D725BD1C();
        v86 = __swift_project_value_buffer(v85, qword_1EDFFCD98);
        v69 = v112;
        (*(*(v85 - 8) + 16))(v112, v86, v85);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AF718(7, v82, v83, v69);
      }

      else
      {
        if (v46 == 8)
        {
          v54 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v124[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v124[1] = v54;
          v124[2] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v125 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          sub_1D66C5868(v124, v117);
          if (qword_1EDF31E80 != -1)
          {
            swift_once();
          }

          v55 = sub_1D725BD1C();
          v56 = __swift_project_value_buffer(v55, qword_1EDFFCCA8);
          v25 = v114;
          (*(*(v55 - 8) + 16))(v114, v56, v55);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          sub_1D63AF8AC(8, v124, v25);
          sub_1D66C58C4(v124);
          goto LABEL_43;
        }

        v90 = v41 & 0xFFFFFFFFFFFFFFFLL;
        v91 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v92 = *(v90 + 24);
        v93 = qword_1EDF31F50;

        if (v93 != -1)
        {
          swift_once();
        }

        v94 = sub_1D725BD1C();
        v95 = __swift_project_value_buffer(v94, qword_1EDFFCE80);
        v69 = v115;
        (*(*(v94 - 8) + 16))(v115, v95, v94);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63AFA54(9, v91, v92, v69);
      }
    }

    v25 = v69;
LABEL_43:
    v80 = v25;
LABEL_44:
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v61 = v51;
    return sub_1D5D2CFE8(v61, sub_1D5D30DC4);
  }

  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v70 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v71 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v115 = v70;
      sub_1D5B58478();
      v73 = *(v72 + 48);
      v74 = v109;
      v75 = &v109[*(v72 + 64)];
      v76 = qword_1EDF31EB0;

      if (v76 != -1)
      {
        swift_once();
      }

      v77 = sub_1D725BD1C();
      v78 = __swift_project_value_buffer(v77, qword_1EDFFCD30);
      v79 = *(*(v77 - 8) + 16);
      v79(v74, v78, v77);
      v79(v74 + v73, v78, v77);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v75 = 0;
      *(v75 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v51 = v116;
      sub_1D63AEE90(2, v115, v71, v74);

      v80 = v74;
      goto LABEL_44;
    }

    if (v46 == 3)
    {
      v47 = v41 & 0xFFFFFFFFFFFFFFFLL;
      v48 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *(v47 + 24);
      v50 = qword_1EDF31EB0;

      v51 = v116;
      if (v50 != -1)
      {
        swift_once();
      }

      v52 = sub_1D725BD1C();
      v53 = __swift_project_value_buffer(v52, qword_1EDFFCD30);
      (*(*(v52 - 8) + 16))(v25, v53, v52);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AF058(3, v48, v49, v25);
    }

    else
    {
      v87 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v120[0] = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v120[1] = v87;
      v121 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D66C5918(v120, v117);
      v51 = v116;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v88 = sub_1D725BD1C();
      v89 = __swift_project_value_buffer(v88, qword_1EDFFCD30);
      v25 = v110;
      (*(*(v88 - 8) + 16))(v110, v89, v88);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63AF1EC(4, v120, v25);
      sub_1D66C5974(v120);
    }

    goto LABEL_43;
  }

  if (v46)
  {
    v96 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v97 = *((v41 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v98 = qword_1EDF31EB0;

    v99 = v116;
    if (v98 != -1)
    {
      swift_once();
    }

    v100 = sub_1D725BD1C();
    v101 = __swift_project_value_buffer(v100, qword_1EDFFCD30);
    (*(*(v100 - 8) + 16))(v32, v101, v100);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AEE90(1, v96, v97, v32);

    sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
    v61 = v99;
  }

  else
  {
    v57 = *(v41 + 32);
    v118[0] = *(v41 + 16);
    v118[1] = v57;
    v118[2] = *(v41 + 48);
    v119 = *(v41 + 64);
    sub_1D5FD78CC(v118, v117);
    v58 = v116;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v59 = sub_1D725BD1C();
    v60 = __swift_project_value_buffer(v59, qword_1EDFFCD30);
    (*(*(v59 - 8) + 16))(v36, v60, v59);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63AECE8(0, v118, v36);
    sub_1D5FD7B18(v118);
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
    v61 = v58;
  }

  return sub_1D5D2CFE8(v61, sub_1D5D30DC4);
}

uint64_t sub_1D65CAA38(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 1802398060;
    v6 = 0x656D695465746164;
    if (a1 != 8)
    {
      v6 = 0x726F7463656C6573;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x686374697773;
    if (a1 != 5)
    {
      v7 = 0x7265626D756ELL;
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
    v1 = 0x676E69646E6962;
    v2 = 0x657A696C61636F6CLL;
    v3 = 0x657474616D726F66;
    if (a1 != 3)
    {
      v3 = 0x656D686361747461;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x656E696C6E69;
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

uint64_t sub_1D65CABCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65CAA38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTextLineBreakMode.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v43 = &v40 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v42 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v41 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v40 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v40 - v23;
  v47 = *v1;
  v25 = a1[3];
  v26 = a1[4];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(*(v27 - 8) + 16);
  v29(v24, v28, v27);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v30 = v51;
  sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v25, v26);
  if (v30)
  {
    return sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
  v32 = v48;
  v33 = v48[3];
  v34 = v48[4];
  v51 = __swift_project_boxed_opaque_existential_1(v48, v33);
  if (v47 > 2)
  {
    v40 = v34;
    if (v47 == 3)
    {
      v38 = v42;
      v29(v42, v28, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v38, sub_1D5B4AA6C, 0, v33, v40);
      sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_1D7264B3C();
    }

    else
    {
      if (v47 == 4)
      {
        v36 = v43;
        v29(v43, v28, v27);
      }

      else
      {
        v36 = v44;
        v29(v44, v28, v27);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v36, sub_1D5B4AA6C, 0, v33, v40);
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      sub_1D7264B3C();
    }
  }

  else if (v47)
  {
    if (v47 == 1)
    {
      v29(v46, v28, v27);
      v35 = v46;
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v35, sub_1D5B4AA6C, 0, v33, v34);
      sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v40 = v34;
      v39 = v41;
      v29(v41, v28, v27);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v33, v40);
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
    }

    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_1D7264B3C();
  }

  else
  {
    v29(v45, v28, v27);
    v37 = v45;
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v37, sub_1D5B4AA6C, 0, v33, v34);
    sub_1D5D2CFE8(v37, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_1D7264B3C();
  }

  __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1D65CB3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C7E38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65CB428(uint64_t a1)
{
  v2 = sub_1D5C88D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CB464(uint64_t a1)
{
  v2 = sub_1D5C88D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65CB4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C83E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65CB4D8(uint64_t a1)
{
  v2 = sub_1D5CE63E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CB514(uint64_t a1)
{
  v2 = sub_1D5CE63E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAlternativeLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v52 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v26 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic, &type metadata for FormatCodingKeys, v27, v24, &type metadata for FormatTextNodeAlternativeLogic, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v25, v22, v26, &off_1F51F6C78);
  v28 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    if (v28 == 2)
    {
      v36 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v37 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = qword_1EDF31EB0;

      if (v38 != -1)
      {
        swift_once();
      }

      v39 = sub_1D725BD1C();
      v40 = __swift_project_value_buffer(v39, qword_1EDFFCD30);
      (*(*(v39 - 8) + 16))(v10, v40, v39);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638A694(2, v36, v37, v10);

      v35 = v10;
    }

    else
    {
      v46 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v48 = qword_1EDF31EB0;

      if (v48 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
      (*(*(v49 - 8) + 16))(v6, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638A694(3, v46, v47, v6);

      v35 = v6;
    }
  }

  else if (v28)
  {
    v41 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v42 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v43 = qword_1EDF31EB0;

    if (v43 != -1)
    {
      swift_once();
    }

    v44 = sub_1D725BD1C();
    v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
    (*(*(v44 - 8) + 16))(v14, v45, v44);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A4FC(1, v41, v42, v14);

    v35 = v14;
  }

  else
  {
    v29 = *(v23 + 16);
    v30 = *(v23 + 24);
    v31 = *(v23 + 32);
    v32 = qword_1EDF31EB0;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = sub_1D725BD1C();
    v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
    (*(*(v33 - 8) + 16))(v18, v34, v33);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638A364(0, v29, v30, v31, v18);

    v35 = v18;
  }

  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v22, sub_1D5D30DC4);
}

uint64_t sub_1D65CBAFC()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65CBBA8()
{
  sub_1D72621EC();
}

uint64_t sub_1D65CBC40()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65CBCE8(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7629921;
  v4 = 0xE300000000000000;
  v5 = 6581857;
  if (*v1 != 2)
  {
    v5 = 29295;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 0x656E694C74786574;
    v2 = 0xE900000000000073;
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

uint64_t FormatTextNodeAlternativeLogic.AlternativeLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D66C5B08();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C5B9C();
  sub_1D5B58B84(&qword_1EC887598, sub_1D66C5B9C);
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

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5CE65B0();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeAlternativeLogic.AlternativeLogic.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v64 - v8;
  sub_1D66C5D1C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[1];
  v71 = v1[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D66C5B9C();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EC887598, sub_1D66C5B9C);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic.AlternativeLogic, v20, v22, v17, &type metadata for FormatTextNodeAlternativeLogic.AlternativeLogic, v20, &type metadata for FormatVersions.JazzkonC, v18, v14, v21, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v23 = sub_1D725BD1C();
  v24 = __swift_project_value_buffer(v23, qword_1EDFFCD30);
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
  v62 = sub_1D6708BE8;
  v63 = v31;
  v83 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v83;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C5DB0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8875B0, sub_1D66C5DB0);
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
  v62 = sub_1D66C5E44;
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
    v62 = sub_1D6708BE8;
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
    v62 = sub_1D6708BE8;
    v63 = v54;
    sub_1D5D2BC70(v48, sub_1D615B49C, v61, sub_1D615B4A4, (&v64 - 6));

    sub_1D665C4B4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C5D1C);
}

uint64_t sub_1D65CC948()
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
    return 0x696669746E656469;
  }
}

uint64_t sub_1D65CC99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C854C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65CC9D4(uint64_t a1)
{
  v2 = sub_1D66C5C74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CCA10(uint64_t a1)
{
  v2 = sub_1D66C5C74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAlternativeLogic.LogicalOperator.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D66C5EC0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C5F54();
  sub_1D5B58B84(&qword_1EC8875E0, sub_1D66C5F54);
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

      v21 = sub_1D6627E68(7563372, 0xE300000000000000, 7563378, 0xE300000000000000);
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

  sub_1D5CE65B0();
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

uint64_t FormatTextNodeAlternativeLogic.LogicalOperator.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66C60D4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v72 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C5F54();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC8875E0, sub_1D66C5F54);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic.LogicalOperator, v19, v21, v16, &type metadata for FormatTextNodeAlternativeLogic.LogicalOperator, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
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
  v64 = sub_1D6708BEC;
  v65 = v31;
  v81 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v81;
  v71 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C6168();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC8875F8, sub_1D66C6168);
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
  v64 = sub_1D66C61FC;
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

    v48 = sub_1D665C4B4();
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
    v64 = sub_1D6708BEC;
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
    v64 = sub_1D6708BEC;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C60D4);
}

uint64_t sub_1D65CD5F8()
{
  v1 = 7563378;
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
    return 7563372;
  }
}

uint64_t sub_1D65CD638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C8668(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65CD670(uint64_t a1)
{
  v2 = sub_1D66C602C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CD6AC(uint64_t a1)
{
  v2 = sub_1D66C602C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAlternativeLogic.TextLines.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v66 - v8);
  sub_1D66C6278();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v73 = *(v1 + 8);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5CE7168();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24E78, sub_1D5CE7168);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAlternativeLogic.TextLines, v19, v21, v16, &type metadata for FormatTextNodeAlternativeLogic.TextLines, v19, &type metadata for FormatVersions.JazzkonC, v17, v14, v20, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
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
  v64 = sub_1D6708908;
  v65 = v30;
  v81 = 0;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v81;
  v72 = v26;
  *(v31 + 40) = v26;
  *(v31 + 48) = v27;
  sub_1D66C630C();
  v33 = v32;
  v34 = sub_1D5B58B84(&qword_1EDF02DB8, sub_1D66C630C);
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
  v64 = sub_1D66C63A0;
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
    LOBYTE(v84) = v73;
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
    v64 = sub_1D6708908;
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
    v64 = sub_1D6708908;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D60566E4();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    v48 = v47;
  }

  return sub_1D5D2CFE8(v48, sub_1D66C6278);
}

uint64_t sub_1D65CDFA0(uint64_t a1)
{
  v2 = sub_1D5CE72D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CDFDC(uint64_t a1)
{
  v2 = sub_1D5CE72D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAttachment.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v88 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v96 = &v87 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v87 - v11;
  sub_1D66C641C();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v90 = *(v1 + 8);
  v19 = *(v1 + 24);
  v91 = *(v1 + 16);
  v92 = v19;
  v110 = *(v1 + 32);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D5CCF388();
  v23 = v22;
  v24 = sub_1D5B58B84(&qword_1EDF250B8, sub_1D5CCF388);
  sub_1D5D2EE70(&type metadata for FormatTextNodeAttachment, v23, v25, v20, &type metadata for FormatTextNodeAttachment, v23, &type metadata for FormatVersions.JazzkonC, v21, v17, v24, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v29 = *(v28 + 16);
  v89 = v27;
  v94 = v29;
  v95 = v26;
  v98 = v28 + 16;
  (v29)(v12);
  v97 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v104 = v18;
  v107 = 0uLL;
  v108 = 0;
  v30 = &v17[*(v14 + 44)];
  *&v101 = v12;
  v31 = *v30;
  v32 = *(v30 + 1);
  v109 = 0;
  v33 = swift_allocObject();
  *&v102 = &v87;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v109;
  *(v33 + 40) = v31;
  *(v33 + 48) = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v35 = v17;
  *(&v87 - 4) = sub_1D5B4AA6C;
  *(&v87 - 3) = 0;
  v85 = sub_1D6708BF0;
  v86 = v36;
  v109 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v109;
  v93 = v31;
  *(v37 + 40) = v31;
  *(v37 + 48) = v32;
  sub_1D66C64B0();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03048, sub_1D66C64B0);
  swift_retain_n();
  v99 = v40;
  v100 = v39;
  v41 = sub_1D72647CC();
  v109 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v109;
  v43 = &v17[*(v14 + 36)];
  v44 = __swift_project_boxed_opaque_existential_1(v43, *(v43 + 3));
  MEMORY[0x1EEE9AC00](v44, v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v87 - 4) = sub_1D615B4A4;
  *(&v87 - 3) = (&v87 - 6);
  v48 = v101;
  v85 = sub_1D6708BF0;
  v86 = v37;
  v49 = v103;
  sub_1D5D2BC70(v101, sub_1D615B49C, v50, sub_1D615B4A4, (&v87 - 6));
  if (v49)
  {
    sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

    v51 = v35;
    return sub_1D5D2CFE8(v51, sub_1D66C641C);
  }

  v103 = v43;

  sub_1D5C87FC8();
  sub_1D72647EC();
  v51 = v35;
  sub_1D5D2CFE8(v48, type metadata accessor for FormatVersionRequirement);

  v54 = v95;
  v53 = v96;
  v55 = v94;
  v94(v96, v89, v95);
  swift_storeEnumTagMultiPayload();
  if (v90)
  {
    LOBYTE(v107) = 0;
    v56 = swift_allocObject();
    v102 = xmmword_1D728CF30;
    *(v56 + 16) = xmmword_1D728CF30;
    *(v56 + 32) = v107;
    *(v56 + 40) = v93;
    *(v56 + 48) = v32;

    v57 = sub_1D72647CC();
    LOBYTE(v107) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v102;
    *(v58 + 40) = v107;
    v59 = __swift_project_boxed_opaque_existential_1(v103, *(v103 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v87 - 4) = sub_1D5B4AA6C;
    *(&v87 - 3) = 0;
    v85 = sub_1D66C6544;
    v86 = v56;
    v64 = sub_1D5D2F7A4(v53, sub_1D615B49C, v63, sub_1D615B4A4, (&v87 - 6));
    v83 = v64;

    if (v83)
    {
      v107 = v102;
      v108 = 0;
      LOBYTE(v104) = 1;
      sub_1D66C65C0();
      sub_1D72647EC();
      sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
      v55 = v94;
      v54 = v95;
      *&v102 = 0;
    }

    else
    {
      *&v102 = 0;
      sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
      v55 = v94;
      v54 = v95;
    }
  }

  else
  {
    *&v102 = 0;
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);
  }

  v65 = v88;
  v66 = v110;
  v68 = v91;
  v67 = v92;
  sub_1D5C75A4C(v91, v92, v110);
  v69 = v32;
  if (qword_1EDF31F50 != -1)
  {
    swift_once();
  }

  v70 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
  v55(v65, v70, v54);
  swift_storeEnumTagMultiPayload();
  v71 = v93;
  v72 = v103;
  if (v66)
  {

    sub_1D5D2F2C8(v68, v67, 1);
    sub_1D5D2F2C8(1, 0, 0);
    goto LABEL_16;
  }

  sub_1D5D2F2C8(v68, v67, 0);
  sub_1D5D2F2C8(1, 0, 0);
  if ((v68 & 1) == 0)
  {
LABEL_16:
    LOBYTE(v107) = 0;
    v73 = swift_allocObject();
    v101 = xmmword_1D7297410;
    *(v73 + 16) = xmmword_1D7297410;
    *(v73 + 32) = v107;
    *(v73 + 40) = v71;
    *(v73 + 48) = v69;

    v74 = sub_1D72647CC();
    LOBYTE(v107) = 0;
    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    *(v75 + 24) = v101;
    *(v75 + 40) = v107;
    v76 = __swift_project_boxed_opaque_existential_1(v72, *(v72 + 3));
    MEMORY[0x1EEE9AC00](v76, v77);
    MEMORY[0x1EEE9AC00](v78, v79);
    *(&v87 - 4) = sub_1D5B4AA6C;
    *(&v87 - 3) = 0;
    v85 = sub_1D6708BF0;
    v86 = v73;
    v80 = v102;
    v82 = sub_1D5D2F7A4(v65, sub_1D615B49C, v81, sub_1D615B4A4, (&v87 - 6));
    if (v80)
    {
      sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v91, v92, v110);
    }

    else
    {
      v84 = v82;

      if (v84)
      {
        v107 = v101;
        v108 = 0;
        v104 = v91;
        v105 = v92;
        v106 = v110;
        sub_1D60ED320();
        sub_1D72647EC();
        sub_1D5D2F2C8(v104, v105, v106);
        sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2F2C8(v91, v92, v110);
      }
    }

    return sub_1D5D2CFE8(v51, sub_1D66C641C);
  }

  sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v51, sub_1D66C641C);
}

uint64_t sub_1D65CEC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C8890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65CEC70(uint64_t a1)
{
  v2 = sub_1D5CCF478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65CECAC(uint64_t a1)
{
  v2 = sub_1D5CCF478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeAttachmentAlignment.encode(to:)(void *a1)
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

uint64_t sub_1D65CF094(char a1)
{
  result = 0x656E696C64616568;
  switch(a1)
  {
    case 1:
      result = 0x6575737369;
      break;
    case 2:
      result = 0x70756F7267;
      break;
    case 3:
      result = 0x6E6F6974706FLL;
      break;
    case 4:
      result = 0x79747265706F7270;
      break;
    case 5:
      result = 0x6172546F69647561;
      break;
    case 6:
      result = 6775156;
      break;
    case 7:
      result = 0x6465626D45626577;
      break;
    case 8:
      result = 0x656C7A7A7570;
      break;
    case 9:
      result = 0x7954656C7A7A7570;
      break;
    case 10:
      result = 0x7453656C7A7A7570;
      break;
    case 11:
      result = 0x74496D6F74737563;
      break;
    case 12:
      result = 0x76457374726F7073;
      break;
    case 13:
      result = 0x6C6C6177796170;
      break;
    case 14:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65CF23C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  return v12 & 1;
}

uint64_t sub_1D65CF2E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1D7264A0C();
  a3(v5);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65CF36C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1D72621EC();
}

uint64_t sub_1D65CF3DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1D7264A0C();
  a4(v6);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65CF444@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D65CF094(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatTextNodeDateTimeFormat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D66C6614();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C66A8();
  sub_1D5B58B84(&qword_1EC887628, sub_1D66C66A8);
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

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x74616D726F66, 0xE600000000000000);
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

  sub_1D60344C0();
  v28 = 0uLL;
  LOBYTE(v29) = 0;
  sub_1D726431C();
  v17 = v26;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CCD298();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  v24 = v29;
  v25 = v30;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 24) = v24;
  *(v13 + 40) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeDateTimeFormat.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v66 - v8;
  sub_1D66C6828();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = *(v1 + 1);
  v76 = *(v1 + 3);
  v77 = v16;
  v17 = v1[6];
  v75 = v1[5];
  v74 = v17;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D66C66A8();
  v21 = v20;
  v22 = sub_1D5B58B84(&qword_1EC887628, sub_1D66C66A8);
  sub_1D5D2EE70(&type metadata for FormatTextNodeDateTimeFormat, v21, v23, v18, &type metadata for FormatTextNodeDateTimeFormat, v21, &type metadata for FormatVersions.Dawnburst, v19, v14, v22, &off_1F51F6CF8);
  if (qword_1EDF31E80 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCCA8);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v72 = v25;
  v79 = v24;
  v71 = v27;
  v70 = v26 + 16;
  (v27)(v9);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v85 = v15;
  v87 = 0uLL;
  LOBYTE(v88) = 0;
  v28 = &v14[*(v11 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v91 = 0;
  v31 = swift_allocObject();
  v82 = &v66;
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v91;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v83 = v9;
  *(&v66 - 4) = sub_1D5B4AA6C;
  *(&v66 - 3) = 0;
  v64 = sub_1D6708BF4;
  v65 = v33;
  v91 = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v91;
  v73 = v29;
  *(v34 + 40) = v29;
  *(v34 + 48) = v30;
  sub_1D66C68BC();
  v36 = v35;
  v37 = sub_1D5B58B84(&qword_1EC887640, sub_1D66C68BC);
  swift_retain_n();
  v80 = v37;
  v81 = v36;
  v38 = sub_1D72647CC();
  v91 = 0;
  v39 = swift_allocObject();
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = v91;
  v40 = &v14[*(v11 + 36)];
  v41 = __swift_project_boxed_opaque_existential_1(v40, *(v40 + 3));
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v66 - 4) = sub_1D615B4A4;
  *(&v66 - 3) = (&v66 - 6);
  v46 = v83;
  v45 = v84;
  v64 = sub_1D66C6950;
  v65 = v34;
  sub_1D5D2BC70(v83, sub_1D615B49C, v47, sub_1D615B4A4, (&v66 - 6));
  if (v45)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v67 = v40;
    v48 = v79;
    v68 = v30;

    sub_1D6034514();
    sub_1D72647EC();
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v50 = v78;
    v71(v78, v72, v48);
    swift_storeEnumTagMultiPayload();
    v88 = v76;
    v87 = v77;
    v89 = v75;
    v90 = v74;
    v84 = xmmword_1D728CF30;
    v85 = xmmword_1D728CF30;
    v86 = 0;
    v91 = 0;
    v51 = swift_allocObject();
    v83 = &v66;
    *(v51 + 16) = v84;
    *(v51 + 32) = v91;
    v52 = v73;
    v53 = v68;
    *(v51 + 40) = v73;
    *(v51 + 48) = v53;
    MEMORY[0x1EEE9AC00](v51, v54);
    *(&v66 - 4) = sub_1D5B4AA6C;
    *(&v66 - 3) = 0;
    v64 = sub_1D6708BF4;
    v65 = v55;
    v91 = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = v84;
    *(v56 + 32) = v91;
    *(v56 + 40) = v52;
    *(v56 + 48) = v53;
    swift_retain_n();
    v57 = sub_1D72647CC();
    v91 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v84;
    *(v58 + 40) = v91;
    v59 = __swift_project_boxed_opaque_existential_1(v67, *(v67 + 3));
    MEMORY[0x1EEE9AC00](v59, v60);
    MEMORY[0x1EEE9AC00](v61, v62);
    *(&v66 - 4) = sub_1D615B4A4;
    *(&v66 - 3) = (&v66 - 6);
    v64 = sub_1D6708BF4;
    v65 = v56;
    sub_1D5D2BC70(v50, sub_1D615B49C, v63, sub_1D615B4A4, (&v66 - 6));

    sub_1D66C69CC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C6828);
}

uint64_t sub_1D65D00F0()
{
  v1 = 0x74616D726F66;
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
    return 0x676E69646E6962;
  }
}

uint64_t sub_1D65D0140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C89F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D0178(uint64_t a1)
{
  v2 = sub_1D66C6780();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D01B4(uint64_t a1)
{
  v2 = sub_1D66C6780();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D01F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C8B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D0228(uint64_t a1)
{
  v2 = sub_1D5C9778C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D0264(uint64_t a1)
{
  v2 = sub_1D5C9778C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D02A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C8C18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D02D8(uint64_t a1)
{
  v2 = sub_1D5C78498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D0314(uint64_t a1)
{
  v2 = sub_1D5C78498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTextNodeLink.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66C6A20();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C6AB4();
  sub_1D5B58B84(&qword_1EC887670, sub_1D66C6AB4);
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

      v20 = sub_1D6627E68(0x746E65746E6F63, 0xE700000000000000, 7107189, 0xE300000000000000);
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

  sub_1D5C6F1D8();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CA2FA0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatTextNodeLink.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v65 - v8;
  sub_1D66C6C34();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v71 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C6AB4();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887670, sub_1D66C6AB4);
  sub_1D5D2EE70(&type metadata for FormatTextNodeLink, v19, v21, v16, &type metadata for FormatTextNodeLink, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v73 = v23;
  v74 = v22;
  v68 = v24 + 16;
  v69 = v25;
  (v25)(v9);
  v67 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v83 = v15;
  v81 = 0uLL;
  v82 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v80 = 0;
  v29 = swift_allocObject();
  v77 = &v65;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v80;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *&v79 = v9;
  *(&v65 - 4) = sub_1D5B4AA6C;
  *(&v65 - 3) = 0;
  v63 = sub_1D6708BF8;
  v64 = v31;
  v80 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v80;
  v70 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C6CC8();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887688, sub_1D66C6CC8);
  swift_retain_n();
  v75 = v35;
  v76 = v34;
  v36 = sub_1D72647CC();
  v80 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v80;
  v38 = &v14[*(v11 + 36)];
  v39 = __swift_project_boxed_opaque_existential_1(v38, *(v38 + 3));
  MEMORY[0x1EEE9AC00](v39, v40);
  MEMORY[0x1EEE9AC00](v41, v42);
  *(&v65 - 4) = sub_1D615B4A4;
  *(&v65 - 3) = (&v65 - 6);
  v43 = v78;
  v44 = v79;
  v63 = sub_1D66C6D5C;
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

    sub_1D5C76E3C();
    sub_1D72647EC();
    sub_1D5D2CFE8(v79, type metadata accessor for FormatVersionRequirement);

    v49 = v72;
    v69(v72, v47, v46);
    swift_storeEnumTagMultiPayload();
    v83 = v71;
    v79 = xmmword_1D728CF30;
    v81 = xmmword_1D728CF30;
    v82 = 0;
    v80 = 0;
    v50 = swift_allocObject();
    v77 = &v65;
    *(v50 + 16) = v79;
    *(v50 + 32) = v80;
    v51 = v70;
    v52 = v78;
    *(v50 + 40) = v70;
    *(v50 + 48) = v52;
    MEMORY[0x1EEE9AC00](v50, v53);
    *(&v65 - 4) = sub_1D5B4AA6C;
    *(&v65 - 3) = 0;
    v63 = sub_1D6708BF8;
    v64 = v54;
    v80 = 0;
    v55 = swift_allocObject();
    *(v55 + 16) = v79;
    *(v55 + 32) = v80;
    *(v55 + 40) = v51;
    *(v55 + 48) = v52;
    swift_retain_n();
    v56 = sub_1D72647CC();
    v80 = 0;
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v79;
    *(v57 + 40) = v80;
    v58 = __swift_project_boxed_opaque_existential_1(v66, *(v66 + 3));
    MEMORY[0x1EEE9AC00](v58, v59);
    MEMORY[0x1EEE9AC00](v60, v61);
    *(&v65 - 4) = sub_1D615B4A4;
    *(&v65 - 3) = (&v65 - 6);
    v63 = sub_1D6708BF8;
    v64 = v55;
    sub_1D5D2BC70(v49, sub_1D615B49C, v62, sub_1D615B4A4, (&v65 - 6));

    sub_1D60B27FC();
    sub_1D72647EC();
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C6C34);
}

uint64_t sub_1D65D0EF8()
{
  v1 = 7107189;
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
    return 0x746E65746E6F63;
  }
}

uint64_t sub_1D65D0F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C8DD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D0F7C(uint64_t a1)
{
  v2 = sub_1D66C6B8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D0FB8(uint64_t a1)
{
  v2 = sub_1D66C6B8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D0FF4()
{
  v1 = 0x74616D726F66;
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
    return 0x7265626D756ELL;
  }
}

uint64_t sub_1D65D1040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66C8EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D1078(uint64_t a1)
{
  v2 = sub_1D665BA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D10B4(uint64_t a1)
{
  v2 = sub_1D665BA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D1108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CA5A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D1140(uint64_t a1)
{
  v2 = sub_1D5C31BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D117C(uint64_t a1)
{
  v2 = sub_1D5C31BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D11B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CAABC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D11F0(uint64_t a1)
{
  v2 = sub_1D5C36820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D122C(uint64_t a1)
{
  v2 = sub_1D5C36820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D1268(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7361637265776F6CLL;
  if (v2 == 1)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v3 = 0x696C617469706163;
    v4 = 0xEA0000000000657ALL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7361637265707075;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x7361637265776F6CLL;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x696C617469706163;
    v8 = 0xEA0000000000657ALL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7361637265707075;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
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

uint64_t sub_1D65D136C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65D1414()
{
  sub_1D72621EC();
}

uint64_t sub_1D65D14A8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatTranslate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  *&v71 = a2;
  *(&v71 + 1) = a3;
  v72 = a4;
  v73 = a5;
  v67 = type metadata accessor for FormatRange();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v11);
  v58 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v57 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v55 - v21;
  v68 = a2;
  *&v71 = a2;
  *(&v71 + 1) = a3;
  v60 = a3;
  v61 = a4;
  v72 = a4;
  v73 = a5;
  v70 = a5;
  v22 = _s10CodingKeysOMa_21();
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  *&v71 = v22;
  *(&v71 + 1) = WitnessTable;
  v62 = v24;
  v63 = WitnessTable;
  v72 = v24;
  v73 = v25;
  v26 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v27 = sub_1D726435C();
  v69 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v55 - v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = v74;
  sub_1D7264B0C();
  v32 = v31;
  if (v31)
  {
    goto LABEL_13;
  }

  v55 = 0;
  v56 = v30;
  v74 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = sub_1D7264AFC();
  v34 = Dictionary<>.errorOnUnknownKeys.getter(v33);

  if ((v34 & 1) == 0)
  {
LABEL_10:
    v71 = 0uLL;
    LOBYTE(v72) = 0;
    v47 = v67;
    swift_getWitnessTable();
    v48 = v66;
    v49 = v74;
    v51 = v55;
    v50 = v56;
    sub_1D726431C();
    v32 = v51;
    if (!v51)
    {
      v71 = xmmword_1D728CF30;
      LOBYTE(v72) = 0;
      sub_1D726431C();
      (*(v69 + 8))(v50, v49);
      v52 = *(v64 + 32);
      v53 = v57;
      v52(v57, v48, v47);
      v54 = v58;
      v52(v58, v65, v47);
      FormatTranslate.init(x:y:)(v53, v54, v59);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v69 + 8))(v50, v49);
LABEL_13:
    sub_1D61E4FBC(a1, v32);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = 0;
  v36 = (sub_1D726433C() + 48);
  v37 = v69;
  while (1)
  {
    if (v35 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v38 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v38 & 1) == 0)
    {
      break;
    }

    v40 = *v36;
    v71 = *(v36 - 1);
    LOBYTE(v72) = v40;
    if (__OFADD__(v35, 1))
    {
      goto LABEL_16;
    }

    v41 = sub_1D6AFC82C(v26);
    ++v35;
    v36 += 24;
    if (v42)
    {
      v43 = v41;
      v44 = v42;

      v45 = sub_1D6AFC690(v22, v63, v62, v25);
      sub_1D5E2D970();
      v32 = swift_allocError();
      *v46 = v43;
      *(v46 + 8) = v44;
      *(v46 + 16) = v45;
      *(v46 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v37 + 8))(v56, v74);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatTranslate.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v36 - v9;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v41 = *(a2 + 24);
  v42 = v11;
  *&v48 = v11;
  *(&v48 + 1) = v41;
  v40 = v12;
  v49 = v12;
  v50 = v13;
  v14 = _s10CodingKeysOMa_21();
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  *&v48 = v14;
  *(&v48 + 1) = WitnessTable;
  v49 = v16;
  v50 = v17;
  v18 = type metadata accessor for FormatCodingKeysContainer();
  v19 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v51 = type metadata accessor for VersionedKeyedEncodingContainer();
  v43 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v20);
  v22 = v36 - v21;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D5D2EE70(a2, v18, v25, v23, a2, v18, &type metadata for FormatVersions.JazzkonC, v24, v22, v19, &off_1F51F6C78);
  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1D725BD1C();
  v27 = __swift_project_value_buffer(v26, qword_1EDFFCD30);
  v28 = *(v26 - 8);
  v37 = *(v28 + 16);
  v38 = v27;
  v36[1] = v28 + 16;
  v37(v10);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v48 = v42;
  *(&v48 + 1) = v41;
  v49 = v40;
  v50 = v13;
  v29 = type metadata accessor for FormatRange();
  v30 = swift_getWitnessTable();
  v31 = v44;
  sub_1D5D38930(v45, v46, v10, sub_1D5B4AA6C, 0, v51, v29, v30);
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  if (v31)
  {
    return (*(v43 + 8))(v22, v51);
  }

  v33 = *(a2 + 52);
  v48 = xmmword_1D728CF30;
  LOBYTE(v49) = 0;
  v34 = v39;
  (v37)(v39, v38, v26);
  swift_storeEnumTagMultiPayload();
  v35 = v51;
  sub_1D5D38930(v45 + v33, &v48, v34, sub_1D5B4AA6C, 0, v51, v29, v30);
  sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
  return (*(v43 + 8))(v22, v35);
}

uint64_t sub_1D65D1FD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1885433183 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D65D20DC(char a1)
{
  if (!a1)
  {
    return 120;
  }

  if (a1 == 1)
  {
    return 121;
  }

  return 1885433183;
}

uint64_t sub_1D65D2180@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, void *)@<X2>, uint64_t *a3@<X8>)
{
  result = sub_1D65D7D28(a1[2], a1[3], a1[4], a1[5], a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D21B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65D220C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65D2260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CAF40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D2298(uint64_t a1)
{
  v2 = sub_1D5CDF3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D22D4(uint64_t a1)
{
  v2 = sub_1D5CDF3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTypeDefinition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 8);
  v36 = *v1;
  v20 = *(v1 + 32);
  v34 = *(v1 + 16);
  v35 = v20;
  v21 = *(v1 + 48);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatTypeDefinition, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatTypeDefinition, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v23, v18, v24, &off_1F51F6C78);
  if (v21 >> 6)
  {
    if (v21 >> 6 == 1)
    {
      *&v37[0] = v36;
      *(&v37[0] + 1) = v19;
      v37[1] = v34;
      v37[2] = v35;
      v38 = v21 & 1;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD18);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A1D10(1, v37, v10);
      v28 = v10;
    }

    else
    {
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCDC8);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63A1EB8(2, v36, v6);
      v28 = v6;
    }
  }

  else
  {
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD30);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63A1B7C(0, v36, v14);
    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65D2744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63614D6574617473;
  v4 = 0xEC000000656E6968;
  if (v2 != 1)
  {
    v3 = 0x74496D6F74737563;
    v4 = 0xEA00000000006D65;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1836412517;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x63614D6574617473;
  v8 = 0xEC000000656E6968;
  if (*a2 != 1)
  {
    v7 = 0x74496D6F74737563;
    v8 = 0xEA00000000006D65;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1836412517;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_1D65D2858()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65D2900()
{
  sub_1D72621EC();
}

uint64_t sub_1D65D2994()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65D2A38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEC000000656E6968;
  v5 = 0x63614D6574617473;
  if (v2 != 1)
  {
    v5 = 0x74496D6F74737563;
    v4 = 0xEA00000000006D65;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1836412517;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatTypeDefinition.Case.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v92 = &v80 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v80 - v11;
  sub_1D66C9230();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v84 = v1[3];
  v85 = v20;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D5CE0820();
  v24 = v23;
  v25 = sub_1D5B58B84(&qword_1EDF25358, sub_1D5CE0820);
  sub_1D5D2EE70(&type metadata for FormatTypeDefinition.Case, v24, v26, v21, &type metadata for FormatTypeDefinition.Case, v24, &type metadata for FormatVersions.JazzkonC, v22, v17, v25, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v27 = sub_1D725BD1C();
  v28 = __swift_project_value_buffer(v27, qword_1EDFFCD30);
  v29 = *(v27 - 8);
  v30 = *(v29 + 16);
  v90 = v28;
  v91 = v27;
  v89 = v30;
  v87 = v29 + 16;
  (v30)(v12);
  v86 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v101 = v19;
  v102 = v18;
  v99 = 0uLL;
  v100 = 0;
  v31 = &v17[*(v14 + 44)];
  v96 = v12;
  v33 = *v31;
  v32 = *(v31 + 1);
  v103 = 0;
  v34 = swift_allocObject();
  v97 = &v80;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v103;
  *(v34 + 40) = v33;
  *(v34 + 48) = v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  *(&v80 - 4) = sub_1D5B4AA6C;
  *(&v80 - 3) = 0;
  v78 = sub_1D6708C04;
  v79 = v36;
  v103 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v103;
  v88 = v33;
  *(v37 + 40) = v33;
  *(v37 + 48) = v32;
  sub_1D66C92C4();
  v39 = v38;
  v40 = sub_1D5B58B84(&qword_1EDF03378, sub_1D66C92C4);
  swift_retain_n();
  v93 = v39;
  v94 = v40;
  v41 = sub_1D72647CC();
  v103 = 0;
  v42 = swift_allocObject();
  *(v42 + 24) = 0;
  *(v42 + 32) = 0;
  *(v42 + 16) = v41;
  *(v42 + 40) = v103;
  v43 = &v17[*(v14 + 36)];
  v44 = *(v43 + 3);
  v95 = v17;
  v45 = __swift_project_boxed_opaque_existential_1(v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  *(&v80 - 4) = sub_1D615B4A4;
  *(&v80 - 3) = (&v80 - 6);
  v78 = sub_1D6708C04;
  v79 = v37;
  v49 = v96;
  v50 = v98;
  sub_1D5D2BC70(v96, sub_1D615B49C, v51, sub_1D615B4A4, (&v80 - 6));
  if (v50)
  {
    sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

    v52 = v95;
    return sub_1D5D2CFE8(v52, sub_1D66C9230);
  }

  v81 = v43;
  v82 = v32;

  v52 = v95;
  sub_1D72647EC();
  sub_1D5D2CFE8(v49, type metadata accessor for FormatVersionRequirement);

  v53 = v92;
  v89(v92, v90, v91);
  swift_storeEnumTagMultiPayload();
  v101 = v85;
  v102 = v84;
  v98 = xmmword_1D728CF30;
  v99 = xmmword_1D728CF30;
  v100 = 0;
  v103 = 0;
  v54 = swift_allocObject();
  v97 = &v80;
  *(v54 + 16) = v98;
  *(v54 + 32) = v103;
  v55 = v88;
  v56 = v82;
  *(v54 + 40) = v88;
  *(v54 + 48) = v56;
  MEMORY[0x1EEE9AC00](v54, v57);
  v96 = 0;
  *(&v80 - 4) = sub_1D5B4AA6C;
  *(&v80 - 3) = 0;
  v78 = sub_1D6708C04;
  v79 = v58;
  v103 = 0;
  v59 = swift_allocObject();
  *(v59 + 16) = v98;
  *(v59 + 32) = v103;
  *(v59 + 40) = v55;
  *(v59 + 48) = v56;
  swift_retain_n();
  v60 = sub_1D72647CC();
  v103 = 0;
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v98;
  *(v61 + 40) = v103;
  v62 = __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
  MEMORY[0x1EEE9AC00](v62, v63);
  MEMORY[0x1EEE9AC00](v64, v65);
  *(&v80 - 4) = sub_1D615B4A4;
  *(&v80 - 3) = (&v80 - 6);
  v78 = sub_1D6708C04;
  v79 = v59;
  v66 = v96;
  sub_1D5D2BC70(v53, sub_1D615B49C, v67, sub_1D615B4A4, (&v80 - 6));
  if (v66)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v52, sub_1D66C9230);
  }

  sub_1D72647EC();
  sub_1D5D2CFE8(v92, type metadata accessor for FormatVersionRequirement);

  v69 = v83;
  v89(v83, v90, v91);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v99) = 0;
  v70 = swift_allocObject();
  v98 = xmmword_1D7297410;
  *(v70 + 16) = xmmword_1D7297410;
  *(v70 + 32) = v99;
  *(v70 + 40) = v88;
  *(v70 + 48) = v82;

  v71 = sub_1D72647CC();
  LOBYTE(v99) = 0;
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  *(v72 + 24) = v98;
  *(v72 + 40) = v99;
  v73 = __swift_project_boxed_opaque_existential_1(v81, *(v81 + 3));
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  *(&v80 - 4) = sub_1D5B4AA6C;
  *(&v80 - 3) = 0;
  v78 = sub_1D66C9358;
  v79 = v70;
  LOBYTE(v71) = sub_1D5D2F7A4(v69, sub_1D615B49C, v77, sub_1D615B4A4, (&v80 - 6));

  if (v71)
  {
    v99 = v98;
    v100 = 0;
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1D72647EC();
    sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CFE8(v52, sub_1D66C9230);
  }

  sub_1D5D2CFE8(v69, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v52, sub_1D66C9230);
}

uint64_t sub_1D65D3654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CB0B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D368C(uint64_t a1)
{
  v2 = sub_1D5CE098C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D36C8(uint64_t a1)
{
  v2 = sub_1D5CE098C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTypeDefinition.Enum.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C93D4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5CDFCC8();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF25348, sub_1D5CDFCC8);
  sub_1D5D2EE70(&type metadata for FormatTypeDefinition.Enum, v16, v18, v13, &type metadata for FormatTypeDefinition.Enum, v16, &type metadata for FormatVersions.JazzkonC, v14, v11, v17, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD30);
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
  v39 = sub_1D6708C08;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66C9468();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF03368, sub_1D66C9468);
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
  v39 = sub_1D66C94FC;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF43BC8, &type metadata for FormatTypeDefinition.Case, MEMORY[0x1E69E62F8]);
    sub_1D6686F30();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66C93D4);
}

uint64_t sub_1D65D3C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365736163 && a2 == 0xE500000000000000;
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

uint64_t sub_1D65D3D1C(uint64_t a1)
{
  v2 = sub_1D5CE015C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D3D58(uint64_t a1)
{
  v2 = sub_1D5CE015C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65D3DA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65D3E64()
{
  sub_1D72621EC();
}

uint64_t sub_1D65D3F14()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65D3FD4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6574756C6F736261;
  v4 = 0xE700000000000000;
  v5 = 0x676E69646E6962;
  if (*v1 != 2)
  {
    v5 = 0x6E656E6F706D6F63;
    v4 = 0xEA00000000007374;
  }

  if (*v1)
  {
    v3 = 0x7465737361;
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

uint64_t sub_1D65D40B8()
{
  sub_1D72621EC();
}

void sub_1D65D41A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6974706FLL;
  v5 = 0xE800000000000000;
  v6 = 0x6465626D45626577;
  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (v2 != 4)
  {
    v8 = 6775156;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006D65;
  v10 = 0x74496D6F74737563;
  if (v2 != 1)
  {
    v10 = 0x656E696C64616568;
    v9 = 0xE800000000000000;
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

uint64_t FormatURLComponent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v31 - v9;
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
    v12 = v32;
    v13 = a1[3];
    v31 = a1;
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
          *(v21 + 16) = &unk_1F5117EF0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v31;
          goto LABEL_9;
        }
      }
    }

    sub_1D66C9578();
    v42 = 0;
    v43 = 0;
    sub_1D726431C();
    if (v44)
    {
      v33 = xmmword_1D7279980;
      if (v44 == 1)
      {
        sub_1D66C95CC();
        sub_1D726431C();
        a1 = v31;
        (*(v11 + 8))(v10, v6);
        v23 = v34;
        v24 = v35;
        v25 = v36;
        v26 = v38;
        v27 = v39;
        v28 = v40;
        v29 = v37 & 0xC7FF;
        v30 = v41 & 0xC7FF | 0x1000;
      }

      else
      {
        sub_1D66C95CC();
        sub_1D726431C();
        a1 = v31;
        (*(v11 + 8))(v10, v6);
        v23 = v34;
        v24 = v35;
        v25 = v36;
        v26 = v38;
        v27 = v39;
        v28 = v40;
        v29 = v37 & 0xC7FF;
        v30 = v41 & 0xC7FF | 0x2000;
      }
    }

    else
    {
      v33 = xmmword_1D7279980;
      sub_1D667CF44();
      sub_1D726431C();
      a1 = v31;
      (*(v11 + 8))(v10, v6);
      v30 = 0;
      v23 = v34;
      v24 = v35;
      v25 = v36;
      v29 = v37 & 0xC7FF;
    }

    *v12 = v23;
    *(v12 + 16) = v24;
    *(v12 + 32) = v25;
    *(v12 + 48) = v29;
    *(v12 + 56) = v26;
    *(v12 + 72) = v27;
    *(v12 + 88) = v28;
    *(v12 + 104) = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatURLComponent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v45 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - v11;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v19 = v1[3];
  v53 = v1[2];
  v54 = v19;
  v20 = v1[5];
  v55 = v1[4];
  v56 = v20;
  v21 = v1[7];
  v57 = v1[6];
  v22 = v1[8];
  v23 = v1[9];
  v47 = v21;
  v48 = v22;
  v24 = v1[10];
  v25 = v1[11];
  v49 = v23;
  v50 = v24;
  v26 = v1[12];
  v51 = v25;
  v52 = v26;
  v27 = *(v1 + 52);
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v30 = sub_1D5C30408();
  v58 = v16;
  sub_1D5D2EE70(&type metadata for FormatURLComponent, &type metadata for FormatCodingKeys, v31, v28, &type metadata for FormatURLComponent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowE, v29, v16, v30, &off_1F51F6C98);
  v32 = (v27 >> 12) & 3;
  if (v32)
  {
    if (v32 == 1)
    {
      v65[0] = v18;
      v65[1] = v17;
      v65[2] = v53;
      v65[3] = v54;
      v65[4] = v55;
      v65[5] = v56;
      v65[6] = v57;
      v65[7] = v47;
      v65[8] = v48;
      v65[9] = v49;
      v65[10] = v50;
      v65[11] = v51;
      v65[12] = v52;
      v66 = v27 & 0xCFFF;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v33 = sub_1D725BD1C();
      v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
      v35 = v45;
      (*(*(v33 - 8) + 16))(v45, v34, v33);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v65;
      v37 = 1;
    }

    else
    {
      v67[0] = v18;
      v67[1] = v17;
      v67[2] = v53;
      v67[3] = v54;
      v67[4] = v55;
      v67[5] = v56;
      v67[6] = v57;
      v67[7] = v47;
      v67[8] = v48;
      v67[9] = v49;
      v67[10] = v50;
      v67[11] = v51;
      v67[12] = v52;
      v68 = v27 & 0xCFFF;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v42 = sub_1D725BD1C();
      v43 = __swift_project_value_buffer(v42, qword_1EDFFCE38);
      v35 = v46;
      (*(*(v42 - 8) + 16))(v46, v43, v42);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v36 = v67;
      v37 = 2;
    }

    v40 = v58;
    sub_1D63A72F8(v37, v36, v35);
    v41 = v35;
  }

  else
  {
    *&v59 = v18;
    *(&v59 + 1) = v17;
    v60 = v53;
    v61 = v54;
    v62 = v55;
    v63 = v56;
    v64 = v57;
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v38 = sub_1D725BD1C();
    v39 = __swift_project_value_buffer(v38, qword_1EDFFCE38);
    (*(*(v38 - 8) + 16))(v12, v39, v38);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v40 = v58;
    sub_1D63A7150(0, &v59, v12);
    v41 = v12;
  }

  sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v40, sub_1D5D30DC4);
}

uint64_t sub_1D65D4BD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7261507972657571;
  v4 = 0xEA00000000006D61;
  if (v2 != 1)
  {
    v3 = 0x746E656D67617266;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1752457584;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7261507972657571;
  v8 = 0xEA00000000006D61;
  if (*a2 != 1)
  {
    v7 = 0x746E656D67617266;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1752457584;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
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

uint64_t sub_1D65D4CD8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65D4D78()
{
  sub_1D72621EC();
}

uint64_t sub_1D65D4E04()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65D4EA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6663B34();
  *a1 = result;
  return result;
}

void sub_1D65D4ED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEA00000000006D61;
  v5 = 0x7261507972657571;
  if (v2 != 1)
  {
    v5 = 0x746E656D67617266;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1752457584;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatURLComponentQueryParameter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D66C9620();
  v7 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C96B4();
  sub_1D5B58B84(&qword_1EC8876C8, sub_1D66C96B4);
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

  v13 = v34;
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

      v20 = sub_1D6627E68(1701667182, 0xE400000000000000, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D667CF44();
  v35 = 0uLL;
  v36 = 0;
  sub_1D726431C();
  v30 = *(&v37 + 1);
  v17 = v37;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v35 = xmmword_1D728CF30;
  v36 = 0;
  sub_1D726431C();
  (*(v13 + 8))(v10, v7);
  v23 = v38;
  *(a2 + 56) = v37;
  v24 = v40;
  v25 = v30;
  v26 = v31;
  *a2 = v17;
  *(a2 + 8) = v25;
  v28 = *(&v31 + 1);
  v27 = v32;
  *(a2 + 16) = v26;
  *(a2 + 24) = v28;
  *(a2 + 32) = __PAIR128__(*(&v32 + 1), v27);
  *(a2 + 48) = v33;
  *(a2 + 50) = v41;
  *(a2 + 54) = v42;
  *(a2 + 72) = v23;
  *(a2 + 88) = v39;
  *(a2 + 104) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatURLComponentQueryParameter.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v68 - v8;
  sub_1D66C9834();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v84 = v1[1];
  v85 = v15;
  v16 = *(v1 + 4);
  v83 = *(v1 + 5);
  v17 = *(v1 + 24);
  v78 = *(v1 + 72);
  v79 = *(v1 + 56);
  v18 = *(v1 + 12);
  v77 = *(v1 + 11);
  v76 = v18;
  v95 = *(v1 + 52);
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D66C96B4();
  v22 = v21;
  v23 = sub_1D5B58B84(&qword_1EC8876C8, sub_1D66C96B4);
  sub_1D5D2EE70(&type metadata for FormatURLComponentQueryParameter, v22, v24, v19, &type metadata for FormatURLComponentQueryParameter, v22, &type metadata for FormatVersions.CrystalGlowE, v20, v14, v23, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCE38);
  v27 = *(v25 - 8);
  v28 = *(v27 + 16);
  v74 = v26;
  v81 = v25;
  v73 = v28;
  v72 = v27 + 16;
  (v28)(v9);
  v71 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v89 = v85;
  v90 = v84;
  v91 = v16;
  v92 = v83;
  v93 = v17;
  v87 = 0uLL;
  v88 = 0;
  v29 = &v14[*(v11 + 44)];
  *&v84 = v9;
  v30 = *v29;
  v31 = *(v29 + 1);
  v94 = 0;
  v32 = swift_allocObject();
  *&v85 = &v68;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v94;
  *(v32 + 40) = v30;
  *(v32 + 48) = v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v68 - 4) = sub_1D5B4AA6C;
  *(&v68 - 3) = 0;
  v66 = sub_1D67088A0;
  v67 = v34;
  v94 = 0;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = v94;
  v75 = v30;
  *(v35 + 40) = v30;
  *(v35 + 48) = v31;
  sub_1D66C98C8();
  v37 = v36;
  v38 = sub_1D5B58B84(&qword_1EC8876E0, sub_1D66C98C8);
  swift_retain_n();
  v82 = v38;
  v83 = v37;
  v39 = sub_1D72647CC();
  v94 = 0;
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = v94;
  v41 = &v14[*(v11 + 36)];
  v42 = __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
  MEMORY[0x1EEE9AC00](v42, v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  *(&v68 - 4) = sub_1D615B4A4;
  *(&v68 - 3) = (&v68 - 6);
  v46 = v84;
  v66 = sub_1D67088A0;
  v67 = v35;
  v47 = v86;
  sub_1D5D2BC70(v84, sub_1D615B49C, v48, sub_1D615B4A4, (&v68 - 6));
  if (v47)
  {
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v69 = v41;
    v49 = v81;
    v70 = v31;

    v50 = sub_1D6686A30();
    sub_1D72647EC();
    v68 = v50;
    sub_1D5D2CFE8(v46, type metadata accessor for FormatVersionRequirement);

    v52 = v80;
    v73(v80, v74, v49);
    swift_storeEnumTagMultiPayload();
    v89 = v79;
    v90 = v78;
    v91 = v77;
    v92 = v76;
    v93 = v95;
    v86 = xmmword_1D728CF30;
    v87 = xmmword_1D728CF30;
    v88 = 0;
    v94 = 0;
    v53 = swift_allocObject();
    *&v85 = &v68;
    *(v53 + 16) = v86;
    *(v53 + 32) = v94;
    v54 = v75;
    v55 = v70;
    *(v53 + 40) = v75;
    *(v53 + 48) = v55;
    MEMORY[0x1EEE9AC00](v53, v56);
    *(&v68 - 4) = sub_1D5B4AA6C;
    *(&v68 - 3) = 0;
    v66 = sub_1D67088A0;
    v67 = v57;
    v94 = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = v86;
    *(v58 + 32) = v94;
    *(v58 + 40) = v54;
    *(v58 + 48) = v55;
    swift_retain_n();
    v59 = sub_1D72647CC();
    v94 = 0;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v86;
    *(v60 + 40) = v94;
    v61 = __swift_project_boxed_opaque_existential_1(v69, *(v69 + 3));
    MEMORY[0x1EEE9AC00](v61, v62);
    MEMORY[0x1EEE9AC00](v63, v64);
    *(&v68 - 4) = sub_1D615B4A4;
    *(&v68 - 3) = (&v68 - 6);
    v66 = sub_1D67088A0;
    v67 = v58;
    sub_1D5D2BC70(v52, sub_1D615B49C, v65, sub_1D615B4A4, (&v68 - 6));

    sub_1D72647EC();
    sub_1D5D2CFE8(v52, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v14, sub_1D66C9834);
}