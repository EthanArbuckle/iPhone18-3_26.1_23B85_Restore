uint64_t sub_1D65D5CD0(uint64_t a1)
{
  v2 = sub_1D66C978C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D5D0C(uint64_t a1)
{
  v2 = sub_1D66C978C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatURLComponents.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v35 = a2;
  sub_1D5C2E60C(0, &qword_1EC8876E8, sub_1D66C99C0, sub_1D66C9A14);
  v6 = v5;
  v34 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v32 - v8;
  sub_1D66C9A68();
  v36 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66C9AFC();
  sub_1D5B58B84(&qword_1EC887728, sub_1D66C9AFC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v36;
  if (v15)
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
          goto LABEL_7;
        }
      }

      v26 = *(v19 - 2);
      v25 = *(v19 - 1);

      v27 = sub_1D6627E68(0x4C525565736162, 0xE700000000000000, 0x6E656E6F706D6F63, 0xEA00000000007374);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = v25;
      *(v28 + 16) = v27;
      *(v28 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v41 + 8))(v13, v16);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5CA2FA0();
  v39 = 0uLL;
  v40 = 0;
  sub_1D726431C();
  v20 = v37;
  v32 = xmmword_1D728CF30;
  v39 = xmmword_1D728CF30;
  v40 = 0;
  v21 = sub_1D726434C();
  v22 = v41;
  if (v21)
  {
    v37 = v32;
    v38 = 0;
    sub_1D66C9C7C();
    sub_1D726431C();
    v23 = v13;
    v24 = v35;
    v30 = v23;
    v31 = sub_1D725A74C();
    (*(v34 + 8))(v33, v6);
  }

  else
  {
    v30 = v13;
    v31 = MEMORY[0x1E69E7CC0];
    v24 = v35;
  }

  (*(v22 + 8))(v30, v16);
  *v24 = v20;
  v24[1] = v31;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatURLComponents.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v59 - v8;
  sub_1D66C9D0C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v67 = v1[1];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66C9AFC();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EC887728, sub_1D66C9AFC);
  sub_1D5D2EE70(&type metadata for FormatURLComponents, v19, v21, v16, &type metadata for FormatURLComponents, v19, &type metadata for FormatVersions.CrystalGlowE, v17, v14, v20, &off_1F51F6C98);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCE38);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  v64 = v23;
  v65 = v22;
  v62 = v24 + 16;
  v63 = v25;
  (v25)(v9);
  v61 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v76 = v15;
  v74 = 0uLL;
  v75 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = *v26;
  v28 = *(v26 + 1);
  v73 = 0;
  v29 = swift_allocObject();
  *&v71 = &v59;
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = v73;
  *(v29 + 40) = v27;
  *(v29 + 48) = v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  *(&v59 - 4) = sub_1D5B4AA6C;
  *(&v59 - 3) = 0;
  v57 = sub_1D6708C0C;
  v58 = v31;
  v73 = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v73;
  v60 = v27;
  *(v32 + 40) = v27;
  *(v32 + 48) = v28;
  sub_1D66C9DA0();
  v34 = v33;
  v35 = sub_1D5B58B84(&qword_1EC887748, sub_1D66C9DA0);
  swift_retain_n();
  v68 = v35;
  v69 = v34;
  v36 = sub_1D72647CC();
  v73 = 0;
  v37 = swift_allocObject();
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = v73;
  v38 = *(v11 + 36);
  v70 = v14;
  v39 = &v14[v38];
  v40 = __swift_project_boxed_opaque_existential_1(v39, *(v39 + 3));
  MEMORY[0x1EEE9AC00](v40, v41);
  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v59 - 4) = sub_1D615B4A4;
  *(&v59 - 3) = (&v59 - 6);
  v57 = sub_1D6708C0C;
  v58 = v32;
  v44 = v72;
  sub_1D5D2BC70(v9, sub_1D615B49C, v45, sub_1D615B4A4, (&v59 - 6));
  if (v44)
  {
    v46 = v70;
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    v72 = v39;

    sub_1D60B27FC();
    v46 = v70;
    sub_1D72647EC();
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v47 = v66;
    v63(v66, v64, v65);
    swift_storeEnumTagMultiPayload();
    if (*(v67 + 16))
    {
      LOBYTE(v74) = 0;
      v48 = swift_allocObject();
      v71 = xmmword_1D728CF30;
      *(v48 + 16) = xmmword_1D728CF30;
      *(v48 + 32) = v74;
      *(v48 + 40) = v60;
      *(v48 + 48) = v28;

      v49 = sub_1D72647CC();
      LOBYTE(v74) = 0;
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v50 + 24) = v71;
      *(v50 + 40) = v74;
      v51 = __swift_project_boxed_opaque_existential_1(v72, *(v72 + 3));
      MEMORY[0x1EEE9AC00](v51, v52);
      MEMORY[0x1EEE9AC00](v53, v54);
      *(&v59 - 4) = sub_1D5B4AA6C;
      *(&v59 - 3) = 0;
      v57 = sub_1D66C9E34;
      v58 = v48;
      LOBYTE(v49) = sub_1D5D2F7A4(v47, sub_1D615B49C, v55, sub_1D615B4A4, (&v59 - 6));

      if ((v49 & 1) == 0)
      {
        sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v46, sub_1D66C9D0C);
      }

      v74 = v71;
      v75 = 0;
      v76 = v67;
      sub_1D5C34D84(0, &qword_1EC887750, &type metadata for FormatURLComponent, MEMORY[0x1E69E62F8]);
      sub_1D66C9EB0();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v46, sub_1D66C9D0C);
}

uint64_t sub_1D65D6A04()
{
  v1 = 0x6E656E6F706D6F63;
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
    return 0x4C525565736162;
  }
}

uint64_t sub_1D65D6A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CB334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D6A94(uint64_t a1)
{
  v2 = sub_1D66C9BD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D6AD0(uint64_t a1)
{
  v2 = sub_1D66C9BD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatURLParameterOptionModifier.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D66C9F4C();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D5C6B390();
  v16 = v15;
  v17 = sub_1D5B58B84(&qword_1EDF24E28, sub_1D5C6B390);
  sub_1D5D2EE70(&type metadata for FormatURLParameterOptionModifier, v16, v18, v13, &type metadata for FormatURLParameterOptionModifier, v16, &type metadata for FormatVersions.JazzkonG, v14, v11, v17, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D725BD1C();
  v20 = __swift_project_value_buffer(v19, qword_1EDFFCD18);
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
  v39 = sub_1D6708C10;
  v40 = v26;
  v42 = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v42;
  *(v27 + 40) = v23;
  *(v27 + 48) = v22;
  sub_1D66C9FE0();
  v29 = v28;
  sub_1D5B58B84(&qword_1EDF02D48, sub_1D66C9FE0);
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
  v39 = sub_1D6708C10;
  v40 = v27;
  v36 = v41[3];
  sub_1D5D2BC70(v6, sub_1D615B49C, v37, sub_1D615B4A4, &v41[-6]);
  if (v36)
  {
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  else
  {

    sub_1D5C34D84(0, &qword_1EDF1B100, &type metadata for FormatQueryParameter, MEMORY[0x1E69E62F8]);
    sub_1D6670830();
    sub_1D72647EC();
    sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v11, sub_1D66C9F4C);
}

uint64_t sub_1D65D703C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372;
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

uint64_t sub_1D65D7130(uint64_t a1)
{
  v2 = sub_1D5C6B480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D716C(uint64_t a1)
{
  v2 = sub_1D5C6B480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatUnboundValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v62 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v56 - v8;
  v64 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v10, v9);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v56 - v15;
  v71 = v14;
  v73 = v16;
  *&v74 = v16;
  v66 = v17;
  v67 = v18;
  *(&v74 + 1) = v17;
  v75 = v14;
  v76 = v18;
  v19 = _s10CodingKeysOMa_15();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  *&v74 = v19;
  *(&v74 + 1) = WitnessTable;
  v68 = v21;
  v69 = WitnessTable;
  v75 = v21;
  v76 = v22;
  v23 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v24 = sub_1D726435C();
  v72 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v56 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = v77;
  sub_1D7264B0C();
  v29 = v28;
  if (v28)
  {
    goto LABEL_13;
  }

  v57 = v22;
  v58 = 0;
  v59 = v27;
  v77 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = sub_1D7264AFC();
  v31 = Dictionary<>.errorOnUnknownKeys.getter(v30);

  if ((v31 & 1) == 0)
  {
LABEL_10:
    v74 = 0uLL;
    LOBYTE(v75) = 0;
    v46 = v70;
    v47 = v77;
    v49 = v58;
    v48 = v59;
    sub_1D726431C();
    if (!v49)
    {
      v74 = xmmword_1D728CF30;
      LOBYTE(v75) = 0;
      v50 = v66;
      v51 = v65;
      sub_1D726431C();
      (*(v72 + 8))(v48, v47);
      v52 = v46;
      v53 = v60;
      v54 = v73;
      (*(v64 + 32))(v60, v52, v73);
      v55 = v61;
      (*(v62 + 32))(v61, v51, v50);
      sub_1D714193C(v53, v55, v54, v50, v63);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v72 + 8))(v48, v47);
    v29 = v49;
LABEL_13:
    sub_1D61E4FBC(a1, v29);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v33 = (sub_1D726433C() + 48);
  v34 = v19;
  v36 = v68;
  v35 = v69;
  while (1)
  {
    if (v32 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v37 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v37 & 1) == 0)
    {
      break;
    }

    v39 = *v33;
    v74 = *(v33 - 1);
    LOBYTE(v75) = v39;
    if (__OFADD__(v32, 1))
    {
      goto LABEL_16;
    }

    v40 = sub_1D6AFC82C(v23);
    ++v32;
    v33 += 24;
    if (v41)
    {
      v42 = v40;
      v43 = v41;

      v44 = sub_1D6AFC690(v34, v35, v36, v57);
      sub_1D5E2D970();
      v29 = swift_allocError();
      *v45 = v42;
      *(v45 + 8) = v43;
      *(v45 + 16) = v44;
      *(v45 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v72 + 8))(v59, v77);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t FormatUnboundValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v47 = &v34 - v9;
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 40);
  v38 = *(a2 + 32);
  v39 = v11;
  *&v44 = v11;
  *(&v44 + 1) = v10;
  v35 = v12;
  v36 = v10;
  v45 = v38;
  v46 = v12;
  v13 = _s10CodingKeysOMa_15();
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  *&v44 = v13;
  *(&v44 + 1) = WitnessTable;
  v45 = v15;
  v46 = v16;
  v17 = type metadata accessor for FormatCodingKeysContainer();
  v18 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v43 = type metadata accessor for VersionedKeyedEncodingContainer();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v19);
  v21 = &v34 - v20;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D5D2EE70(a2, v17, v24, v22, a2, v17, &type metadata for FormatVersions.JazzkonG, v23, v21, v18, &off_1F51F6BF8);
  v44 = 0uLL;
  LOBYTE(v45) = 0;
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v25 = sub_1D725BD1C();
  v26 = __swift_project_value_buffer(v25, qword_1EDFFCD18);
  v27 = *(*(v25 - 8) + 16);
  v28 = v47;
  v27(v47, v26, v25);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v29 = v41;
  sub_1D5D38930(v42, &v44, v28, sub_1D5B4AA6C, 0, v43, v39, *(v38 + 16));
  sub_1D5D2CFE8(v47, type metadata accessor for FormatVersionRequirement);
  if (v29)
  {
    return (*(v40 + 8))(v21, v43);
  }

  v31 = *(a2 + 52);
  v44 = xmmword_1D728CF30;
  LOBYTE(v45) = 0;
  v32 = v37;
  v27(v37, v26, v25);
  swift_storeEnumTagMultiPayload();
  v33 = v43;
  sub_1D5D38930(v42 + v31, &v44, v32, sub_1D5B4AA6C, 0, v43, v36, *(v35 + 16));
  sub_1D5D2CFE8(v32, type metadata accessor for FormatVersionRequirement);
  return (*(v40 + 8))(v21, v33);
}

uint64_t sub_1D65D7C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6962 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E756F626E75 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D65D7D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  a5(255, v8);
  sub_1D72644CC();
  swift_allocObject();
  v5 = sub_1D726270C();
  *v6 = 256;
  *(v6 + 2) = 2;
  return sub_1D5BFCB60(v5);
}

uint64_t sub_1D65D7DA0(char a1)
{
  if (!a1)
  {
    return 0x676E69646E6962;
  }

  if (a1 == 1)
  {
    return 0x646E756F626E75;
  }

  return 1885433183;
}

uint64_t sub_1D65D7E08(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_1D7264A5C();
}

uint64_t sub_1D65D7EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_1D65D7EE8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D7F5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65D7FB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatUnderline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D66CA0F0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D66CA184();
  sub_1D5B58B84(&qword_1EDF24B58, sub_1D66CA184);
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

      v20 = sub_1D6627E68(0x656C797473, 0xE500000000000000, 0x726F6C6F63, 0xE500000000000000);
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

  sub_1D66CA304();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  *(v13 + 8) = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatUnderline.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v89 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v80 - v8;
  sub_1D66CA358();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v87 = *(v1 + 1);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D66CA184();
  v19 = v18;
  v20 = sub_1D5B58B84(&qword_1EDF24B58, sub_1D66CA184);
  sub_1D5D2EE70(&type metadata for FormatUnderline, v19, v21, v16, &type metadata for FormatUnderline, v19, &type metadata for FormatVersions.AzdenE, v17, v14, v20, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD98);
  v24 = *(v22 - 8);
  v25 = *(v24 + 16);
  *&v88 = v23;
  v85 = v24 + 16;
  v86 = v25;
  v25(v9);
  v84 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v93 = 0uLL;
  v94 = 0;
  v26 = &v14[*(v11 + 44)];
  v27 = v14;
  v28 = *v26;
  v29 = *(v26 + 1);
  LOBYTE(v95) = 0;
  v30 = swift_allocObject();
  v32 = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v95;
  *(v30 + 40) = v28;
  *(v30 + 48) = v29;
  v33 = v11;
  v90 = v27;
  if (v15 == 8)
  {

    goto LABEL_5;
  }

  v83 = v80;
  LOBYTE(v95) = v15;
  MEMORY[0x1EEE9AC00](v30, v31);
  v82 = &v80[-6];
  v80[-4] = sub_1D5B4AA6C;
  v80[-3] = 0;
  v78 = sub_1D6708C14;
  v79 = v32;
  v92 = 0;
  v40 = swift_allocObject();
  v41 = v28;
  v42 = v40;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v92;
  v81 = v41;
  *(v40 + 40) = v41;
  *(v40 + 48) = v29;
  sub_1D66CA3EC();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF02A08, sub_1D66CA3EC);
  swift_retain_n();
  v80[1] = v45;
  v80[2] = v44;
  v46 = v33;
  v47 = sub_1D72647CC();
  v92 = 0;
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  *(v48 + 16) = v47;
  *(v48 + 40) = v92;
  v49 = __swift_project_boxed_opaque_existential_1(&v27[*(v46 + 36)], *&v27[*(v46 + 36) + 24]);
  MEMORY[0x1EEE9AC00](v49, v50);
  MEMORY[0x1EEE9AC00](v51, v52);
  v53 = v82;
  v80[-4] = sub_1D615B4A4;
  v80[-3] = v53;
  v78 = sub_1D6708C14;
  v79 = v42;
  v54 = v91;
  v56 = sub_1D5D2F7A4(v9, sub_1D615B49C, v55, sub_1D615B4A4, &v80[-6]);
  v91 = v54;
  if (!v54)
  {
    v73 = v56;

    if (v73)
    {
      sub_1D66CA4FC();
      v74 = v91;
      sub_1D72647EC();
      v91 = v74;
      v28 = v81;
      if (v74)
      {
        sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

        goto LABEL_9;
      }

      v33 = v46;
    }

    else
    {
      v33 = v46;
      v28 = v81;
    }

LABEL_5:
    sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

    v34 = v89;
    (v86)(v89, v88, v22);
    swift_storeEnumTagMultiPayload();
    v88 = xmmword_1D728CF30;
    v93 = xmmword_1D728CF30;
    v94 = 0;
    LOBYTE(v95) = 0;
    v35 = swift_allocObject();
    v37 = v35;
    *(v35 + 16) = v88;
    *(v35 + 32) = v95;
    *(v35 + 40) = v28;
    *(v35 + 48) = v29;
    v38 = v87;
    if ((~v87 & 0xF000000000000007) == 0)
    {

      v39 = v90;
LABEL_20:
      sub_1D5D2CFE8(v34, type metadata accessor for FormatVersionRequirement);
      v57 = v39;
      return sub_1D5D2CFE8(v57, sub_1D66CA358);
    }

    v86 = v80;
    v95 = v87;
    MEMORY[0x1EEE9AC00](v35, v36);
    v80[-4] = sub_1D5B4AA6C;
    v80[-3] = 0;
    v78 = sub_1D6708C14;
    v79 = v37;
    v92 = 0;
    v58 = v33;
    v59 = swift_allocObject();
    *(v59 + 16) = v88;
    *(v59 + 32) = v92;
    *(v59 + 40) = v28;
    *(v59 + 48) = v29;
    swift_retain_n();
    sub_1D5CFCFAC(v38);
    sub_1D66CA3EC();
    v61 = v60;
    sub_1D5B58B84(&qword_1EDF02A08, sub_1D66CA3EC);
    v62 = v90;
    v87 = v61;
    v63 = sub_1D72647CC();
    v92 = 0;
    v64 = v34;
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = v88;
    *(v65 + 40) = v92;
    v66 = __swift_project_boxed_opaque_existential_1((v62 + *(v58 + 36)), *(v62 + *(v58 + 36) + 24));
    MEMORY[0x1EEE9AC00](v66, v67);
    MEMORY[0x1EEE9AC00](v68, v69);
    v80[-4] = sub_1D615B4A4;
    v80[-3] = &v80[-6];
    v78 = sub_1D66CA480;
    v79 = v59;
    v70 = v91;
    v72 = sub_1D5D2F7A4(v64, sub_1D615B49C, v71, sub_1D615B4A4, &v80[-6]);
    v91 = v70;
    if (v70)
    {
    }

    else
    {
      v75 = v72;

      if (v75)
      {
        sub_1D5B55CBC();
        v39 = v90;
        v76 = v91;
        sub_1D72647EC();

        v34 = v89;
        v91 = v76;
        goto LABEL_20;
      }
    }

    v34 = v89;
    v39 = v90;
    goto LABEL_20;
  }

  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);

LABEL_9:
  v57 = v90;
  return sub_1D5D2CFE8(v57, sub_1D66CA358);
}

uint64_t sub_1D65D8C78()
{
  v1 = 0x726F6C6F63;
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
    return 0x656C797473;
  }
}

uint64_t sub_1D65D8CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CB454(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65D8CFC(uint64_t a1)
{
  v2 = sub_1D66CA25C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65D8D38(uint64_t a1)
{
  v2 = sub_1D66CA25C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatUnderlineStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v48 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v47 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v46 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v45 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v44 = &v43 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v43 - v29;
  v52 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD98);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  v36 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v37 = v56;
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v37)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  v43 = v36;
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v39 = v53;
  v40 = v53[3];
  v56 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v40);
  if (v52 > 3)
  {
    if (v52 <= 5)
    {
      v42 = v48;
      v35(v48, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v40, v56);
      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      sub_1D7264B3C();
      goto LABEL_15;
    }

    if (v52 == 6)
    {
      v41 = v50;
      v35(v50, v34, v33);
    }

    else
    {
      v41 = v51;
      v35(v51, v34, v33);
    }
  }

  else if (v52 > 1)
  {
    v41 = v46;
    v35(v46, v34, v33);
  }

  else
  {
    v41 = v44;
    v35(v44, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v40, v56);
  sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  sub_1D7264B3C();
LABEL_15:
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t FormatUserBinding.Command.encode(to:)(void *a1)
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
  sub_1D5D2EE70(&type metadata for FormatUserBinding.Command, &type metadata for FormatCodingKeys, v23, v20, &type metadata for FormatUserBinding.Command, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.CrystalGlowC, v21, v18, v22, &off_1F51F6AF8);
  if (v19)
  {
    if (v19 == 1)
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v24 = sub_1D725BD1C();
      v25 = __swift_project_value_buffer(v24, qword_1EDFFCE50);
      (*(*(v24 - 8) + 16))(v10, v25, v24);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6422E78(1, v10);
      v26 = v10;
    }

    else
    {
      if (qword_1EDF31F40 != -1)
      {
        swift_once();
      }

      v29 = sub_1D725BD1C();
      v30 = __swift_project_value_buffer(v29, qword_1EDFFCE50);
      (*(*(v29 - 8) + 16))(v6, v30, v29);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D6422E78(2, v6);
      v26 = v6;
    }
  }

  else
  {
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    v27 = sub_1D725BD1C();
    v28 = __swift_project_value_buffer(v27, qword_1EDFFCE50);
    (*(*(v27 - 8) + 16))(v14, v28, v27);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6422E78(0, v14);
    v26 = v14;
  }

  sub_1D5D2CFE8(v26, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t FormatUserInterfaceStyle.encode(to:)(void *a1)
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
  if (qword_1EDF31E78 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCC90);
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

uint64_t FormatUserInterfaceValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  v11 = *(a2 + 24);
  v39 = *(a2 + 16);
  v12 = _s10CodingKeysOMa_13();
  WitnessTable = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  *&v41 = v12;
  *(&v41 + 1) = WitnessTable;
  v42 = v14;
  v43 = v15;
  v16 = type metadata accessor for FormatCodingKeysContainer();
  v17 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v44 = type metadata accessor for VersionedKeyedEncodingContainer();
  v37 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v18);
  v20 = &v33 - v19;
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v35 = a2;
  sub_1D5D2EE70(a2, v16, v23, v21, a2, v16, &type metadata for FormatVersions.JazzkonC, v22, v20, v17, &off_1F51F6C78);
  v41 = 0uLL;
  LOBYTE(v42) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(*(v24 - 8) + 16);
  v34 = v25;
  v26(v10);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v27 = *(v11 + 16);
  v28 = v38;
  sub_1D5D38930(v40, &v41, v10, sub_1D5B4AA6C, 0, v44, v39, v27);
  sub_1D5D2CFE8(v10, type metadata accessor for FormatVersionRequirement);
  if (v28)
  {
    return (*(v37 + 8))(v20, v44);
  }

  v30 = v36;
  v31 = *(v35 + 36);
  v41 = xmmword_1D728CF30;
  LOBYTE(v42) = 0;
  (v26)(v36, v34, v24);
  swift_storeEnumTagMultiPayload();
  v32 = v44;
  sub_1D5D38930(v40 + v31, &v41, v30, sub_1D5B4AA6C, 0, v44, v39, v27);
  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  return (*(v37 + 8))(v20, v32);
}

uint64_t sub_1D65DA328(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1802658148 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
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

uint64_t sub_1D65DA43C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  a3(255, a1, a2);
  sub_1D72644CC();
  swift_allocObject();
  v3 = sub_1D726270C();
  *v4 = 256;
  *(v4 + 2) = 2;

  return sub_1D5BFCB60(v3);
}

uint64_t sub_1D65DA4B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1D7264A5C();
}

uint64_t sub_1D65DA510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D65DA328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65DA540@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DA43C(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_13);
  *a2 = result;
  return result;
}

uint64_t sub_1D65DA584(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65DA5D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FormatVBoxNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v245 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v250 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v251 = &v245 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v252 = &v245 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v253 = &v245 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v254 = &v245 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  *&v260 = &v245 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  *&v258 = &v245 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  *&v257 = &v245 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v245 - v35;
  sub_1D66CB564();
  v264 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v245 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_1D5C71758();
  v44 = v43;
  v45 = sub_1D5B58B84(&qword_1EDF24BE8, sub_1D5C71758);
  v265 = v40;
  sub_1D5D2EE70(v4, v44, v46, v41, v4, v44, &type metadata for FormatVersions.JazzkonC, v42, v40, v45, &off_1F51F6C78);
  swift_beginAccess();
  v47 = v2[2];
  v48 = v2[3];
  v261 = v2;
  v49 = qword_1EDF31EB0;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = sub_1D725BD1C();
  v51 = __swift_project_value_buffer(v50, qword_1EDFFCD30);
  v52 = *(v50 - 8);
  v53 = *(v52 + 16);
  v54 = (v52 + 16);
  *&v263 = v51;
  v53(v36);
  v262 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v55 = sub_1D725895C();
  v56 = (*(*(v55 - 8) + 48))(v8, 1, v55);
  v256 = v53;
  v259 = v54;
  v255 = v50;
  if (v56 == 1)
  {
    v248 = v47;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v57 = v264;
    v58 = v265;
    v59 = &v265[*(v264 + 44)];
    v61 = *v59;
    v60 = *(v59 + 1);
    LOBYTE(v267) = 0;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    *(v62 + 32) = v267;
    *(v62 + 40) = v61;
    *(v62 + 48) = v60;
    sub_1D66CB5F8();
    v64 = v63;
    v65 = sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8);

    v249 = v64;
    v66 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    *(v67 + 32) = 0;
    *(v67 + 16) = v66;
    *(v67 + 40) = v267;
    v68 = __swift_project_boxed_opaque_existential_1((v58 + *(v57 + 36)), *(v58 + *(v57 + 36) + 24));
    MEMORY[0x1EEE9AC00](v68, v69);
    MEMORY[0x1EEE9AC00](v70, v71);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v62;
    v72 = v266;
    v74 = sub_1D5D2F7A4(v36, sub_1D615B49C, v73, sub_1D615B4A4, (&v245 - 6));
    if (v72)
    {
      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

LABEL_20:
      v107 = v58;
      return sub_1D5D2CFE8(v107, sub_1D66CB564);
    }

    v124 = v74;
    v266 = v65;

    if (v124)
    {
      v267 = 0uLL;
      LOBYTE(v268) = 0;
      v279 = v248;
      v280 = v48;
      sub_1D72647EC();

      sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);
      v50 = v255;
      v75 = v264;
      v266 = 0;
      v53 = v256;
      goto LABEL_8;
    }

    v266 = 0;
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    v50 = v255;
    v53 = v256;
  }

  else
  {
    sub_1D5D2CFE8(v36, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v75 = v264;
LABEL_8:
  v76 = v257;
  v77 = v263;
  (v53)(v257, v263, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  (v53)(v76, v77, v50);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v76, type metadata accessor for FormatVersionRequirement);
  v78 = v261;
  swift_beginAccess();
  v79 = v78[8];
  v80 = v258;
  (v53)();
  swift_storeEnumTagMultiPayload();
  if (((v79 >> 59) & 0x1E | (v79 >> 2) & 1) == 0x16 && v79 == 0xB000000000000008)
  {
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);
    v81 = v266;
    v82 = v260;
  }

  else
  {
    v58 = v265;
    v108 = &v265[*(v75 + 44)];
    v110 = *v108;
    v109 = *(v108 + 1);
    LOBYTE(v267) = 0;
    v111 = swift_allocObject();
    v257 = xmmword_1D72BAA60;
    *(v111 + 16) = xmmword_1D72BAA60;
    *(v111 + 32) = v267;
    *(v111 + 40) = v110;
    *(v111 + 48) = v109;
    sub_1D5C82CD8(v79);
    sub_1D66CB5F8();
    v113 = v112;
    sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8);

    v249 = v113;
    v114 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v115 = swift_allocObject();
    *(v115 + 16) = v114;
    *(v115 + 24) = v257;
    *(v115 + 40) = v267;
    v116 = __swift_project_boxed_opaque_existential_1((v58 + *(v75 + 36)), *(v58 + *(v75 + 36) + 24));
    MEMORY[0x1EEE9AC00](v116, v117);
    MEMORY[0x1EEE9AC00](v118, v119);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v111;
    v120 = v266;
    v122 = sub_1D5D2F7A4(v80, sub_1D615B49C, v121, sub_1D615B4A4, (&v245 - 6));
    v123 = v80;
    v81 = v120;
    if (v120)
    {

      sub_1D5C92A8C(v79);
      sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
      goto LABEL_20;
    }

    v128 = v122;

    if (v128)
    {
      v267 = v257;
      LOBYTE(v268) = 0;
      v277 = v79;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v78 = v261;
      v53 = v256;
      v82 = v260;
      v75 = v264;
      sub_1D5C92A8C(v277);
      sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
      v50 = v255;
    }

    else
    {
      sub_1D5C92A8C(v79);
      sub_1D5D2CFE8(v258, type metadata accessor for FormatVersionRequirement);
      v78 = v261;
      v50 = v255;
      v53 = v256;
      v82 = v260;
      v75 = v264;
    }
  }

  v266 = v81;
  v83 = v78[10];
  v248 = v78[9];
  *&v257 = v83;
  if (qword_1EDF31F58[0] != -1)
  {
    swift_once();
  }

  v84 = __swift_project_value_buffer(v50, qword_1EDFFCE98);
  (v53)(v82, v84, v50);
  swift_storeEnumTagMultiPayload();
  v258 = xmmword_1D72BAA70;
  v267 = xmmword_1D72BAA70;
  LOBYTE(v268) = 0;
  v85 = *(v75 + 44);
  v86 = v265;
  v87 = &v265[v85];
  v89 = *v87;
  v88 = *(v87 + 1);
  LOBYTE(v277) = 0;
  v90 = swift_allocObject();
  v92 = v90;
  *(v90 + 16) = v258;
  *(v90 + 32) = v277;
  *(v90 + 40) = v89;
  *(v90 + 48) = v88;
  v249 = v89;
  if (v257)
  {
    v247 = &v245;
    v277 = v248;
    v278 = v257;
    MEMORY[0x1EEE9AC00](v90, v91);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v92;
    LOBYTE(v276) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v258;
    *(v93 + 32) = v276;
    *(v93 + 40) = v89;
    *(v93 + 48) = v88;
    sub_1D66CB5F8();
    v95 = v94;
    sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8);
    swift_retain_n();

    *&v257 = v95;
    v96 = sub_1D72647CC();
    LOBYTE(v276) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = v96;
    *(v97 + 24) = v258;
    *(v97 + 40) = v276;
    v98 = __swift_project_boxed_opaque_existential_1((v86 + *(v264 + 36)), *(v86 + *(v264 + 36) + 24));
    MEMORY[0x1EEE9AC00](v98, v99);
    MEMORY[0x1EEE9AC00](v100, v101);
    *(&v245 - 4) = sub_1D615B4A4;
    *(&v245 - 3) = (&v245 - 6);
    v243 = sub_1D6708A70;
    v244 = v93;
    v102 = v260;
    v103 = v266;
    v105 = sub_1D5D2F7A4(v260, sub_1D615B49C, v104, sub_1D615B4A4, (&v245 - 6));
    if (v103)
    {

      v106 = v265;

      sub_1D5D2CFE8(v102, type metadata accessor for FormatVersionRequirement);
      v107 = v106;
      return sub_1D5D2CFE8(v107, sub_1D66CB564);
    }

    v129 = v105;

    if (v129)
    {
      sub_1D6689AF0();
      sub_1D72647EC();
      v78 = v261;
      v50 = v255;
      v53 = v256;
      v126 = v254;
      v266 = 0;
      v127 = v88;

      sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);
      v266 = 0;
      v78 = v261;
      v50 = v255;
      v53 = v256;
      v127 = v88;
      v126 = v254;
    }
  }

  else
  {

    sub_1D5D2CFE8(v260, type metadata accessor for FormatVersionRequirement);

    v126 = v254;
    v127 = v88;
  }

  swift_beginAccess();
  v130 = v78[11];
  (v53)(v126, v263, v50);
  swift_storeEnumTagMultiPayload();
  v131 = *(v130 + 16);
  v246 = v127;
  if (!v131)
  {
    sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
    goto LABEL_37;
  }

  LOBYTE(v267) = 0;
  v132 = swift_allocObject();
  v260 = xmmword_1D72BAA80;
  *(v132 + 16) = xmmword_1D72BAA80;
  *(v132 + 32) = v267;
  *(v132 + 40) = v249;
  *(v132 + 48) = v127;
  sub_1D66CB5F8();
  v134 = v133;
  v135 = sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8);

  v136 = v265;
  *&v258 = v134;
  v137 = sub_1D72647CC();
  LOBYTE(v267) = 0;
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v260;
  *(v138 + 40) = v267;
  v139 = __swift_project_boxed_opaque_existential_1((v136 + *(v264 + 36)), *(v136 + *(v264 + 36) + 24));
  MEMORY[0x1EEE9AC00](v139, v140);
  MEMORY[0x1EEE9AC00](v141, v142);
  *(&v245 - 4) = sub_1D5B4AA6C;
  *(&v245 - 3) = 0;
  v243 = sub_1D6708A70;
  v244 = v132;
  v143 = v266;
  v145 = sub_1D5D2F7A4(v126, sub_1D615B49C, v144, sub_1D615B4A4, (&v245 - 6));
  if (!v143)
  {
    v146 = v145;
    v266 = v135;

    if (v146)
    {
      v267 = v260;
      LOBYTE(v268) = 0;
      v276 = v130;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v78 = v261;
      v127 = v246;
      v266 = 0;

      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
      v50 = v255;
    }

    else
    {
      v266 = 0;
      sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

      v78 = v261;
      v50 = v255;
      v127 = v246;
    }

LABEL_37:
    swift_beginAccess();
    v147 = v78[12];
    v148 = v253;
    (v256)(v253, v263, v50);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v267) = 0;
    v149 = swift_allocObject();
    v263 = xmmword_1D72BAA90;
    *(v149 + 16) = xmmword_1D72BAA90;
    *(v149 + 32) = v267;
    *(v149 + 40) = v249;
    *(v149 + 48) = v127;
    sub_1D66CB5F8();
    v151 = v150;
    v152 = sub_1D5B58B84(&qword_1EDF02AA8, sub_1D66CB5F8);

    *&v260 = v147;

    v153 = v265;
    *&v258 = v151;
    v154 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v155 = swift_allocObject();
    *(v155 + 16) = v154;
    *(v155 + 24) = v263;
    *(v155 + 40) = v267;
    v156 = (v153 + *(v264 + 36));
    v157 = __swift_project_boxed_opaque_existential_1(v156, v156[3]);
    MEMORY[0x1EEE9AC00](v157, v158);
    MEMORY[0x1EEE9AC00](v159, v160);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v149;
    v161 = v266;
    v163 = sub_1D5D2F7A4(v148, sub_1D615B49C, v162, sub_1D615B4A4, (&v245 - 6));
    v266 = v161;
    if (v161)
    {
      sub_1D5D2CFE8(v148, type metadata accessor for FormatVersionRequirement);

      v107 = v153;
      return sub_1D5D2CFE8(v107, sub_1D66CB564);
    }

    v164 = v163;
    v165 = v260;
    *&v257 = v156;
    v264 = v152;

    if (v164)
    {
      v267 = v263;
      LOBYTE(v268) = 0;
      v275 = v165;
      sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
      sub_1D66594A0();
      v166 = v265;
      v167 = v266;
      sub_1D72647EC();
      v266 = v167;
      v168 = v261;
      v169 = v255;
      v170 = v253;
      if (v167)
      {

        v171 = v170;
LABEL_65:
        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
        v107 = v166;
        return sub_1D5D2CFE8(v107, sub_1D66CB564);
      }

      sub_1D5D2CFE8(v170, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v253, type metadata accessor for FormatVersionRequirement);

      v168 = v261;
      v169 = v255;
    }

    swift_beginAccess();
    v172 = *(v168 + 104);
    sub_1D5B58478();
    v174 = *(v173 + 48);
    v175 = v252;
    v176 = &v252[*(v173 + 64)];
    if (qword_1EDF31EE8 != -1)
    {
      swift_once();
    }

    v177 = __swift_project_value_buffer(v169, qword_1EDFFCD98);
    v178 = v256;
    (v256)(v175, v177, v169);
    if (qword_1EDF31F40 != -1)
    {
      swift_once();
    }

    *&v263 = __swift_project_value_buffer(v169, qword_1EDFFCE50);
    v178(v175 + v174);
    *v176 = 0;
    *(v176 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    if (v172)
    {
      LOBYTE(v267) = 0;
      v179 = swift_allocObject();
      v260 = xmmword_1D72BAAA0;
      *(v179 + 16) = xmmword_1D72BAAA0;
      *(v179 + 32) = v267;
      *(v179 + 40) = v249;
      *(v179 + 48) = v246;

      v180 = sub_1D72647CC();
      LOBYTE(v267) = 0;
      v181 = swift_allocObject();
      *(v181 + 16) = v180;
      *(v181 + 24) = v260;
      *(v181 + 40) = v267;
      v182 = v257;
      v183 = __swift_project_boxed_opaque_existential_1(v257, *(v257 + 24));
      MEMORY[0x1EEE9AC00](v183, v184);
      MEMORY[0x1EEE9AC00](v185, v186);
      *(&v245 - 4) = sub_1D5B4AA6C;
      *(&v245 - 3) = 0;
      v243 = sub_1D6708A70;
      v244 = v179;
      v187 = v266;
      v189 = sub_1D5D2F7A4(v175, sub_1D615B49C, v188, sub_1D615B4A4, (&v245 - 6));
      v266 = v187;
      if (v187)
      {
        sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);

LABEL_57:
        v107 = v265;
        return sub_1D5D2CFE8(v107, sub_1D66CB564);
      }

      v205 = v189;

      if (v205)
      {
        v267 = v260;
        LOBYTE(v268) = 0;
        v274 = 1;
        v166 = v265;
        v206 = v266;
        sub_1D72647EC();
        v266 = v206;
        v168 = v261;
        v190 = v251;
        v169 = v255;
        if (v206)
        {
LABEL_64:
          v171 = v175;
          goto LABEL_65;
        }

        sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
        v168 = v261;
        v190 = v251;
        v169 = v255;
      }
    }

    else
    {
      sub_1D5D2CFE8(v175, type metadata accessor for FormatVersionRequirement);
      v190 = v251;
      v182 = v257;
    }

    swift_beginAccess();
    v192 = v168[14];
    v191 = v168[15];
    v193 = *(v168 + 128);
    (v256)(v190, v263, v169);
    swift_storeEnumTagMultiPayload();
    if (v193)
    {
      sub_1D5C75A4C(v192, v191, 1);

      sub_1D5D2F2C8(v192, v191, 1);
      sub_1D5D2F2C8(0, 0, 0);
    }

    else
    {
      sub_1D5D2F2C8(v192, v191, 0);
      sub_1D5D2F2C8(0, 0, 0);
      if ((v192 & 1) == 0)
      {
        v209 = v190;
        goto LABEL_67;
      }
    }

    *&v257 = v191;
    LOBYTE(v267) = 0;
    v194 = swift_allocObject();
    v263 = xmmword_1D72BAAB0;
    *(v194 + 16) = xmmword_1D72BAAB0;
    *(v194 + 32) = v267;
    *(v194 + 40) = v249;
    *(v194 + 48) = v246;

    v195 = sub_1D72647CC();
    LOBYTE(v267) = 0;
    v196 = v190;
    v197 = swift_allocObject();
    *(v197 + 16) = v195;
    *(v197 + 24) = v263;
    *(v197 + 40) = v267;
    v198 = __swift_project_boxed_opaque_existential_1(v182, v182[3]);
    *&v260 = &v245;
    MEMORY[0x1EEE9AC00](v198, v199);
    MEMORY[0x1EEE9AC00](v200, v201);
    *(&v245 - 4) = sub_1D5B4AA6C;
    *(&v245 - 3) = 0;
    v243 = sub_1D6708A70;
    v244 = v194;
    v202 = v266;
    v204 = sub_1D5D2F7A4(v196, sub_1D615B49C, v203, sub_1D615B4A4, (&v245 - 6));
    v266 = v202;
    if (v202)
    {
      sub_1D5D2CFE8(v196, type metadata accessor for FormatVersionRequirement);

      sub_1D5D2F2C8(v192, v257, v193);
      goto LABEL_57;
    }

    v207 = v204;

    if ((v207 & 1) == 0)
    {
      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
      sub_1D5D2F2C8(v192, v257, v193);
      v168 = v261;
LABEL_70:
      v210 = v168[17];
      v261 = v168[18];
      v211 = v168[19];
      v262 = v168[20];
      v213 = v168[21];
      v212 = v168[22];
      v214 = v250;
      v215 = v249;
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v216 = v255;
      v217 = __swift_project_value_buffer(v255, qword_1EDFFCE38);
      (v256)(v214, v217, v216);
      swift_storeEnumTagMultiPayload();
      v263 = xmmword_1D72BAAC0;
      v272 = xmmword_1D72BAAC0;
      v273 = 0;
      LOBYTE(v267) = 0;
      v219 = swift_allocObject();
      *(v219 + 16) = v263;
      *(v219 + 32) = v267;
      *(v219 + 40) = v215;
      v220 = v246;
      *(v219 + 48) = v246;
      if (v210)
      {
        v221 = v210;
        *&v260 = &v245;
        *&v267 = v210;
        v222 = v261;
        *(&v267 + 1) = v261;
        v223 = v211;
        v268 = v211;
        v224 = v262;
        v269 = v262;
        v270 = v213;
        v271 = v212;
        *&v257 = v221;
        MEMORY[0x1EEE9AC00](v220, v218);
        v225 = v182;
        v227 = v226;
        v259 = &v245 - 6;
        *(&v245 - 4) = sub_1D5B4AA6C;
        *(&v245 - 3) = 0;
        v243 = sub_1D6708A70;
        v244 = v219;
        v281 = 0;
        v228 = swift_allocObject();
        *(v228 + 16) = v263;
        *(v228 + 32) = v281;
        *(v228 + 40) = v249;
        *(v228 + 48) = v227;
        swift_retain_n();
        sub_1D5EB1D80(v257, v222, v223, v224, v213);
        v229 = sub_1D72647CC();
        v281 = 0;
        v230 = swift_allocObject();
        *(v230 + 16) = v229;
        *(v230 + 24) = v263;
        *(v230 + 40) = v281;
        v231 = __swift_project_boxed_opaque_existential_1(v225, v225[3]);
        MEMORY[0x1EEE9AC00](v231, v232);
        MEMORY[0x1EEE9AC00](v233, v234);
        v235 = v259;
        *(&v245 - 4) = sub_1D615B4A4;
        *(&v245 - 3) = v235;
        v243 = sub_1D6708A70;
        v244 = v228;
        v236 = v266;
        v238 = sub_1D5D2F7A4(v250, sub_1D615B49C, v237, sub_1D615B4A4, (&v245 - 6));
        if (v236)
        {

          v239 = v265;
LABEL_78:
          v241 = v270;

          sub_1D5CBF568(v241);

          sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
LABEL_82:
          v107 = v239;
          return sub_1D5D2CFE8(v107, sub_1D66CB564);
        }

        v240 = v238;

        if (v240)
        {
          sub_1D6659A24();
          v239 = v265;
          sub_1D72647EC();

          goto LABEL_78;
        }

        v242 = v270;

        sub_1D5CBF568(v242);

        sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v214, type metadata accessor for FormatVersionRequirement);
      }

      v239 = v265;
      goto LABEL_82;
    }

    v267 = v263;
    LOBYTE(v268) = 0;
    *&v272 = v192;
    *(&v272 + 1) = v257;
    v273 = v193;
    sub_1D60ED320();
    v166 = v265;
    v208 = v266;
    sub_1D72647EC();
    v266 = v208;
    v168 = v261;
    v175 = v251;
    if (v208)
    {
      sub_1D5D2F2C8(v272, *(&v272 + 1), v273);
      goto LABEL_64;
    }

    sub_1D5D2F2C8(v272, *(&v272 + 1), v273);
    v209 = v175;
LABEL_67:
    sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
    goto LABEL_70;
  }

  sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v265, sub_1D66CB564);
}

uint64_t sub_1D65DCFD0(uint64_t a1)
{
  v2 = sub_1D5C718C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65DD00C(uint64_t a1)
{
  v2 = sub_1D5C718C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVOverlayNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v240 - v7;
  v9 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v245 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v246 = &v240 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v247 = &v240 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v248 = &v240 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v249 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v251 = &v240 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v250 = &v240 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v252 = &v240 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v261 = &v240 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v240 - v38;
  sub_1D66CBA74();
  v265 = v40;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v240 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1D5CC12A0();
  v47 = v46;
  v48 = sub_1D5B58B84(&qword_1EDF25548, sub_1D5CC12A0);
  v262 = v43;
  sub_1D5D2EE70(v4, v47, v49, v44, v4, v47, &type metadata for FormatVersions.JazzkonC, v45, v43, v48, &off_1F51F6C78);
  swift_beginAccess();
  v50 = v2[2];
  v51 = v2[3];
  v52 = qword_1EDF31EB0;

  if (v52 != -1)
  {
    swift_once();
  }

  v53 = sub_1D725BD1C();
  v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
  v55 = *(v53 - 8);
  v56 = *(v55 + 16);
  v57 = (v55 + 16);
  v56(v39, v54, v53);
  v260 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D725892C();
  v58 = sub_1D725895C();
  v59 = (*(*(v58 - 8) + 48))(v8, 1, v58);
  v256 = v2;
  v258 = v53;
  v257 = v56;
  v259 = v57;
  v255 = v54;
  if (v59 == 1)
  {
    v254 = v50;
    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v60 = v265;
    v61 = v262;
    v62 = &v262[*(v265 + 11)];
    v64 = *v62;
    v63 = *(v62 + 1);
    LOBYTE(v266) = 0;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = v266;
    *(v65 + 40) = v64;
    *(v65 + 48) = v63;
    sub_1D66CBB08();
    v67 = v66;
    sub_1D5B58B84(&qword_1EDF03598, sub_1D66CBB08);

    *&v264 = v67;
    v68 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v69 = swift_allocObject();
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 16) = v68;
    *(v69 + 40) = v266;
    v70 = __swift_project_boxed_opaque_existential_1((v61 + *(v60 + 9)), *(v61 + *(v60 + 9) + 24));
    MEMORY[0x1EEE9AC00](v70, v71);
    MEMORY[0x1EEE9AC00](v72, v73);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v65;
    v74 = v263;
    v76 = sub_1D5D2F7A4(v39, sub_1D615B49C, v75, sub_1D615B4A4, (&v240 - 6));
    if (v74)
    {
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v77 = v61;
      return sub_1D5D2CFE8(v77, sub_1D66CBA74);
    }

    v103 = v76;

    if (v103)
    {
      v266 = 0uLL;
      LOBYTE(v267) = 0;
      v278 = v254;
      v279 = v51;
      sub_1D72647EC();

      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
      v53 = v258;
      v56 = v257;
      v54 = v255;
      v263 = 0;
      v2 = v256;
    }

    else
    {
      v263 = 0;
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

      v2 = v256;
      v53 = v258;
      v56 = v257;
      v54 = v255;
    }
  }

  else
  {
    sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v8, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v78 = v2[4];
  v79 = v2[5];
  v80 = v261;
  v56(v261, v54, v53);
  swift_storeEnumTagMultiPayload();
  v278 = v78;
  v279 = v79;
  v264 = xmmword_1D728CF30;
  v266 = xmmword_1D728CF30;
  LOBYTE(v267) = 0;
  v81 = v262;
  v82 = &v262[*(v265 + 11)];
  v84 = *v82;
  v83 = *(v82 + 1);
  LOBYTE(v277) = 0;
  v85 = swift_allocObject();
  v254 = &v240;
  *(v85 + 16) = v264;
  *(v85 + 32) = v277;
  *(v85 + 40) = v84;
  *(v85 + 48) = v83;
  MEMORY[0x1EEE9AC00](v85, v86);
  v253 = &v240 - 6;
  *(&v240 - 4) = sub_1D5B4AA6C;
  *(&v240 - 3) = 0;
  v238 = sub_1D6708A74;
  v239 = v87;
  LOBYTE(v277) = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v264;
  *(v88 + 32) = v277;
  v242 = v84;
  *(v88 + 40) = v84;
  *(v88 + 48) = v83;
  sub_1D66CBB08();
  v90 = v89;
  v91 = sub_1D5B58B84(&qword_1EDF03598, sub_1D66CBB08);
  v241 = v83;
  swift_retain_n();
  v244 = v90;
  v243 = v91;
  v92 = sub_1D72647CC();
  LOBYTE(v277) = 0;
  v93 = swift_allocObject();
  *(v93 + 16) = v92;
  *(v93 + 24) = v264;
  *(v93 + 40) = v277;
  v94 = (v81 + *(v265 + 9));
  v95 = __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  MEMORY[0x1EEE9AC00](v95, v96);
  MEMORY[0x1EEE9AC00](v97, v98);
  v99 = v253;
  *(&v240 - 4) = sub_1D615B4A4;
  *(&v240 - 3) = v99;
  v238 = sub_1D6708A74;
  v239 = v88;
  v100 = v263;
  sub_1D5D2BC70(v80, sub_1D615B49C, v101, sub_1D615B4A4, (&v240 - 6));
  if (v100)
  {
    sub_1D5D2CFE8(v80, type metadata accessor for FormatVersionRequirement);

    v77 = v81;
    return sub_1D5D2CFE8(v77, sub_1D66CBA74);
  }

  v265 = v94;

  sub_1D72647EC();
  sub_1D5D2CFE8(v261, type metadata accessor for FormatVersionRequirement);

  v104 = v256;
  swift_beginAccess();
  v105 = v104[6];
  v106 = qword_1EDF31ED0;

  if (v106 != -1)
  {
    swift_once();
  }

  v107 = v258;
  v108 = __swift_project_value_buffer(v258, qword_1EDFFCD50);
  v109 = v252;
  v110 = v257;
  v257(v252, v108, v107);
  swift_storeEnumTagMultiPayload();
  if (*(v105 + 16))
  {
    v263 = v105;
    LOBYTE(v266) = 0;
    v111 = swift_allocObject();
    v264 = xmmword_1D7297410;
    *(v111 + 16) = xmmword_1D7297410;
    *(v111 + 32) = v266;
    *(v111 + 40) = v242;
    *(v111 + 48) = v241;

    v112 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v113 = swift_allocObject();
    *(v113 + 16) = v112;
    *(v113 + 24) = v264;
    *(v113 + 40) = v266;
    v114 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
    MEMORY[0x1EEE9AC00](v114, v115);
    MEMORY[0x1EEE9AC00](v116, v117);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v111;
    v119 = sub_1D5D2F7A4(v109, sub_1D615B49C, v118, sub_1D615B4A4, (&v240 - 6));
    v120 = v119;

    if (v120)
    {
      v266 = v264;
      LOBYTE(v267) = 0;
      v277 = v263;
      sub_1D5C34D84(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1D668E23C();
      sub_1D72647EC();
      v107 = v258;
      v110 = v257;
      v121 = v252;

      sub_1D5D2CFE8(v121, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);

      v107 = v258;
      v110 = v257;
    }
  }

  else
  {
    sub_1D5D2CFE8(v109, type metadata accessor for FormatVersionRequirement);
  }

  v122 = v250;
  v123 = v255;
  v110(v250, v255, v107);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  v110(v122, v123, v107);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
  v124 = v256;
  swift_beginAccess();
  v125 = v124[11];
  v110(v251, v123, v107);
  swift_storeEnumTagMultiPayload();
  if (((v125 >> 59) & 0x1E | (v125 >> 2) & 1) == 0x16 && v125 == 0xB000000000000000)
  {
    sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
    v126 = v249;
    v127 = v110;
    v128 = v258;
    v129 = v256;
  }

  else
  {
    LOBYTE(v266) = 0;
    v141 = swift_allocObject();
    v264 = xmmword_1D72BAA80;
    *(v141 + 16) = xmmword_1D72BAA80;
    *(v141 + 32) = v266;
    *(v141 + 40) = v242;
    *(v141 + 48) = v241;

    sub_1D5C82CD8(v125);
    v263 = v125;
    v142 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = v142;
    *(v143 + 24) = v264;
    *(v143 + 40) = v266;
    v144 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
    MEMORY[0x1EEE9AC00](v144, v145);
    MEMORY[0x1EEE9AC00](v146, v147);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v141;
    v149 = sub_1D5D2F7A4(v251, sub_1D615B49C, v148, sub_1D615B4A4, (&v240 - 6));
    v150 = v149;
    v151 = v263;

    if (v150)
    {
      v266 = v264;
      LOBYTE(v267) = 0;
      v276 = v151;
      sub_1D5CA1E90();
      sub_1D72647EC();
      v128 = v258;
      v152 = v257;
      v153 = v251;
      sub_1D5C92A8C(v276);
      sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);
      v129 = v256;
      v126 = v249;
      v127 = v152;
    }

    else
    {
      sub_1D5C92A8C(v151);
      sub_1D5D2CFE8(v251, type metadata accessor for FormatVersionRequirement);
      v129 = v256;
      v128 = v258;
      v127 = v257;
      v126 = v249;
    }
  }

  swift_beginAccess();
  v130 = v129[12];
  v127(v126, v255, v128);
  swift_storeEnumTagMultiPayload();
  if (*(v130 + 16))
  {
    LOBYTE(v266) = 0;
    v131 = swift_allocObject();
    v264 = xmmword_1D72BAA90;
    *(v131 + 16) = xmmword_1D72BAA90;
    *(v131 + 32) = v266;
    *(v131 + 40) = v242;
    *(v131 + 48) = v241;

    v132 = v126;
    v133 = sub_1D72647CC();
    LOBYTE(v266) = 0;
    v134 = swift_allocObject();
    v263 = v130;
    *(v134 + 16) = v133;
    *(v134 + 24) = v264;
    *(v134 + 40) = v266;
    v135 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
    MEMORY[0x1EEE9AC00](v135, v136);
    MEMORY[0x1EEE9AC00](v137, v138);
    *(&v240 - 4) = sub_1D5B4AA6C;
    *(&v240 - 3) = 0;
    v238 = sub_1D6708A74;
    v239 = v131;
    v140 = sub_1D5D2F7A4(v132, sub_1D615B49C, v139, sub_1D615B4A4, (&v240 - 6));
    v154 = v263;
    v155 = v140;

    if (v155)
    {
      v266 = v264;
      LOBYTE(v267) = 0;
      v275 = v154;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v128 = v258;
      v127 = v257;

      sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);
      v129 = v256;
    }

    else
    {
      sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);

      v129 = v256;
      v128 = v258;
      v127 = v257;
    }
  }

  else
  {
    sub_1D5D2CFE8(v126, type metadata accessor for FormatVersionRequirement);
  }

  swift_beginAccess();
  v156 = v129[13];
  v157 = v248;
  v127(v248, v255, v128);
  v158 = v156;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v266) = 0;
  v159 = swift_allocObject();
  v264 = xmmword_1D72BAAA0;
  *(v159 + 16) = xmmword_1D72BAAA0;
  *(v159 + 32) = v266;
  *(v159 + 40) = v242;
  *(v159 + 48) = v241;

  v160 = sub_1D72647CC();
  LOBYTE(v266) = 0;
  v161 = swift_allocObject();
  *(v161 + 16) = v160;
  *(v161 + 24) = v264;
  *(v161 + 40) = v266;
  v162 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
  MEMORY[0x1EEE9AC00](v162, v163);
  MEMORY[0x1EEE9AC00](v164, v165);
  *(&v240 - 4) = sub_1D5B4AA6C;
  *(&v240 - 3) = 0;
  v238 = sub_1D6708A74;
  v239 = v159;
  LOBYTE(v160) = sub_1D5D2F7A4(v157, sub_1D615B49C, v166, sub_1D615B4A4, (&v240 - 6));

  if (v160)
  {
    v266 = v264;
    LOBYTE(v267) = 0;
    v274 = v158;
    sub_1D5C34D84(0, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D66594A0();
    sub_1D72647EC();
    v167 = v258;
    v168 = v257;
    v169 = v248;

    sub_1D5D2CFE8(v169, type metadata accessor for FormatVersionRequirement);
  }

  else
  {
    sub_1D5D2CFE8(v248, type metadata accessor for FormatVersionRequirement);

    v167 = v258;
    v168 = v257;
  }

  v170 = v256;
  swift_beginAccess();
  LODWORD(v264) = *(v170 + 112);
  sub_1D5B58478();
  v172 = *(v171 + 48);
  v173 = v247;
  v174 = &v247[*(v171 + 64)];
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v263 = 0;
  v175 = __swift_project_value_buffer(v167, qword_1EDFFCD98);
  v168(v173, v175, v167);
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v176 = __swift_project_value_buffer(v167, qword_1EDFFCE50);
  v168(v173 + v172, v176, v167);
  *v174 = 0;
  *(v174 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  if (!v264)
  {
    goto LABEL_49;
  }

  LOBYTE(v266) = 0;
  v177 = swift_allocObject();
  v264 = xmmword_1D72BAAB0;
  *(v177 + 16) = xmmword_1D72BAAB0;
  *(v177 + 32) = v266;
  *(v177 + 40) = v242;
  *(v177 + 48) = v241;

  v178 = sub_1D72647CC();
  LOBYTE(v266) = 0;
  v179 = swift_allocObject();
  *(v179 + 16) = v178;
  *(v179 + 24) = v264;
  *(v179 + 40) = v266;
  v180 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
  MEMORY[0x1EEE9AC00](v180, v181);
  MEMORY[0x1EEE9AC00](v182, v183);
  *(&v240 - 4) = sub_1D5B4AA6C;
  *(&v240 - 3) = 0;
  v238 = sub_1D6708A74;
  v239 = v177;
  v184 = v263;
  v186 = sub_1D5D2F7A4(v173, sub_1D615B49C, v185, sub_1D615B4A4, (&v240 - 6));
  v263 = v184;
  if (!v184)
  {
    v187 = v186;

    if ((v187 & 1) == 0)
    {
      v189 = v81;
      sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
      v167 = v258;
LABEL_50:
      v190 = v256;
      swift_beginAccess();
      v192 = v190[15];
      v191 = v190[16];
      v193 = *(v190 + 136);
      v194 = v246;
      v257(v246, v176, v167);
      swift_storeEnumTagMultiPayload();
      if (v193)
      {
        sub_1D5C75A4C(v192, v191, 1);

        sub_1D5D2F2C8(v192, v191, 1);
        sub_1D5D2F2C8(0, 0, 0);
        v195 = v265;
      }

      else
      {
        sub_1D5D2F2C8(v192, v191, 0);
        sub_1D5D2F2C8(0, 0, 0);
        v195 = v265;
        if ((v192 & 1) == 0)
        {
          sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);
          goto LABEL_60;
        }
      }

      LODWORD(v261) = v193;
      LOBYTE(v266) = 0;
      v196 = swift_allocObject();
      v264 = xmmword_1D72BAAC0;
      *(v196 + 16) = xmmword_1D72BAAC0;
      *(v196 + 32) = v266;
      *(v196 + 40) = v242;
      *(v196 + 48) = v241;

      v197 = v189;
      v198 = sub_1D72647CC();
      LOBYTE(v266) = 0;
      v199 = swift_allocObject();
      *(v199 + 16) = v198;
      *(v199 + 24) = v264;
      *(v199 + 40) = v266;
      v200 = __swift_project_boxed_opaque_existential_1(v195, v195[3]);
      MEMORY[0x1EEE9AC00](v200, v201);
      MEMORY[0x1EEE9AC00](v202, v203);
      *(&v240 - 4) = sub_1D5B4AA6C;
      *(&v240 - 3) = 0;
      v238 = sub_1D6708A74;
      v239 = v196;
      v204 = v263;
      v206 = sub_1D5D2F7A4(v194, sub_1D615B49C, v205, sub_1D615B4A4, (&v240 - 6));
      if (v204)
      {
        sub_1D5D2CFE8(v194, type metadata accessor for FormatVersionRequirement);

        sub_1D5D2F2C8(v192, v191, v261);
        v77 = v197;
        return sub_1D5D2CFE8(v77, sub_1D66CBA74);
      }

      v207 = v206;

      if (v207)
      {
        v266 = v264;
        LOBYTE(v267) = 0;
        *&v271 = v192;
        *(&v271 + 1) = v191;
        v272 = v261;
        sub_1D60ED320();
        sub_1D72647EC();
        v167 = v258;
        v263 = 0;
        sub_1D5D2F2C8(v271, *(&v271 + 1), v272);
        sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
        v190 = v256;
      }

      else
      {
        v263 = 0;
        sub_1D5D2CFE8(v246, type metadata accessor for FormatVersionRequirement);
        sub_1D5D2F2C8(v192, v191, v261);
        v190 = v256;
        v167 = v258;
      }

LABEL_60:
      v208 = v190[18];
      v209 = v190[19];
      v210 = v190[21];
      v261 = v190[20];
      v212 = v190[22];
      v211 = v190[23];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v213 = __swift_project_value_buffer(v167, qword_1EDFFCE38);
      v214 = v167;
      v215 = v245;
      v257(v245, v213, v214);
      swift_storeEnumTagMultiPayload();
      v264 = xmmword_1D72BAAD0;
      v271 = xmmword_1D72BAAD0;
      v272 = 0;
      LOBYTE(v266) = 0;
      v216 = swift_allocObject();
      v218 = v216;
      *(v216 + 16) = v264;
      *(v216 + 32) = v266;
      v219 = v241;
      *(v216 + 40) = v242;
      *(v216 + 48) = v219;
      if (v208)
      {
        v260 = &v240;
        *&v266 = v208;
        *(&v266 + 1) = v209;
        v267 = v261;
        v268 = v210;
        v269 = v212;
        v270 = v211;
        MEMORY[0x1EEE9AC00](v216, v217);
        v258 = v210;
        v259 = &v240 - 6;
        *(&v240 - 4) = sub_1D5B4AA6C;
        *(&v240 - 3) = 0;
        v238 = sub_1D6708A74;
        v239 = v218;
        v280 = 0;
        v221 = v220;
        v222 = swift_allocObject();
        *(v222 + 16) = v264;
        *(v222 + 32) = v280;
        *(v222 + 40) = v242;
        *(v222 + 48) = v219;
        swift_retain_n();
        sub_1D5EB1D80(v208, v209, v221, v258, v212);
        v223 = sub_1D72647CC();
        v280 = 0;
        v224 = swift_allocObject();
        *(v224 + 16) = v223;
        *(v224 + 24) = v264;
        *(v224 + 40) = v280;
        v225 = __swift_project_boxed_opaque_existential_1(v265, v265[3]);
        MEMORY[0x1EEE9AC00](v225, v226);
        MEMORY[0x1EEE9AC00](v227, v228);
        v229 = v259;
        *(&v240 - 4) = sub_1D615B4A4;
        *(&v240 - 3) = v229;
        v238 = sub_1D6708A74;
        v239 = v222;
        v230 = v245;
        v231 = v263;
        v233 = sub_1D5D2F7A4(v245, sub_1D615B49C, v232, sub_1D615B4A4, (&v240 - 6));
        if (v231)
        {

          v234 = v262;
LABEL_68:
          v236 = v269;

          sub_1D5CBF568(v236);

          sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
LABEL_71:
          v77 = v234;
          return sub_1D5D2CFE8(v77, sub_1D66CBA74);
        }

        v235 = v233;

        if (v235)
        {
          sub_1D6659A24();
          v234 = v262;
          sub_1D72647EC();

          goto LABEL_68;
        }

        v237 = v269;

        sub_1D5CBF568(v237);

        sub_1D5D2CFE8(v230, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);
      }

      v234 = v262;
      goto LABEL_71;
    }

    v266 = v264;
    LOBYTE(v267) = 0;
    v273 = 1;
    v188 = v263;
    sub_1D72647EC();
    v263 = v188;
    v167 = v258;
    if (v188)
    {
      sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v81, sub_1D66CBA74);
    }

LABEL_49:
    v189 = v81;
    sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
    goto LABEL_50;
  }

  sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);

  return sub_1D5D2CFE8(v81, sub_1D66CBA74);
}

uint64_t sub_1D65DFB10(uint64_t a1)
{
  v2 = sub_1D5CC1378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65DFB4C(uint64_t a1)
{
  v2 = sub_1D5CC1378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65DFB88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  a3(255, a1, a2);
  sub_1D72644CC();
  swift_allocObject();
  v3 = sub_1D726270C();
  *v4 = 256;

  return sub_1D5BFCB60(v3);
}

uint64_t sub_1D65DFBFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1D7264A0C();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1D7264A5C();
}

uint64_t sub_1D65DFC54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D65DFB88(*(a1 + 16), *(a1 + 24), _s10CodingKeysOMa_10);
  *a2 = result;
  return result;
}

uint64_t sub_1D65DFC98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D65DFCEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D65DFD40()
{
  v1 = 0x696669746E656469;
  v2 = 2019912806;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x6E656D6574617473;
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

uint64_t sub_1D65DFDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CBFE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65DFDE8(uint64_t a1)
{
  v2 = sub_1D665A480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65DFE24(uint64_t a1)
{
  v2 = sub_1D665A480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVibrancyEffectStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v49 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v48 = &v42 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v47 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v46 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v45 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v44 = &v42 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v43 = &v42 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v42 - v29;
  v51 = *v1;
  v31 = a1[3];
  v32 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCE38);
  v35 = *(*(v33 - 8) + 16);
  v35(v30, v34, v33);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v36 = v55;
  sub_1D5D2BEC4(v30, sub_1D5B4AA6C, 0, v31, v32);
  if (v36)
  {
    return sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  }

  sub_1D5D2CFE8(v30, type metadata accessor for FormatVersionRequirement);
  v38 = v52[3];
  v39 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v38);
  if (v51 > 3)
  {
    if (v51 <= 5)
    {
      v41 = v47;
      v35(v47, v34, v33);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v38, v39);
      sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      goto LABEL_15;
    }

    if (v51 == 6)
    {
      v40 = v49;
      v35(v49, v34, v33);
    }

    else
    {
      v40 = v50;
      v35(v50, v34, v33);
    }
  }

  else if (v51 > 1)
  {
    v40 = v45;
    v35(v45, v34, v33);
  }

  else
  {
    v40 = v43;
    v35(v43, v34, v33);
  }

  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v38, v39);
  sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
LABEL_15:
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t FormatVideoEndAction.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v32;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v32 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v32);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t FormatVideoGravity.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v26 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v25 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v25 - v14;
  v28 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
  v20 = *(*(v18 - 8) + 16);
  v20(v15, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v21 = v32;
  sub_1D5D2BEC4(v15, sub_1D5B4AA6C, 0, v16, v17);
  result = sub_1D5D2CFE8(v15, type metadata accessor for FormatVersionRequirement);
  if (!v21)
  {
    v23 = v29[3];
    v32 = v29[4];
    __swift_project_boxed_opaque_existential_1(v29, v23);
    if (v28)
    {
      v24 = v26;
      v20(v26, v19, v18);
    }

    else
    {
      v24 = v25;
      v20(v25, v19, v18);
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v24, sub_1D5B4AA6C, 0, v23, v32);
    sub_1D5D2CFE8(v24, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    sub_1D726473C();

    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return result;
}

uint64_t FormatVideoNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v377 = &v350 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v354 = &v350 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v353 = &v350 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v355 = &v350 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v357 = &v350 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v356 = &v350 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v358 = &v350 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v359 = &v350 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v362 = &v350 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v363 = &v350 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v364 = &v350 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v365 = &v350 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v366 = &v350 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  *&v376 = &v350 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v350 - v49;
  sub_1D66CD084();
  v374 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v350 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1[3];
  v56 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v55);
  sub_1D5E197B4();
  v58 = v57;
  v59 = sub_1D5B58B84(&qword_1EDF0C3A0, sub_1D5E197B4);
  v375 = v54;
  sub_1D5D2EE70(v4, v58, v60, v55, v4, v58, &type metadata for FormatVersions.AzdenE, v56, v54, v59, &off_1F51F6C18);
  swift_beginAccess();
  v62 = v2[2];
  v61 = v2[3];
  v372 = v2;
  v63 = qword_1EDF31EE8;

  if (v63 != -1)
  {
    swift_once();
  }

  v64 = sub_1D725BD1C();
  v65 = __swift_project_value_buffer(v64, qword_1EDFFCD98);
  v66 = *(v64 - 1);
  v67 = *(v66 + 16);
  v68 = v66 + 16;
  v373 = v64;
  v67(v50, v65, v64);
  v69 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v70 = v377;
  v367 = v62;
  sub_1D725892C();
  v71 = sub_1D725895C();
  v72 = (*(*(v71 - 8) + 48))(v70, 1, v71);
  v369 = v67;
  v370 = v69;
  v371 = v68;
  v368 = v65;
  if (v72 != 1)
  {
    sub_1D5D2CFE8(v50, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_9;
  }

  v361 = v61;
  sub_1D5D35558(v70, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v73 = v374;
  v74 = v375;
  v75 = &v375[*(v374 + 11)];
  v77 = *v75;
  v76 = *(v75 + 1);
  v78 = v50;
  LOBYTE(v394) = 0;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  *(v79 + 24) = 0;
  *(v79 + 32) = v394;
  *(v79 + 40) = v77;
  *(v79 + 48) = v76;
  sub_1D5E19778(0);
  v81 = v80;
  sub_1D5B58B84(&qword_1EC87F8F8, sub_1D5E19778);

  v360 = v81;
  v82 = sub_1D72647CC();
  LOBYTE(v394) = 0;
  v83 = swift_allocObject();
  *(v83 + 24) = 0;
  *(v83 + 32) = 0;
  *(v83 + 16) = v82;
  *(v83 + 40) = v394;
  v84 = __swift_project_boxed_opaque_existential_1((v74 + *(v73 + 9)), *(v74 + *(v73 + 9) + 24));
  *&v377 = &v350;
  MEMORY[0x1EEE9AC00](v84, v85);
  MEMORY[0x1EEE9AC00](v86, v87);
  *(&v350 - 4) = sub_1D5B4AA6C;
  *(&v350 - 3) = 0;
  v348 = sub_1D66CD118;
  v349 = v79;
  v88 = v401;
  v90 = sub_1D5D2F7A4(v78, sub_1D615B49C, v89, sub_1D615B4A4, (&v350 - 6));
  v401 = v88;
  if (v88)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

LABEL_6:
    v91 = v74;
    return sub_1D5D2CFE8(v91, sub_1D66CD084);
  }

  v117 = v90;

  if ((v117 & 1) == 0)
  {
    sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);

    v67 = v369;
    v65 = v368;
    goto LABEL_9;
  }

  v394 = 0uLL;
  LOBYTE(v395) = 0;
  *&v385 = v367;
  *(&v385 + 1) = v361;
  v118 = v375;
  v119 = v401;
  sub_1D72647EC();

  sub_1D5D2CFE8(v78, type metadata accessor for FormatVersionRequirement);
  v67 = v369;
  v65 = v368;
  if (!v119)
  {
    v401 = 0;
LABEL_9:
    v93 = v372[4];
    v67(v376, v65, v373);
    swift_storeEnumTagMultiPayload();
    *&v385 = v93;
    v377 = xmmword_1D728CF30;
    v394 = xmmword_1D728CF30;
    LOBYTE(v395) = 0;
    v94 = v374;
    v95 = v375;
    v96 = &v375[*(v374 + 11)];
    v98 = *v96;
    v97 = *(v96 + 1);
    LOBYTE(v378) = 0;
    v99 = swift_allocObject();
    v367 = &v350;
    *(v99 + 16) = v377;
    *(v99 + 32) = v378;
    *(v99 + 40) = v98;
    *(v99 + 48) = v97;
    MEMORY[0x1EEE9AC00](v99, v100);
    *(&v350 - 4) = sub_1D5B4AA6C;
    *(&v350 - 3) = 0;
    v348 = sub_1D6708C18;
    v349 = v101;
    LOBYTE(v378) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v377;
    *(v102 + 32) = v378;
    v351 = v98;
    *(v102 + 40) = v98;
    *(v102 + 48) = v97;
    sub_1D5E19778(0);
    v104 = v103;
    v105 = sub_1D5B58B84(&qword_1EC87F8F8, sub_1D5E19778);
    v352 = v97;
    swift_retain_n();
    v360 = v104;
    v361 = v105;
    v106 = sub_1D72647CC();
    LOBYTE(v378) = 0;
    v107 = swift_allocObject();
    *(v107 + 16) = v106;
    *(v107 + 24) = v377;
    *(v107 + 40) = v378;
    v108 = v95;
    v109 = (v95 + *(v94 + 9));
    v110 = __swift_project_boxed_opaque_existential_1(v109, v109[3]);
    MEMORY[0x1EEE9AC00](v110, v111);
    MEMORY[0x1EEE9AC00](v112, v113);
    *(&v350 - 4) = sub_1D615B4A4;
    *(&v350 - 3) = (&v350 - 6);
    v114 = v376;
    v348 = sub_1D6708C18;
    v349 = v102;
    v115 = v401;
    sub_1D5D2BC70(v376, sub_1D615B49C, v116, sub_1D615B4A4, (&v350 - 6));
    if (v115)
    {
      sub_1D5D2CFE8(v114, type metadata accessor for FormatVersionRequirement);

      v91 = v108;
      return sub_1D5D2CFE8(v91, sub_1D66CD084);
    }

    *&v377 = v109;

    sub_1D5CA1E90();
    sub_1D72647EC();
    v401 = 0;
    sub_1D5D2CFE8(v376, type metadata accessor for FormatVersionRequirement);

    v120 = v372[5];
    if (qword_1EDF31ED8 != -1)
    {
      swift_once();
    }

    v121 = v373;
    v122 = __swift_project_value_buffer(v373, qword_1EDFFCD68);
    v123 = v366;
    v124 = v369;
    v369(v366, v122, v121);
    swift_storeEnumTagMultiPayload();
    v376 = xmmword_1D7297410;
    v394 = xmmword_1D7297410;
    LOBYTE(v395) = 0;
    LOBYTE(v385) = 0;
    v125 = swift_allocObject();
    v127 = v125;
    *(v125 + 16) = v376;
    *(v125 + 32) = v385;
    v128 = v351;
    v129 = v352;
    *(v125 + 40) = v351;
    *(v125 + 48) = v129;
    if (v120)
    {
      v374 = &v350;
      *&v385 = v120;
      MEMORY[0x1EEE9AC00](v125, v126);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v127;
      LOBYTE(v378) = 0;
      v130 = swift_allocObject();
      *(v130 + 16) = v376;
      *(v130 + 32) = v378;
      *(v130 + 40) = v128;
      *(v130 + 48) = v129;
      swift_retain_n();

      v131 = sub_1D72647CC();
      LOBYTE(v378) = 0;
      v132 = swift_allocObject();
      *(v132 + 16) = v131;
      *(v132 + 24) = v376;
      *(v132 + 40) = v378;
      v133 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v133, v134);
      MEMORY[0x1EEE9AC00](v135, v136);
      *(&v350 - 4) = sub_1D615B4A4;
      *(&v350 - 3) = (&v350 - 6);
      v348 = sub_1D6708C18;
      v349 = v130;
      v137 = v401;
      v139 = sub_1D5D2F7A4(v123, sub_1D615B49C, v138, sub_1D615B4A4, (&v350 - 6));
      if (v137)
      {

        v140 = v375;

        sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
        v91 = v140;
        return sub_1D5D2CFE8(v91, sub_1D66CD084);
      }

      v142 = v139;

      if (v142)
      {
        sub_1D6659D24();
        sub_1D72647EC();
        v141 = v372;
        v124 = v369;
        v128 = v351;
        v401 = 0;
      }

      else
      {
        v401 = 0;

        v141 = v372;
        v124 = v369;
        v128 = v351;
      }
    }

    else
    {

      v141 = v372;
    }

    sub_1D5D2CFE8(v123, type metadata accessor for FormatVersionRequirement);
    swift_beginAccess();
    v143 = v141[6];
    v144 = v141;
    v145 = v365;
    v146 = v124;
    v124(v365, v368, v373);
    swift_storeEnumTagMultiPayload();
    if (*(v143 + 16))
    {
      LOBYTE(v394) = 0;
      v147 = swift_allocObject();
      v376 = xmmword_1D72BAA60;
      *(v147 + 16) = xmmword_1D72BAA60;
      *(v147 + 32) = v394;
      *(v147 + 40) = v128;
      *(v147 + 48) = v352;

      v74 = v375;
      v148 = sub_1D72647CC();
      LOBYTE(v394) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v148;
      *(v149 + 24) = v376;
      *(v149 + 40) = v394;
      v150 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v150, v151);
      MEMORY[0x1EEE9AC00](v152, v153);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v147;
      v154 = v401;
      v156 = sub_1D5D2F7A4(v145, sub_1D615B49C, v155, sub_1D615B4A4, (&v350 - 6));
      if (v154)
      {
        sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

LABEL_29:
        v91 = v74;
        return sub_1D5D2CFE8(v91, sub_1D66CD084);
      }

      v159 = v156;

      if (v159)
      {
        v394 = v376;
        LOBYTE(v395) = 0;
        *&v385 = v143;
        sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
        sub_1D6659C88();
        sub_1D72647EC();
        v157 = v372;
        v160 = v369;
        v128 = v351;
        v401 = 0;

        sub_1D5D2CFE8(v365, type metadata accessor for FormatVersionRequirement);
        v158 = v352;
        v146 = v160;
      }

      else
      {
        v401 = 0;
        sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);

        v157 = v372;
        v146 = v369;
        v128 = v351;
        v158 = v352;
      }
    }

    else
    {
      sub_1D5D2CFE8(v145, type metadata accessor for FormatVersionRequirement);
      v157 = v144;
      v158 = v352;
    }

    v161 = v157[7];
    v162 = v364;
    v146(v364, v368, v373);
    swift_storeEnumTagMultiPayload();
    v376 = xmmword_1D72BAA70;
    v394 = xmmword_1D72BAA70;
    LOBYTE(v395) = 0;
    LOBYTE(v385) = 0;
    v163 = swift_allocObject();
    v165 = v163;
    *(v163 + 16) = v376;
    *(v163 + 32) = v385;
    *(v163 + 40) = v128;
    *(v163 + 48) = v158;
    if (v161)
    {
      v374 = &v350;
      *&v385 = v161;
      MEMORY[0x1EEE9AC00](v163, v164);
      v166 = v128;
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v165;
      LOBYTE(v378) = 0;
      v167 = swift_allocObject();
      *(v167 + 16) = v376;
      *(v167 + 32) = v378;
      *(v167 + 40) = v166;
      *(v167 + 48) = v158;
      swift_retain_n();

      v168 = sub_1D72647CC();
      LOBYTE(v378) = 0;
      v169 = swift_allocObject();
      *(v169 + 16) = v168;
      *(v169 + 24) = v376;
      *(v169 + 40) = v378;
      v170 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v170, v171);
      MEMORY[0x1EEE9AC00](v172, v173);
      *(&v350 - 4) = sub_1D615B4A4;
      *(&v350 - 3) = (&v350 - 6);
      v348 = sub_1D6708C18;
      v349 = v167;
      v174 = v401;
      v176 = sub_1D5D2F7A4(v162, sub_1D615B49C, v175, sub_1D615B4A4, (&v350 - 6));
      v401 = v174;
      if (v174)
      {

        v177 = v375;
LABEL_37:
        v178 = v162;
LABEL_50:
        sub_1D5D2CFE8(v178, type metadata accessor for FormatVersionRequirement);
        v91 = v177;
        return sub_1D5D2CFE8(v91, sub_1D66CD084);
      }

      v179 = v176;

      if (v179)
      {
        type metadata accessor for FormatVideoNodeStyle();
        sub_1D5B58B84(&qword_1EC887770, type metadata accessor for FormatVideoNodeStyle);
        v177 = v375;
        v180 = v401;
        sub_1D72647EC();
        v146 = v369;
        v128 = v351;
        v401 = v180;
        if (v180)
        {

          v162 = v364;
          goto LABEL_37;
        }
      }

      else
      {

        v146 = v369;
        v128 = v351;
      }
    }

    else
    {
    }

    v181 = v146;

    sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);
    v182 = v372[8];
    if (qword_1EDF31ED0 != -1)
    {
      swift_once();
    }

    v183 = v373;
    v184 = __swift_project_value_buffer(v373, qword_1EDFFCD50);
    v185 = v363;
    v181(v363, v184, v183);
    swift_storeEnumTagMultiPayload();
    v376 = xmmword_1D72BAA80;
    v394 = xmmword_1D72BAA80;
    LOBYTE(v395) = 0;
    LOBYTE(v385) = 0;
    v186 = swift_allocObject();
    v188 = v186;
    *(v186 + 16) = v376;
    *(v186 + 32) = v385;
    *(v186 + 40) = v128;
    v189 = v128;
    v190 = v352;
    *(v186 + 48) = v352;
    v367 = v184;
    if (v182)
    {
      v374 = &v350;
      *&v385 = v182;
      MEMORY[0x1EEE9AC00](v186, v187);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v188;
      LOBYTE(v378) = 0;
      v191 = swift_allocObject();
      *(v191 + 16) = v376;
      *(v191 + 32) = v378;
      *(v191 + 40) = v128;
      *(v191 + 48) = v190;
      swift_retain_n();

      v192 = sub_1D72647CC();
      LOBYTE(v378) = 0;
      v193 = swift_allocObject();
      *(v193 + 16) = v192;
      *(v193 + 24) = v376;
      *(v193 + 40) = v378;
      v194 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v194, v195);
      MEMORY[0x1EEE9AC00](v196, v197);
      *(&v350 - 4) = sub_1D615B4A4;
      *(&v350 - 3) = (&v350 - 6);
      v348 = sub_1D6708C18;
      v349 = v191;
      v198 = v401;
      v200 = sub_1D5D2F7A4(v185, sub_1D615B49C, v199, sub_1D615B4A4, (&v350 - 6));
      v401 = v198;
      if (v198)
      {

        v177 = v375;
LABEL_49:
        v178 = v185;
        goto LABEL_50;
      }

      v201 = v200;

      if (v201)
      {
        type metadata accessor for FormatAnimationNodeStyle();
        sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
        v177 = v375;
        v202 = v401;
        sub_1D72647EC();
        v181 = v369;
        v189 = v351;
        v401 = v202;
        if (v202)
        {

          v185 = v363;
          goto LABEL_49;
        }

        v190 = v352;
      }

      else
      {

        v181 = v369;
        v189 = v351;
        v190 = v352;
      }
    }

    else
    {
    }

    sub_1D5D2CFE8(v363, type metadata accessor for FormatVersionRequirement);
    v203 = v372[9];
    v181(v362, v368, v373);
    swift_storeEnumTagMultiPayload();
    *&v385 = v203;
    v376 = xmmword_1D72BAA90;
    v394 = xmmword_1D72BAA90;
    LOBYTE(v395) = 0;
    LOBYTE(v378) = 0;
    v204 = swift_allocObject();
    v374 = &v350;
    *(v204 + 16) = v376;
    *(v204 + 32) = v378;
    *(v204 + 40) = v189;
    *(v204 + 48) = v190;
    MEMORY[0x1EEE9AC00](v204, v205);
    *(&v350 - 4) = sub_1D5B4AA6C;
    *(&v350 - 3) = 0;
    v348 = sub_1D6708C18;
    v349 = v206;
    LOBYTE(v378) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = v376;
    *(v207 + 32) = v378;
    *(v207 + 40) = v189;
    *(v207 + 48) = v190;
    swift_retain_n();
    v208 = v375;
    v209 = sub_1D72647CC();
    LOBYTE(v378) = 0;
    v210 = swift_allocObject();
    *(v210 + 16) = v209;
    *(v210 + 24) = v376;
    *(v210 + 40) = v378;
    v211 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
    MEMORY[0x1EEE9AC00](v211, v212);
    MEMORY[0x1EEE9AC00](v213, v214);
    *(&v350 - 4) = sub_1D615B4A4;
    *(&v350 - 3) = (&v350 - 6);
    v215 = v362;
    v348 = sub_1D6708C18;
    v349 = v207;
    v216 = v401;
    sub_1D5D2BC70(v362, sub_1D615B49C, v217, sub_1D615B4A4, (&v350 - 6));
    if (v216)
    {
      sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

      v74 = v208;
      goto LABEL_29;
    }

    sub_1D5B57B50();
    sub_1D72647EC();
    v74 = v208;
    v401 = 0;
    sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

    v218 = v372;
    swift_beginAccess();
    v219 = v218[10];
    v220 = v359;
    v221 = v369;
    v369(v359, v368, v373);
    swift_storeEnumTagMultiPayload();
    if (v219)
    {
      LOBYTE(v394) = 0;
      v222 = swift_allocObject();
      v376 = xmmword_1D72BAAA0;
      *(v222 + 16) = xmmword_1D72BAAA0;
      *(v222 + 32) = v394;
      *(v222 + 40) = v351;
      *(v222 + 48) = v352;

      v223 = sub_1D72647CC();
      LOBYTE(v394) = 0;
      v224 = swift_allocObject();
      *(v224 + 16) = v223;
      *(v224 + 24) = v376;
      *(v224 + 40) = v394;
      v225 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      v374 = &v350;
      MEMORY[0x1EEE9AC00](v225, v226);
      MEMORY[0x1EEE9AC00](v227, v228);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v222;
      v229 = v401;
      v231 = sub_1D5D2F7A4(v220, sub_1D615B49C, v230, sub_1D615B4A4, (&v350 - 6));
      if (v229)
      {
        sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);

        goto LABEL_29;
      }

      v232 = v231;

      if (v232)
      {
        v394 = v376;
        LOBYTE(v395) = 0;
        *&v385 = v219;
        sub_1D72647EC();
      }

      v401 = 0;
      sub_1D5D2CFE8(v359, type metadata accessor for FormatVersionRequirement);
      v218 = v372;
      v221 = v369;
    }

    else
    {
      sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);
    }

    v233 = v352;
    v234 = v358;
    v235 = v367;
    swift_beginAccess();
    v236 = v218[11];
    v221(v234, v235, v373);
    swift_storeEnumTagMultiPayload();
    if (v236 == 0x8000000000000000)
    {
      sub_1D5D2CFE8(v234, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      LOBYTE(v394) = 0;
      v237 = swift_allocObject();
      v376 = xmmword_1D72BAAB0;
      *(v237 + 16) = xmmword_1D72BAAB0;
      *(v237 + 32) = v394;
      *(v237 + 40) = v351;
      *(v237 + 48) = v233;

      sub_1D5EB1500(v236);
      v238 = sub_1D72647CC();
      LOBYTE(v394) = 0;
      v239 = v234;
      v240 = swift_allocObject();
      *(v240 + 16) = v238;
      *(v240 + 24) = v376;
      *(v240 + 40) = v394;
      v241 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v241, v242);
      MEMORY[0x1EEE9AC00](v243, v244);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v237;
      v245 = v401;
      v247 = sub_1D5D2F7A4(v239, sub_1D615B49C, v246, sub_1D615B4A4, (&v350 - 6));
      if (v245)
      {

        sub_1D5EB15C4(v236);
        sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
        goto LABEL_29;
      }

      v248 = v247;
      v401 = 0;

      if (v248)
      {
        v394 = v376;
        LOBYTE(v395) = 0;
        *&v385 = v236;
        sub_1D5DF6A60();
        v249 = v401;
        sub_1D72647EC();
        if (v249)
        {
          sub_1D5EB15C4(v385);
          v250 = v358;
LABEL_85:
          sub_1D5D2CFE8(v250, type metadata accessor for FormatVersionRequirement);
          v91 = v375;
          return sub_1D5D2CFE8(v91, sub_1D66CD084);
        }

        sub_1D5EB15C4(v385);
        sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);
        v401 = 0;
        v74 = v375;
      }

      else
      {
        sub_1D5EB15C4(v236);
        sub_1D5D2CFE8(v358, type metadata accessor for FormatVersionRequirement);
      }

      v218 = v372;
      v221 = v369;
    }

    v251 = v351;
    swift_beginAccess();
    v252 = *(v218 + 96);
    v253 = v373;
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v254 = __swift_project_value_buffer(v253, qword_1EDFFCD00);
    v255 = v356;
    v221(v356, v254, v253);
    swift_storeEnumTagMultiPayload();
    if (v252)
    {
      sub_1D5D2CFE8(v255, type metadata accessor for FormatVersionRequirement);
      goto LABEL_89;
    }

    LOBYTE(v394) = 0;
    v256 = swift_allocObject();
    v376 = xmmword_1D72BAAC0;
    *(v256 + 16) = xmmword_1D72BAAC0;
    *(v256 + 32) = v394;
    *(v256 + 40) = v251;
    *(v256 + 48) = v352;

    v257 = sub_1D72647CC();
    LOBYTE(v394) = 0;
    v258 = swift_allocObject();
    *(v258 + 16) = v257;
    *(v258 + 24) = v376;
    *(v258 + 40) = v394;
    v259 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
    MEMORY[0x1EEE9AC00](v259, v260);
    MEMORY[0x1EEE9AC00](v261, v262);
    *(&v350 - 4) = sub_1D5B4AA6C;
    *(&v350 - 3) = 0;
    v348 = sub_1D6708C18;
    v349 = v256;
    v263 = v401;
    v265 = sub_1D5D2F7A4(v255, sub_1D615B49C, v264, sub_1D615B4A4, (&v350 - 6));
    v401 = v263;
    if (v263)
    {
      sub_1D5D2CFE8(v255, type metadata accessor for FormatVersionRequirement);

      goto LABEL_6;
    }

    v266 = v265;

    if (v266)
    {
      v394 = v376;
      LOBYTE(v395) = 0;
      LOBYTE(v385) = 0;
      v267 = v401;
      sub_1D72647EC();
      if (v267)
      {
        v250 = v356;
        goto LABEL_85;
      }

      sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
      v401 = 0;
    }

    else
    {
      sub_1D5D2CFE8(v356, type metadata accessor for FormatVersionRequirement);
    }

    v218 = v372;
    v253 = v373;
    v221 = v369;
    v251 = v351;
LABEL_89:
    v268 = v218[13];
    v269 = *(v218 + 112);
    v221(v357, v368, v253);
    swift_storeEnumTagMultiPayload();
    v376 = xmmword_1D72BAAD0;
    v394 = xmmword_1D72BAAD0;
    LOBYTE(v395) = 0;
    LOBYTE(v385) = 0;
    v270 = swift_allocObject();
    v272 = v270;
    *(v270 + 16) = v376;
    *(v270 + 32) = v385;
    v273 = v352;
    *(v270 + 40) = v251;
    *(v270 + 48) = v273;
    if (v269 <= 0xFD)
    {
      *&v385 = v268;
      BYTE8(v385) = v269;
      MEMORY[0x1EEE9AC00](v270, v271);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v272;
      LOBYTE(v378) = 0;
      v274 = swift_allocObject();
      *(v274 + 16) = v376;
      *(v274 + 32) = v378;
      *(v274 + 40) = v251;
      *(v274 + 48) = v273;
      swift_retain_n();
      v275 = sub_1D72647CC();
      LOBYTE(v378) = 0;
      v276 = swift_allocObject();
      *(v276 + 16) = v275;
      *(v276 + 24) = v376;
      *(v276 + 40) = v378;
      v277 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v277, v278);
      MEMORY[0x1EEE9AC00](v279, v280);
      *(&v350 - 4) = sub_1D615B4A4;
      *(&v350 - 3) = (&v350 - 6);
      v348 = sub_1D6708C18;
      v349 = v274;
      v281 = v401;
      v283 = sub_1D5D2F7A4(v357, sub_1D615B49C, v282, sub_1D615B4A4, (&v350 - 6));
      v401 = v281;
      if (v281)
      {
        sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);

LABEL_125:
        v91 = v375;
        return sub_1D5D2CFE8(v91, sub_1D66CD084);
      }

      v284 = v283;

      if (v284)
      {
        sub_1D5F8F434();
        v285 = v401;
        sub_1D72647EC();
        v401 = v285;
        if (v285)
        {
          v286 = v357;
LABEL_120:
          sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);

          goto LABEL_125;
        }
      }

      v221 = v369;
    }

    else
    {
    }

    v287 = v355;
    sub_1D5D2CFE8(v357, type metadata accessor for FormatVersionRequirement);

    v288 = v372;
    swift_beginAccess();
    v289 = v288[15];
    v221(v287, v368, v373);
    swift_storeEnumTagMultiPayload();
    if (*(v289 + 16))
    {
      LOBYTE(v394) = 0;
      v290 = swift_allocObject();
      v376 = xmmword_1D72BAAE0;
      *(v290 + 16) = xmmword_1D72BAAE0;
      *(v290 + 32) = v394;
      *(v290 + 40) = v351;
      *(v290 + 48) = v352;

      v291 = sub_1D72647CC();
      LOBYTE(v394) = 0;
      v292 = swift_allocObject();
      *(v292 + 16) = v291;
      *(v292 + 24) = v376;
      *(v292 + 40) = v394;
      v293 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
      MEMORY[0x1EEE9AC00](v293, v294);
      MEMORY[0x1EEE9AC00](v295, v296);
      *(&v350 - 4) = sub_1D5B4AA6C;
      *(&v350 - 3) = 0;
      v348 = sub_1D6708C18;
      v349 = v290;
      v297 = v401;
      v299 = sub_1D5D2F7A4(v287, sub_1D615B49C, v298, sub_1D615B4A4, (&v350 - 6));
      v401 = v297;
      if (v297)
      {

LABEL_100:
        sub_1D5D2CFE8(v355, type metadata accessor for FormatVersionRequirement);
        goto LABEL_125;
      }

      v300 = v299;

      if (v300)
      {
        v301 = v401;
        sub_1D5E08824(v289, v375, 0xB, 0, 0);
        v401 = v301;
        if (v301)
        {

          goto LABEL_100;
        }
      }

      v287 = v355;
    }

    sub_1D5D2CFE8(v287, type metadata accessor for FormatVersionRequirement);
    v302 = *(v372 + 13);
    v398 = *(v372 + 12);
    v399 = v302;
    v400 = *(v372 + 224);
    v303 = *(v372 + 9);
    v394 = *(v372 + 8);
    v395 = v303;
    v304 = *(v372 + 11);
    v396 = *(v372 + 10);
    v397 = v304;
    v305 = v353;
    v369(v353, v368, v373);
    swift_storeEnumTagMultiPayload();
    v376 = xmmword_1D72BAAF0;
    v392 = xmmword_1D72BAAF0;
    v393 = 0;
    LOBYTE(v385) = 0;
    v306 = swift_allocObject();
    v308 = v306;
    *(v306 + 16) = v376;
    *(v306 + 32) = v385;
    v309 = v352;
    *(v306 + 40) = v351;
    *(v306 + 48) = v309;
    if (BYTE8(v395) == 254)
    {

      sub_1D5D2CFE8(v305, type metadata accessor for FormatVersionRequirement);

LABEL_114:
      v322 = v372[29];
      v323 = v372[30];
      v324 = v372[31];
      v325 = v372[32];
      v326 = v372[33];
      v327 = v372[34];
      if (qword_1EDF31F38 != -1)
      {
        swift_once();
      }

      v328 = v373;
      v329 = __swift_project_value_buffer(v373, qword_1EDFFCE38);
      v369(v354, v329, v328);
      swift_storeEnumTagMultiPayload();
      v376 = xmmword_1D7282A80;
      v378 = xmmword_1D7282A80;
      LOBYTE(v379) = 0;
      LOBYTE(v385) = 0;
      v330 = swift_allocObject();
      v332 = v330;
      *(v330 + 16) = v376;
      *(v330 + 32) = v385;
      v333 = v352;
      *(v330 + 40) = v351;
      *(v330 + 48) = v333;
      if (v322)
      {
        v374 = &v350;
        *&v385 = v322;
        *(&v385 + 1) = v323;
        *&v386 = v324;
        *(&v386 + 1) = v325;
        *&v387 = v326;
        *(&v387 + 1) = v327;
        MEMORY[0x1EEE9AC00](v330, v331);
        v373 = &v350 - 6;
        *(&v350 - 4) = sub_1D5B4AA6C;
        *(&v350 - 3) = 0;
        v348 = sub_1D6708C18;
        v349 = v332;
        LOBYTE(v392) = 0;
        v334 = swift_allocObject();
        *(v334 + 16) = v376;
        *(v334 + 32) = v392;
        *(v334 + 40) = v351;
        *(v334 + 48) = v352;
        swift_retain_n();
        sub_1D5EB1D80(v322, v323, v324, v325, v326);
        v335 = sub_1D72647CC();
        LOBYTE(v392) = 0;
        v336 = swift_allocObject();
        *(v336 + 16) = v335;
        *(v336 + 24) = v376;
        *(v336 + 40) = v392;
        v337 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
        MEMORY[0x1EEE9AC00](v337, v338);
        MEMORY[0x1EEE9AC00](v339, v340);
        v341 = v373;
        *(&v350 - 4) = sub_1D615B4A4;
        *(&v350 - 3) = v341;
        v348 = sub_1D6708C18;
        v349 = v334;
        v342 = v401;
        v344 = sub_1D5D2F7A4(v354, sub_1D615B49C, v343, sub_1D615B4A4, (&v350 - 6));
        v401 = v342;
        if (v342)
        {
        }

        else
        {
          v345 = v344;

          if (v345)
          {
            sub_1D6659A24();
            v346 = v401;
            sub_1D72647EC();
            v401 = v346;
          }
        }

        v347 = v387;

        sub_1D5CBF568(v347);

        sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
        goto LABEL_125;
      }

      v286 = v354;
      goto LABEL_120;
    }

    v391 = v400;
    v389 = v398;
    v390 = v399;
    v385 = v394;
    v386 = v395;
    v387 = v396;
    v388 = v397;
    MEMORY[0x1EEE9AC00](v306, v307);
    *(&v350 - 4) = sub_1D5B4AA6C;
    *(&v350 - 3) = 0;
    v348 = sub_1D6708C18;
    v349 = v308;
    LOBYTE(v378) = 0;
    v310 = swift_allocObject();
    *(v310 + 16) = v376;
    *(v310 + 32) = v378;
    *(v310 + 40) = v351;
    *(v310 + 48) = v309;
    swift_retain_n();
    sub_1D5D355B8(&v394, &v378, &qword_1EC8854C8, &type metadata for FormatVideoProperties, MEMORY[0x1E69E6720], sub_1D5C34D84);
    v311 = sub_1D72647CC();
    LOBYTE(v378) = 0;
    v312 = swift_allocObject();
    *(v312 + 16) = v311;
    *(v312 + 24) = v376;
    *(v312 + 40) = v378;
    v313 = __swift_project_boxed_opaque_existential_1(v377, *(v377 + 24));
    MEMORY[0x1EEE9AC00](v313, v314);
    MEMORY[0x1EEE9AC00](v315, v316);
    *(&v350 - 4) = sub_1D615B4A4;
    *(&v350 - 3) = (&v350 - 6);
    v348 = sub_1D6708C18;
    v349 = v310;
    v317 = v401;
    v319 = sub_1D5D2F7A4(v305, sub_1D615B49C, v318, sub_1D615B4A4, (&v350 - 6));
    v401 = v317;
    if (v317)
    {

      v382 = v389;
      v383 = v390;
      v384 = v391;
      v378 = v385;
      v379 = v386;
      v380 = v387;
      v381 = v388;
      sub_1D62B61EC(&v378);
    }

    else
    {
      v320 = v319;

      if ((v320 & 1) == 0 || (sub_1D618A574(), v321 = v401, sub_1D72647EC(), (v401 = v321) == 0))
      {

        v382 = v389;
        v383 = v390;
        v384 = v391;
        v378 = v385;
        v379 = v386;
        v380 = v387;
        v381 = v388;
        sub_1D62B61EC(&v378);
        sub_1D5D2CFE8(v353, type metadata accessor for FormatVersionRequirement);
        goto LABEL_114;
      }

      v382 = v389;
      v383 = v390;
      v384 = v391;
      v378 = v385;
      v379 = v386;
      v380 = v387;
      v381 = v388;
      sub_1D62B61EC(&v378);
    }

    sub_1D5D2CFE8(v353, type metadata accessor for FormatVersionRequirement);
    goto LABEL_125;
  }

  return sub_1D5D2CFE8(v118, sub_1D66CD084);
}

unint64_t sub_1D65E4474(char a1)
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
      result = 0x69747265706F7270;
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

uint64_t sub_1D65E4608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66CD1FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65E4640(uint64_t a1)
{
  v2 = sub_1D5E1988C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65E467C(uint64_t a1)
{
  v2 = sub_1D5E1988C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoNodeBinding.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoNodeBinding, &type metadata for FormatCodingKeys, v17, v14, &type metadata for FormatVideoNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.AzdenE, v15, v10, v16, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D725BD1C();
  v19 = __swift_project_value_buffer(v18, qword_1EDFFCD98);
  (*(*(v18 - 8) + 16))(v6, v19, v18);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D6398828(v11, v12, v13, v6);
  sub_1D5D2CFE8(v6, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v10, sub_1D5D30DC4);
}

uint64_t sub_1D65E49E0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65E4AC8()
{
  sub_1D72621EC();
}

uint64_t sub_1D65E4B9C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65E4C80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664124();
  *a1 = result;
  return result;
}

void sub_1D65E4CB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x65746F6D6572;
  v5 = 0xED00006563616672;
  v6 = 0x65746E4972657375;
  v7 = 0xE700000000000000;
  v8 = 0x676E69646E6962;
  if (v2 != 3)
  {
    v8 = 0x726F7463656C6573;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x686374697773;
    v3 = 0xE600000000000000;
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

uint64_t FormatVideoNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v297 = &v274 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v278 = &v274 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v280 = &v274 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v281 = &v274 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v283 = &v274 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v282 = &v274 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v284 = &v274 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v285 = &v274 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v286 = &v274 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v295 = (&v274 - v34);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v274 - v37;
  sub_1D66CE11C();
  *&v296 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v274 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D66CE244();
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EC8877B0, sub_1D66CE244);
  v324 = v42;
  sub_1D5D2EE70(v4, v46, v48, v43, v4, v46, &type metadata for FormatVersions.AzdenE, v44, v42, v47, &off_1F51F6C18);
  swift_beginAccess();
  v50 = v2[2];
  v49 = v2[3];
  v293 = v2;
  v51 = qword_1EDF31EE8;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD98);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v294 = v52;
  v55(v38, v53, v52);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v297;
  v288 = v50;
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v289 = v55;
  v290 = v56;
  v291 = v53;
  v292 = v57;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v297, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_7:
    v78 = v294;
    goto LABEL_8;
  }

  v287 = v49;
  sub_1D5D35558(v297, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v61 = v296;
  v62 = v324;
  v63 = &v324[*(v296 + 44)];
  v64 = v38;
  v66 = *v63;
  v65 = *(v63 + 1);
  LOBYTE(v313) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v313;
  *(v67 + 40) = v66;
  *(v67 + 48) = v65;
  sub_1D66CE1B0();
  sub_1D5B58B84(&qword_1EC8877B8, sub_1D66CE1B0);

  v68 = sub_1D72647CC();
  LOBYTE(v313) = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v313;
  v70 = __swift_project_boxed_opaque_existential_1((v62 + *(v61 + 36)), *(v62 + *(v61 + 36) + 24));
  *&v297 = &v274;
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v274 - 4) = sub_1D5B4AA6C;
  *(&v274 - 3) = 0;
  v272 = sub_1D66CE3C4;
  v273 = v67;
  v74 = v298;
  v76 = sub_1D5D2F7A4(v64, sub_1D615B49C, v75, sub_1D615B4A4, (&v274 - 6));
  *&v298 = v74;
  if (v74)
  {
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    return sub_1D5D2CFE8(v62, sub_1D66CE11C);
  }

  v107 = v76;

  if ((v107 & 1) == 0)
  {
    sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);

    v55 = v289;
    v53 = v291;
    goto LABEL_7;
  }

  v108 = v294;
  v313 = 0uLL;
  LOBYTE(v314) = 0;
  *&v305 = v288;
  *(&v305 + 1) = v287;
  v109 = v324;
  v110 = v298;
  sub_1D72647EC();

  sub_1D5D2CFE8(v64, type metadata accessor for FormatVersionRequirement);
  v53 = v291;
  if (v110)
  {
LABEL_39:
    v106 = v109;
    return sub_1D5D2CFE8(v106, sub_1D66CE11C);
  }

  *&v298 = 0;
  v78 = v108;
  v55 = v289;
LABEL_8:
  v79 = v293[4];
  v80 = v293[5];
  v81 = v295;
  v55(v295, v53, v78);
  swift_storeEnumTagMultiPayload();
  *&v305 = v79;
  *(&v305 + 1) = v80;
  v297 = xmmword_1D728CF30;
  v313 = xmmword_1D728CF30;
  LOBYTE(v314) = 0;
  v82 = v296;
  v83 = v324;
  v84 = &v324[*(v296 + 44)];
  v86 = *v84;
  v85 = *(v84 + 1);
  LOBYTE(v299) = 0;
  v87 = swift_allocObject();
  v288 = &v274;
  *(v87 + 16) = v297;
  *(v87 + 32) = v299;
  *(v87 + 40) = v86;
  *(v87 + 48) = v85;
  MEMORY[0x1EEE9AC00](v87, v88);
  v287 = &v274 - 6;
  *(&v274 - 4) = sub_1D5B4AA6C;
  *(&v274 - 3) = 0;
  v272 = sub_1D6708C1C;
  v273 = v89;
  LOBYTE(v299) = 0;
  v90 = swift_allocObject();
  *(v90 + 16) = v297;
  *(v90 + 32) = v299;
  v276 = v86;
  *(v90 + 40) = v86;
  *(v90 + 48) = v85;
  sub_1D66CE1B0();
  v92 = v91;
  v93 = sub_1D5B58B84(&qword_1EC8877B8, sub_1D66CE1B0);
  v275 = v85;
  swift_retain_n();
  v277 = v92;
  v279 = v93;
  v94 = sub_1D72647CC();
  LOBYTE(v299) = 0;
  v95 = swift_allocObject();
  *(v95 + 16) = v94;
  *(v95 + 24) = v297;
  *(v95 + 40) = v299;
  v96 = *(v82 + 36);
  v97 = v83;
  v98 = &v83[v96];
  v99 = __swift_project_boxed_opaque_existential_1(v98, *(v98 + 3));
  MEMORY[0x1EEE9AC00](v99, v100);
  MEMORY[0x1EEE9AC00](v101, v102);
  v103 = v287;
  *(&v274 - 4) = sub_1D615B4A4;
  *(&v274 - 3) = v103;
  v272 = sub_1D6708C1C;
  v273 = v90;
  v104 = v298;
  sub_1D5D2BC70(v81, sub_1D615B49C, v105, sub_1D615B4A4, (&v274 - 6));
  if (!v104)
  {
    *&v297 = v98;

    sub_1D72647EC();
    sub_1D5D2CFE8(v295, type metadata accessor for FormatVersionRequirement);

    v111 = v293;
    swift_beginAccess();
    v112 = v111[6];
    v113 = v286;
    v114 = v291;
    v115 = v289;
    v289(v286, v291, v294);
    swift_storeEnumTagMultiPayload();
    *&v296 = v112;
    if (*(v112 + 16))
    {
      LOBYTE(v313) = 0;
      v116 = swift_allocObject();
      v298 = xmmword_1D7297410;
      *(v116 + 16) = xmmword_1D7297410;
      *(v116 + 32) = v313;
      *(v116 + 40) = v276;
      *(v116 + 48) = v275;

      v117 = sub_1D72647CC();
      LOBYTE(v313) = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = v117;
      *(v118 + 24) = v298;
      *(v118 + 40) = v313;
      v119 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
      MEMORY[0x1EEE9AC00](v119, v120);
      MEMORY[0x1EEE9AC00](v121, v122);
      *(&v274 - 4) = sub_1D5B4AA6C;
      *(&v274 - 3) = 0;
      v272 = sub_1D6708C1C;
      v273 = v116;
      v124 = sub_1D5D2F7A4(v113, sub_1D615B49C, v123, sub_1D615B4A4, (&v274 - 6));
      v126 = v124;
      v127 = v296;

      if (v126)
      {
        v313 = v298;
        LOBYTE(v314) = 0;
        *&v305 = v127;
        sub_1D5C34D84(0, &qword_1EC8877C0, &type metadata for FormatVideoNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D66CE454();
        sub_1D72647EC();
        v111 = v293;
        v125 = v289;
        v114 = v291;
        *&v298 = 0;

        sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        *&v298 = 0;
        sub_1D5D2CFE8(v286, type metadata accessor for FormatVersionRequirement);

        v111 = v293;
        v125 = v289;
        v114 = v291;
      }
    }

    else
    {
      *&v298 = 0;
      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
      v125 = v115;
    }

    v128 = v111[7];
    v129 = v294;
    v125(v285, v114, v294);
    swift_storeEnumTagMultiPayload();
    v296 = xmmword_1D72BAA60;
    v313 = xmmword_1D72BAA60;
    LOBYTE(v314) = 0;
    LOBYTE(v305) = 0;
    v130 = swift_allocObject();
    v132 = v130;
    *(v130 + 16) = v296;
    *(v130 + 32) = v305;
    v133 = v275;
    v134 = v276;
    *(v130 + 40) = v276;
    *(v130 + 48) = v133;
    if (v128)
    {
      v295 = &v274;
      *&v305 = v128;
      MEMORY[0x1EEE9AC00](v130, v131);
      *(&v274 - 4) = sub_1D5B4AA6C;
      *(&v274 - 3) = 0;
      v272 = sub_1D6708C1C;
      v273 = v132;
      LOBYTE(v299) = 0;
      v135 = swift_allocObject();
      *(v135 + 16) = v296;
      *(v135 + 32) = v299;
      *(v135 + 40) = v134;
      *(v135 + 48) = v133;
      swift_retain_n();

      v136 = sub_1D72647CC();
      LOBYTE(v299) = 0;
      v137 = swift_allocObject();
      *(v137 + 16) = v136;
      *(v137 + 24) = v296;
      *(v137 + 40) = v299;
      v138 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
      MEMORY[0x1EEE9AC00](v138, v139);
      MEMORY[0x1EEE9AC00](v140, v141);
      *(&v274 - 4) = sub_1D615B4A4;
      *(&v274 - 3) = (&v274 - 6);
      v272 = sub_1D6708C1C;
      v273 = v135;
      v142 = v285;
      v143 = v298;
      v145 = sub_1D5D2F7A4(v285, sub_1D615B49C, v144, sub_1D615B4A4, (&v274 - 6));
      if (v143)
      {

        v109 = v324;

LABEL_37:
        v172 = v142;
        goto LABEL_38;
      }

      v148 = v145;

      v147 = v284;
      if (v148)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();
        v111 = v293;
        v125 = v289;
        *&v298 = 0;
        v149 = v291;

        sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
        v146 = v149;
        v129 = v294;
        v133 = v275;
      }

      else
      {
        *&v298 = 0;

        sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);
        v111 = v293;
        v129 = v294;
        v125 = v289;
        v133 = v275;
        v146 = v291;
      }
    }

    else
    {

      sub_1D5D2CFE8(v285, type metadata accessor for FormatVersionRequirement);

      v146 = v291;
      v147 = v284;
    }

    v150 = v111[8];
    v125(v147, v146, v129);
    swift_storeEnumTagMultiPayload();
    v296 = xmmword_1D72BAA70;
    v313 = xmmword_1D72BAA70;
    LOBYTE(v314) = 0;
    LOBYTE(v305) = 0;
    v151 = swift_allocObject();
    v153 = v151;
    *(v151 + 16) = v296;
    *(v151 + 32) = v305;
    v154 = v276;
    *(v151 + 40) = v276;
    *(v151 + 48) = v133;
    if ((~v150 & 0xF000000000000007) != 0)
    {
      v295 = &v274;
      *&v305 = v150;
      MEMORY[0x1EEE9AC00](v151, v152);
      *(&v274 - 4) = sub_1D5B4AA6C;
      *(&v274 - 3) = 0;
      v272 = sub_1D6708C1C;
      v273 = v153;
      LOBYTE(v299) = 0;
      v142 = v173;
      v174 = swift_allocObject();
      *(v174 + 16) = v296;
      *(v174 + 32) = v299;
      *(v174 + 40) = v154;
      *(v174 + 48) = v133;
      swift_retain_n();
      sub_1D5D04BD4(v150);
      v175 = sub_1D72647CC();
      LOBYTE(v299) = 0;
      v176 = swift_allocObject();
      *(v176 + 16) = v175;
      *(v176 + 24) = v296;
      *(v176 + 40) = v299;
      v177 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
      MEMORY[0x1EEE9AC00](v177, v178);
      MEMORY[0x1EEE9AC00](v179, v180);
      *(&v274 - 4) = sub_1D615B4A4;
      *(&v274 - 3) = (&v274 - 6);
      v272 = sub_1D6708C1C;
      v273 = v174;
      v181 = v298;
      v183 = sub_1D5D2F7A4(v142, sub_1D615B49C, v182, sub_1D615B4A4, (&v274 - 6));
      if (v181)
      {

        v109 = v324;

        goto LABEL_37;
      }

      v185 = v183;

      if (v185)
      {
        sub_1D5D4A808();
        sub_1D72647EC();
        v111 = v293;
        v125 = v289;
        v155 = v291;
        *&v298 = 0;

        v129 = v294;
        v133 = v275;
LABEL_32:
        sub_1D5D2CFE8(v284, type metadata accessor for FormatVersionRequirement);
        v156 = v111[9];
        v157 = v282;
        v125(v282, v155, v129);
        swift_storeEnumTagMultiPayload();
        v296 = xmmword_1D72BAA80;
        v313 = xmmword_1D72BAA80;
        LOBYTE(v314) = 0;
        LOBYTE(v305) = 0;
        v158 = swift_allocObject();
        v160 = v158;
        *(v158 + 16) = v296;
        *(v158 + 32) = v305;
        v161 = v276;
        *(v158 + 40) = v276;
        *(v158 + 48) = v133;
        if (v156)
        {
          v295 = &v274;
          *&v305 = v156;
          MEMORY[0x1EEE9AC00](v158, v159);
          *(&v274 - 4) = sub_1D5B4AA6C;
          *(&v274 - 3) = 0;
          v272 = sub_1D6708C1C;
          v273 = v160;
          LOBYTE(v299) = 0;
          v162 = swift_allocObject();
          *(v162 + 16) = v296;
          *(v162 + 32) = v299;
          *(v162 + 40) = v161;
          *(v162 + 48) = v133;
          swift_retain_n();

          v163 = sub_1D72647CC();
          LOBYTE(v299) = 0;
          v164 = swift_allocObject();
          *(v164 + 16) = v163;
          *(v164 + 24) = v296;
          *(v164 + 40) = v299;
          *&v296 = v156;
          v165 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
          MEMORY[0x1EEE9AC00](v165, v166);
          MEMORY[0x1EEE9AC00](v167, v168);
          *(&v274 - 4) = sub_1D615B4A4;
          *(&v274 - 3) = (&v274 - 6);
          v272 = sub_1D6708C1C;
          v273 = v162;
          v169 = v298;
          v171 = sub_1D5D2F7A4(v157, sub_1D615B49C, v170, sub_1D615B4A4, (&v274 - 6));
          if (v169)
          {

            v109 = v324;
            v172 = v157;
LABEL_38:
            sub_1D5D2CFE8(v172, type metadata accessor for FormatVersionRequirement);
            goto LABEL_39;
          }

          v186 = v171;

          if (v186)
          {
            sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
            sub_1D66612AC();
            sub_1D72647EC();
          }

          *&v298 = 0;

          sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
          v184 = v294;
          v133 = v275;
        }

        else
        {
          v184 = v129;

          sub_1D5D2CFE8(v157, type metadata accessor for FormatVersionRequirement);
        }

        v187 = v293;
        v188 = v293[10];
        v189 = v293[11];
        v190 = *(v293 + 96);
        v289(v283, v291, v184);
        swift_storeEnumTagMultiPayload();
        v296 = xmmword_1D72BAA90;
        v322 = xmmword_1D72BAA90;
        v323 = 0;
        LOBYTE(v313) = 0;
        v191 = swift_allocObject();
        v193 = v191;
        *(v191 + 16) = v296;
        *(v191 + 32) = v313;
        v194 = v276;
        *(v191 + 40) = v276;
        *(v191 + 48) = v133;
        if (v190 <= 0xFD)
        {
          v295 = &v274;
          v319 = v188;
          v320 = v189;
          v321 = v190;
          MEMORY[0x1EEE9AC00](v191, v192);
          v288 = &v274 - 6;
          *(&v274 - 4) = sub_1D5B4AA6C;
          *(&v274 - 3) = 0;
          v272 = sub_1D6708C1C;
          v273 = v193;
          LOBYTE(v313) = 0;
          v224 = swift_allocObject();
          *(v224 + 16) = v296;
          *(v224 + 32) = v313;
          *(v224 + 40) = v194;
          *(v224 + 48) = v133;
          swift_retain_n();
          sub_1D5ED34B0(v188, v189, v190);
          v225 = sub_1D72647CC();
          LOBYTE(v313) = 0;
          v226 = swift_allocObject();
          *(v226 + 16) = v225;
          *(v226 + 24) = v296;
          *(v226 + 40) = v313;
          v227 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
          MEMORY[0x1EEE9AC00](v227, v228);
          MEMORY[0x1EEE9AC00](v229, v230);
          v231 = v288;
          *(&v274 - 4) = sub_1D615B4A4;
          *(&v274 - 3) = v231;
          v272 = sub_1D6708C1C;
          v273 = v224;
          v232 = v283;
          v233 = v298;
          v235 = sub_1D5D2F7A4(v283, sub_1D615B49C, v234, sub_1D615B4A4, (&v274 - 6));
          v196 = v233;
          if (v233)
          {

            v109 = v324;
            sub_1D5ED34A0(v319, v320, v321);
            v172 = v232;
            goto LABEL_38;
          }

          v256 = v235;

          if (v256)
          {
            sub_1D6661258();
            sub_1D72647EC();
            v187 = v293;
            v257 = v281;
            v199 = v291;
            v271 = v289;

            sub_1D5ED34A0(v319, v320, v321);
            sub_1D5D2CFE8(v283, type metadata accessor for FormatVersionRequirement);
            v195 = v275;
            v197 = v271;
            v198 = v257;
LABEL_49:
            v200 = *(v187 + 19);
            v315 = *(v187 + 17);
            v316 = v200;
            v317 = *(v187 + 21);
            v318 = *(v187 + 184);
            v201 = *(v187 + 15);
            v313 = *(v187 + 13);
            v314 = v201;
            v202 = v197;
            v197(v198, v199, v294);
            swift_storeEnumTagMultiPayload();
            v298 = xmmword_1D72BAAA0;
            v311 = xmmword_1D72BAAA0;
            v312 = 0;
            LOBYTE(v305) = 0;
            v203 = swift_allocObject();
            v205 = v203;
            *(v203 + 16) = v298;
            *(v203 + 32) = v305;
            v206 = v276;
            *(v203 + 40) = v276;
            *(v203 + 48) = v195;
            if (v318 == 254)
            {
              *&v298 = v196;

              v207 = v195;
            }

            else
            {
              *&v296 = &v274;
              v307 = v315;
              v308 = v316;
              v309 = v317;
              v310 = v318;
              v305 = v313;
              v306 = v314;
              MEMORY[0x1EEE9AC00](v203, v204);
              *(&v274 - 4) = sub_1D5B4AA6C;
              *(&v274 - 3) = 0;
              v272 = sub_1D6708C1C;
              v273 = v205;
              LOBYTE(v299) = 0;
              v236 = swift_allocObject();
              *(v236 + 16) = v298;
              *(v236 + 32) = v299;
              *(v236 + 40) = v206;
              *(v236 + 48) = v195;
              swift_retain_n();
              sub_1D5D355B8(&v313, &v299, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
              v237 = sub_1D72647CC();
              LOBYTE(v299) = 0;
              v238 = swift_allocObject();
              *(v238 + 16) = v237;
              *(v238 + 24) = v298;
              *(v238 + 40) = v299;
              v239 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
              MEMORY[0x1EEE9AC00](v239, v240);
              MEMORY[0x1EEE9AC00](v241, v242);
              *(&v274 - 4) = sub_1D615B4A4;
              *(&v274 - 3) = (&v274 - 6);
              v272 = sub_1D6708C1C;
              v273 = v236;
              v244 = sub_1D5D2F7A4(v281, sub_1D615B49C, v243, sub_1D615B4A4, (&v274 - 6));
              if (v196)
              {

                v301 = v307;
                v302 = v308;
                v303 = v309;
                v304 = v310;
                v299 = v305;
                v300 = v306;
                sub_1D601144C(&v299);
                v109 = v324;
                v172 = v281;
                goto LABEL_38;
              }

              v268 = v244;

              if (v268)
              {
                sub_1D6661204();
                sub_1D72647EC();
                v187 = v293;
                v202 = v289;
                v199 = v291;
                *&v298 = 0;

                v301 = v307;
                v302 = v308;
                v303 = v309;
                v304 = v310;
                v299 = v305;
                v300 = v306;
                sub_1D601144C(&v299);
                v207 = v275;
              }

              else
              {
                *&v298 = 0;

                v301 = v307;
                v302 = v308;
                v303 = v309;
                v304 = v310;
                v299 = v305;
                v300 = v306;
                sub_1D601144C(&v299);
                v187 = v293;
                v202 = v289;
                v207 = v275;
                v199 = v291;
              }
            }

            sub_1D5D2CFE8(v281, type metadata accessor for FormatVersionRequirement);
            v208 = v187[24];
            v209 = v280;
            v202(v280, v199, v294);
            swift_storeEnumTagMultiPayload();
            v296 = xmmword_1D72BAAB0;
            v305 = xmmword_1D72BAAB0;
            LOBYTE(v306) = 0;
            LOBYTE(v299) = 0;
            v210 = swift_allocObject();
            v212 = v210;
            *(v210 + 16) = v296;
            *(v210 + 32) = v299;
            v213 = v276;
            *(v210 + 40) = v276;
            *(v210 + 48) = v207;
            if ((~v208 & 0xF000000000000007) != 0)
            {
              v295 = &v274;
              *&v299 = v208;
              MEMORY[0x1EEE9AC00](v210, v211);
              *(&v274 - 4) = sub_1D5B4AA6C;
              *(&v274 - 3) = 0;
              v272 = sub_1D6708C1C;
              v273 = v212;
              LOBYTE(v311) = 0;
              v245 = swift_allocObject();
              *(v245 + 16) = v296;
              *(v245 + 32) = v311;
              *(v245 + 40) = v213;
              *(v245 + 48) = v207;
              swift_retain_n();
              sub_1D5CFCFAC(v208);
              v246 = sub_1D72647CC();
              LOBYTE(v311) = 0;
              v247 = swift_allocObject();
              *(v247 + 16) = v246;
              *(v247 + 24) = v296;
              *(v247 + 40) = v311;
              v248 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
              MEMORY[0x1EEE9AC00](v248, v249);
              MEMORY[0x1EEE9AC00](v250, v251);
              *(&v274 - 4) = sub_1D615B4A4;
              *(&v274 - 3) = (&v274 - 6);
              v272 = sub_1D6708C1C;
              v273 = v245;
              v252 = v298;
              v254 = sub_1D5D2F7A4(v209, sub_1D615B49C, v253, sub_1D615B4A4, (&v274 - 6));
              v214 = v252;
              if (v252)
              {

                v109 = v324;
                v255 = v280;

                v172 = v255;
                goto LABEL_38;
              }

              v269 = v254;

              if (v269)
              {
                sub_1D5B55CBC();
                sub_1D72647EC();
                v209 = v280;

                v215 = v278;
                v187 = v293;
              }

              else
              {

                v215 = v278;
                v187 = v293;
                v209 = v280;
              }
            }

            else
            {

              v214 = v298;
              v215 = v278;
            }

            sub_1D5D2CFE8(v209, type metadata accessor for FormatVersionRequirement);
            v216 = *(v187 + 200);
            if (qword_1EDF31F08 != -1)
            {
              swift_once();
            }

            v217 = v294;
            v218 = __swift_project_value_buffer(v294, qword_1EDFFCDE0);
            v289(v215, v218, v217);
            swift_storeEnumTagMultiPayload();
            v296 = xmmword_1D72BAAC0;
            v305 = xmmword_1D72BAAC0;
            LOBYTE(v306) = 0;
            LOBYTE(v299) = 0;
            v219 = swift_allocObject();
            v221 = v219;
            *(v219 + 16) = v296;
            *(v219 + 32) = v299;
            v222 = v275;
            v223 = v276;
            *(v219 + 40) = v276;
            *(v219 + 48) = v222;
            if (v216 == 2)
            {

              v109 = v324;
            }

            else
            {
              v295 = &v274;
              LOBYTE(v299) = v216 & 1;
              MEMORY[0x1EEE9AC00](v219, v220);
              *&v298 = v214;
              *(&v274 - 4) = sub_1D5B4AA6C;
              *(&v274 - 3) = 0;
              v272 = sub_1D6708C1C;
              v273 = v221;
              LOBYTE(v311) = 0;
              v258 = swift_allocObject();
              *(v258 + 16) = v296;
              *(v258 + 32) = v311;
              *(v258 + 40) = v223;
              *(v258 + 48) = v222;
              swift_retain_n();
              v259 = sub_1D72647CC();
              LOBYTE(v311) = 0;
              v260 = swift_allocObject();
              *(v260 + 16) = v259;
              *(v260 + 24) = v296;
              *(v260 + 40) = v311;
              v261 = __swift_project_boxed_opaque_existential_1(v297, *(v297 + 24));
              MEMORY[0x1EEE9AC00](v261, v262);
              MEMORY[0x1EEE9AC00](v263, v264);
              *(&v274 - 4) = sub_1D615B4A4;
              *(&v274 - 3) = (&v274 - 6);
              v272 = sub_1D6708C1C;
              v273 = v258;
              v265 = v298;
              v267 = sub_1D5D2F7A4(v215, sub_1D615B49C, v266, sub_1D615B4A4, (&v274 - 6));
              if (v265)
              {
                sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

                v109 = v324;
                goto LABEL_39;
              }

              v270 = v267;

              if (v270)
              {
                v109 = v324;
                sub_1D72647EC();
              }

              else
              {
                v109 = v324;
              }

              v215 = v278;
            }

            sub_1D5D2CFE8(v215, type metadata accessor for FormatVersionRequirement);

            goto LABEL_39;
          }

          sub_1D5ED34A0(v319, v320, v321);
          sub_1D5D2CFE8(v232, type metadata accessor for FormatVersionRequirement);
          v187 = v293;
          v197 = v289;
          v198 = v281;
          v195 = v275;
        }

        else
        {

          sub_1D5D2CFE8(v283, type metadata accessor for FormatVersionRequirement);

          v195 = v133;
          v196 = v298;
          v197 = v289;
          v198 = v281;
        }

        v199 = v291;
        goto LABEL_49;
      }

      *&v298 = 0;

      v111 = v293;
      v129 = v294;
      v125 = v289;
      v133 = v275;
    }

    else
    {
    }

    v155 = v291;
    goto LABEL_32;
  }

  sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

  v106 = v97;
  return sub_1D5D2CFE8(v106, sub_1D66CE11C);
}

uint64_t sub_1D65E7760(uint64_t a1)
{
  v2 = sub_1D66CE31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65E779C(uint64_t a1)
{
  v2 = sub_1D66CE31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v220 = &v216 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v224 = &v216 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v226 = &v216 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v227 = &v216 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v228 = &v216 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v231 = &v216 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v233 = (&v216 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v216 - v26;
  sub_1D66CE758();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v216 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v1 + 8);
  *&v244 = *v1;
  v34 = *(v1 + 24);
  v232 = *(v1 + 16);
  v35 = *(v1 + 32);
  v36 = *(v1 + 40);
  v229 = v34;
  v230 = v35;
  v222 = *(v1 + 48);
  v223 = v36;
  v225 = *(v1 + 56);
  v37 = *(v1 + 112);
  v266 = *(v1 + 96);
  v267 = v37;
  v268 = *(v1 + 128);
  v269 = *(v1 + 144);
  v38 = *(v1 + 80);
  v264 = *(v1 + 64);
  v265 = v38;
  v221 = *(v1 + 152);
  v219 = *(v1 + 160);
  v39 = a1[3];
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1D66CE5D8();
  v42 = v41;
  v43 = sub_1D5B58B84(&qword_1EC887800, sub_1D66CE5D8);
  sub_1D5D2EE70(&type metadata for FormatVideoNodeStyle.Selector, v42, v44, v39, &type metadata for FormatVideoNodeStyle.Selector, v42, &type metadata for FormatVersions.AzdenE, v40, v32, v43, &off_1F51F6C18);
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D725BD1C();
  v46 = __swift_project_value_buffer(v45, qword_1EDFFCD98);
  v47 = *(v45 - 8);
  v48 = *(v47 + 16);
  v237 = v46;
  v238 = v47 + 16;
  v239 = v45;
  v235 = v48;
  v48(v27);
  v240 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v245 = v244;
  *(&v245 + 1) = v33;
  v251 = 0uLL;
  LOBYTE(v252) = 0;
  v49 = &v32[*(v29 + 44)];
  v51 = *v49;
  v50 = *(v49 + 1);
  *&v244 = v27;
  LOBYTE(v262) = 0;
  v52 = swift_allocObject();
  v243 = &v216;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = v262;
  *(v52 + 40) = v51;
  *(v52 + 48) = v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  *(&v216 - 4) = sub_1D5B4AA6C;
  *(&v216 - 3) = 0;
  v214 = sub_1D6708C20;
  v215 = v54;
  LOBYTE(v262) = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v262;
  v236 = v51;
  *(v55 + 40) = v51;
  *(v55 + 48) = v50;
  sub_1D66CE7EC();
  v57 = v56;
  v58 = sub_1D5B58B84(&qword_1EC887818, sub_1D66CE7EC);
  v234 = v50;
  swift_retain_n();
  v241 = v58;
  v242 = v57;
  v59 = sub_1D72647CC();
  LOBYTE(v262) = 0;
  v60 = swift_allocObject();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 16) = v59;
  *(v60 + 40) = v262;
  v61 = v32;
  v62 = &v32[*(v29 + 36)];
  v63 = __swift_project_boxed_opaque_existential_1(v62, *(v62 + 3));
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  *(&v216 - 4) = sub_1D615B4A4;
  *(&v216 - 3) = (&v216 - 6);
  v214 = sub_1D6708C20;
  v215 = v55;
  v67 = v244;
  v68 = v270;
  sub_1D5D2BC70(v244, sub_1D615B49C, v69, sub_1D615B4A4, (&v216 - 6));
  if (!v68)
  {
    v270 = v62;

    sub_1D5D3E60C();
    sub_1D72647EC();
    v218 = v61;
    sub_1D5D2CFE8(v244, type metadata accessor for FormatVersionRequirement);

    v72 = v233;
    v73 = v235;
    v235(v233, v237, v239);
    swift_storeEnumTagMultiPayload();
    v244 = xmmword_1D728CF30;
    v251 = xmmword_1D728CF30;
    LOBYTE(v252) = 0;
    LOBYTE(v245) = 0;
    v74 = swift_allocObject();
    v76 = v74;
    *(v74 + 16) = v244;
    *(v74 + 32) = v245;
    v77 = v236;
    v78 = v234;
    *(v74 + 40) = v236;
    *(v74 + 48) = v78;
    if (v232)
    {
      v243 = &v216;
      *&v245 = v232;
      MEMORY[0x1EEE9AC00](v74, v75);
      v217 = &v216 - 6;
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708C20;
      v215 = v76;
      LOBYTE(v262) = 0;
      v79 = swift_allocObject();
      *(v79 + 16) = v244;
      *(v79 + 32) = v262;
      *(v79 + 40) = v77;
      *(v79 + 48) = v78;
      swift_retain_n();

      v80 = sub_1D72647CC();
      LOBYTE(v262) = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = v244;
      *(v81 + 40) = v262;
      v82 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
      MEMORY[0x1EEE9AC00](v82, v83);
      MEMORY[0x1EEE9AC00](v84, v85);
      v86 = v217;
      *(&v216 - 4) = sub_1D615B4A4;
      *(&v216 - 3) = v86;
      v214 = sub_1D6708C20;
      v215 = v79;
      v88 = sub_1D5D2F7A4(v72, sub_1D615B49C, v87, sub_1D615B4A4, (&v216 - 6));
      v93 = v88;

      if (v93)
      {
        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        v94 = v218;
        sub_1D72647EC();
        v89 = v234;
        v73 = v235;
        v95 = v239;
        v91 = v237;
        v96 = v231;
        v243 = 0;

        sub_1D5D2CFE8(v233, type metadata accessor for FormatVersionRequirement);
        v90 = v95;
        v92 = v94;
        goto LABEL_14;
      }

      v243 = 0;

      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);
      v92 = v218;
      v89 = v234;
      v73 = v235;
      v90 = v239;
      v91 = v237;
    }

    else
    {
      v243 = 0;
      v89 = v78;

      sub_1D5D2CFE8(v72, type metadata accessor for FormatVersionRequirement);

      v90 = v239;
      v91 = v237;
      v92 = v218;
    }

    v96 = v231;
LABEL_14:
    v73(v96, v91, v90);
    swift_storeEnumTagMultiPayload();
    v244 = xmmword_1D7297410;
    v251 = xmmword_1D7297410;
    LOBYTE(v252) = 0;
    LOBYTE(v245) = 0;
    v97 = swift_allocObject();
    v99 = v97;
    *(v97 + 16) = v244;
    *(v97 + 32) = v245;
    v100 = v236;
    *(v97 + 40) = v236;
    *(v97 + 48) = v89;
    v101 = v229;
    if ((~v229 & 0xF000000000000007) != 0)
    {
      v233 = &v216;
      *&v245 = v229;
      MEMORY[0x1EEE9AC00](v97, v98);
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708C20;
      v215 = v99;
      LOBYTE(v262) = 0;
      v119 = swift_allocObject();
      *(v119 + 16) = v244;
      *(v119 + 32) = v262;
      *(v119 + 40) = v100;
      *(v119 + 48) = v89;
      swift_retain_n();
      sub_1D5D04BD4(v101);
      v120 = sub_1D72647CC();
      LOBYTE(v262) = 0;
      v121 = swift_allocObject();
      *(v121 + 16) = v120;
      *(v121 + 24) = v244;
      *(v121 + 40) = v262;
      v122 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
      MEMORY[0x1EEE9AC00](v122, v123);
      MEMORY[0x1EEE9AC00](v124, v125);
      *(&v216 - 4) = sub_1D615B4A4;
      *(&v216 - 3) = (&v216 - 6);
      v214 = sub_1D6708C20;
      v215 = v119;
      v126 = v243;
      v128 = sub_1D5D2F7A4(v96, sub_1D615B49C, v127, sub_1D615B4A4, (&v216 - 6));
      if (v126)
      {

        v92 = v218;

        goto LABEL_42;
      }

      v129 = v128;

      if (v129)
      {
        sub_1D5D4A808();
        v130 = v218;
        sub_1D72647EC();
        v73 = v235;
        v91 = v237;
        v243 = 0;

        v100 = v236;
        v102 = v89;
        v92 = v130;
        v103 = v239;
        v96 = v231;
      }

      else
      {
        v243 = 0;

        v92 = v218;
        v73 = v235;
        v100 = v236;
        v102 = v89;
        v103 = v239;
        v91 = v237;
      }
    }

    else
    {
      v102 = v89;

      v103 = v239;
    }

    sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
    v104 = v228;
    v73(v228, v91, v103);
    swift_storeEnumTagMultiPayload();
    v244 = xmmword_1D72BAA60;
    v251 = xmmword_1D72BAA60;
    LOBYTE(v252) = 0;
    LOBYTE(v245) = 0;
    v105 = swift_allocObject();
    v107 = v105;
    *(v105 + 16) = v244;
    *(v105 + 32) = v245;
    *(v105 + 40) = v100;
    *(v105 + 48) = v102;
    if (v230)
    {
      v233 = &v216;
      *&v245 = v230;
      MEMORY[0x1EEE9AC00](v105, v106);
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708C20;
      v215 = v107;
      LOBYTE(v262) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v244;
      *(v108 + 32) = v262;
      *(v108 + 40) = v100;
      *(v108 + 48) = v102;
      swift_retain_n();

      v109 = sub_1D72647CC();
      LOBYTE(v262) = 0;
      v110 = swift_allocObject();
      *(v110 + 16) = v109;
      *(v110 + 24) = v244;
      *(v110 + 40) = v262;
      v111 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
      MEMORY[0x1EEE9AC00](v111, v112);
      MEMORY[0x1EEE9AC00](v113, v114);
      *(&v216 - 4) = sub_1D615B4A4;
      *(&v216 - 3) = (&v216 - 6);
      v214 = sub_1D6708C20;
      v215 = v108;
      v115 = v243;
      v117 = sub_1D5D2F7A4(v104, sub_1D615B49C, v116, sub_1D615B4A4, (&v216 - 6));
      if (v115)
      {

        v118 = v218;
        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
        v70 = v118;
        return sub_1D5D2CFE8(v70, sub_1D66CE758);
      }

      v131 = v117;

      if (v131)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        v132 = v218;
        sub_1D72647EC();
        v73 = v235;
        v91 = v237;
        v243 = 0;

        sub_1D5D2CFE8(v228, type metadata accessor for FormatVersionRequirement);
        v100 = v236;
        v102 = v234;
        v92 = v132;
      }

      else
      {
        v243 = 0;

        sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
        v92 = v218;
        v73 = v235;
        v100 = v236;
        v102 = v234;
        v91 = v237;
      }
    }

    else
    {

      sub_1D5D2CFE8(v104, type metadata accessor for FormatVersionRequirement);
    }

    v133 = v91;
    v134 = v239;
    v135 = v73;
    v73(v227, v133, v239);
    swift_storeEnumTagMultiPayload();
    v244 = xmmword_1D72BAA70;
    v262 = xmmword_1D72BAA70;
    v263 = 0;
    LOBYTE(v251) = 0;
    v136 = swift_allocObject();
    v138 = v136;
    *(v136 + 16) = v244;
    *(v136 + 32) = v251;
    *(v136 + 40) = v100;
    *(v136 + 48) = v102;
    if (v225 > 0xFD)
    {

      sub_1D5D2CFE8(v227, type metadata accessor for FormatVersionRequirement);

      goto LABEL_30;
    }

    v233 = &v216;
    v161 = v222;
    v160 = v223;
    v259 = v223;
    v260 = v222;
    v261 = v225;
    MEMORY[0x1EEE9AC00](v136, v137);
    v232 = &v216 - 6;
    *(&v216 - 4) = sub_1D5B4AA6C;
    *(&v216 - 3) = 0;
    v214 = sub_1D6708C20;
    v215 = v138;
    LOBYTE(v251) = 0;
    v162 = v102;
    v164 = v163;
    v165 = swift_allocObject();
    *(v165 + 16) = v244;
    *(v165 + 32) = v251;
    *(v165 + 40) = v100;
    *(v165 + 48) = v162;
    swift_retain_n();
    sub_1D5ED34B0(v160, v161, v164);
    v166 = sub_1D72647CC();
    LOBYTE(v251) = 0;
    v167 = swift_allocObject();
    *(v167 + 16) = v166;
    *(v167 + 24) = v244;
    *(v167 + 40) = v251;
    v168 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
    MEMORY[0x1EEE9AC00](v168, v169);
    MEMORY[0x1EEE9AC00](v170, v171);
    v172 = v232;
    *(&v216 - 4) = sub_1D615B4A4;
    *(&v216 - 3) = v172;
    v214 = sub_1D6708C20;
    v215 = v165;
    v96 = v227;
    v173 = v243;
    v175 = sub_1D5D2F7A4(v227, sub_1D615B49C, v174, sub_1D615B4A4, (&v216 - 6));
    if (!v173)
    {
      v198 = v175;

      if (v198)
      {
        v199 = v96;
        sub_1D6661258();
        sub_1D72647EC();
        v135 = v235;
        v134 = v239;
        v243 = 0;

        sub_1D5ED34A0(v259, v260, v261);
        sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
        v100 = v236;
        v102 = v162;
        v92 = v218;
      }

      else
      {
        v243 = 0;

        sub_1D5ED34A0(v259, v260, v261);
        sub_1D5D2CFE8(v96, type metadata accessor for FormatVersionRequirement);
        v92 = v218;
        v135 = v235;
        v100 = v236;
        v134 = v239;
        v102 = v162;
      }

LABEL_30:
      v139 = v226;
      v135(v226, v237, v134);
      swift_storeEnumTagMultiPayload();
      v244 = xmmword_1D72BAA80;
      v257 = xmmword_1D72BAA80;
      v258 = 0;
      LOBYTE(v251) = 0;
      v140 = swift_allocObject();
      v142 = v140;
      *(v140 + 16) = v244;
      *(v140 + 32) = v251;
      *(v140 + 40) = v100;
      *(v140 + 48) = v102;
      if (v269 == 254)
      {

        v143 = v221;
      }

      else
      {
        v233 = &v216;
        v253 = v266;
        v254 = v267;
        v255 = v268;
        v256 = v269;
        v251 = v264;
        v252 = v265;
        MEMORY[0x1EEE9AC00](v140, v141);
        *(&v216 - 4) = sub_1D5B4AA6C;
        *(&v216 - 3) = 0;
        v214 = sub_1D6708C20;
        v215 = v142;
        LOBYTE(v245) = 0;
        v177 = swift_allocObject();
        *(v177 + 16) = v244;
        *(v177 + 32) = v245;
        *(v177 + 40) = v100;
        *(v177 + 48) = v102;
        swift_retain_n();
        sub_1D5D355B8(&v264, &v245, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
        v178 = sub_1D72647CC();
        LOBYTE(v245) = 0;
        v179 = swift_allocObject();
        *(v179 + 16) = v178;
        *(v179 + 24) = v244;
        *(v179 + 40) = v245;
        v180 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
        MEMORY[0x1EEE9AC00](v180, v181);
        MEMORY[0x1EEE9AC00](v182, v183);
        *(&v216 - 4) = sub_1D615B4A4;
        *(&v216 - 3) = (&v216 - 6);
        v214 = sub_1D6708C20;
        v215 = v177;
        v184 = v243;
        v186 = sub_1D5D2F7A4(v139, sub_1D615B49C, v185, sub_1D615B4A4, (&v216 - 6));
        if (v184)
        {

          v247 = v253;
          v248 = v254;
          v249 = v255;
          v250 = v256;
          v245 = v251;
          v246 = v252;
          sub_1D601144C(&v245);
          v92 = v218;
          v176 = v139;
          goto LABEL_43;
        }

        v209 = v186;

        v143 = v221;
        if ((v209 & 1) == 0)
        {
          v243 = 0;

          v247 = v253;
          v248 = v254;
          v249 = v255;
          v250 = v256;
          v245 = v251;
          v246 = v252;
          sub_1D601144C(&v245);
          v92 = v218;
          v135 = v235;
          v100 = v236;
          v144 = v239;
          v102 = v234;
          goto LABEL_33;
        }

        sub_1D6661204();
        sub_1D72647EC();
        v135 = v235;
        v134 = v239;
        v243 = 0;

        v247 = v253;
        v248 = v254;
        v249 = v255;
        v250 = v256;
        v245 = v251;
        v246 = v252;
        sub_1D601144C(&v245);
        v100 = v236;
        v102 = v234;
        v92 = v218;
      }

      v144 = v134;
LABEL_33:
      sub_1D5D2CFE8(v226, type metadata accessor for FormatVersionRequirement);
      v145 = v224;
      v135(v224, v237, v144);
      swift_storeEnumTagMultiPayload();
      v244 = xmmword_1D72BAA90;
      v251 = xmmword_1D72BAA90;
      LOBYTE(v252) = 0;
      LOBYTE(v245) = 0;
      v146 = swift_allocObject();
      v148 = v146;
      *(v146 + 16) = v244;
      *(v146 + 32) = v245;
      *(v146 + 40) = v100;
      *(v146 + 48) = v102;
      if ((~v143 & 0xF000000000000007) == 0)
      {

        v149 = v243;
        v150 = v145;
LABEL_35:
        sub_1D5D2CFE8(v150, type metadata accessor for FormatVersionRequirement);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v151 = v239;
        v152 = __swift_project_value_buffer(v239, qword_1EDFFCDE0);
        v153 = v220;
        v135(v220, v152, v151);
        swift_storeEnumTagMultiPayload();
        v244 = xmmword_1D72BAAA0;
        v251 = xmmword_1D72BAAA0;
        LOBYTE(v252) = 0;
        LOBYTE(v245) = 0;
        v154 = swift_allocObject();
        v156 = v154;
        *(v154 + 16) = v244;
        *(v154 + 32) = v245;
        v157 = v236;
        v158 = v234;
        *(v154 + 40) = v236;
        *(v154 + 48) = v158;
        if (v219 == 2)
        {

          v159 = v153;
        }

        else
        {
          v243 = &v216;
          LOBYTE(v245) = v219 & 1;
          MEMORY[0x1EEE9AC00](v154, v155);
          *(&v216 - 4) = sub_1D5B4AA6C;
          *(&v216 - 3) = 0;
          v214 = sub_1D6708C20;
          v215 = v156;
          LOBYTE(v257) = 0;
          v200 = swift_allocObject();
          *(v200 + 16) = v244;
          *(v200 + 32) = v257;
          *(v200 + 40) = v157;
          *(v200 + 48) = v158;
          swift_retain_n();
          v201 = sub_1D72647CC();
          LOBYTE(v257) = 0;
          v202 = swift_allocObject();
          *(v202 + 16) = v201;
          *(v202 + 24) = v244;
          *(v202 + 40) = v257;
          v203 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
          MEMORY[0x1EEE9AC00](v203, v204);
          MEMORY[0x1EEE9AC00](v205, v206);
          *(&v216 - 4) = sub_1D615B4A4;
          *(&v216 - 3) = (&v216 - 6);
          v214 = sub_1D66CE880;
          v215 = v200;
          v208 = sub_1D5D2F7A4(v153, sub_1D615B49C, v207, sub_1D615B4A4, (&v216 - 6));
          if (v149)
          {
            sub_1D5D2CFE8(v153, type metadata accessor for FormatVersionRequirement);

            v70 = v218;
            return sub_1D5D2CFE8(v70, sub_1D66CE758);
          }

          v212 = v208;

          if (v212)
          {
            v213 = v218;
            sub_1D72647EC();
            v159 = v220;
            v92 = v213;
          }

          else
          {
            v92 = v218;
            v159 = v220;
          }
        }

        sub_1D5D2CFE8(v159, type metadata accessor for FormatVersionRequirement);

        goto LABEL_44;
      }

      v237 = &v216;
      *&v245 = v143;
      MEMORY[0x1EEE9AC00](v146, v147);
      *(&v216 - 4) = sub_1D5B4AA6C;
      *(&v216 - 3) = 0;
      v214 = sub_1D6708C20;
      v215 = v148;
      LOBYTE(v257) = 0;
      v187 = swift_allocObject();
      *(v187 + 16) = v244;
      *(v187 + 32) = v257;
      *(v187 + 40) = v100;
      *(v187 + 48) = v102;
      swift_retain_n();
      sub_1D5CFCFAC(v143);
      v188 = sub_1D72647CC();
      LOBYTE(v257) = 0;
      v189 = swift_allocObject();
      *(v189 + 16) = v188;
      *(v189 + 24) = v244;
      *(v189 + 40) = v257;
      v190 = __swift_project_boxed_opaque_existential_1(v270, *(v270 + 3));
      MEMORY[0x1EEE9AC00](v190, v191);
      MEMORY[0x1EEE9AC00](v192, v193);
      *(&v216 - 4) = sub_1D615B4A4;
      *(&v216 - 3) = (&v216 - 6);
      v214 = sub_1D6708C20;
      v215 = v187;
      v194 = v243;
      v196 = sub_1D5D2F7A4(v145, sub_1D615B49C, v195, sub_1D615B4A4, (&v216 - 6));
      v149 = v194;
      if (!v194)
      {
        v210 = v196;

        if (v210)
        {
          sub_1D5B55CBC();
          v211 = v218;
          sub_1D72647EC();
          v135 = v235;

          v150 = v224;
          v92 = v211;
        }

        else
        {

          v92 = v218;
          v150 = v224;
          v135 = v235;
        }

        goto LABEL_35;
      }

      v92 = v218;
      v197 = v224;

      v176 = v197;
LABEL_43:
      sub_1D5D2CFE8(v176, type metadata accessor for FormatVersionRequirement);
LABEL_44:
      v70 = v92;
      return sub_1D5D2CFE8(v70, sub_1D66CE758);
    }

    v92 = v218;
    sub_1D5ED34A0(v259, v260, v261);
LABEL_42:
    v176 = v96;
    goto LABEL_43;
  }

  sub_1D5D2CFE8(v67, type metadata accessor for FormatVersionRequirement);

  v70 = v61;
  return sub_1D5D2CFE8(v70, sub_1D66CE758);
}

uint64_t sub_1D65E9978(uint64_t a1)
{
  v2 = sub_1D66CE6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65E99B4(uint64_t a1)
{
  v2 = sub_1D66CE6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoPlayback.encode(to:)(void *a1)
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
  if (qword_1EDF31EE8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD98);
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

uint64_t FormatVideoPlayerContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
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
          *(v20 + 16) = &unk_1F5117FE0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66CE910();
    v30 = 0uLL;
    sub_1D726431C();
    if (v29)
    {
      v29 = xmmword_1D7279980;
      sub_1D66CE964();
      sub_1D726431C();
      v22 = v33;
      (*(v7 + 8))(v13, v6);
      v28 = v30;
      v23 = v31;
      v24 = v32;
      v25 = swift_allocObject();
      *(v25 + 16) = v28;
      *(v25 + 32) = v23;
      *(v25 + 40) = v24;
      v26 = v25 | 0x8000000000000000;
    }

    else
    {
      sub_1D5C30060(0, &qword_1EDF2EDA8, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatSwitchValue);
      v29 = xmmword_1D7279980;
      sub_1D66CE9B8();
      sub_1D726431C();
      v22 = v33;
      (*(v7 + 8))(v13, v6);
      v27 = v30;
      v26 = swift_allocObject();
      *(v26 + 16) = v27;
    }

    *v22 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoPlayerContent.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerContent, &type metadata for FormatCodingKeys, v19, v16, &type metadata for FormatVideoPlayerContent, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v17, v14, v18, &off_1F51F6B18);
  if (v15 < 0)
  {
    v26 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v27 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v28 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v29 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    sub_1D62B6240(v26, v27, v28, v29);
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v30 = sub_1D725BD1C();
    v31 = __swift_project_value_buffer(v30, qword_1EDFFCD00);
    (*(*(v30 - 8) + 16))(v6, v31, v30);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6391788(1, v26, v27, v28, v29, v6);
    sub_1D62B628C(v26, v27, v28, v29);
    v25 = v6;
  }

  else
  {
    v20 = *(v15 + 16);
    v21 = *(v15 + 24);
    v22 = qword_1EDF31E98;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = sub_1D725BD1C();
    v24 = __swift_project_value_buffer(v23, qword_1EDFFCD00);
    (*(*(v23 - 8) + 16))(v10, v24, v23);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63915B4(0, v20, v21, v10);

    v25 = v10;
  }

  sub_1D5D2CFE8(v25, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v14, sub_1D5D30DC4);
}

uint64_t sub_1D65EA50C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6962;
  }

  else
  {
    v3 = 0x686374697773;
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
    v5 = 0x676E69646E6962;
  }

  else
  {
    v5 = 0x686374697773;
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
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D65EA5B0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65EA630()
{
  sub_1D72621EC();
}

uint64_t sub_1D65EA69C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D65EA724(uint64_t *a1@<X8>)
{
  v2 = 0x686374697773;
  if (*v1)
  {
    v2 = 0x676E69646E6962;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D65EA84C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v6 = v5;
  v35 = a5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v6);
    swift_willThrow();
  }

  else
  {
    v14 = v31;
    v28 = v10;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v35;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v6 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = v14;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v28 + 8))(v13, v9);
          goto LABEL_9;
        }
      }
    }

    v29(v17);
    v33 = 0;
    *&v34 = 0;
    sub_1D726431C();
    v32 = xmmword_1D7279980;
    sub_1D5C6A164();
    sub_1D726431C();
    (*(v28 + 8))(v13, v9);
    v27 = v34;
    *v18 = v33;
    *(v18 + 8) = v27;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D65EABAC(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, char *))
{
  v25 = a3;
  v6 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v15 = v3[1];
  v16 = v3[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D5C30408();
  sub_1D5D2EE70(a2, &type metadata for FormatCodingKeys, v20, v17, a2, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v18, v13, v19, &off_1F51F6B18);
  if (qword_1EDF31E98 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD00);
  (*(*(v21 - 8) + 16))(v9, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v25(v14, v15, v16, v9);
  sub_1D5D2CFE8(v9, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v13, sub_1D5D30DC4);
}

uint64_t FormatVideoPlayerNode.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v443 = &v412 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v415 = &v412 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v416 = &v412 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v414 = &v412 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v417 = &v412 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v418 = &v412 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v419 = &v412 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v420 = &v412 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v421 = &v412 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v422 = &v412 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v423 = &v412 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v424 = &v412 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v425 = &v412 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v428 = &v412 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v429 = &v412 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v430 = (&v412 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v431 = (&v412 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v432 = &v412 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  *&v440 = &v412 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v412 - v64;
  sub_1D66D0450();
  v442 = v66;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v412 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1[3];
  v71 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v70);
  sub_1D5E195C4();
  v73 = v72;
  v74 = sub_1D5B58B84(&qword_1EDF25288, sub_1D5E195C4);
  v462 = v69;
  sub_1D5D2EE70(v4, v73, v75, v70, v4, v73, &type metadata for FormatVersions.StarSkyC, v71, v69, v74, &off_1F51F6B18);
  swift_beginAccess();
  v438 = v2;
  v76 = v2[2];
  v77 = v2[3];
  v78 = qword_1EDF31E98;

  if (v78 != -1)
  {
    swift_once();
  }

  v79 = sub_1D725BD1C();
  v80 = __swift_project_value_buffer(v79, qword_1EDFFCD00);
  v81 = *(v79 - 8);
  v82 = *(v81 + 16);
  v83 = v81 + 16;
  v439 = v79;
  v82(v65, v80, v79);
  v84 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v85 = v443;
  v433 = v76;
  sub_1D725892C();
  v86 = sub_1D725895C();
  v87 = (*(*(v86 - 8) + 48))(v85, 1, v86);
  v436 = v83;
  v437 = v82;
  v434 = v80;
  v435 = v84;
  if (v87 == 1)
  {
    sub_1D5D35558(v443, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    v88 = v442;
    v89 = v462;
    v90 = &v462[*(v442 + 11)];
    v91 = v65;
    v93 = *v90;
    v92 = *(v90 + 1);
    LOBYTE(v454) = 0;
    v94 = swift_allocObject();
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    *(v94 + 32) = v454;
    *(v94 + 40) = v93;
    *(v94 + 48) = v92;
    sub_1D5E19588(0);
    v96 = v95;
    v97 = sub_1D5B58B84(&qword_1EDF03258, sub_1D5E19588);

    *&v443 = v96;
    v427 = v97;
    v98 = sub_1D72647CC();
    LOBYTE(v454) = 0;
    v99 = swift_allocObject();
    *(v99 + 24) = 0;
    *(v99 + 32) = 0;
    *(v99 + 16) = v98;
    *(v99 + 40) = v454;
    v100 = __swift_project_boxed_opaque_existential_1((v89 + *(v88 + 9)), *(v89 + *(v88 + 9) + 24));
    MEMORY[0x1EEE9AC00](v100, v101);
    MEMORY[0x1EEE9AC00](v102, v103);
    *(&v412 - 4) = sub_1D5B4AA6C;
    *(&v412 - 3) = 0;
    v410 = sub_1D66D04E4;
    v411 = v94;
    v104 = v441;
    v106 = sub_1D5D2F7A4(v91, sub_1D615B49C, v105, sub_1D615B4A4, (&v412 - 6));
    if (v104)
    {
      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

      v107 = v89;
      return sub_1D5D2CFE8(v107, sub_1D66D0450);
    }

    v131 = v106;

    if (v131)
    {
      v454 = 0uLL;
      LOBYTE(v455) = 0;
      v460 = v433;
      v461 = v77;
      sub_1D72647EC();
      v80 = v434;
      *&v441 = 0;

      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
      v82 = v437;
    }

    else
    {
      *&v441 = 0;
      sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

      v82 = v437;
      v80 = v434;
    }
  }

  else
  {
    sub_1D5D2CFE8(v65, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v443, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  }

  v108 = v438[4];
  v82(v440, v80, v439);
  swift_storeEnumTagMultiPayload();
  v460 = v108;
  v443 = xmmword_1D728CF30;
  v454 = xmmword_1D728CF30;
  LOBYTE(v455) = 0;
  v109 = v462;
  v110 = &v462[*(v442 + 11)];
  v111 = *v110;
  v112 = *(v110 + 1);
  LOBYTE(v452) = 0;
  v113 = swift_allocObject();
  v433 = &v412;
  *(v113 + 16) = v443;
  *(v113 + 32) = v452;
  *(v113 + 40) = v111;
  *(v113 + 48) = v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  *(&v412 - 4) = sub_1D5B4AA6C;
  *(&v412 - 3) = 0;
  v410 = sub_1D6708C24;
  v411 = v115;
  LOBYTE(v452) = 0;
  v116 = swift_allocObject();
  *(v116 + 16) = v443;
  *(v116 + 32) = v452;
  v413 = v111;
  *(v116 + 40) = v111;
  *(v116 + 48) = v112;
  sub_1D5E19588(0);
  v118 = v117;
  v119 = sub_1D5B58B84(&qword_1EDF03258, sub_1D5E19588);
  swift_retain_n();
  v426 = v118;
  v427 = v119;
  v120 = sub_1D72647CC();
  LOBYTE(v452) = 0;
  v121 = swift_allocObject();
  *(v121 + 16) = v120;
  *(v121 + 24) = v443;
  *(v121 + 40) = v452;
  v122 = (v109 + *(v442 + 9));
  v123 = __swift_project_boxed_opaque_existential_1(v122, v122[3]);
  MEMORY[0x1EEE9AC00](v123, v124);
  MEMORY[0x1EEE9AC00](v125, v126);
  *(&v412 - 4) = sub_1D615B4A4;
  *(&v412 - 3) = (&v412 - 6);
  v410 = sub_1D6708C24;
  v411 = v116;
  v127 = v440;
  v128 = v441;
  sub_1D5D2BC70(v440, sub_1D615B49C, v129, sub_1D615B4A4, (&v412 - 6));
  if (v128)
  {
    sub_1D5D2CFE8(v127, type metadata accessor for FormatVersionRequirement);

    v107 = v462;
    return sub_1D5D2CFE8(v107, sub_1D66D0450);
  }

  v442 = v122;
  *&v443 = v112;

  sub_1D5CA1E90();
  sub_1D72647EC();
  *&v441 = 0;
  sub_1D5D2CFE8(v440, type metadata accessor for FormatVersionRequirement);

  v132 = v438;
  v133 = v438[5];
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v134 = v439;
  v135 = __swift_project_value_buffer(v439, qword_1EDFFCD68);
  v136 = v432;
  v437(v432, v135, v134);
  swift_storeEnumTagMultiPayload();
  v440 = xmmword_1D7297410;
  v454 = xmmword_1D7297410;
  LOBYTE(v455) = 0;
  LOBYTE(v460) = 0;
  v137 = swift_allocObject();
  v139 = v137;
  *(v137 + 16) = v440;
  *(v137 + 32) = v460;
  v140 = v413;
  v141 = v443;
  *(v137 + 40) = v413;
  *(v137 + 48) = v141;
  if (v133)
  {
    v433 = &v412;
    v460 = v133;
    MEMORY[0x1EEE9AC00](v137, v138);
    *(&v412 - 4) = sub_1D5B4AA6C;
    *(&v412 - 3) = 0;
    v410 = sub_1D6708C24;
    v411 = v139;
    LOBYTE(v452) = 0;
    v142 = swift_allocObject();
    *(v142 + 16) = v440;
    *(v142 + 32) = v452;
    *(v142 + 40) = v140;
    *(v142 + 48) = v141;
    swift_retain_n();

    v143 = sub_1D72647CC();
    LOBYTE(v452) = 0;
    v144 = swift_allocObject();
    *(v144 + 16) = v143;
    *(v144 + 24) = v440;
    *(v144 + 40) = v452;
    v145 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
    MEMORY[0x1EEE9AC00](v145, v146);
    MEMORY[0x1EEE9AC00](v147, v148);
    *(&v412 - 4) = sub_1D615B4A4;
    *(&v412 - 3) = (&v412 - 6);
    v410 = sub_1D6708C24;
    v411 = v142;
    v149 = v441;
    v151 = sub_1D5D2F7A4(v136, sub_1D615B49C, v150, sub_1D615B4A4, (&v412 - 6));
    v152 = v149;
    if (v149)
    {

      v153 = v462;

      sub_1D5D2CFE8(v136, type metadata accessor for FormatVersionRequirement);
LABEL_29:
      v107 = v153;
      return sub_1D5D2CFE8(v107, sub_1D66D0450);
    }

    v154 = v151;

    if (v154)
    {
      sub_1D6659D24();
      v153 = v462;
      sub_1D72647EC();
      v132 = v438;
      v134 = v439;
      v155 = v431;

      v141 = v443;
      goto LABEL_26;
    }

    v153 = v462;
    v132 = v438;
    v134 = v439;
    v141 = v443;
  }

  else
  {

    v152 = v441;
    v153 = v462;
  }

  v155 = v431;
LABEL_26:
  sub_1D5D2CFE8(v432, type metadata accessor for FormatVersionRequirement);
  swift_beginAccess();
  v156 = v132[6];
  v437(v155, v434, v134);
  swift_storeEnumTagMultiPayload();
  if (*(v156 + 16))
  {
    LOBYTE(v454) = 0;
    v157 = swift_allocObject();
    v441 = xmmword_1D72BAA60;
    *(v157 + 16) = xmmword_1D72BAA60;
    *(v157 + 32) = v454;
    *(v157 + 40) = v413;
    *(v157 + 48) = v141;

    v158 = sub_1D72647CC();
    LOBYTE(v454) = 0;
    v159 = swift_allocObject();
    *(v159 + 16) = v158;
    *(v159 + 24) = v441;
    *(v159 + 40) = v454;
    v160 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
    *&v440 = &v412;
    MEMORY[0x1EEE9AC00](v160, v161);
    MEMORY[0x1EEE9AC00](v162, v163);
    *(&v412 - 4) = sub_1D5B4AA6C;
    *(&v412 - 3) = 0;
    v410 = sub_1D6708C24;
    v411 = v157;
    v165 = sub_1D5D2F7A4(v155, sub_1D615B49C, v164, sub_1D615B4A4, (&v412 - 6));
    if (v152)
    {
      sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);

      goto LABEL_29;
    }

    v166 = v165;

    if (v166)
    {
      v454 = v441;
      LOBYTE(v455) = 0;
      *&v452 = v156;
      sub_1D5C34D84(0, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
      sub_1D6659C88();
      sub_1D72647EC();
      v132 = v438;
      v134 = v439;
      v167 = v431;
      *&v441 = 0;

      sub_1D5D2CFE8(v167, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      *&v441 = 0;
      sub_1D5D2CFE8(v431, type metadata accessor for FormatVersionRequirement);

      v132 = v438;
      v134 = v439;
    }

    v141 = v443;
  }

  else
  {
    *&v441 = v152;
    sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
  }

  v168 = v132[7];
  v169 = v430;
  v437(v430, v434, v134);
  swift_storeEnumTagMultiPayload();
  v440 = xmmword_1D72BAA70;
  v454 = xmmword_1D72BAA70;
  LOBYTE(v455) = 0;
  LOBYTE(v452) = 0;
  v170 = swift_allocObject();
  v172 = v170;
  *(v170 + 16) = v440;
  *(v170 + 32) = v452;
  v173 = v413;
  *(v170 + 40) = v413;
  *(v170 + 48) = v141;
  if (v168)
  {
    v433 = &v412;
    *&v452 = v168;
    MEMORY[0x1EEE9AC00](v170, v171);
    *(&v412 - 4) = sub_1D5B4AA6C;
    *(&v412 - 3) = 0;
    v410 = sub_1D6708C24;
    v411 = v172;
    LOBYTE(v451) = 0;
    v174 = swift_allocObject();
    *(v174 + 16) = v440;
    *(v174 + 32) = v451;
    *(v174 + 40) = v173;
    *(v174 + 48) = v141;
    swift_retain_n();

    v175 = sub_1D72647CC();
    LOBYTE(v451) = 0;
    v176 = swift_allocObject();
    *(v176 + 16) = v175;
    *(v176 + 24) = v440;
    *(v176 + 40) = v451;
    v177 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
    MEMORY[0x1EEE9AC00](v177, v178);
    MEMORY[0x1EEE9AC00](v179, v180);
    *(&v412 - 4) = sub_1D615B4A4;
    *(&v412 - 3) = (&v412 - 6);
    v410 = sub_1D6708C24;
    v411 = v174;
    v181 = v441;
    v183 = sub_1D5D2F7A4(v169, sub_1D615B49C, v182, sub_1D615B4A4, (&v412 - 6));
    v184 = v181;
    if (v181)
    {

      v185 = v462;
      v186 = v169;
LABEL_13:
      sub_1D5D2CFE8(v186, type metadata accessor for FormatVersionRequirement);
LABEL_14:
      v107 = v185;
      return sub_1D5D2CFE8(v107, sub_1D66D0450);
    }

    v187 = v183;

    if (v187)
    {
      type metadata accessor for FormatVideoPlayerNodeStyle();
      sub_1D5B58B84(&qword_1EDF0B468, type metadata accessor for FormatVideoPlayerNodeStyle);
      sub_1D72647EC();
      v132 = v438;
      v134 = v439;
      v173 = v413;

      v141 = v443;
    }

    else
    {

      v132 = v438;
      v134 = v439;
      v141 = v443;
      v173 = v413;
    }
  }

  else
  {

    v184 = v441;
  }

  sub_1D5D2CFE8(v430, type metadata accessor for FormatVersionRequirement);
  v188 = v132[8];
  v437(v429, v434, v134);
  swift_storeEnumTagMultiPayload();
  v440 = xmmword_1D72BAA80;
  v454 = xmmword_1D72BAA80;
  LOBYTE(v455) = 0;
  LOBYTE(v452) = 0;
  v189 = swift_allocObject();
  v191 = v189;
  *(v189 + 16) = v440;
  *(v189 + 32) = v452;
  *(v189 + 40) = v173;
  *(v189 + 48) = v141;
  *&v441 = v184;
  if (v188)
  {
    *&v452 = v188;
    MEMORY[0x1EEE9AC00](v189, v190);
    *(&v412 - 4) = sub_1D5B4AA6C;
    *(&v412 - 3) = 0;
    v410 = sub_1D6708C24;
    v411 = v191;
    LOBYTE(v451) = 0;
    v192 = swift_allocObject();
    *(v192 + 16) = v440;
    *(v192 + 32) = v451;
    *(v192 + 40) = v173;
    *(v192 + 48) = v141;
    swift_retain_n();

    v193 = sub_1D72647CC();
    LOBYTE(v451) = 0;
    v194 = swift_allocObject();
    *(v194 + 16) = v193;
    *(v194 + 24) = v440;
    *(v194 + 40) = v451;
    v195 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
    MEMORY[0x1EEE9AC00](v195, v196);
    MEMORY[0x1EEE9AC00](v197, v198);
    *(&v412 - 4) = sub_1D615B4A4;
    *(&v412 - 3) = (&v412 - 6);
    v410 = sub_1D6708C24;
    v411 = v192;
    v199 = v441;
    v201 = sub_1D5D2F7A4(v429, sub_1D615B49C, v200, sub_1D615B4A4, (&v412 - 6));
    if (v199)
    {

      v185 = v462;
      v186 = v429;
      goto LABEL_13;
    }

    v203 = v201;

    if (v203)
    {
      type metadata accessor for FormatAnimationNodeStyle();
      sub_1D5B58B84(&unk_1EDF0D098, type metadata accessor for FormatAnimationNodeStyle);
      sub_1D72647EC();
      v132 = v438;
      v134 = v439;
      v173 = v413;
      *&v441 = 0;

      v202 = v443;
    }

    else
    {
      *&v441 = 0;

      v132 = v438;
      v134 = v439;
      v202 = v443;
      v173 = v413;
    }
  }

  else
  {

    v202 = v141;
  }

  sub_1D5D2CFE8(v429, type metadata accessor for FormatVersionRequirement);
  v204 = v132[9];
  v205 = v428;
  v437(v428, v434, v134);
  swift_storeEnumTagMultiPayload();
  *&v452 = v204;
  v440 = xmmword_1D72BAA90;
  v454 = xmmword_1D72BAA90;
  LOBYTE(v455) = 0;
  LOBYTE(v451) = 0;
  v206 = swift_allocObject();
  v433 = &v412;
  *(v206 + 16) = v440;
  *(v206 + 32) = v451;
  *(v206 + 40) = v173;
  *(v206 + 48) = v202;
  MEMORY[0x1EEE9AC00](v206, v207);
  v432 = (&v412 - 6);
  *(&v412 - 4) = sub_1D5B4AA6C;
  *(&v412 - 3) = 0;
  v410 = sub_1D6708C24;
  v411 = v208;
  LOBYTE(v451) = 0;
  v209 = swift_allocObject();
  *(v209 + 16) = v440;
  *(v209 + 32) = v451;
  *(v209 + 40) = v173;
  *(v209 + 48) = v202;
  swift_retain_n();
  v153 = v462;
  v210 = sub_1D72647CC();
  LOBYTE(v451) = 0;
  v211 = swift_allocObject();
  *(v211 + 16) = v210;
  *(v211 + 24) = v440;
  *(v211 + 40) = v451;
  v212 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
  MEMORY[0x1EEE9AC00](v212, v213);
  MEMORY[0x1EEE9AC00](v214, v215);
  v216 = v432;
  *(&v412 - 4) = sub_1D615B4A4;
  *(&v412 - 3) = v216;
  v410 = sub_1D6708C24;
  v411 = v209;
  v217 = v441;
  sub_1D5D2BC70(v205, sub_1D615B49C, v218, sub_1D615B4A4, (&v412 - 6));
  if (v217)
  {
    sub_1D5D2CFE8(v205, type metadata accessor for FormatVersionRequirement);

    goto LABEL_29;
  }

  sub_1D5B57BF8();
  sub_1D72647EC();
  sub_1D5D2CFE8(v428, type metadata accessor for FormatVersionRequirement);

  v219 = v438[10];
  v220 = v425;
  v437(v425, v434, v439);
  swift_storeEnumTagMultiPayload();
  *&v452 = v219;
  v440 = xmmword_1D72BAAA0;
  v454 = xmmword_1D72BAAA0;
  LOBYTE(v455) = 0;
  LOBYTE(v451) = 0;
  v221 = swift_allocObject();
  v433 = &v412;
  *(v221 + 16) = v440;
  *(v221 + 32) = v451;
  v222 = v413;
  v223 = v443;
  *(v221 + 40) = v413;
  *(v221 + 48) = v223;
  MEMORY[0x1EEE9AC00](v221, v224);
  *&v441 = 0;
  *(&v412 - 4) = sub_1D5B4AA6C;
  *(&v412 - 3) = 0;
  v410 = sub_1D6708C24;
  v411 = v225;
  LOBYTE(v451) = 0;
  v226 = swift_allocObject();
  *(v226 + 16) = v440;
  *(v226 + 32) = v451;
  *(v226 + 40) = v222;
  *(v226 + 48) = v223;
  swift_retain_n();
  v227 = sub_1D72647CC();
  LOBYTE(v451) = 0;
  v228 = swift_allocObject();
  *(v228 + 16) = v227;
  *(v228 + 24) = v440;
  *(v228 + 40) = v451;
  v229 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
  MEMORY[0x1EEE9AC00](v229, v230);
  MEMORY[0x1EEE9AC00](v231, v232);
  *(&v412 - 4) = sub_1D615B4A4;
  *(&v412 - 3) = (&v412 - 6);
  v410 = sub_1D6708C24;
  v411 = v226;
  v233 = v441;
  sub_1D5D2BC70(v220, sub_1D615B49C, v234, sub_1D615B4A4, (&v412 - 6));
  if (v233)
  {
    sub_1D5D2CFE8(v220, type metadata accessor for FormatVersionRequirement);

    v185 = v153;
    goto LABEL_14;
  }

  sub_1D5B55E48();
  sub_1D72647EC();
  *&v441 = 0;
  sub_1D5D2CFE8(v425, type metadata accessor for FormatVersionRequirement);

  v235 = v438[11];
  v236 = v424;
  v437(v424, v434, v439);
  swift_storeEnumTagMultiPayload();
  v440 = xmmword_1D72BAAB0;
  v454 = xmmword_1D72BAAB0;
  LOBYTE(v455) = 0;
  LOBYTE(v452) = 0;
  v237 = swift_allocObject();
  v239 = v237;
  *(v237 + 16) = v440;
  *(v237 + 32) = v452;
  v240 = v413;
  v241 = v443;
  *(v237 + 40) = v413;
  *(v237 + 48) = v241;
  if (!v235)
  {

    goto LABEL_62;
  }

  v433 = &v412;
  *&v452 = v235;
  MEMORY[0x1EEE9AC00](v237, v238);
  *(&v412 - 4) = sub_1D5B4AA6C;
  *(&v412 - 3) = 0;
  v410 = sub_1D6708C24;
  v411 = v239;
  LOBYTE(v451) = 0;
  v242 = swift_allocObject();
  *(v242 + 16) = v440;
  *(v242 + 32) = v451;
  *(v242 + 40) = v240;
  *(v242 + 48) = v241;
  swift_retain_n();

  v243 = sub_1D72647CC();
  LOBYTE(v451) = 0;
  v244 = swift_allocObject();
  *(v244 + 16) = v243;
  *(v244 + 24) = v440;
  *(v244 + 40) = v451;
  v245 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
  MEMORY[0x1EEE9AC00](v245, v246);
  MEMORY[0x1EEE9AC00](v247, v248);
  *(&v412 - 4) = sub_1D615B4A4;
  *(&v412 - 3) = (&v412 - 6);
  v410 = sub_1D6708C24;
  v411 = v242;
  v249 = v441;
  v251 = sub_1D5D2F7A4(v236, sub_1D615B49C, v250, sub_1D615B4A4, (&v412 - 6));
  *&v441 = v249;
  if (!v249)
  {
    v253 = v251;

    if (v253)
    {
      type metadata accessor for FormatImageNodeStyle();
      sub_1D5B58B84(&qword_1EDF0F0F0, type metadata accessor for FormatImageNodeStyle);
      v254 = v441;
      sub_1D72647EC();
      *&v441 = v254;
      if (v254)
      {

        goto LABEL_56;
      }
    }

LABEL_62:

    sub_1D5D2CFE8(v424, type metadata accessor for FormatVersionRequirement);
    v255 = v438[12];
    v256 = v438[13];
    v257 = v438[14];
    v258 = v438[15];
    v259 = v438[17];
    v433 = v438[16];
    LODWORD(v432) = *(v438 + 144);
    if (qword_1EDF31F08 != -1)
    {
      swift_once();
    }

    v260 = v439;
    v261 = __swift_project_value_buffer(v439, qword_1EDFFCDE0);
    v437(v423, v261, v260);
    swift_storeEnumTagMultiPayload();
    v440 = xmmword_1D72BAAC0;
    v452 = xmmword_1D72BAAC0;
    v453 = 0;
    LOBYTE(v454) = 0;
    v262 = swift_allocObject();
    v264 = v262;
    *(v262 + 16) = v440;
    *(v262 + 32) = v454;
    v265 = v443;
    *(v262 + 40) = v413;
    *(v262 + 48) = v265;
    if (v257 == 1)
    {

LABEL_74:
      sub_1D5D2CFE8(v423, type metadata accessor for FormatVersionRequirement);
      v440 = *(v438 + 19);
      v287 = v438[21];
      v288 = *(v438 + 176);
      v289 = v422;
      v437(v422, v434, v439);
      swift_storeEnumTagMultiPayload();
      v454 = v440;
      v455 = v287;
      LOBYTE(v456) = v288;
      v440 = xmmword_1D72BAAD0;
      v452 = xmmword_1D72BAAD0;
      v453 = 0;
      LOBYTE(v451) = 0;
      v290 = swift_allocObject();
      *(v290 + 16) = v440;
      *(v290 + 32) = v451;
      v291 = v413;
      v292 = v443;
      *(v290 + 40) = v413;
      *(v290 + 48) = v292;
      MEMORY[0x1EEE9AC00](v290, v293);
      *(&v412 - 4) = sub_1D5B4AA6C;
      *(&v412 - 3) = 0;
      v410 = sub_1D6708C24;
      v411 = v294;
      LOBYTE(v451) = 0;
      v295 = swift_allocObject();
      *(v295 + 16) = v440;
      *(v295 + 32) = v451;
      *(v295 + 40) = v291;
      *(v295 + 48) = v292;
      swift_retain_n();
      v296 = sub_1D72647CC();
      LOBYTE(v451) = 0;
      v297 = swift_allocObject();
      *(v297 + 16) = v296;
      *(v297 + 24) = v440;
      *(v297 + 40) = v451;
      v298 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
      MEMORY[0x1EEE9AC00](v298, v299);
      MEMORY[0x1EEE9AC00](v300, v301);
      *(&v412 - 4) = sub_1D615B4A4;
      *(&v412 - 3) = (&v412 - 6);
      v410 = sub_1D6708C24;
      v411 = v295;
      v302 = v441;
      sub_1D5D2BC70(v289, sub_1D615B49C, v303, sub_1D615B4A4, (&v412 - 6));
      if (v302)
      {
        sub_1D5D2CFE8(v422, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D60AFC28();
        sub_1D72647EC();
        sub_1D5D2CFE8(v422, type metadata accessor for FormatVersionRequirement);

        v304 = v438;
        swift_beginAccess();
        v305 = v304[23];
        v437(v421, v434, v439);
        swift_storeEnumTagMultiPayload();
        if (v305)
        {
          LOBYTE(v454) = 0;
          v306 = swift_allocObject();
          v441 = xmmword_1D72BAAE0;
          *(v306 + 16) = xmmword_1D72BAAE0;
          *(v306 + 32) = v454;
          *(v306 + 40) = v413;
          *(v306 + 48) = v443;

          v307 = sub_1D72647CC();
          LOBYTE(v454) = 0;
          v308 = swift_allocObject();
          *(v308 + 16) = v307;
          *(v308 + 24) = v441;
          *(v308 + 40) = v454;
          v309 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v309, v310);
          MEMORY[0x1EEE9AC00](v311, v312);
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v306;
          LOBYTE(v307) = sub_1D5D2F7A4(v421, sub_1D615B49C, v313, sub_1D615B4A4, (&v412 - 6));

          if (v307)
          {
            v454 = v441;
            LOBYTE(v455) = 0;
            v451 = v305;
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v421, type metadata accessor for FormatVersionRequirement);
        v314 = v438;
        swift_beginAccess();
        v315 = v314[24];
        v437(v420, v434, v439);
        swift_storeEnumTagMultiPayload();
        if (v315 != 0x8000000000000000)
        {
          LOBYTE(v454) = 0;
          v316 = swift_allocObject();
          v441 = xmmword_1D72BAAF0;
          *(v316 + 16) = xmmword_1D72BAAF0;
          *(v316 + 32) = v454;
          *(v316 + 40) = v413;
          *(v316 + 48) = v443;

          sub_1D5EB1500(v315);
          v317 = sub_1D72647CC();
          LOBYTE(v454) = 0;
          v318 = swift_allocObject();
          *(v318 + 16) = v317;
          *(v318 + 24) = v441;
          *(v318 + 40) = v454;
          v319 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v319, v320);
          MEMORY[0x1EEE9AC00](v321, v322);
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v316;
          LOBYTE(v317) = sub_1D5D2F7A4(v420, sub_1D615B49C, v323, sub_1D615B4A4, (&v412 - 6));

          if (v317)
          {
            v454 = v441;
            LOBYTE(v455) = 0;
            v450 = v315;
            sub_1D5DF6A60();
            sub_1D72647EC();
            v324 = v450;
          }

          else
          {
            v324 = v315;
          }

          sub_1D5EB15C4(v324);
        }

        sub_1D5D2CFE8(v420, type metadata accessor for FormatVersionRequirement);
        v325 = v438;
        swift_beginAccess();
        LOBYTE(v325) = *(v325 + 200);
        v437(v419, v434, v439);
        swift_storeEnumTagMultiPayload();
        if ((v325 & 1) == 0)
        {
          LOBYTE(v454) = 0;
          v343 = swift_allocObject();
          v441 = xmmword_1D7282A80;
          *(v343 + 16) = xmmword_1D7282A80;
          *(v343 + 32) = v454;
          *(v343 + 40) = v413;
          *(v343 + 48) = v443;

          v344 = sub_1D72647CC();
          LOBYTE(v454) = 0;
          v345 = swift_allocObject();
          *(v345 + 16) = v344;
          *(v345 + 24) = v441;
          *(v345 + 40) = v454;
          v346 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v346, v347);
          MEMORY[0x1EEE9AC00](v348, v349);
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v343;
          v351 = sub_1D5D2F7A4(v419, sub_1D615B49C, v350, sub_1D615B4A4, (&v412 - 6));
          v361 = v351;

          if (v361)
          {
            v454 = v441;
            LOBYTE(v455) = 0;
            LOBYTE(v448) = 0;
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v419, type metadata accessor for FormatVersionRequirement);
        v326 = v438[26];
        v327 = *(v438 + 216);
        v437(v418, v434, v439);
        swift_storeEnumTagMultiPayload();
        v441 = xmmword_1D72BAB00;
        v454 = xmmword_1D72BAB00;
        LOBYTE(v455) = 0;
        LOBYTE(v448) = 0;
        v328 = swift_allocObject();
        v330 = v328;
        *(v328 + 16) = v441;
        *(v328 + 32) = v448;
        v331 = v443;
        *(v328 + 40) = v413;
        *(v328 + 48) = v331;
        if (v327 <= 0xFD)
        {
          v448 = v326;
          v449 = v327;
          MEMORY[0x1EEE9AC00](v328, v329);
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v330;
          v447 = 0;
          v352 = swift_allocObject();
          *(v352 + 16) = v441;
          *(v352 + 32) = v447;
          *(v352 + 40) = v413;
          *(v352 + 48) = v443;
          swift_retain_n();
          v353 = sub_1D72647CC();
          v447 = 0;
          v354 = swift_allocObject();
          *(v354 + 16) = v353;
          *(v354 + 24) = v441;
          *(v354 + 40) = v447;
          v355 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v355, v356);
          MEMORY[0x1EEE9AC00](v357, v358);
          *(&v412 - 4) = sub_1D615B4A4;
          *(&v412 - 3) = (&v412 - 6);
          v410 = sub_1D6708C24;
          v411 = v352;
          v360 = sub_1D5D2F7A4(v418, sub_1D615B49C, v359, sub_1D615B4A4, (&v412 - 6));
          v362 = v360;

          if (v362)
          {
            sub_1D5F8F434();
            sub_1D72647EC();
          }
        }

        else
        {
        }

        sub_1D5D2CFE8(v418, type metadata accessor for FormatVersionRequirement);

        v332 = v438;
        swift_beginAccess();
        v333 = v332[28];
        v437(v417, v434, v439);
        swift_storeEnumTagMultiPayload();
        if (*(v333 + 16))
        {
          LOBYTE(v454) = 0;
          v334 = swift_allocObject();
          v441 = xmmword_1D72BAB10;
          *(v334 + 16) = xmmword_1D72BAB10;
          *(v334 + 32) = v454;
          *(v334 + 40) = v413;
          *(v334 + 48) = v443;

          v335 = sub_1D72647CC();
          LOBYTE(v454) = 0;
          v336 = swift_allocObject();
          *(v336 + 16) = v335;
          *(v336 + 24) = v441;
          *(v336 + 40) = v454;
          v337 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v337, v338);
          MEMORY[0x1EEE9AC00](v339, v340);
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v334;
          v342 = sub_1D5D2F7A4(v417, sub_1D615B49C, v341, sub_1D615B4A4, (&v412 - 6));
          v363 = v342;

          if (v363)
          {
            sub_1D5E077D4(v333, v462, 0xF, 0, 0);
          }
        }

        sub_1D5D2CFE8(v417, type metadata accessor for FormatVersionRequirement);
        v364 = v414;
        v437(v414, v434, v439);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2CFE8(v364, type metadata accessor for FormatVersionRequirement);
        v365 = v438;
        swift_beginAccess();
        v366 = v365[32];
        v367 = *(v365 + 264);
        v434 = v365[31];
        *&v440 = v366;
        sub_1D6189668(v434, v366, v367);
        if (qword_1EDF31EE0 != -1)
        {
          swift_once();
        }

        v368 = v439;
        v369 = __swift_project_value_buffer(v439, qword_1EDFFCD80);
        v437(v416, v369, v368);
        swift_storeEnumTagMultiPayload();
        v441 = xmmword_1D72BAB30;
        v454 = xmmword_1D72BAB30;
        LOBYTE(v455) = 0;
        LOBYTE(v445) = 0;
        v370 = swift_allocObject();
        v372 = v370;
        *(v370 + 16) = v441;
        *(v370 + 32) = v445;
        v373 = v443;
        *(v370 + 40) = v413;
        *(v370 + 48) = v373;
        if (v367 == 255)
        {
        }

        else
        {
          v433 = &v412;
          v374 = v434;
          v375 = v440;
          *&v445 = v434;
          *(&v445 + 1) = v440;
          v446 = v367 & 1;
          MEMORY[0x1EEE9AC00](v370, v371);
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v372;
          v444 = 0;
          v376 = swift_allocObject();
          *(v376 + 16) = v441;
          *(v376 + 32) = v444;
          *(v376 + 40) = v413;
          *(v376 + 48) = v443;
          swift_retain_n();
          sub_1D6189668(v374, v375, v367);
          v377 = sub_1D72647CC();
          v444 = 0;
          v378 = swift_allocObject();
          *(v378 + 16) = v377;
          *(v378 + 24) = v441;
          *(v378 + 40) = v444;
          v379 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v379, v380);
          MEMORY[0x1EEE9AC00](v381, v382);
          *(&v412 - 4) = sub_1D615B4A4;
          *(&v412 - 3) = (&v412 - 6);
          v410 = sub_1D6708C24;
          v411 = v376;
          v384 = sub_1D5D2F7A4(v416, sub_1D615B49C, v383, sub_1D615B4A4, (&v412 - 6));
          v385 = v384;

          if (v385)
          {
            sub_1D60ED320();
            sub_1D72647EC();
          }

          sub_1D60107F0(v434, v440, v367);
          sub_1D5D2F2C8(v445, *(&v445 + 1), v446);
        }

        sub_1D5D2CFE8(v416, type metadata accessor for FormatVersionRequirement);
        v386 = v438[34];
        v387 = v438[35];
        v388 = v438[36];
        v389 = v438[37];
        v390 = v438[39];
        *&v440 = v438[38];
        if (qword_1EDF31F38 != -1)
        {
          swift_once();
        }

        v391 = v439;
        v392 = __swift_project_value_buffer(v439, qword_1EDFFCE38);
        v437(v415, v392, v391);
        swift_storeEnumTagMultiPayload();
        v441 = xmmword_1D72BAB40;
        v445 = xmmword_1D72BAB40;
        v446 = 0;
        LOBYTE(v454) = 0;
        v393 = swift_allocObject();
        v395 = v393;
        *(v393 + 16) = v441;
        *(v393 + 32) = v454;
        v396 = v443;
        *(v393 + 40) = v413;
        *(v393 + 48) = v396;
        if (v386)
        {
          v439 = &v412;
          v434 = v386;
          *&v454 = v386;
          *(&v454 + 1) = v387;
          v455 = v388;
          v456 = v389;
          v397 = v440;
          v457 = v440;
          v458 = v390;
          MEMORY[0x1EEE9AC00](v393, v394);
          v438 = &v412 - 6;
          *(&v412 - 4) = sub_1D5B4AA6C;
          *(&v412 - 3) = 0;
          v410 = sub_1D6708C24;
          v411 = v395;
          v444 = 0;
          v398 = swift_allocObject();
          *(v398 + 16) = v441;
          *(v398 + 32) = v444;
          *(v398 + 40) = v413;
          *(v398 + 48) = v443;
          swift_retain_n();
          sub_1D5EB1D80(v434, v387, v388, v389, v397);
          v399 = sub_1D72647CC();
          v444 = 0;
          v400 = swift_allocObject();
          *(v400 + 16) = v399;
          *(v400 + 24) = v441;
          *(v400 + 40) = v444;
          v401 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
          MEMORY[0x1EEE9AC00](v401, v402);
          MEMORY[0x1EEE9AC00](v403, v404);
          v405 = v438;
          *(&v412 - 4) = sub_1D615B4A4;
          *(&v412 - 3) = v405;
          v410 = sub_1D6708C24;
          v411 = v398;
          v407 = sub_1D5D2F7A4(v415, sub_1D615B49C, v406, sub_1D615B4A4, (&v412 - 6));
          v408 = v407;

          if (v408)
          {
            sub_1D6659A24();
            sub_1D72647EC();
          }

          v409 = v457;

          sub_1D5CBF568(v409);

          sub_1D5D2CFE8(v415, type metadata accessor for FormatVersionRequirement);
        }

        else
        {

          sub_1D5D2CFE8(v415, type metadata accessor for FormatVersionRequirement);
        }
      }

      v107 = v462;
      return sub_1D5D2CFE8(v107, sub_1D66D0450);
    }

    v431 = &v412;
    *&v454 = v255;
    *(&v454 + 1) = v256;
    v455 = v257;
    v456 = v258;
    v457 = v433;
    v458 = v259;
    v459 = v432 & 1;
    MEMORY[0x1EEE9AC00](v262, v263);
    v430 = &v412 - 6;
    *(&v412 - 4) = sub_1D5B4AA6C;
    *(&v412 - 3) = 0;
    v410 = sub_1D6708C24;
    v411 = v264;
    LOBYTE(v451) = 0;
    v266 = swift_allocObject();
    *(v266 + 16) = v440;
    *(v266 + 32) = v451;
    *(v266 + 40) = v413;
    *(v266 + 48) = v265;
    swift_retain_n();
    sub_1D62B7B54(v255, v256, v257, v258, v433, v259, v432);
    v267 = sub_1D72647CC();
    LOBYTE(v451) = 0;
    v268 = swift_allocObject();
    *(v268 + 16) = v267;
    *(v268 + 24) = v440;
    *(v268 + 40) = v451;
    v269 = __swift_project_boxed_opaque_existential_1(v442, v442[3]);
    MEMORY[0x1EEE9AC00](v269, v270);
    MEMORY[0x1EEE9AC00](v271, v272);
    v273 = v430;
    *(&v412 - 4) = sub_1D615B4A4;
    *(&v412 - 3) = v273;
    v410 = sub_1D6708C24;
    v411 = v266;
    v274 = v441;
    v276 = sub_1D5D2F7A4(v423, sub_1D615B49C, v275, sub_1D615B4A4, (&v412 - 6));
    *&v441 = v274;
    if (v274)
    {
    }

    else
    {
      v281 = v276;

      if ((v281 & 1) == 0 || (sub_1D61BA848(), v282 = v441, sub_1D72647EC(), (*&v441 = v282) == 0))
      {

        v283 = *(&v454 + 1);
        v284 = v457;
        v285 = v458;
        v286 = v459;

        sub_1D5CBF568(v283);

        sub_1D5D2F2C8(v284, v285, v286);
        goto LABEL_74;
      }
    }

    v277 = *(&v454 + 1);
    v278 = v457;
    v279 = v458;
    v280 = v459;

    sub_1D5CBF568(v277);

    sub_1D5D2F2C8(v278, v279, v280);
    v252 = v423;
    goto LABEL_69;
  }

LABEL_56:
  v252 = v424;
LABEL_69:
  sub_1D5D2CFE8(v252, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v462, sub_1D66D0450);
}

unint64_t sub_1D65EEFD8(char a1)
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
      result = 0x6F43726574736F70;
      break;
    case 8:
      result = 0x7453726574736F70;
      break;
    case 9:
      result = 0x4379616C7265766FLL;
      break;
    case 10:
      result = 0x6576694C7369;
      break;
    case 11:
      result = 0x7865646E497ALL;
      break;
    case 12:
      result = 0x696C696269736976;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x726F7463656C6573;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 2019912806;
      break;
    case 19:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D65EF200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D66D05B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D65EF244(uint64_t a1)
{
  v2 = sub_1D5E1969C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65EF280(uint64_t a1)
{
  v2 = sub_1D5E1969C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVideoPlayerNodeBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v27;
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
          *(v20 + 16) = &unk_1F5118080;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D66D0560();
    v26[0] = 0uLL;
    sub_1D726431C();
    v22 = v25;
    if (v25)
    {
      if (v25 != 1)
      {
        v25 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v7 + 8))(v10, v6);
        v23 = *&v26[0];
        v24 = *(v26 + 8);
        goto LABEL_17;
      }

      v26[0] = xmmword_1D7279980;
      sub_1D61970BC();
    }

    else
    {
      v26[0] = xmmword_1D7279980;
      sub_1D66663E4();
    }

    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v23 = v25;
    v24 = 0uLL;
LABEL_17:
    *v13 = v23;
    *(v13 + 8) = v24;
    *(v13 + 24) = v22;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatVideoPlayerNodeBinding.encode(to:)(void *a1)
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
  v19 = *v1;
  v34 = *(v1 + 8);
  v35 = v19;
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerNodeBinding, &type metadata for FormatCodingKeys, v25, v22, &type metadata for FormatVideoPlayerNodeBinding, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v23, v18, v24, &off_1F51F6B18);
  if (v21)
  {
    if (v21 == 1)
    {
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      v27 = __swift_project_value_buffer(v26, qword_1EDFFCD00);
      (*(*(v26 - 8) + 16))(v10, v27, v26);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638B84C(1, v35, v10);
      v28 = v10;
    }

    else
    {
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v31 = sub_1D725BD1C();
      v32 = __swift_project_value_buffer(v31, qword_1EDFFCD00);
      (*(*(v31 - 8) + 16))(v6, v32, v31);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638B9E0(2, v35, v34, v20, v6);
      v28 = v6;
    }
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v29 = sub_1D725BD1C();
    v30 = __swift_project_value_buffer(v29, qword_1EDFFCD00);
    (*(*(v29 - 8) + 16))(v14, v30, v29);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D638B6B8(0, v35, v14);
    v28 = v14;
  }

  sub_1D5D2CFE8(v28, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v18, sub_1D5D30DC4);
}

uint64_t sub_1D65EFA78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x70756F7267;
  if (v2 != 1)
  {
    v4 = 0x6E6F6974706FLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x70756F7267;
  if (*a2 != 1)
  {
    v8 = 0x6E6F6974706FLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t sub_1D65EFB6C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65EFC08()
{
  sub_1D72621EC();
}

uint64_t sub_1D65EFC90()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D65EFD28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6664684();
  *a1 = result;
  return result;
}

void sub_1D65EFD58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x70756F7267;
  if (v2 != 1)
  {
    v5 = 0x6E6F6974706FLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696C64616568;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t FormatVideoPlayerNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v331 = &v309[-v7];
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v315 = &v309[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v316 = &v309[-v13];
  MEMORY[0x1EEE9AC00](v14, v15);
  v317 = &v309[-v16];
  MEMORY[0x1EEE9AC00](v17, v18);
  v318 = &v309[-v19];
  MEMORY[0x1EEE9AC00](v20, v21);
  v319 = &v309[-v22];
  MEMORY[0x1EEE9AC00](v23, v24);
  v320 = &v309[-v25];
  MEMORY[0x1EEE9AC00](v26, v27);
  v321 = &v309[-v28];
  MEMORY[0x1EEE9AC00](v29, v30);
  v322 = &v309[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  *&v332 = &v309[-v34];
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v309[-v37];
  sub_1D66D165C();
  v333 = v39;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v309[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  sub_1D66D1784();
  v46 = v45;
  v47 = sub_1D5B58B84(&qword_1EDF24F98, sub_1D66D1784);
  v330 = v42;
  sub_1D5D2EE70(v4, v46, v48, v43, v4, v46, &type metadata for FormatVersions.StarSkyC, v44, v42, v47, &off_1F51F6B18);
  swift_beginAccess();
  v50 = v2[2];
  v49 = v2[3];
  v327 = v2;
  v51 = qword_1EDF31E98;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = sub_1D725BD1C();
  v53 = __swift_project_value_buffer(v52, qword_1EDFFCD00);
  v54 = *(v52 - 8);
  v55 = *(v54 + 16);
  v56 = v54 + 16;
  v328 = v53;
  v329 = v52;
  v55(v38);
  v57 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v58 = v331;
  sub_1D725892C();
  v59 = sub_1D725895C();
  v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
  v61 = v38;
  v325 = v56;
  v326 = v55;
  v324 = v57;
  if (v60 != 1)
  {
    sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
LABEL_8:
    v81 = v332;
    v82 = v333;
    goto LABEL_9;
  }

  v314 = v50;
  sub_1D5D35558(v58, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v62 = v333;
  v63 = v330;
  v64 = &v330[*(v333 + 11)];
  v66 = *v64;
  v65 = v64[1];
  LOBYTE(v348) = 0;
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v348;
  *(v67 + 40) = v66;
  *(v67 + 48) = v65;
  sub_1D66D16F0();
  v69 = v68;
  sub_1D5B58B84(&qword_1EDF02F18, sub_1D66D16F0);

  v323 = v69;
  v70 = sub_1D72647CC();
  LOBYTE(v348) = 0;
  v71 = swift_allocObject();
  *(v71 + 24) = 0;
  *(v71 + 32) = 0;
  *(v71 + 16) = v70;
  *(v71 + 40) = v348;
  v72 = __swift_project_boxed_opaque_existential_1((v63 + *(v62 + 9)), *(v63 + *(v62 + 9) + 24));
  *&v331 = v309;
  MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  *&v309[-32] = sub_1D5B4AA6C;
  *&v309[-24] = 0;
  v307 = sub_1D6708C1C;
  v308 = v67;
  v76 = v359;
  v78 = sub_1D5D2F7A4(v61, sub_1D615B49C, v77, sub_1D615B4A4, &v309[-48]);
  v359 = v76;
  if (v76)
  {
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    v79 = v63;
    return sub_1D5D2CFE8(v79, sub_1D66D165C);
  }

  v108 = v78;

  if ((v108 & 1) == 0)
  {
    sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);

    v55 = v326;
    goto LABEL_8;
  }

  v348 = 0uLL;
  LOBYTE(v349) = 0;
  *&v340 = v314;
  *(&v340 + 1) = v49;
  v109 = v330;
  v110 = v359;
  sub_1D72647EC();

  sub_1D5D2CFE8(v61, type metadata accessor for FormatVersionRequirement);
  v55 = v326;
  v81 = v332;
  v82 = v333;
  if (!v110)
  {
    v359 = 0;
LABEL_9:
    v83 = v327[4];
    v84 = v327[5];
    (v55)(v81, v328, v329);
    swift_storeEnumTagMultiPayload();
    *&v340 = v83;
    *(&v340 + 1) = v84;
    v331 = xmmword_1D728CF30;
    v348 = xmmword_1D728CF30;
    LOBYTE(v349) = 0;
    v85 = *(v82 + 11);
    v86 = v330;
    v87 = &v330[v85];
    v89 = *v87;
    v88 = v87[1];
    LOBYTE(v334) = 0;
    v90 = swift_allocObject();
    v323 = v309;
    *(v90 + 16) = v331;
    *(v90 + 32) = v334;
    *(v90 + 40) = v89;
    *(v90 + 48) = v88;
    MEMORY[0x1EEE9AC00](v90, v91);
    *&v309[-32] = sub_1D5B4AA6C;
    *&v309[-24] = 0;
    v307 = sub_1D6708C1C;
    v308 = v92;
    LOBYTE(v334) = 0;
    v93 = swift_allocObject();
    *(v93 + 16) = v331;
    *(v93 + 32) = v334;
    v312 = v89;
    *(v93 + 40) = v89;
    *(v93 + 48) = v88;
    sub_1D66D16F0();
    v95 = v94;
    v96 = sub_1D5B58B84(&qword_1EDF02F18, sub_1D66D16F0);
    v311 = v88;
    swift_retain_n();
    v313 = v96;
    v314 = v95;
    v97 = sub_1D72647CC();
    LOBYTE(v334) = 0;
    v98 = swift_allocObject();
    *(v98 + 16) = v97;
    *(v98 + 24) = v331;
    *(v98 + 40) = v334;
    v99 = v86;
    v100 = &v86[*(v333 + 9)];
    v101 = __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    MEMORY[0x1EEE9AC00](v101, v102);
    MEMORY[0x1EEE9AC00](v103, v104);
    *&v309[-32] = sub_1D615B4A4;
    *&v309[-24] = &v309[-48];
    v307 = sub_1D6708C1C;
    v308 = v93;
    v105 = v332;
    v106 = v359;
    sub_1D5D2BC70(v332, sub_1D615B49C, v107, sub_1D615B4A4, &v309[-48]);
    if (v106)
    {
      sub_1D5D2CFE8(v105, type metadata accessor for FormatVersionRequirement);

      v79 = v99;
      return sub_1D5D2CFE8(v79, sub_1D66D165C);
    }

    v333 = v100;

    sub_1D72647EC();
    v359 = 0;
    sub_1D5D2CFE8(v332, type metadata accessor for FormatVersionRequirement);

    v111 = v327;
    swift_beginAccess();
    v112 = v111[6];
    v113 = v322;
    v114 = v328;
    v115 = v326;
    (v326)(v322, v328, v329);
    swift_storeEnumTagMultiPayload();
    if (*(v112 + 16))
    {
      LOBYTE(v348) = 0;
      v116 = swift_allocObject();
      v332 = xmmword_1D7297410;
      *(v116 + 16) = xmmword_1D7297410;
      *(v116 + 32) = v348;
      *(v116 + 40) = v312;
      *(v116 + 48) = v311;

      *&v331 = v112;

      v117 = v330;
      v118 = sub_1D72647CC();
      LOBYTE(v348) = 0;
      v119 = swift_allocObject();
      *(v119 + 16) = v118;
      *(v119 + 24) = v332;
      *(v119 + 40) = v348;
      v120 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
      MEMORY[0x1EEE9AC00](v120, v121);
      MEMORY[0x1EEE9AC00](v122, v123);
      *&v309[-32] = sub_1D5B4AA6C;
      *&v309[-24] = 0;
      v307 = sub_1D6708C1C;
      v308 = v116;
      v124 = v359;
      v126 = sub_1D5D2F7A4(v113, sub_1D615B49C, v125, sub_1D615B4A4, &v309[-48]);
      if (v124)
      {
        sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);

        v79 = v117;
        return sub_1D5D2CFE8(v79, sub_1D66D165C);
      }

      v127 = v126;
      v359 = 0;
      v128 = v331;

      if (v127)
      {
        v348 = v332;
        LOBYTE(v349) = 0;
        *&v340 = v128;
        sub_1D5C34D84(0, &qword_1EDF04C78, &type metadata for FormatVideoPlayerNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D66D1968();
        v129 = v330;
        v130 = v359;
        sub_1D72647EC();
        v115 = v326;
        v131 = v327;
        v114 = v328;
        v132 = v321;
        v359 = v130;
        if (v130)
        {

          sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);
          v79 = v129;
          return sub_1D5D2CFE8(v79, sub_1D66D165C);
        }

        sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);
        v111 = v131;
LABEL_26:
        v133 = v111[7];
        v134 = v114;
        v135 = v115;
        (v115)(v132, v134, v329);
        swift_storeEnumTagMultiPayload();
        v332 = xmmword_1D72BAA60;
        v348 = xmmword_1D72BAA60;
        LOBYTE(v349) = 0;
        LOBYTE(v340) = 0;
        v137 = swift_allocObject();
        *(v137 + 16) = v332;
        *(v137 + 32) = v340;
        v138 = v132;
        v139 = v312;
        *(v137 + 40) = v312;
        v140 = v311;
        *(v137 + 48) = v311;
        if (v133)
        {
          *&v331 = v309;
          *&v340 = v133;
          MEMORY[0x1EEE9AC00](v140, v136);
          v323 = &v309[-48];
          *&v309[-32] = sub_1D5B4AA6C;
          *&v309[-24] = 0;
          v307 = sub_1D6708C1C;
          v308 = v137;
          LOBYTE(v334) = 0;
          v142 = v141;
          v143 = swift_allocObject();
          *(v143 + 16) = v332;
          *(v143 + 32) = v334;
          *(v143 + 40) = v139;
          *(v143 + 48) = v142;
          swift_retain_n();

          v144 = sub_1D72647CC();
          LOBYTE(v334) = 0;
          v145 = swift_allocObject();
          *(v145 + 16) = v144;
          *(v145 + 24) = v332;
          *(v145 + 40) = v334;
          v146 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
          MEMORY[0x1EEE9AC00](v146, v147);
          MEMORY[0x1EEE9AC00](v148, v149);
          v150 = v323;
          *&v309[-32] = sub_1D615B4A4;
          *&v309[-24] = v150;
          v307 = sub_1D6708C1C;
          v308 = v143;
          v151 = v359;
          v153 = sub_1D5D2F7A4(v138, sub_1D615B49C, v152, sub_1D615B4A4, &v309[-48]);
          if (v151)
          {

            v154 = v330;

            v155 = v138;
LABEL_29:
            sub_1D5D2CFE8(v155, type metadata accessor for FormatVersionRequirement);
            goto LABEL_30;
          }

          v158 = v153;

          if (v158)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
            v160 = v326;
            v159 = v327;
            v156 = v328;
            v359 = 0;

            sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
            v111 = v159;
            v157 = v160;
          }

          else
          {
            v359 = 0;

            sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);
            v157 = v326;
            v111 = v327;
            v156 = v328;
          }
        }

        else
        {

          sub_1D5D2CFE8(v138, type metadata accessor for FormatVersionRequirement);

          v156 = v328;
          v157 = v135;
        }

        v161 = v111[8];
        sub_1D5B58478();
        v163 = *(v162 + 48);
        *&v331 = v162;
        v164 = v320;
        v165 = &v320[*(v162 + 64)];
        v166 = v156;
        v167 = v329;
        (v157)(v320, v166, v329);
        if (qword_1EDF31E78 != -1)
        {
          swift_once();
        }

        v323 = __swift_project_value_buffer(v167, qword_1EDFFCC90);
        v157(v164 + v163);
        *v165 = 0;
        v165[1] = 0;
        swift_storeEnumTagMultiPayload();
        v332 = xmmword_1D72BAA70;
        v348 = xmmword_1D72BAA70;
        LOBYTE(v349) = 0;
        LOBYTE(v340) = 0;
        v168 = swift_allocObject();
        v170 = v168;
        *(v168 + 16) = v332;
        *(v168 + 32) = v340;
        v172 = v311;
        v171 = v312;
        *(v168 + 40) = v312;
        *(v168 + 48) = v172;
        if ((~v161 & 0xF000000000000007) != 0)
        {
          v322 = v309;
          *&v340 = v161;
          MEMORY[0x1EEE9AC00](v168, v169);
          *&v309[-32] = sub_1D5B4AA6C;
          *&v309[-24] = 0;
          v307 = sub_1D6708C1C;
          v308 = v170;
          LOBYTE(v334) = 0;
          v176 = swift_allocObject();
          *(v176 + 16) = v332;
          *(v176 + 32) = v334;
          *(v176 + 40) = v171;
          *(v176 + 48) = v172;
          swift_retain_n();
          sub_1D5D04BD4(v161);
          v177 = sub_1D72647CC();
          LOBYTE(v334) = 0;
          v178 = swift_allocObject();
          *(v178 + 16) = v177;
          *(v178 + 24) = v332;
          *(v178 + 40) = v334;
          v179 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
          MEMORY[0x1EEE9AC00](v179, v180);
          MEMORY[0x1EEE9AC00](v181, v182);
          *&v309[-32] = sub_1D615B4A4;
          *&v309[-24] = &v309[-48];
          v307 = sub_1D6708C1C;
          v308 = v176;
          v183 = v359;
          v185 = sub_1D5D2F7A4(v164, sub_1D615B49C, v184, sub_1D615B4A4, &v309[-48]);
          if (v183)
          {

            v186 = v320;

            goto LABEL_67;
          }

          v187 = v185;

          if (v187)
          {
            sub_1D5D4A808();
            sub_1D72647EC();
            v174 = v327;
            v175 = v328;
            v359 = 0;
          }

          else
          {
            v359 = 0;

            v174 = v327;
            v175 = v328;
          }

          v173 = v320;
        }

        else
        {

          v173 = v164;
          v174 = v327;
          v175 = v328;
        }

        sub_1D5D2CFE8(v173, type metadata accessor for FormatVersionRequirement);
        v188 = v174[9];
        v189 = *(v331 + 48);
        v190 = v319;
        v191 = &v319[*(v331 + 64)];
        v192 = v175;
        v193 = v329;
        v194 = v326;
        (v326)(v319, v192, v329);
        v194(&v190[v189], v323, v193);
        *v191 = 0;
        v191[1] = 0;
        swift_storeEnumTagMultiPayload();
        v332 = xmmword_1D72BAA80;
        v348 = xmmword_1D72BAA80;
        LOBYTE(v349) = 0;
        LOBYTE(v340) = 0;
        v195 = swift_allocObject();
        v197 = v195;
        *(v195 + 16) = v332;
        *(v195 + 32) = v340;
        v198 = v311;
        v199 = v312;
        *(v195 + 40) = v312;
        *(v195 + 48) = v198;
        if (v188)
        {
          v322 = v309;
          *&v340 = v188;
          MEMORY[0x1EEE9AC00](v195, v196);
          *&v309[-32] = sub_1D5B4AA6C;
          *&v309[-24] = 0;
          v307 = sub_1D6708C1C;
          v308 = v197;
          LOBYTE(v334) = 0;
          v200 = swift_allocObject();
          *(v200 + 16) = v332;
          *(v200 + 32) = v334;
          *(v200 + 40) = v199;
          *(v200 + 48) = v198;
          swift_retain_n();

          v321 = v188;
          v201 = sub_1D72647CC();
          LOBYTE(v334) = 0;
          v202 = swift_allocObject();
          *(v202 + 16) = v201;
          *(v202 + 24) = v332;
          *(v202 + 40) = v334;
          v203 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
          MEMORY[0x1EEE9AC00](v203, v204);
          MEMORY[0x1EEE9AC00](v205, v206);
          *&v309[-32] = sub_1D615B4A4;
          *&v309[-24] = &v309[-48];
          v307 = sub_1D6708C1C;
          v308 = v200;
          v207 = v359;
          v209 = sub_1D5D2F7A4(v190, sub_1D615B49C, v208, sub_1D615B4A4, &v309[-48]);
          if (v207)
          {

            v210 = v319;
LABEL_68:
            sub_1D5D2CFE8(v210, type metadata accessor for FormatVersionRequirement);
            v79 = v330;
            return sub_1D5D2CFE8(v79, sub_1D66D165C);
          }

          v213 = v209;

          if (v213)
          {
            sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
            sub_1D66612AC();
            sub_1D72647EC();
            v212 = v327;
            v359 = 0;

            sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            v359 = 0;

            sub_1D5D2CFE8(v319, type metadata accessor for FormatVersionRequirement);
            v212 = v327;
          }

          v211 = v311;
        }

        else
        {
          v211 = v198;

          sub_1D5D2CFE8(v190, type metadata accessor for FormatVersionRequirement);

          v212 = v327;
        }

        v214 = v212[11];
        v321 = v212[10];
        v322 = v214;
        v215 = *(v212 + 96);
        v216 = *(v331 + 48);
        v217 = v318;
        v218 = &v318[*(v331 + 64)];
        v219 = v329;
        v220 = v326;
        (v326)(v318, v328, v329);
        v220(&v217[v216], v323, v219);
        *v218 = 0;
        v218[1] = 0;
        swift_storeEnumTagMultiPayload();
        v332 = xmmword_1D72BAA90;
        v357 = xmmword_1D72BAA90;
        v358 = 0;
        LOBYTE(v348) = 0;
        v221 = swift_allocObject();
        v223 = v221;
        *(v221 + 16) = v332;
        *(v221 + 32) = v348;
        v224 = v312;
        *(v221 + 40) = v312;
        *(v221 + 48) = v211;
        if (v215 > 0xFD)
        {

          sub_1D5D2CFE8(v217, type metadata accessor for FormatVersionRequirement);

          v226 = v326;
          v225 = v327;
          goto LABEL_56;
        }

        v254 = v215;
        v320 = v309;
        v255 = v321;
        v256 = v322;
        v354 = v321;
        v355 = v322;
        v310 = v254;
        v356 = v254;
        MEMORY[0x1EEE9AC00](v221, v222);
        v319 = &v309[-48];
        *&v309[-32] = sub_1D5B4AA6C;
        *&v309[-24] = 0;
        v307 = sub_1D6708C1C;
        v308 = v223;
        LOBYTE(v348) = 0;
        v257 = swift_allocObject();
        *(v257 + 16) = v332;
        *(v257 + 32) = v348;
        *(v257 + 40) = v224;
        *(v257 + 48) = v211;
        swift_retain_n();
        sub_1D5ED34B0(v255, v256, v310);
        v258 = sub_1D72647CC();
        LOBYTE(v348) = 0;
        v259 = swift_allocObject();
        *(v259 + 16) = v258;
        *(v259 + 24) = v332;
        *(v259 + 40) = v348;
        v260 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
        MEMORY[0x1EEE9AC00](v260, v261);
        MEMORY[0x1EEE9AC00](v262, v263);
        v264 = v319;
        *&v309[-32] = sub_1D615B4A4;
        *&v309[-24] = v264;
        v307 = sub_1D6708C1C;
        v308 = v257;
        v265 = v359;
        v267 = sub_1D5D2F7A4(v217, sub_1D615B49C, v266, sub_1D615B4A4, &v309[-48]);
        if (!v265)
        {
          v289 = v267;

          if (v289)
          {
            sub_1D6661258();
            sub_1D72647EC();
            v226 = v326;
            v225 = v327;
            v290 = v318;
            v359 = 0;

            sub_1D5ED34A0(v354, v355, v356);
            sub_1D5D2CFE8(v290, type metadata accessor for FormatVersionRequirement);
          }

          else
          {
            v359 = 0;

            sub_1D5ED34A0(v354, v355, v356);
            sub_1D5D2CFE8(v318, type metadata accessor for FormatVersionRequirement);
            v226 = v326;
            v225 = v327;
          }

          v211 = v311;
LABEL_56:
          v227 = *(v225 + 19);
          v353 = *(v225 + 184);
          v228 = *(v225 + 21);
          v351 = v227;
          v352 = v228;
          v229 = *(v225 + 17);
          v230 = *(v225 + 15);
          v348 = *(v225 + 13);
          v349 = v230;
          v350 = v229;
          v231 = *(v331 + 48);
          v232 = v317;
          v233 = &v317[*(v331 + 64)];
          v234 = v329;
          v226(v317, v328, v329);
          v226(&v232[v231], v323, v234);
          *v233 = 0;
          v233[1] = 0;
          swift_storeEnumTagMultiPayload();
          v332 = xmmword_1D72BAAA0;
          v346 = xmmword_1D72BAAA0;
          v347 = 0;
          LOBYTE(v340) = 0;
          v235 = swift_allocObject();
          v237 = v235;
          *(v235 + 16) = v332;
          *(v235 + 32) = v340;
          v238 = v312;
          *(v235 + 40) = v312;
          *(v235 + 48) = v211;
          if (v353 == 254)
          {

            v239 = v316;
            v240 = v327;
          }

          else
          {
            *&v331 = v309;
            v342 = v350;
            v343 = v351;
            v344 = v352;
            v345 = v353;
            v340 = v348;
            v341 = v349;
            MEMORY[0x1EEE9AC00](v235, v236);
            *&v309[-32] = sub_1D5B4AA6C;
            *&v309[-24] = 0;
            v307 = sub_1D6708C1C;
            v308 = v237;
            LOBYTE(v334) = 0;
            v268 = swift_allocObject();
            *(v268 + 16) = v332;
            *(v268 + 32) = v334;
            *(v268 + 40) = v238;
            *(v268 + 48) = v211;
            swift_retain_n();
            sub_1D5D355B8(&v348, &v334, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
            v269 = sub_1D72647CC();
            LOBYTE(v334) = 0;
            v270 = swift_allocObject();
            *(v270 + 16) = v269;
            *(v270 + 24) = v332;
            *(v270 + 40) = v334;
            v271 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
            MEMORY[0x1EEE9AC00](v271, v272);
            MEMORY[0x1EEE9AC00](v273, v274);
            *&v309[-32] = sub_1D615B4A4;
            *&v309[-24] = &v309[-48];
            v307 = sub_1D6708C1C;
            v308 = v268;
            v275 = v359;
            v277 = sub_1D5D2F7A4(v232, sub_1D615B49C, v276, sub_1D615B4A4, &v309[-48]);
            if (v275)
            {

              v336 = v342;
              v337 = v343;
              v338 = v344;
              v339 = v345;
              v334 = v340;
              v335 = v341;
              sub_1D601144C(&v334);
              v154 = v330;
              v155 = v232;
              goto LABEL_29;
            }

            v303 = v277;

            if (v303)
            {
              sub_1D6661204();
              sub_1D72647EC();
              v304 = v327;
              v239 = v316;
              v238 = v312;
              v359 = 0;

              v336 = v342;
              v337 = v343;
              v338 = v344;
              v339 = v345;
              v334 = v340;
              v335 = v341;
              sub_1D601144C(&v334);
              v211 = v311;
              v240 = v304;
            }

            else
            {
              v359 = 0;

              v336 = v342;
              v337 = v343;
              v338 = v344;
              v339 = v345;
              v334 = v340;
              v335 = v341;
              sub_1D601144C(&v334);
              v240 = v327;
              v239 = v316;
              v211 = v311;
              v238 = v312;
            }
          }

          sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);
          v241 = v240;
          v242 = v240[24];
          (v326)(v239, v328, v329);
          swift_storeEnumTagMultiPayload();
          v332 = xmmword_1D72BAAB0;
          v340 = xmmword_1D72BAAB0;
          LOBYTE(v341) = 0;
          LOBYTE(v334) = 0;
          v243 = swift_allocObject();
          v245 = v243;
          *(v243 + 16) = v332;
          *(v243 + 32) = v334;
          *(v243 + 40) = v238;
          *(v243 + 48) = v211;
          if ((~v242 & 0xF000000000000007) != 0)
          {
            *&v331 = v309;
            *&v334 = v242;
            MEMORY[0x1EEE9AC00](v243, v244);
            *&v309[-32] = sub_1D5B4AA6C;
            *&v309[-24] = 0;
            v307 = sub_1D6708C1C;
            v308 = v245;
            LOBYTE(v346) = 0;
            v278 = swift_allocObject();
            *(v278 + 16) = v332;
            *(v278 + 32) = v346;
            *(v278 + 40) = v238;
            *(v278 + 48) = v211;
            swift_retain_n();
            sub_1D5CFCFAC(v242);
            v279 = sub_1D72647CC();
            LOBYTE(v346) = 0;
            v280 = swift_allocObject();
            *(v280 + 16) = v279;
            *(v280 + 24) = v332;
            *(v280 + 40) = v346;
            v281 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
            MEMORY[0x1EEE9AC00](v281, v282);
            MEMORY[0x1EEE9AC00](v283, v284);
            *&v309[-32] = sub_1D615B4A4;
            *&v309[-24] = &v309[-48];
            v307 = sub_1D6708C1C;
            v308 = v278;
            v285 = v359;
            v287 = sub_1D5D2F7A4(v316, sub_1D615B49C, v286, sub_1D615B4A4, &v309[-48]);
            if (v285)
            {

              v154 = v330;
              v288 = v316;

              v155 = v288;
              goto LABEL_29;
            }

            v305 = v287;

            if (v305)
            {
              sub_1D5B55CBC();
              sub_1D72647EC();
              v239 = v316;
              v359 = 0;

              v241 = v327;
            }

            else
            {
              v359 = 0;

              v241 = v327;
              v239 = v316;
            }

            v238 = v312;
          }

          else
          {
          }

          sub_1D5D2CFE8(v239, type metadata accessor for FormatVersionRequirement);
          v246 = *(v241 + 200);
          if (qword_1EDF31F08 != -1)
          {
            swift_once();
          }

          v247 = v329;
          v248 = __swift_project_value_buffer(v329, qword_1EDFFCDE0);
          v249 = v315;
          (v326)(v315, v248, v247);
          swift_storeEnumTagMultiPayload();
          v332 = xmmword_1D72BAAC0;
          v340 = xmmword_1D72BAAC0;
          LOBYTE(v341) = 0;
          LOBYTE(v334) = 0;
          v251 = swift_allocObject();
          *(v251 + 16) = v332;
          *(v251 + 32) = v334;
          *(v251 + 40) = v238;
          v252 = v311;
          *(v251 + 48) = v311;
          if (v246 == 2)
          {

            v154 = v330;
            v253 = v249;
          }

          else
          {
            *&v331 = v309;
            LOBYTE(v334) = v246 & 1;
            MEMORY[0x1EEE9AC00](v252, v250);
            *&v309[-32] = sub_1D5B4AA6C;
            *&v309[-24] = 0;
            v307 = sub_1D6708C1C;
            v308 = v251;
            LOBYTE(v346) = 0;
            v292 = v291;
            v293 = swift_allocObject();
            *(v293 + 16) = v332;
            *(v293 + 32) = v346;
            *(v293 + 40) = v238;
            *(v293 + 48) = v292;
            swift_retain_n();
            v294 = sub_1D72647CC();
            LOBYTE(v346) = 0;
            v295 = swift_allocObject();
            *(v295 + 16) = v294;
            *(v295 + 24) = v332;
            *(v295 + 40) = v346;
            v296 = __swift_project_boxed_opaque_existential_1(v333, v333[3]);
            MEMORY[0x1EEE9AC00](v296, v297);
            MEMORY[0x1EEE9AC00](v298, v299);
            *&v309[-32] = sub_1D615B4A4;
            *&v309[-24] = &v309[-48];
            v307 = sub_1D6708C1C;
            v308 = v293;
            v300 = v359;
            v302 = sub_1D5D2F7A4(v249, sub_1D615B49C, v301, sub_1D615B4A4, &v309[-48]);
            if (v300)
            {
              sub_1D5D2CFE8(v249, type metadata accessor for FormatVersionRequirement);

              v154 = v330;
              goto LABEL_30;
            }

            v306 = v302;

            if (v306)
            {
              v154 = v330;
              sub_1D72647EC();
            }

            else
            {
              v154 = v330;
            }

            v253 = v315;
          }

          sub_1D5D2CFE8(v253, type metadata accessor for FormatVersionRequirement);

LABEL_30:
          v79 = v154;
          return sub_1D5D2CFE8(v79, sub_1D66D165C);
        }

        v186 = v318;
        sub_1D5ED34A0(v354, v355, v356);
LABEL_67:
        v210 = v186;
        goto LABEL_68;
      }

      sub_1D5D2CFE8(v322, type metadata accessor for FormatVersionRequirement);

      v115 = v326;
      v111 = v327;
      v114 = v328;
    }

    else
    {
      sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
    }

    v132 = v321;
    goto LABEL_26;
  }

  return sub_1D5D2CFE8(v109, sub_1D66D165C);
}

uint64_t sub_1D65F291C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x726F7463656C6573;
    v8 = 0x6168706C61;
    if (a1 != 3)
    {
      v8 = 0x756F72676B636162;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x7373616C63;
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
    v1 = 0x6F6C6F43746E6974;
    v2 = 0xD000000000000018;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73726564726F62;
    v4 = 0x615272656E726F63;
    if (a1 != 6)
    {
      v4 = 0x776F64616873;
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

uint64_t sub_1D65F2A90(uint64_t a1)
{
  v2 = sub_1D66D185C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D65F2ACC(uint64_t a1)
{
  v2 = sub_1D66D185C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D65F2B78@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  v59 = a6;
  v58 = a7;
  v11 = a2(0);
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(a4, a5);
  v15 = v80;
  sub_1D7264B0C();
  v16 = v15;
  if (v15)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v16);
    swift_willThrow();

    v51 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v17 = v59;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v21 = v60;
  v20 = v61;
  v22 = v14;
  if (v19)
  {
    v23 = sub_1D726433C();
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v17;
      v26 = (v23 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v24)
        {
          goto LABEL_7;
        }
      }

      v28 = v20;
      v29 = *(v26 - 2);
      v30 = *(v26 - 1);

      v32 = v25(v31);
      sub_1D5E2D970();
      v16 = swift_allocError();
      *v33 = v29;
      *(v33 + 8) = v30;
      *(v33 + 16) = v32;
      *(v33 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v22, v28);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v74 = 0uLL;
  LOBYTE(v75) = 0;
  sub_1D726431C();
  v27 = *(&v66 + 1);
  v80 = v66;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v74 = xmmword_1D728CF30;
  LOBYTE(v75) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v59 = v27;
  v57 = a1;
  v35 = v66;
  v74 = xmmword_1D7297410;
  LOBYTE(v75) = 0;
  sub_1D5C4A954();
  v36 = v14;
  sub_1D726427C();
  v37 = v66;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v74 = xmmword_1D72BAA60;
  LOBYTE(v75) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v56 = v37;
  v38 = v66;
  v66 = xmmword_1D72BAA70;
  LOBYTE(v67) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v55 = v38;
  v39 = v74;
  v54 = v75;
  v72 = xmmword_1D72BAA80;
  v73 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v53 = v39;
  v69 = v77;
  v70 = v78;
  v66 = v74;
  v71 = v79;
  v67 = v75;
  v68 = v76;
  v63 = xmmword_1D72BAA90;
  v64 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v52 = v65;
  v63 = xmmword_1D72BAAA0;
  v64 = 0;
  v40 = sub_1D726423C();
  v41 = v53;
  v42 = v40;
  (*(v21 + 8))(v36, v20);
  *&v62[23] = v67;
  *&v62[7] = v66;
  *&v62[55] = v69;
  *&v62[39] = v68;
  *&v62[71] = v70;
  v62[87] = v71;
  v43 = v58;
  v44 = v59;
  *v58 = v80;
  v43[1] = v44;
  v45 = v55;
  v46 = v56;
  v43[2] = v35;
  v43[3] = v46;
  v43[4] = v45;
  *(v43 + 5) = __PAIR128__(*(&v53 + 1), v41);
  *(v43 + 56) = v54;
  v47 = *v62;
  *(v43 + 73) = *&v62[16];
  *(v43 + 57) = v47;
  v48 = *&v62[32];
  v49 = *&v62[48];
  v50 = *&v62[64];
  *(v43 + 137) = *&v62[80];
  *(v43 + 121) = v50;
  *(v43 + 105) = v49;
  *(v43 + 89) = v48;
  LODWORD(v45) = v65;
  *(v43 + 37) = *(&v65 + 3);
  *(v43 + 145) = v45;
  v43[19] = v52;
  *(v43 + 160) = v42;
  v51 = v57;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}