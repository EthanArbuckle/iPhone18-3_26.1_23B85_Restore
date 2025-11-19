unint64_t sub_1D5CA5BD0()
{
  result = qword_1EDF27768;
  if (!qword_1EDF27768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27768);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatAccessibilityRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t FormatAccessibilityRole.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    if (v12)
    {
      v13 = sub_1D726433C();
      v14 = (v13 + 40);
      v15 = *(v13 + 16) + 1;
      do
      {
        if (!--v15)
        {

          goto LABEL_8;
        }

        v16 = v14 + 2;
        v17 = *v14;
        v14 += 2;
      }

      while (v17 < 4);
      v18 = *(v16 - 3);

      sub_1D5E2D970();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = v17;
      *(v19 + 16) = &unk_1F51136F8;
      *(v19 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
    }

    else
    {
LABEL_8:
      sub_1D5CA6020();
      v22 = 0uLL;
      sub_1D726431C();
      if (v23 > 1u)
      {
        if (v23 == 2)
        {
          (*(v7 + 8))(v10, v6);
          v20 = 5;
        }

        else
        {
          (*(v7 + 8))(v10, v6);
          v20 = 6;
        }
      }

      else if (v23)
      {
        (*(v7 + 8))(v10, v6);
        v20 = 4;
      }

      else
      {
        v22 = xmmword_1D7279980;
        sub_1D5CA61A4();
        sub_1D726427C();
        (*(v7 + 8))(v10, v6);
        v20 = v23;
      }

      *a2 = v20;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CA6020()
{
  result = qword_1EDF27788;
  if (!qword_1EDF27788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27788);
  }

  return result;
}

unint64_t sub_1D5CA60D4()
{
  result = qword_1EDF27790;
  if (!qword_1EDF27790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27790);
  }

  return result;
}

uint64_t sub_1D5CA6128@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CA6158();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CA6158()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CA61A4()
{
  result = qword_1EDF21B78[0];
  if (!qword_1EDF21B78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF21B78);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_1D5CA6224()
{
  result = qword_1EDF30AF0;
  if (!qword_1EDF30AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30AF0);
  }

  return result;
}

unint64_t sub_1D5CA6278(void *a1)
{
  a1[1] = sub_1D5C62464();
  a1[2] = sub_1D5C624B8();
  result = sub_1D5CA62B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5CA62B0()
{
  result = qword_1EDF30B00;
  if (!qword_1EDF30B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30B00);
  }

  return result;
}

uint64_t sub_1D5CA631C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D5CA6358()
{
  result = qword_1EDF29148[0];
  if (!qword_1EDF29148[0])
  {
    sub_1D5C30060(255, &qword_1EDF29140, sub_1D5CA6224, &type metadata for FormatAdjustment, type metadata accessor for FormatSwitchListValue);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF29148);
  }

  return result;
}

uint64_t FormatSwitchListValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v42 = a2;
  v37 = a4;
  v40 = a3;
  v5 = _s10CodingKeysOMa_46();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  *&v45 = v5;
  *(&v45 + 1) = WitnessTable;
  v38 = v7;
  v39 = WitnessTable;
  v46 = v7;
  v47 = v8;
  v9 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v10 = sub_1D726435C();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v35 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v43;
  sub_1D7264B0C();
  v15 = v14;
  if (v14)
  {
    goto LABEL_12;
  }

  v35 = v8;
  v36 = 0;
  v43 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  if ((v17 & 1) == 0)
  {
LABEL_10:
    type metadata accessor for FormatSwitchListValue.CaseValue();
    sub_1D72627FC();
    v45 = 0uLL;
    LOBYTE(v46) = 0;
    v44 = swift_getWitnessTable();
    swift_getWitnessTable();
    v30 = v43;
    v31 = v36;
    sub_1D726431C();
    v15 = v31;
    if (!v31)
    {
      v32 = v48;
      type metadata accessor for FormatSwitchListValue.DefaultValue();
      v45 = xmmword_1D728CF30;
      LOBYTE(v46) = 0;
      swift_getWitnessTable();
      sub_1D726427C();
      (*(v41 + 8))(v13, v30);
      sub_1D5CA7AB4(v32, &v48, &v45);
      v33 = *(&v45 + 1);
      v34 = v37;
      *v37 = v45;
      v34[1] = v33;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v41 + 8))(v13, v30);
LABEL_12:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v19 = (sub_1D726433C() + 48);
  while (1)
  {
    if (v18 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v20 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v20 & 1) == 0)
    {
      break;
    }

    v22 = *v19;
    v45 = *(v19 - 1);
    LOBYTE(v46) = v22;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_16;
    }

    v23 = sub_1D6AFC82C(v9);
    ++v18;
    v19 += 24;
    if (v24)
    {
      v25 = v23;
      v26 = v24;

      v27 = sub_1D6AFC690(v5, v39, v38, v35);
      sub_1D5E2D970();
      v28 = swift_allocError();
      *v29 = v25;
      *(v29 + 8) = v26;
      v15 = v28;
      *(v29 + 16) = v27;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v41 + 8))(v13, v43);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5CA6954()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5CA6990@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a4;
  v41 = a2;
  v42 = a3;
  v5 = _s10CodingKeysOMa_309();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  *&v48 = v5;
  *(&v48 + 1) = WitnessTable;
  v43 = WitnessTable;
  v40 = v7;
  v49 = v7;
  v50 = v8;
  v9 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v10 = sub_1D726435C();
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v46;
  sub_1D7264B0C();
  v15 = v14;
  if (v14)
  {
    goto LABEL_12;
  }

  v38 = 0;
  v39 = v13;
  v46 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v45;
  if ((v17 & 1) == 0)
  {
LABEL_10:
    sub_1D5C55EBC();
    v48 = 0uLL;
    LOBYTE(v49) = 0;
    v32 = v46;
    v34 = v38;
    v33 = v39;
    sub_1D726431C();
    v15 = v34;
    if (!v34)
    {
      v35 = v51;
      sub_1D72627FC();
      v48 = xmmword_1D728CF30;
      LOBYTE(v49) = 0;
      v47 = *(v42 + 8);
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v44 + 8))(v33, v32);
      v36 = v51;
      v51 = v35;
      sub_1D5CA7560(&v51, v36, &v48);
      v37 = *(&v48 + 1);
      *v18 = v48;
      v18[1] = v37;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v44 + 8))(v33, v32);
LABEL_12:
    sub_1D61E4FBC(a1, v15);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v20 = (sub_1D726433C() + 48);
  v21 = v43;
  while (1)
  {
    if (v19 == sub_1D726279C())
    {

      v18 = v45;
      goto LABEL_10;
    }

    v22 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v22 & 1) == 0)
    {
      break;
    }

    v24 = *v20;
    v48 = *(v20 - 1);
    LOBYTE(v49) = v24;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_16;
    }

    v25 = sub_1D6AFC82C(v9);
    ++v19;
    v20 += 24;
    if (v26)
    {
      v27 = v25;
      v28 = v26;

      v29 = sub_1D6AFC690(v5, v21, v40, v8);
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v27;
      *(v31 + 8) = v28;
      v15 = v30;
      *(v31 + 16) = v29;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v44 + 8))(v39, v46);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5CA6E9C(char a1)
{
  if (!a1)
  {
    return 0x6973736572707865;
  }

  if (a1 == 1)
  {
    return 0x7365756C6176;
  }

  return 1885433183;
}

uint64_t FormatPointEquation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5CA7308();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA7284();
  sub_1D5B58B84(&qword_1EDF25498, sub_1D5CA7284);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v7;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_1D7264AFC();
  v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

  v14 = v10;
  if (v13)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    v17 = v26;
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

      v22 = sub_1D6627E68(120, 0xE100000000000000, 121, 0xE100000000000000);
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

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v19 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D726431C();
  (*(v26 + 8))(v10, v6);
  v25 = v30;
  *v11 = v19;
  v11[1] = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA7284()
{
  if (!qword_1EDF25490)
  {
    sub_1D5CA73B4();
    sub_1D5CA7408();
    sub_1D5CA750C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25490);
    }
  }
}

void sub_1D5CA7308()
{
  if (!qword_1EDF1A158)
  {
    sub_1D5CA7284();
    sub_1D5B58B84(&qword_1EDF25498, sub_1D5CA7284);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A158);
    }
  }
}

unint64_t sub_1D5CA73B4()
{
  result = qword_1EDF2C1F0;
  if (!qword_1EDF2C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1F0);
  }

  return result;
}

unint64_t sub_1D5CA7408()
{
  result = qword_1EDF2C1F8;
  if (!qword_1EDF2C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1F8);
  }

  return result;
}

unint64_t sub_1D5CA7460()
{
  result = qword_1EDF2C1E0;
  if (!qword_1EDF2C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1E0);
  }

  return result;
}

unint64_t sub_1D5CA74B8()
{
  result = qword_1EDF2C1E8;
  if (!qword_1EDF2C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1E8);
  }

  return result;
}

unint64_t sub_1D5CA750C()
{
  result = qword_1EDF2C200;
  if (!qword_1EDF2C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C200);
  }

  return result;
}

void *sub_1D5CA7560@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D5CA7584()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FormatSwitchListValue.DefaultValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v45 = a2;
  v41 = a4;
  v43 = a3;
  v5 = _s10CodingKeysOMa_45();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  *&v48 = v5;
  *(&v48 + 1) = WitnessTable;
  v42 = WitnessTable;
  v40 = v7;
  v49 = v7;
  v50 = v8;
  v9 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v10 = sub_1D726435C();
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v36 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = v46;
  sub_1D7264B0C();
  v15 = v14;
  if (v14)
  {
    goto LABEL_12;
  }

  v37 = v8;
  v38 = 0;
  v39 = v13;
  v46 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = a1;
  if ((v17 & 1) == 0)
  {
LABEL_10:
    a1 = v18;
    sub_1D72627FC();
    v48 = 0uLL;
    LOBYTE(v49) = 0;
    v47 = *(v43 + 8);
    swift_getWitnessTable();
    v32 = v46;
    v34 = v38;
    v33 = v39;
    sub_1D726431C();
    if (!v34)
    {
      (*(v44 + 8))(v33, v32);
      sub_1D5CA7AAC(v51, &v48);
      *v41 = v48;
      v35 = a1;
      return __swift_destroy_boxed_opaque_existential_1(v35);
    }

    (*(v44 + 8))(v33, v32);
    v15 = v34;
LABEL_12:
    v18 = a1;
LABEL_13:
    sub_1D61E4FBC(v18, v15);
    swift_willThrow();

    v35 = v18;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v19 = 0;
  v20 = (sub_1D726433C() + 48);
  v21 = v42;
  while (1)
  {
    if (v19 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v22 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v22 & 1) == 0)
    {
      break;
    }

    v24 = *v20;
    v48 = *(v20 - 1);
    LOBYTE(v49) = v24;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_17;
    }

    v25 = sub_1D6AFC82C(v9);
    ++v19;
    v20 += 24;
    if (v26)
    {
      v27 = v25;
      v28 = v26;

      v29 = sub_1D6AFC690(v5, v21, v40, v37);
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v27;
      *(v31 + 8) = v28;
      v15 = v30;
      *(v31 + 16) = v29;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v44 + 8))(v39, v46);
      goto LABEL_13;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D5CA7A80(char a1)
{
  if (a1)
  {
    return 1885433183;
  }

  else
  {
    return 0x7365756C6176;
  }
}

uint64_t sub_1D5CA7AB4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

unint64_t sub_1D5CA7AC0()
{
  result = qword_1EDF1F250;
  if (!qword_1EDF1F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F250);
  }

  return result;
}

uint64_t sub_1D5CA7B14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FA && *(a1 + 51))
  {
    return (*a1 + 506);
  }

  v3 = ((*(a1 + 50) >> 5) | (8 * ((*(a1 + 48) >> 11) & 0xFFFFFFDF | (32 * ((*(a1 + 50) >> 4) & 1))))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CA7B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 506;
    if (a3 >= 0x1FA)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FA)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (-256 * a2) & 0xF800;
      *(result + 50) = (((-a2 & 0x100) << 12) - (a2 << 21)) >> 16;
    }
  }

  return result;
}

uint64_t FormatBindingTextExpressionLogic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v30 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_23:
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
          *(v22 + 16) = &unk_1F5111E70;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_23;
        }
      }
    }

    sub_1D5CA82C0();
    v31 = 0uLL;
    sub_1D726431C();
    if (v30 > 3u)
    {
      if (v30 > 5u)
      {
        if (v30 == 6)
        {
          v30 = xmmword_1D7279980;
          sub_1D6156F30();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v26 = 0;
          v24 = *(&v31 + 1);
          v23 = v31;
          v27 = 0uLL;
          v28 = 0x800000;
          v25 = v32;
        }

        else
        {
          v30 = xmmword_1D7279980;
          sub_1D61570E8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v24 = *(&v31 + 1);
          v23 = v31;
          v25 = v32;
          v27 = v33;
          v26 = v34;
          v28 = (v35 | (v36 << 16)) & 0xF07FF | 0xFFA00000;
        }
      }

      else if (v30 == 4)
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v30 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v24 = *(&v31 + 1);
        v23 = v31;
        v27 = 0uLL;
        v28 = 0x400000;
      }

      else
      {
        v31 = xmmword_1D7279980;
        sub_1D6156D78();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v23 = v30;
        v24 = BYTE8(v30);
        v27 = 0uLL;
        v28 = 6291456;
      }
    }

    else if (v30 > 1u)
    {
      if (v30 == 2)
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v30 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v28 = 0;
        v24 = *(&v31 + 1);
        v23 = v31;
        v27 = 0uLL;
      }

      else
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v30 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = 0;
        v26 = 0;
        v24 = *(&v31 + 1);
        v23 = v31;
        v27 = 0uLL;
        v28 = 0x200000;
      }
    }

    else if (v30)
    {
      (*(v11 + 8))(v15, v5);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0uLL;
      v28 = 12582912;
      v23 = 1;
    }

    else
    {
      (*(v11 + 8))(v15, v5);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0uLL;
      v28 = 12582912;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
    *(v12 + 16) = v25;
    *(v12 + 24) = v27;
    *(v12 + 40) = v26;
    *(v12 + 48) = v28;
    *(v12 + 50) = BYTE2(v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CA82C0()
{
  result = qword_1EDF1F288;
  if (!qword_1EDF1F288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F288);
  }

  return result;
}

unint64_t sub_1D5CA8374()
{
  result = qword_1EDF1F290[0];
  if (!qword_1EDF1F290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1F290);
  }

  return result;
}

uint64_t sub_1D5CA83C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CA83F8();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CA83F8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5CA8444(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 21) & 7;
  if (v7 <= 2 || v7 == 4)
  {
  }

  if (v7 == 5)
  {
    return sub_1D5E1DAEC(result, a2, a3, a4, a5, a6, a7, SBYTE1(a7));
  }

  return result;
}

uint64_t sub_1D5CA8488(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 21) & 7;
  if (v7 <= 2 || v7 == 4)
  {
  }

  if (v7 == 5)
  {
    return sub_1D5E1DF18(result, a2, a3, a4, a5, a6, a7, SBYTE1(a7));
  }

  return result;
}

uint64_t sub_1D5CA84CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  sub_1D5CA4820();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v103 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v72 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v70 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v70 - v16;
  v102 = MEMORY[0x1E69E7CC8];
  sub_1D5CA8998();
  result = sub_1D7261DAC();
  v78 = *(a1 + 16);
  if (!v78)
  {
    v21 = v102;
LABEL_20:
    v41 = v73;
    *v73 = a1;
    v41[1] = v21;
    return result;
  }

  v71 = v13;
  v19 = 0;
  v20 = *(v4 + 80);
  v76 = a1;
  v77 = a1 + ((v20 + 32) & ~v20);
  v21 = v102;
  v74 = v17;
  v75 = v4;
  while (v19 < *(a1 + 16))
  {
    v22 = *(v4 + 72);
    sub_1D5CA8A00(v77 + v22 * v19, v17);
    v23 = *v17;
    v24 = *(v17 + 1);
    if (v21[2])
    {
      v25 = sub_1D5B69D90(*v17, *(v17 + 1));
      if (v26)
      {
        v102 = v21;
        v42 = v25;

        v43 = v21[7] + v42 * v22;
        v44 = v72;
        sub_1D5CA8A00(v43, v72);
        v45 = v71;
        sub_1D5CA8A64(v44, v71);
        type metadata accessor for FormatPackageError();
        sub_1D5CA4748(&qword_1EC881A40, type metadata accessor for FormatPackageError);
        swift_allocError();
        v46 = *(v17 + 3);
        v47 = *(v17 + 5);
        v83 = *(v17 + 4);
        v84[0] = v47;
        *(v84 + 9) = *(v17 + 89);
        v48 = *(v17 + 1);
        v80[0] = *v17;
        v80[1] = v48;
        v49 = *(v17 + 3);
        v51 = *v17;
        v50 = *(v17 + 1);
        v81 = *(v17 + 2);
        v82 = v49;
        v52 = v45[1];
        v85[0] = *v45;
        v85[1] = v52;
        *(v89 + 9) = *(v45 + 89);
        v53 = v45[3];
        v54 = v45[5];
        v88 = v45[4];
        v89[0] = v54;
        v55 = v45[3];
        v56 = *v45;
        v57 = v45[1];
        v86 = v45[2];
        v87 = v55;
        v90 = v51;
        v91 = v50;
        *(v95 + 9) = *(v17 + 89);
        v58 = *(v17 + 5);
        v94 = v83;
        v95[0] = v58;
        v92 = v81;
        v93 = v46;
        v96 = v56;
        v97 = v57;
        *(v101 + 9) = *(v45 + 89);
        v59 = v45[5];
        v100 = v88;
        v101[0] = v59;
        v98 = v86;
        v99 = v53;
        *v60 = v51;
        v60[1] = v50;
        v61 = v92;
        v62 = v93;
        v63 = v95[0];
        v60[4] = v94;
        v60[5] = v63;
        v60[2] = v61;
        v60[3] = v62;
        v64 = v95[1];
        v65 = v96;
        v66 = v98;
        v60[8] = v97;
        v60[9] = v66;
        v60[6] = v64;
        v60[7] = v65;
        v67 = v99;
        v68 = v100;
        v69 = v101[0];
        *(v60 + 201) = *(v101 + 9);
        v60[11] = v68;
        v60[12] = v69;
        v60[10] = v67;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D62E340C(v80, v79);
        sub_1D62E340C(v85, v79);
        sub_1D5CA8AC8(v45);
        sub_1D5CA8AC8(v17);
      }
    }

    sub_1D5CA8A00(v17, v103);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v90 = v21;
    v28 = v23;
    v30 = sub_1D5B69D90(v23, v24);
    v31 = v21[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_24;
    }

    v34 = v29;
    if (v21[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v90;
        if (v29)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D6D7E720();
        v21 = v90;
        if (v34)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D6D671BC(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_1D5B69D90(v28, v24);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_26;
      }

      v30 = v35;
      v21 = v90;
      if (v34)
      {
LABEL_3:
        sub_1D6A56B4C(v103, v21[7] + v30 * v22);
        goto LABEL_4;
      }
    }

    v21[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v21[6] + 16 * v30);
    *v37 = v28;
    v37[1] = v24;
    sub_1D5CA8A64(v103, v21[7] + v30 * v22);
    v38 = v21[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_25;
    }

    v21[2] = v40;

LABEL_4:
    ++v19;
    v17 = v74;
    result = sub_1D5CA8AC8(v74);
    v4 = v75;
    a1 = v76;
    if (v78 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D5CA8998()
{
  if (!qword_1EDF1B960)
  {
    sub_1D5CA4820();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B960);
    }
  }
}

uint64_t sub_1D5CA8A00(uint64_t a1, uint64_t a2)
{
  sub_1D5CA4820();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CA8A64(uint64_t a1, uint64_t a2)
{
  sub_1D5CA4820();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CA8AC8(uint64_t a1)
{
  sub_1D5CA4820();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5CA8B24()
{
  result = qword_1EDF2F5C0;
  if (!qword_1EDF2F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F5C0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatFontScaling(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 12;
    }
  }

  return result;
}

uint64_t FormatFontScaling.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
    v12 = v29;
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
          *(v21 + 16) = &unk_1F5114E50;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CA8F2C();
    v28 = 0uLL;
    sub_1D726431C();
    if (v25)
    {
      v28 = xmmword_1D7279980;
      sub_1D5CA9040();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v23 = v25;
      v24 = v26 | (v27 << 8);
    }

    else
    {
      (*(v11 + 8))(v10, v6);
      v23 = 0;
      v24 = 3072;
    }

    *v12 = v23;
    *(v12 + 8) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CA8F2C()
{
  result = qword_1EDF2F5C8;
  if (!qword_1EDF2F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F5C8);
  }

  return result;
}

unint64_t sub_1D5CA8FE0()
{
  result = qword_1EDF2F5D0;
  if (!qword_1EDF2F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F5D0);
  }

  return result;
}

unint64_t sub_1D5CA9040()
{
  result = qword_1EDF29860;
  if (!qword_1EDF29860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29860);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatFontScalingData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 8) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 11;
    }
  }

  return result;
}

uint64_t FormatFontScalingData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5CA94AC();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA9428();
  sub_1D5B58B84(&qword_1EDF252A8, sub_1D5CA9428);
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

  v13 = v30;
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

      v22 = sub_1D6627E68(0x657A695378616DLL, 0xE700000000000000, 0x656C797473, 0xE500000000000000);
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
  v26 = 0uLL;
  v27 = 0;
  sub_1D726427C();
  v18 = v28;
  v19 = v29;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D5CA9754();
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v25 = v28;
  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 9) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA9428()
{
  if (!qword_1EDF252A0)
  {
    sub_1D5CA9558();
    sub_1D5CA95AC();
    sub_1D5CA96B0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF252A0);
    }
  }
}

void sub_1D5CA94AC()
{
  if (!qword_1EDF1A060)
  {
    sub_1D5CA9428();
    sub_1D5B58B84(&qword_1EDF252A8, sub_1D5CA9428);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A060);
    }
  }
}

unint64_t sub_1D5CA9558()
{
  result = qword_1EDF29878;
  if (!qword_1EDF29878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29878);
  }

  return result;
}

unint64_t sub_1D5CA95AC()
{
  result = qword_1EDF29880;
  if (!qword_1EDF29880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29880);
  }

  return result;
}

unint64_t sub_1D5CA9604()
{
  result = qword_1EDF29868;
  if (!qword_1EDF29868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29868);
  }

  return result;
}

unint64_t sub_1D5CA965C()
{
  result = qword_1EDF29870;
  if (!qword_1EDF29870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29870);
  }

  return result;
}

unint64_t sub_1D5CA96B0()
{
  result = qword_1EDF29888;
  if (!qword_1EDF29888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29888);
  }

  return result;
}

uint64_t sub_1D5CA9704()
{
  v1 = 0x656C797473;
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
    return 0x657A695378616DLL;
  }
}

unint64_t sub_1D5CA9754()
{
  result = qword_1EDF28948;
  if (!qword_1EDF28948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28948);
  }

  return result;
}

unint64_t sub_1D5CA9808()
{
  result = qword_1EDF28950;
  if (!qword_1EDF28950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28950);
  }

  return result;
}

NewsFeed::FormatFontScalingStyle_optional __swiftcall FormatFontScalingStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_1D5CA98C4()
{
  if (!qword_1EDF253B0)
  {
    sub_1D5CAA3F0();
    sub_1D5CAA444();
    sub_1D5CAA548();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF253B0);
    }
  }
}

uint64_t FormatParagraphStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  sub_1D5CAA344();
  v7 = v6;
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA98C4();
  sub_1D5B58B84(&qword_1EDF253B8, sub_1D5CA98C4);
  sub_1D7264B0C();
  if (!v2)
  {
    v79 = a2;
    v11 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v80;
    v15 = v10;
    if (v13)
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

        v25 = *(v18 - 2);
        v24 = *(v18 - 1);

        v26 = sub_1D6613244();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v27 = v25;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;
        *(v27 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v14 + 8))(v10, v7);
        a1 = v11;
        goto LABEL_10;
      }

LABEL_7:
    }

    sub_1D5CAA59C();
    v94 = 0uLL;
    v95 = 0;
    sub_1D726427C();
    v19 = v92;
    v94 = xmmword_1D728CF30;
    v95 = 0;
    sub_1D5B57870();
    sub_1D726427C();
    v78 = v19;
    v20 = v92;
    v21 = v93;
    v94 = xmmword_1D7297410;
    v95 = 0;
    sub_1D726427C();
    v76 = v20;
    v77 = v21;
    v22 = v92;
    LODWORD(v20) = v93;
    v94 = xmmword_1D72BAA60;
    v95 = 0;
    sub_1D726427C();
    v75 = v22;
    v74 = v20;
    v23 = v92;
    LODWORD(v22) = v93;
    v94 = xmmword_1D72BAA70;
    v95 = 0;
    sub_1D5CAA81C();
    sub_1D726427C();
    v72 = v22;
    v73 = v23;
    LOBYTE(v22) = v92;
    v94 = xmmword_1D72BAA80;
    v95 = 0;
    sub_1D5CAA870();
    sub_1D726427C();
    LOBYTE(v23) = v92;
    v94 = xmmword_1D72BAA90;
    v95 = 0;
    sub_1D726427C();
    v71 = v92;
    v70 = v93;
    v94 = xmmword_1D72BAAA0;
    v95 = 0;
    sub_1D726427C();
    v69 = v92;
    v68 = v93;
    v94 = xmmword_1D72BAAB0;
    v95 = 0;
    sub_1D726427C();
    v28 = v92;
    v66 = v93;
    v94 = xmmword_1D72BAAC0;
    v95 = 0;
    v67 = v7;
    v29 = v15;
    sub_1D726427C();
    v65 = v92;
    v64 = v93;
    v94 = xmmword_1D72BAAD0;
    v95 = 0;
    sub_1D726427C();
    v63 = v92;
    v62 = v93;
    v94 = xmmword_1D72BAAE0;
    v95 = 0;
    sub_1D726427C();
    v61 = v92;
    v60 = v93;
    v94 = xmmword_1D72BAAF0;
    v95 = 0;
    sub_1D726427C();
    v59 = v92;
    v58 = v93;
    v94 = xmmword_1D7282A80;
    v95 = 0;
    sub_1D726427C();
    v57 = v92;
    v56 = v93;
    v94 = xmmword_1D72BAB00;
    v95 = 0;
    sub_1D726427C();
    v55 = v92;
    v30 = v93;
    v94 = xmmword_1D72BAB10;
    v95 = 0;
    v31 = sub_1D726423C();
    (*(v14 + 8))(v29, v67);
    v32 = v77;
    LOBYTE(v92) = v77;
    LOBYTE(v96[0]) = v74;
    LOBYTE(v91[0]) = v72;
    LOBYTE(v88[0]) = v70;
    LOBYTE(v87[0]) = v68;
    LOBYTE(v86[0]) = v66;
    LOBYTE(v85[0]) = v64;
    LOBYTE(v84[0]) = v62;
    LOBYTE(v83[0]) = v60;
    LOBYTE(v82[0]) = v58;
    LOBYTE(v81[0]) = v56;
    LOBYTE(v89) = v30;
    v33 = v74;
    v34 = v72;
    v35 = v70;
    v36 = v68;
    v37 = v66;
    v38 = v64;
    v39 = v62;
    v40 = v60;
    v41 = v58;
    v42 = v56;
    v43 = v79;
    *v79 = v78;
    *(v43 + 1) = v92;
    *(v43 + 1) = *(&v92 + 3);
    *(v43 + 1) = v76;
    v43[16] = v32;
    *(v43 + 17) = v96[0];
    *(v43 + 5) = *(v96 + 3);
    *(v43 + 3) = v75;
    v43[32] = v33;
    *(v43 + 33) = v91[0];
    *(v43 + 9) = *(v91 + 3);
    *(v43 + 5) = v73;
    v43[48] = v34;
    v43[49] = v22;
    v43[50] = v23;
    v44 = v89;
    v43[55] = v90;
    *(v43 + 51) = v44;
    *(v43 + 7) = v71;
    v43[64] = v35;
    v45 = v88[0];
    *(v43 + 17) = *(v88 + 3);
    *(v43 + 65) = v45;
    *(v43 + 9) = v69;
    v43[80] = v36;
    v46 = v87[0];
    *(v43 + 21) = *(v87 + 3);
    *(v43 + 81) = v46;
    *(v43 + 11) = v28;
    v43[96] = v37;
    v47 = v86[0];
    *(v43 + 25) = *(v86 + 3);
    *(v43 + 97) = v47;
    *(v43 + 13) = v65;
    v43[112] = v38;
    v48 = v85[0];
    *(v43 + 29) = *(v85 + 3);
    *(v43 + 113) = v48;
    *(v43 + 15) = v63;
    v43[128] = v39;
    v49 = v84[0];
    *(v43 + 33) = *(v84 + 3);
    *(v43 + 129) = v49;
    *(v43 + 17) = v61;
    v43[144] = v40;
    v50 = v83[0];
    *(v43 + 37) = *(v83 + 3);
    *(v43 + 145) = v50;
    *(v43 + 19) = v59;
    v43[160] = v41;
    v51 = v82[0];
    *(v43 + 41) = *(v82 + 3);
    *(v43 + 161) = v51;
    *(v43 + 21) = v57;
    v43[176] = v42;
    v52 = v81[0];
    *(v43 + 45) = *(v81 + 3);
    *(v43 + 177) = v52;
    *(v43 + 23) = v55;
    v43[192] = v30;
    v43[193] = v31;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAA344()
{
  if (!qword_1EDF1A0E8)
  {
    sub_1D5CA98C4();
    sub_1D5B58B84(&qword_1EDF253B8, sub_1D5CA98C4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0E8);
    }
  }
}

unint64_t sub_1D5CAA3F0()
{
  result = qword_1EDF2ADC0;
  if (!qword_1EDF2ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADC0);
  }

  return result;
}

unint64_t sub_1D5CAA444()
{
  result = qword_1EDF2ADC8;
  if (!qword_1EDF2ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADC8);
  }

  return result;
}

unint64_t sub_1D5CAA49C()
{
  result = qword_1EDF2ADB0;
  if (!qword_1EDF2ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADB0);
  }

  return result;
}

unint64_t sub_1D5CAA4F4()
{
  result = qword_1EDF2ADB8;
  if (!qword_1EDF2ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADB8);
  }

  return result;
}

unint64_t sub_1D5CAA548()
{
  result = qword_1EDF2ADD0;
  if (!qword_1EDF2ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADD0);
  }

  return result;
}

unint64_t sub_1D5CAA59C()
{
  result = qword_1EDF2BDF0;
  if (!qword_1EDF2BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDF0);
  }

  return result;
}

uint64_t sub_1D5CAA5F8(char a1)
{
  result = 0x6E656D6E67696C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      v3 = 1684104552;
      goto LABEL_11;
    case 3:
      v3 = 1818845556;
LABEL_11:
      result = v3 | 0x65646E4900000000;
      break;
    case 4:
      result = 0x61657242656E696CLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x63617053656E696CLL;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
    case 13:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5CAA81C()
{
  result = qword_1EDF26E00;
  if (!qword_1EDF26E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26E00);
  }

  return result;
}

unint64_t sub_1D5CAA870()
{
  result = qword_1EDF27270;
  if (!qword_1EDF27270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27270);
  }

  return result;
}

unint64_t sub_1D5CAA924()
{
  result = qword_1EDF2F7E8;
  if (!qword_1EDF2F7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F7E8);
  }

  return result;
}

NewsFeed::FormatContentMode_optional __swiftcall FormatContentMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5CAAA40()
{
  result = qword_1EDF2F588;
  if (!qword_1EDF2F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F588);
  }

  return result;
}

NewsFeed::FormatImageResize_optional __swiftcall FormatImageResize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatSlotDefinitionCollection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5CAAC54();
    sub_1D5CAACF4(&qword_1EDF1B0F0, &qword_1EDF2AB28);
    sub_1D726472C();
    sub_1D5CAF23C(v8[6], &v7);
    v6 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAAC54()
{
  if (!qword_1EDF43BD0)
  {
    type metadata accessor for FormatSlotDefinition();
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43BD0);
    }
  }
}

uint64_t sub_1D5CAACAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CAACF4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CAAC54();
    sub_1D5CAACAC(a2, type metadata accessor for FormatSlotDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CAAD98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B4BF64(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5CAAE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B4BF64(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t FormatSlotDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v58 = &v48 - v5;
  sub_1D5C2E60C(0, &qword_1EDF3BD08, sub_1D5B57DEC, sub_1D5B56404);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v48 - v9;
  sub_1D5CAB7F4();
  v12 = v11;
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CAB770();
  sub_1D5B58B84(&qword_1EDF25378, sub_1D5CAB770);
  v16 = v65;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = v10;
  v18 = v60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1D7264AFC();
  v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

  if (v20)
  {
    v21 = sub_1D726433C();
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = (v21 + 48);
      while (*v23 != 1)
      {
        v23 += 24;
        if (!--v22)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v23 - 2);
      v27 = *(v23 - 1);

      v29 = sub_1D6622DE0();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      v17 = v30;
      *(v31 + 16) = v29;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v15, v12);
      goto LABEL_14;
    }

LABEL_7:
  }

  v63 = 0uLL;
  v64 = 0;
  v24 = sub_1D72642BC();
  v56 = v25;
  v63 = xmmword_1D728CF30;
  v64 = 0;
  v26 = v18;
  v53 = sub_1D72642BC();
  v54 = v24;
  v55 = v32;
  v63 = xmmword_1D7297410;
  v64 = 0;
  v33 = sub_1D72642BC();
  v35 = v34;
  sub_1D5B5BF78(0, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
  v63 = xmmword_1D72BAA60;
  v64 = 0;
  sub_1D5CABB2C();
  sub_1D726431C();
  v52 = v61;
  v50 = xmmword_1D72BAA70;
  v63 = xmmword_1D72BAA70;
  v64 = 0;
  if (sub_1D726434C())
  {
    v49 = v33;
    v51 = v35;
    v61 = v50;
    v62 = 0;
    sub_1D6661864();
    v36 = v65;
    v37 = v7;
    sub_1D726431C();
    v38 = v59;
    *&v50 = sub_1D725A74C();
    (*(v57 + 8))(v36, v37);
    v35 = v51;
    v33 = v49;
  }

  else
  {
    *&v50 = MEMORY[0x1E69E7CC0];
    v38 = v59;
  }

  sub_1D5B5BF78(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
  v63 = xmmword_1D72BAA80;
  v64 = 0;
  sub_1D5CABC04();
  sub_1D726431C();
  v51 = v35;
  v40 = v12;
  v65 = v61;
  sub_1D725B76C();
  v63 = xmmword_1D72BAA90;
  v64 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  v41 = v58;
  sub_1D726427C();
  (*(v26 + 8))(v15, v40);
  v42 = type metadata accessor for FormatSlotDefinition();
  sub_1D5C4E944(v41, v38 + *(v42 + 40), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v43 = v56;
  *v38 = v54;
  v38[1] = v43;
  v44 = v55;
  v38[2] = v53;
  v38[3] = v44;
  v45 = v51;
  v46 = v52;
  v38[4] = v33;
  v38[5] = v45;
  v47 = v50;
  v38[6] = v46;
  v38[7] = v47;
  v38[8] = v65;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAB770()
{
  if (!qword_1EDF25370)
  {
    sub_1D5CAB888();
    sub_1D5CAB8DC();
    sub_1D5CAB9E0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25370);
    }
  }
}

void sub_1D5CAB7F4()
{
  if (!qword_1EDF1A0C8)
  {
    sub_1D5CAB770();
    sub_1D5B58B84(&qword_1EDF25378, sub_1D5CAB770);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0C8);
    }
  }
}

unint64_t sub_1D5CAB888()
{
  result = qword_1EDF2AB40;
  if (!qword_1EDF2AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AB40);
  }

  return result;
}

unint64_t sub_1D5CAB8DC()
{
  result = qword_1EDF2AB48;
  if (!qword_1EDF2AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AB48);
  }

  return result;
}

unint64_t sub_1D5CAB934()
{
  result = qword_1EDF2AB30;
  if (!qword_1EDF2AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AB30);
  }

  return result;
}

unint64_t sub_1D5CAB98C()
{
  result = qword_1EDF2AB38;
  if (!qword_1EDF2AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AB38);
  }

  return result;
}

unint64_t sub_1D5CAB9E0()
{
  result = qword_1EDF2AB50[0];
  if (!qword_1EDF2AB50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2AB50);
  }

  return result;
}

unint64_t sub_1D5CABA34()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  if (v1 != 6)
  {
    v3 = 1885433183;
  }

  v4 = 0x726F66736E617274;
  if (v1 != 4)
  {
    v4 = 0x69747265706F7270;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7470697263736564;
  if (v1 != 2)
  {
    v5 = 0x736D657469;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

unint64_t sub_1D5CABB2C()
{
  result = qword_1EDF1AFE0;
  if (!qword_1EDF1AFE0)
  {
    sub_1D5B5BF78(255, &qword_1EDF43BA8, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF22058, type metadata accessor for FormatSlotDefinitionItemSet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1AFE0);
  }

  return result;
}

unint64_t sub_1D5CABC04()
{
  result = qword_1EDF1B020;
  if (!qword_1EDF1B020)
  {
    sub_1D5B5BF78(255, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF449F0, type metadata accessor for FormatPropertyDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B020);
  }

  return result;
}

uint64_t FormatPropertyDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_1D5B57004(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v76 = &v69 - v5;
  sub_1D5B57004(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v78 = &v69 - v8;
  sub_1D5B57004(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v80 = &v69 - v11;
  sub_1D5B57004(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v77 = &v69 - v14;
  sub_1D5B5796C();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v75 = &v69 - v20;
  sub_1D5B4B5A8(0, &qword_1EDF43F28, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v74 = &v69 - v23;
  sub_1D5B57004(0, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v73 = &v69 - v26;
  v27 = type metadata accessor for FormatEnumPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v72 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5714C();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v71 = &v69 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B57004(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v70 = &v69 - v35;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = &v69 - v38;
  sub_1D5B57004(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v41 = v40;
  v81 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v69 - v43;
  v45 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v49);
  sub_1D5C30408();
  v50 = v84;
  sub_1D7264B0C();
  if (v50)
  {
    return __swift_destroy_boxed_opaque_existential_1(v83);
  }

  v52 = v79;
  v51 = v80;
  v84 = v48;
  v53 = v82;
  sub_1D5C6115C();
  v85[0] = 0;
  v85[1] = 0;
  sub_1D726431C();
  if (v86 > 5u)
  {
    if (v86 <= 8u)
    {
      v55 = v83;
      if (v86 == 6)
      {
        sub_1D5B68374(v83, v85);
        sub_1D5CAE6C0(v85, v52);
        (*(v81 + 8))(v44, v41);
        v57 = v84;
        sub_1D5CADA34(v52, v84, sub_1D5B5796C);
      }

      else if (v86 == 7)
      {
        sub_1D5B68374(v83, v85);
        v58 = v70;
        sub_1D695CCE0(v85, v70);
        (*(v81 + 8))(v44, v41);
        v57 = v84;
        sub_1D695B2C8(v58, v84, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor);
      }

      else
      {
        sub_1D5B68374(v83, v85);
        v65 = v77;
        sub_1D695F124(v85, v77);
        (*(v81 + 8))(v44, v41);
        v57 = v84;
        sub_1D695B2C8(v65, v84, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent);
      }

      goto LABEL_27;
    }

    v60 = v44;
    if (v86 != 9)
    {
      v55 = v83;
      if (v86 == 10)
      {
        sub_1D5B68374(v83, v85);
        v61 = v78;
        sub_1D6960344(v85, v78);
        v57 = v84;
        (*(v81 + 8))(v60, v41);
        sub_1D695B2C8(v61, v57, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont);
      }

      else
      {
        sub_1D5B68374(v83, v85);
        v67 = v76;
        sub_1D6960C54(v85, v76);
        v57 = v84;
        (*(v81 + 8))(v60, v41);
        sub_1D695B2C8(v67, v57, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent);
      }

      goto LABEL_26;
    }

    v55 = v83;
    sub_1D5B68374(v83, v85);
    sub_1D695FA34(v85, v51);
    (*(v81 + 8))(v44, v41);
    v57 = v84;
    sub_1D695B2C8(v51, v84, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent);
  }

  else
  {
    v54 = v44;
    if (v86 > 2u)
    {
      if (v86 != 3)
      {
        v55 = v83;
        if (v86 == 4)
        {
          sub_1D5B68374(v83, v85);
          v59 = v74;
          sub_1D695E838(v85, v74);
          v57 = v84;
          (*(v81 + 8))(v54, v41);
          sub_1D62B6B70(v59, v57);
        }

        else
        {
          sub_1D5B68374(v83, v85);
          v66 = v75;
          sub_1D5CACA10(v85, v75);
          v57 = v84;
          (*(v81 + 8))(v54, v41);
          sub_1D5CAD9A4(v66, v57);
        }

        goto LABEL_26;
      }

      v62 = v41;
      v55 = v83;
      sub_1D5B68374(v83, v85);
      v63 = v73;
      sub_1D695DF40(v85, v73);
      (*(v81 + 8))(v54, v62);
      v57 = v84;
      sub_1D695B2C8(v63, v84, &qword_1EDF43F68, sub_1D5B577E4, MEMORY[0x1E69E7DE0]);
    }

    else
    {
      if (v86)
      {
        v55 = v83;
        if (v86 == 1)
        {
          sub_1D5B68374(v83, v85);
          v56 = v71;
          sub_1D695D5F0(v85, v71);
          v57 = v84;
          (*(v81 + 8))(v54, v41);
          sub_1D5CADA34(v56, v57, sub_1D5B5714C);
        }

        else
        {
          sub_1D5B68374(v83, v85);
          v64 = v72;
          FormatEnumPropertyDefinition.init(from:)(v85, v72);
          v57 = v84;
          (*(v81 + 8))(v54, v41);
          sub_1D5CADA34(v64, v57, type metadata accessor for FormatEnumPropertyDefinition);
        }

LABEL_26:
        v53 = v82;
        goto LABEL_27;
      }

      v55 = v83;
      sub_1D5B68374(v83, v85);
      sub_1D5CADA9C(v85, v39);
      (*(v81 + 8))(v44, v41);
      v57 = v84;
      sub_1D5CAE630(v39, v84);
    }
  }

LABEL_27:
  swift_storeEnumTagMultiPayload();
  sub_1D5CADA34(v57, v53, type metadata accessor for FormatPropertyDefinition);
  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_1D5CACA10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v47 - v5;
  sub_1D5C4F6F8();
  v7 = v6;
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CAD3C0();
  v12 = v11;
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CAD30C();
  sub_1D5B4CDEC(&qword_1EDF24DD8, sub_1D5CAD30C);
  v16 = v62;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v10;
  *&v62 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v59;
  v21 = v60;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D66291FC();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v61 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v67 = 0uLL;
  v68 = 0;
  v25 = sub_1D72642BC();
  v56 = v26;
  v67 = xmmword_1D728CF30;
  v68 = 0;
  v54 = sub_1D72642BC();
  v55 = v32;
  v67 = xmmword_1D7297410;
  v68 = 0;
  v53 = sub_1D72642BC();
  v34 = v33;
  v67 = xmmword_1D72BAA60;
  v68 = 0;
  v51 = sub_1D72642BC();
  v52 = v35;
  v67 = xmmword_1D72BAA70;
  v68 = 0;
  v69 = sub_1D72642CC();
  v67 = xmmword_1D72BAA80;
  v68 = 0;
  sub_1D726427C();
  LODWORD(v36) = 0;
  v48 = v25;
  v50 = v34;
  v49 = xmmword_1D72BAA90;
  v67 = xmmword_1D72BAA90;
  v68 = 0;
  v38 = sub_1D726434C();
  if (v38)
  {
    v63 = v49;
    v64 = 0;
    sub_1D726431C();
    v39 = v62;
    LODWORD(v36) = v70;
  }

  else
  {
    v39 = v62;
  }

  v62 = xmmword_1D72BAAA0;
  v67 = xmmword_1D72BAAA0;
  v68 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v49) = v36;
    v63 = v62;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8);
    v36 = v57;
    sub_1D726431C();
    *&v62 = sub_1D725A74C();
    (*(v58 + 8))(v36, v39);
    LOBYTE(v36) = v49;
  }

  else
  {
    *&v62 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v67 = xmmword_1D72BAAB0;
  v68 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  (*(v61 + 8))(v15, v12);
  v40 = v65;
  v41 = v66;
  sub_1D5B4B5A8(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v42 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 72) = v40;
  *(v21 + 80) = v41;
  v43 = v56;
  *v21 = v48;
  *(v21 + 8) = v43;
  v44 = v55;
  *(v21 + 16) = v54;
  *(v21 + 24) = v44;
  v45 = v50;
  *(v21 + 32) = v53;
  *(v21 + 40) = v45;
  v46 = v52;
  *(v21 + 48) = v51;
  *(v21 + 56) = v46;
  *(v21 + 64) = v69 & 1;
  *(v21 + 88) = v36;
  *(v21 + 96) = v62;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAD30C()
{
  if (!qword_1EDF24DD0)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E498, MEMORY[0x1E69E6158], &protocol witness table for String, _s10CodingKeysOMa_94);
    sub_1D5CAD46C();
    sub_1D5CAD4F0();
    sub_1D5CAD5AC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24DD0);
    }
  }
}

void sub_1D5CAD3C0()
{
  if (!qword_1EDF19DF8)
  {
    sub_1D5CAD30C();
    sub_1D5B4CDEC(&qword_1EDF24DD8, sub_1D5CAD30C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DF8);
    }
  }
}

unint64_t sub_1D5CAD46C()
{
  result = qword_1EDF1E4A0;
  if (!qword_1EDF1E4A0)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E498, MEMORY[0x1E69E6158], &protocol witness table for String, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4A0);
  }

  return result;
}

unint64_t sub_1D5CAD4F0()
{
  result = qword_1EDF1E4A8;
  if (!qword_1EDF1E4A8)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E498, MEMORY[0x1E69E6158], &protocol witness table for String, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4A8);
  }

  return result;
}

unint64_t sub_1D5CAD5AC()
{
  result = qword_1EDF1E4B0;
  if (!qword_1EDF1E4B0)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E498, MEMORY[0x1E69E6158], &protocol witness table for String, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E4B0);
  }

  return result;
}

uint64_t sub_1D5CAD63C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x72656C69706D6F63;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746C7561666564;
    if (a1 != 5)
    {
      v7 = 0x7461636572706564;
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
    v1 = 1701869940;
    v2 = 1701667182;
    v3 = 0x7470697263736564;
    if (a1 != 3)
    {
      v3 = 0x6465726975716572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x696669746E656469;
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

uint64_t sub_1D5CAD784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CAD7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CAD854(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B4BE9C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5CAD8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CAD93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CAD9A4(uint64_t a1, uint64_t a2)
{
  sub_1D5B4B554(0, &qword_1EDF43F38, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CADA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5CADA9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v59 = &v47 - v5;
  sub_1D5C4F6F8();
  v7 = v6;
  v58 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CAE410();
  v12 = v11;
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CAE35C();
  sub_1D5B4CDEC(&qword_1EDF24DC8, sub_1D5CAE35C);
  v16 = v62;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v57 = v10;
  *&v62 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = sub_1D7264AFC();
  v19 = Dictionary<>.errorOnUnknownKeys.getter(v18);

  v20 = v59;
  v21 = v60;
  if (v19)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while ((*v24 & 1) == 0)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D6629E7C();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v17 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v61 + 8))(v15, v12);
      goto LABEL_10;
    }

LABEL_7:
  }

  v65 = 0uLL;
  v66 = 0;
  v25 = sub_1D72642BC();
  v56 = v26;
  v65 = xmmword_1D728CF30;
  v66 = 0;
  v54 = sub_1D72642BC();
  v55 = v32;
  v65 = xmmword_1D7297410;
  v66 = 0;
  v53 = sub_1D72642BC();
  v34 = v33;
  v65 = xmmword_1D72BAA60;
  v66 = 0;
  v51 = sub_1D72642BC();
  v52 = v35;
  v65 = xmmword_1D72BAA70;
  v66 = 0;
  v67 = sub_1D72642CC();
  v65 = xmmword_1D72BAA80;
  v66 = 0;
  sub_1D726427C();
  LODWORD(v36) = 0;
  v48 = v25;
  v50 = v34;
  v49 = xmmword_1D72BAA90;
  v65 = xmmword_1D72BAA90;
  v66 = 0;
  v38 = sub_1D726434C();
  if (v38)
  {
    v63 = v49;
    v64 = 0;
    sub_1D726431C();
    v39 = v62;
    LODWORD(v36) = v68;
  }

  else
  {
    v39 = v62;
  }

  v62 = xmmword_1D72BAAA0;
  v65 = xmmword_1D72BAAA0;
  v66 = 0;
  if (sub_1D726434C())
  {
    LODWORD(v49) = v36;
    v63 = v62;
    v64 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8);
    v36 = v57;
    sub_1D726431C();
    *&v62 = sub_1D725A74C();
    (*(v58 + 8))(v36, v39);
    LOBYTE(v36) = v49;
  }

  else
  {
    *&v62 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v65 = xmmword_1D72BAAB0;
  v66 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  (*(v61 + 8))(v15, v12);
  v40 = v69;
  sub_1D5B4B5A8(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  sub_1D5CAD854(v20, v21 + *(v41 + 64), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  *(v21 + 65) = v40;
  v42 = v56;
  *v21 = v48;
  *(v21 + 8) = v42;
  v43 = v55;
  *(v21 + 16) = v54;
  *(v21 + 24) = v43;
  v44 = v50;
  v45 = v51;
  *(v21 + 32) = v53;
  *(v21 + 40) = v44;
  v46 = v52;
  *(v21 + 48) = v45;
  *(v21 + 56) = v46;
  *(v21 + 64) = v67 & 1;
  *(v21 + 66) = v36;
  *(v21 + 72) = v62;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAE35C()
{
  if (!qword_1EDF24DC0)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E478, MEMORY[0x1E69E6370], &protocol witness table for Bool, _s10CodingKeysOMa_94);
    sub_1D5CAE4A4();
    sub_1D5CAE528();
    sub_1D5CAE5AC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24DC0);
    }
  }
}

void sub_1D5CAE410()
{
  if (!qword_1EDF19DF0)
  {
    sub_1D5CAE35C();
    sub_1D5B4CDEC(&qword_1EDF24DC8, sub_1D5CAE35C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DF0);
    }
  }
}

unint64_t sub_1D5CAE4A4()
{
  result = qword_1EDF1E480;
  if (!qword_1EDF1E480)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E478, MEMORY[0x1E69E6370], &protocol witness table for Bool, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E480);
  }

  return result;
}

unint64_t sub_1D5CAE528()
{
  result = qword_1EDF1E488;
  if (!qword_1EDF1E488)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E478, MEMORY[0x1E69E6370], &protocol witness table for Bool, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E488);
  }

  return result;
}

unint64_t sub_1D5CAE5AC()
{
  result = qword_1EDF1E490;
  if (!qword_1EDF1E490)
  {
    sub_1D5B4B5A8(255, &qword_1EDF1E478, MEMORY[0x1E69E6370], &protocol witness table for Bool, _s10CodingKeysOMa_94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E490);
  }

  return result;
}

uint64_t sub_1D5CAE630(uint64_t a1, uint64_t a2)
{
  sub_1D5B4B554(0, &qword_1EDF43F30, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatPrimitivePropertyDefinition);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CAE6C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B4BE9C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v63 = &v50[-v6];
  sub_1D5C4F6F8();
  v65 = v7;
  v62 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4BE9C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v3);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v50[-v13];
  sub_1D5CAF114();
  v16 = v15;
  v64 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v50[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CAF010();
  sub_1D5B4CDEC(&qword_1EDF24E18, sub_1D5CAF010);
  v20 = v67;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v10;
  v23 = v64;
  v22 = v65;
  v67 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = sub_1D7264AFC();
  v25 = Dictionary<>.errorOnUnknownKeys.getter(v24);

  v26 = v66;
  if (v25)
  {
    v27 = sub_1D726433C();
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 48);
      while ((*v29 & 1) == 0)
      {
        v29 += 24;
        if (!--v28)
        {
          goto LABEL_7;
        }
      }

      v33 = *(v29 - 2);
      v32 = *(v29 - 1);

      v34 = sub_1D6628F7C();
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v35 = v33;
      *(v35 + 8) = v32;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v23 + 8))(v19, v16);
      goto LABEL_10;
    }

LABEL_7:
  }

  v70 = 0uLL;
  v71 = 0;
  v30 = sub_1D72642BC();
  v60 = v31;
  v70 = xmmword_1D728CF30;
  v71 = 0;
  v58 = sub_1D72642BC();
  v59 = v30;
  v37 = v36;
  v70 = xmmword_1D7297410;
  v71 = 0;
  v56 = sub_1D72642BC();
  v57 = v38;
  v70 = xmmword_1D72BAA60;
  v71 = 0;
  v54 = sub_1D72642BC();
  v55 = v39;
  v70 = xmmword_1D72BAA70;
  v71 = 0;
  v72 = sub_1D72642CC();
  sub_1D72585BC();
  v70 = xmmword_1D72BAA80;
  v71 = 0;
  sub_1D5B4CDEC(&unk_1EDF45B50, MEMORY[0x1E6968FB0]);
  sub_1D726427C();
  v53 = xmmword_1D72BAA90;
  v70 = xmmword_1D72BAA90;
  v71 = 0;
  if (sub_1D726434C())
  {
    v68 = v53;
    v69 = 0;
    sub_1D726431C();
    *&v53 = v37;
    v51 = v73;
  }

  else
  {
    v51 = 0;
    *&v53 = v37;
  }

  v52 = xmmword_1D72BAAA0;
  v70 = xmmword_1D72BAAA0;
  v71 = 0;
  v41 = sub_1D726434C();
  v42 = v61;
  if (v41)
  {
    v68 = v52;
    v69 = 0;
    sub_1D5B4CDEC(&qword_1EDF3BE60, sub_1D5C4F6F8);
    sub_1D726431C();
    *&v52 = sub_1D725A74C();
    (*(v62 + 8))(v42, v22);
  }

  else
  {
    *&v52 = MEMORY[0x1E69E7CD0];
  }

  sub_1D725B76C();
  v70 = xmmword_1D72BAAB0;
  v71 = 0;
  sub_1D5B4CDEC(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  v43 = v63;
  sub_1D726427C();
  v44 = v53;
  (*(v23 + 8))(v19, v16);
  sub_1D5B5796C();
  v46 = v45;
  sub_1D5CAD854(v67, v26 + v45[13], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  sub_1D5CAD854(v43, v26 + v46[16], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v47 = v60;
  *v26 = v59;
  *(v26 + 8) = v47;
  *(v26 + 16) = v58;
  *(v26 + 24) = v44;
  v48 = v57;
  *(v26 + 32) = v56;
  *(v26 + 40) = v48;
  v49 = v55;
  *(v26 + 48) = v54;
  *(v26 + 56) = v49;
  *(v26 + 64) = v72 & 1;
  *(v26 + v46[14]) = v51;
  *(v26 + v46[15]) = v52;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAF010()
{
  if (!qword_1EDF24E10)
  {
    sub_1D5CAF1A8();
    sub_1D5B4CDEC(&qword_1EDF1E520, sub_1D5CAF1A8);
    sub_1D5B4CDEC(&qword_1EDF1E528, sub_1D5CAF1A8);
    sub_1D5B4CDEC(qword_1EDF1E530, sub_1D5CAF1A8);
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E10);
    }
  }
}

void sub_1D5CAF114()
{
  if (!qword_1EDF19E18)
  {
    sub_1D5CAF010();
    sub_1D5B4CDEC(&qword_1EDF24E18, sub_1D5CAF010);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E18);
    }
  }
}

void sub_1D5CAF1A8()
{
  if (!qword_1EDF1E518)
  {
    sub_1D72585BC();
    sub_1D5B4CDEC(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v0 = _s10CodingKeysOMa_94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1E518);
    }
  }
}

uint64_t sub_1D5CAF23C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for FormatSlotDefinition();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v52 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v52 - v18);
  v61 = MEMORY[0x1E69E7CC8];
  sub_1D5CAF62C();
  result = sub_1D7261DAC();
  v59 = *(a1 + 16);
  if (v59)
  {
    v52 = v11;
    v53 = v15;
    v21 = 0;
    v22 = *(v4 + 80);
    v57 = v4;
    v58 = a1 + ((v22 + 32) & ~v22);
    v23 = v61;
    v55 = v19;
    v56 = a1;
    while (v21 < *(a1 + 16))
    {
      v24 = *(v4 + 72);
      sub_1D5CAF694(v58 + v24 * v21, v19);
      v26 = *v19;
      v25 = v19[1];
      if (v23[2])
      {
        v27 = sub_1D5B69D90(*v19, v19[1]);
        if (v28)
        {
          v61 = v23;
          v44 = v27;

          v45 = v23[7] + v44 * v24;
          v46 = v52;
          sub_1D5CAF694(v45, v52);
          v47 = v53;
          sub_1D5CAF754(v46, v53);
          type metadata accessor for FormatPackageError();
          sub_1D5CAACAC(&qword_1EC881A40, type metadata accessor for FormatPackageError);
          swift_allocError();
          v49 = v48;
          sub_1D61884D0();
          v51 = *(v50 + 48);
          sub_1D5CAF694(v19, v49);
          sub_1D5CAF694(v47, v49 + v51);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D5CAF6F8(v47);
          sub_1D5CAF6F8(v19);
        }
      }

      v29 = v7;
      sub_1D5CAF694(v19, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v23;
      v32 = sub_1D5B69D90(v26, v25);
      v33 = v23[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_21;
      }

      v36 = v31;
      if (v23[3] >= v35)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6D7E6CC();
        }
      }

      else
      {
        sub_1D6D67168(v35, isUniquelyReferenced_nonNull_native);
        v37 = sub_1D5B69D90(v26, v25);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_23;
        }

        v32 = v37;
      }

      v7 = v29;
      v23 = v60;
      if (v36)
      {
        sub_1D618846C(v29, v60[7] + v32 * v24);
      }

      else
      {
        v60[(v32 >> 6) + 8] |= 1 << v32;
        v39 = (v23[6] + 16 * v32);
        *v39 = v26;
        v39[1] = v25;
        sub_1D5CAF754(v29, v23[7] + v32 * v24);
        v40 = v23[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_22;
        }

        v23[2] = v42;
      }

      ++v21;
      v19 = v55;
      result = sub_1D5CAF6F8(v55);
      a1 = v56;
      v4 = v57;
      if (v59 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
    v23 = v61;
LABEL_18:
    v43 = v54;
    *v54 = a1;
    v43[1] = v23;
  }

  return result;
}

void sub_1D5CAF62C()
{
  if (!qword_1EDF1B928)
  {
    type metadata accessor for FormatSlotDefinition();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B928);
    }
  }
}

uint64_t sub_1D5CAF694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CAF6F8(uint64_t a1)
{
  v2 = type metadata accessor for FormatSlotDefinition();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CAF754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinition();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatLocalizationCollection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5CAF910();
    sub_1D5CAF9E8(&qword_1EDF05118, &qword_1EDF12448);
    sub_1D726472C();
    sub_1D5CB13C8(v8[6], &v7);
    v6 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CAF910()
{
  if (!qword_1EDF1B3A8)
  {
    sub_1D5C2CA80(255, &qword_1EDF338D0, sub_1D5B55BC8, &type metadata for FormatLocalization, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B3A8);
    }
  }
}

uint64_t sub_1D5CAF9A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CAF9E8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CAF910();
    sub_1D5CAF9A0(a2, sub_1D5CAFA78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5CAFA78()
{
  if (!qword_1EDF338D0)
  {
    sub_1D5B55BC8();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF338D0);
    }
  }
}

uint64_t sub_1D5CAFAD4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1D5CAFB20()
{
  if (!qword_1EDF1A1D8)
  {
    sub_1D5CAFBB4();
    sub_1D5B58B84(&qword_1EDF25598, sub_1D5CAFBB4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A1D8);
    }
  }
}

void sub_1D5CAFBB4()
{
  if (!qword_1EDF25590)
  {
    sub_1D5CB0074();
    sub_1D5CB00C8();
    sub_1D5CB01CC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25590);
    }
  }
}

uint64_t FormatLocalization.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  sub_1D5CAFB20();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CAFBB4();
  sub_1D5B58B84(&qword_1EDF25598, sub_1D5CAFBB4);
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

  v13 = v37;
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

      v23 = sub_1D661606C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  v17 = sub_1D5C31D18(v10, 0, 0, 0, sub_1D5CAFB20);
  v19 = v18;
  v36 = v17;
  v38 = xmmword_1D728CF30;
  v39 = 0;
  v20 = sub_1D726422C();
  v27 = v26;
  v35 = v20;
  v38 = xmmword_1D7297410;
  v39 = 0;
  v33 = sub_1D726422C();
  v34 = v28;
  sub_1D5C34D84(0, &qword_1EDF1B030, &type metadata for FormatLocalizationString, MEMORY[0x1E69E62F8]);
  v38 = xmmword_1D72BAA60;
  v39 = 0;
  sub_1D5CB02B8();
  sub_1D726431C();
  (*(v13 + 8))(v10, v7);
  v29 = v40;
  v30 = v35;
  *a2 = v36;
  a2[1] = v19;
  a2[2] = v30;
  a2[3] = v27;
  v31 = v34;
  a2[4] = v33;
  a2[5] = v31;
  a2[6] = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CB0074()
{
  result = qword_1EDF2DC60;
  if (!qword_1EDF2DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC60);
  }

  return result;
}

unint64_t sub_1D5CB00C8()
{
  result = qword_1EDF2DC68;
  if (!qword_1EDF2DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC68);
  }

  return result;
}

unint64_t sub_1D5CB0120()
{
  result = qword_1EDF2DC50;
  if (!qword_1EDF2DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC50);
  }

  return result;
}

unint64_t sub_1D5CB0178()
{
  result = qword_1EDF2DC58;
  if (!qword_1EDF2DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC58);
  }

  return result;
}

unint64_t sub_1D5CB01CC()
{
  result = qword_1EDF2DC70;
  if (!qword_1EDF2DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DC70);
  }

  return result;
}

uint64_t sub_1D5CB0220()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7470697263736564;
  v4 = 0x73676E69727473;
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

unint64_t sub_1D5CB02B8()
{
  result = qword_1EDF1B028;
  if (!qword_1EDF1B028)
  {
    sub_1D5C34D84(255, &qword_1EDF1B030, &type metadata for FormatLocalizationString, MEMORY[0x1E69E62F8]);
    sub_1D5CB0354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B028);
  }

  return result;
}

unint64_t sub_1D5CB0354()
{
  result = qword_1EDF25D28;
  if (!qword_1EDF25D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D28);
  }

  return result;
}

uint64_t FormatLocalizationString.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BC50, sub_1D5CB083C, sub_1D5CB0890);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v35 - v7;
  sub_1D5CB0968();
  v10 = v9;
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB08E4();
  sub_1D5B58B84(&qword_1EDF250F8, sub_1D5CB08E4);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v17 = v41;
  v16 = v42;
  if (v15)
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

      v25 = *(v20 - 2);
      v24 = *(v20 - 1);

      v26 = sub_1D661EDB8();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v47 + 8))(v13, v10);
      goto LABEL_10;
    }

LABEL_7:
  }

  v45 = 0uLL;
  v46 = 0;
  v37 = sub_1D72642BC();
  v38 = v21;
  v45 = xmmword_1D728CF30;
  v46 = 0;
  v22 = sub_1D726422C();
  v23 = v47;
  v29 = v22;
  v36 = v30;
  v35 = xmmword_1D7297410;
  v45 = xmmword_1D7297410;
  v46 = 0;
  v31 = sub_1D726434C();
  if (v31)
  {
    v43 = v35;
    v44 = 0;
    sub_1D5CB0C2C();
    sub_1D726431C();
    v32 = sub_1D725A74C();
    (*(v40 + 8))(v39, v17);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  (*(v23 + 8))(v13, v10);
  v33 = v38;
  *v16 = v37;
  v16[1] = v33;
  v34 = v36;
  v16[2] = v29;
  v16[3] = v34;
  v16[4] = v32;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CB083C()
{
  result = qword_1EDF25D30;
  if (!qword_1EDF25D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D30);
  }

  return result;
}

unint64_t sub_1D5CB0890()
{
  result = qword_1EDF25D38;
  if (!qword_1EDF25D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D38);
  }

  return result;
}

void sub_1D5CB08E4()
{
  if (!qword_1EDF250F0)
  {
    sub_1D5CB09FC();
    sub_1D5CB0A50();
    sub_1D5CB0B54();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF250F0);
    }
  }
}

void sub_1D5CB0968()
{
  if (!qword_1EDF19F88)
  {
    sub_1D5CB08E4();
    sub_1D5B58B84(&qword_1EDF250F8, sub_1D5CB08E4);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F88);
    }
  }
}

unint64_t sub_1D5CB09FC()
{
  result = qword_1EDF25D68;
  if (!qword_1EDF25D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D68);
  }

  return result;
}

unint64_t sub_1D5CB0A50()
{
  result = qword_1EDF25D70;
  if (!qword_1EDF25D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D70);
  }

  return result;
}

unint64_t sub_1D5CB0AA8()
{
  result = qword_1EDF25D80;
  if (!qword_1EDF25D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D80);
  }

  return result;
}

unint64_t sub_1D5CB0B00()
{
  result = qword_1EDF25D78;
  if (!qword_1EDF25D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D78);
  }

  return result;
}

unint64_t sub_1D5CB0B54()
{
  result = qword_1EDF25D88;
  if (!qword_1EDF25D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D88);
  }

  return result;
}

uint64_t sub_1D5CB0BA8()
{
  v1 = 0x696669746E656469;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

unint64_t sub_1D5CB0C2C()
{
  result = qword_1EDF3BC58;
  if (!qword_1EDF3BC58)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BC50, sub_1D5CB083C, sub_1D5CB0890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BC58);
  }

  return result;
}

uint64_t sub_1D5CB0CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D5CB0D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatLocalizationString.Selector.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_1D5CB1120();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB109C();
  sub_1D5B58B84(&qword_1EDF250E8, sub_1D5CB109C);
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

  v13 = v35;
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

      v24 = *(v17 - 2);
      v23 = *(v17 - 1);

      v25 = sub_1D6627E68(0x726F7463656C6573, 0xE800000000000000, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v13 + 8))(v10, v7);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C36978();
  v31 = 0uLL;
  v32 = 0;
  sub_1D726431C();
  v18 = v13;
  v20 = v33;
  v19 = v34;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  v21 = sub_1D72642BC();
  v22 = v14;
  v28 = v21;
  v30 = v29;
  (*(v18 + 8))(v10, v22);
  *a2 = v20;
  a2[1] = v19;
  a2[2] = v28;
  a2[3] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CB109C()
{
  if (!qword_1EDF250E0)
  {
    sub_1D5CB11CC();
    sub_1D5CB1220();
    sub_1D5CB1324();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF250E0);
    }
  }
}

void sub_1D5CB1120()
{
  if (!qword_1EDF19F80)
  {
    sub_1D5CB109C();
    sub_1D5B58B84(&qword_1EDF250E8, sub_1D5CB109C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F80);
    }
  }
}

unint64_t sub_1D5CB11CC()
{
  result = qword_1EDF25D40;
  if (!qword_1EDF25D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D40);
  }

  return result;
}

unint64_t sub_1D5CB1220()
{
  result = qword_1EDF25D48;
  if (!qword_1EDF25D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D48);
  }

  return result;
}

unint64_t sub_1D5CB1278()
{
  result = qword_1EDF25D58;
  if (!qword_1EDF25D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D58);
  }

  return result;
}

unint64_t sub_1D5CB12D0()
{
  result = qword_1EDF25D50;
  if (!qword_1EDF25D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D50);
  }

  return result;
}

unint64_t sub_1D5CB1324()
{
  result = qword_1EDF25D60;
  if (!qword_1EDF25D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D60);
  }

  return result;
}

uint64_t sub_1D5CB1378()
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
    return 0x726F7463656C6573;
  }
}

void sub_1D5CB13C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v56 = a2;
  sub_1D5CAFA78();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a1 + 16);
  if (v58)
  {
    v7 = 0;
    v60 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v8 = MEMORY[0x1E69E7CC8];
    v59 = a1;
    v57 = v5;
    while (v7 < *(a1 + 16))
    {
      v9 = *(v5 + 72);
      v62 = v7;
      v10 = v61;
      sub_1D5CB1820(v60 + v9 * v7, v61);
      v11 = *(v10 + 48);

      sub_1D5CB1884(v10);
      v64 = *(v11 + 16);
      if (v64)
      {
        v12 = 0;
        v13 = (v11 + 64);
        v63 = v11;
        while (v12 < *(v11 + 16))
        {
          v16 = *(v13 - 4);
          v17 = *(v13 - 3);
          v18 = *(v13 - 1);
          v66 = *(v13 - 2);
          v19 = *v13;
          v20 = v8[2];

          v65 = v18;
          if (v20)
          {
            v21 = sub_1D5B69D90(v16, v17);
            if (v22)
            {
              v43 = v21;

              v44 = (v8[7] + 40 * v43);
              v45 = *v44;
              v46 = v44[1];
              v47 = v44[3];
              v63 = v44[2];
              v64 = v45;
              v48 = v19;
              v49 = v16;
              v50 = v44[4];
              type metadata accessor for FormatPackageError();
              sub_1D5CAF9A0(&qword_1EC881A40, type metadata accessor for FormatPackageError);
              swift_allocError();
              *v51 = v49;
              v51[1] = v17;
              v52 = v65;
              v51[2] = v66;
              v51[3] = v52;
              v53 = v63;
              v54 = v64;
              v51[4] = v48;
              v51[5] = v54;
              v51[6] = v46;
              v51[7] = v53;
              v51[8] = v47;
              v51[9] = v50;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              return;
            }
          }

          v23 = v19;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v16;
          v26 = isUniquelyReferenced_nonNull_native;
          v67 = v8;
          v27 = v25;
          v29 = sub_1D5B69D90(v25, v17);
          v30 = v8[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_25;
          }

          v33 = v28;
          if (v8[3] >= v32)
          {
            if ((v26 & 1) == 0)
            {
              sub_1D6D7EA20();
            }
          }

          else
          {
            sub_1D5CB18E0(v32, v26);
            v34 = sub_1D5B69D90(v27, v17);
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_28;
            }

            v29 = v34;
          }

          v36 = v23;
          v8 = v67;
          if (v33)
          {
            v14 = (v67[7] + 40 * v29);
            *v14 = v27;
            v14[1] = v17;
            v15 = v65;
            v14[2] = v66;
            v14[3] = v15;
            v14[4] = v36;
          }

          else
          {
            v67[(v29 >> 6) + 8] |= 1 << v29;
            v37 = (v8[6] + 16 * v29);
            *v37 = v27;
            v37[1] = v17;
            v38 = (v8[7] + 40 * v29);
            *v38 = v27;
            v38[1] = v17;
            v39 = v65;
            v38[2] = v66;
            v38[3] = v39;
            v38[4] = v36;

            v40 = v8[2];
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_26;
            }

            v8[2] = v42;
          }

          ++v12;
          v13 += 5;
          v11 = v63;
          if (v64 == v12)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        break;
      }

LABEL_3:
      v7 = v62 + 1;

      a1 = v59;
      v5 = v57;
      if (v7 == v58)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    sub_1D726493C();
    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC8];
LABEL_23:
    v55 = v56;
    *v56 = a1;
    v55[1] = v8;
  }
}

uint64_t sub_1D5CB1820(uint64_t a1, uint64_t a2)
{
  sub_1D5CAFA78();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CB1884(uint64_t a1)
{
  sub_1D5CAFA78();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CB18E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1D5CB1BCC();
  v38 = a2;
  result = sub_1D726410C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = (*(v5 + 56) + 40 * v21);
      v25 = v24[1];
      v41 = *v24;
      v42 = *v22;
      v26 = v24[3];
      v40 = v24[2];
      v27 = v24[4];
      if ((v38 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v42;
      v16[1] = v23;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v41;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1D5CB1BCC()
{
  if (!qword_1EDF1A410)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A410);
    }
  }
}

uint64_t sub_1D5CB1C40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B58F2C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D5B58F2C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 44);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5CB1DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B58F2C(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D5B58F2C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t FormatCompilerSlotDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v76 = &v67 - v6;
  sub_1D5B5BF78(0, qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet, v3);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v79 = &v67 - v9;
  sub_1D5C2E60C(0, &qword_1EDF3BD08, sub_1D5B57DEC, sub_1D5B56404);
  v80 = *(v10 - 8);
  *&v81 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v78 = &v67 - v12;
  sub_1D5C8EAD0();
  v14 = v13;
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CB2B04();
  v19 = v18;
  v89 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB2A80();
  sub_1D5B58B84(&qword_1EDF24EF8, sub_1D5CB2A80);
  v23 = v82;
  sub_1D7264B0C();
  v24 = v23;
  if (v23)
  {
LABEL_18:
    sub_1D61E4FBC(a1, v24);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  *&v82 = v17;
  v74 = v14;
  v25 = v81;
  v26 = v89;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_1D7264AFC();
  v28 = Dictionary<>.errorOnUnknownKeys.getter(v27);

  v29 = v19;
  if (v28)
  {
    v30 = sub_1D726433C();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = (v30 + 48);
      while (*v32 != 1)
      {
        v32 += 24;
        if (!--v31)
        {
          goto LABEL_7;
        }
      }

      v37 = *(v32 - 2);
      v36 = *(v32 - 1);

      v38 = sub_1D6614DAC();
      sub_1D5E2D970();
      v39 = swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v36;
      *(v40 + 16) = v38;
      v24 = v39;
      *(v40 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v26 + 8))(v22, v19);
      goto LABEL_18;
    }

LABEL_7:
  }

  v87 = 0uLL;
  v88 = 0;
  v33 = sub_1D72642BC();
  v73 = v34;
  v87 = xmmword_1D728CF30;
  v88 = 0;
  v35 = v26;
  v68 = sub_1D72642BC();
  v69 = v33;
  v42 = v41;
  v71 = xmmword_1D7297410;
  v87 = xmmword_1D7297410;
  v88 = 0;
  v43 = sub_1D726434C();
  v44 = v29;
  v72 = v22;
  if (v43)
  {
    v85 = v71;
    v86 = 0;
    sub_1D726431C();
    v45 = v25;
    v70 = v42;
    v67 = v83;
    *&v71 = v84;
  }

  else
  {
    v70 = v42;
    v67 = 0;
    *&v71 = 0xE000000000000000;
    v45 = v25;
  }

  v81 = xmmword_1D72BAA60;
  v87 = xmmword_1D72BAA60;
  v88 = 0;
  v46 = sub_1D726434C();
  v47 = v80;
  v48 = v82;
  if (v46)
  {
    v85 = v81;
    v86 = 0;
    sub_1D5B58B84(&qword_1EDF3BC98, sub_1D5C8EAD0);
    v49 = v48;
    v50 = v74;
    sub_1D726431C();
    v51 = sub_1D725A74C();
    v52 = v50;
    v53 = v51;
    (*(v77 + 8))(v49, v52);
    v47 = v80;
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  v82 = xmmword_1D72BAA70;
  v87 = xmmword_1D72BAA70;
  v88 = 0;
  if (sub_1D726434C())
  {
    *&v81 = v53;
    v85 = v82;
    v86 = 0;
    sub_1D6661864();
    v54 = v78;
    sub_1D726431C();
    v56 = sub_1D725A74C();
    v57 = v47;
    v58 = v56;
    (*(v57 + 8))(v54, v45);
    v53 = v81;
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v82 = xmmword_1D72BAA80;
  v87 = xmmword_1D72BAA80;
  v88 = 0;
  if (sub_1D726434C())
  {
    v85 = v82;
    v86 = 0;
    sub_1D726431C();
    v59 = v83;
  }

  else
  {
    v59 = 1;
  }

  *&v82 = v59;
  type metadata accessor for FormatCompilerSlotDefinitionItemSet();
  v87 = xmmword_1D72BAA90;
  v88 = 0;
  sub_1D5B58B84(&qword_1EDF1D928, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  v60 = v72;
  sub_1D726427C();
  sub_1D725B76C();
  v87 = xmmword_1D72BAAA0;
  v88 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  v61 = v76;
  sub_1D726427C();
  (*(v35 + 8))(v60, v44);
  v62 = type metadata accessor for FormatCompilerSlotDefinition(0);
  v63 = v75;
  sub_1D5C4E944(v79, v75 + *(v62 + 40), qword_1EDF43EE0, type metadata accessor for FormatCompilerSlotDefinitionItemSet);
  sub_1D5C4E944(v61, v63 + *(v62 + 44), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v64 = v73;
  *v63 = v69;
  v63[1] = v64;
  v65 = v70;
  v63[2] = v68;
  v63[3] = v65;
  v66 = v71;
  v63[4] = v67;
  v63[5] = v66;
  v63[6] = v53;
  v63[7] = v58;
  v63[8] = v82;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CB2A80()
{
  if (!qword_1EDF24EF0)
  {
    sub_1D5CB2B98();
    sub_1D5CB2BEC();
    sub_1D5CB2CF0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24EF0);
    }
  }
}

void sub_1D5CB2B04()
{
  if (!qword_1EDF19E88)
  {
    sub_1D5CB2A80();
    sub_1D5B58B84(&qword_1EDF24EF8, sub_1D5CB2A80);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E88);
    }
  }
}

unint64_t sub_1D5CB2B98()
{
  result = qword_1EDF21AE8;
  if (!qword_1EDF21AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21AE8);
  }

  return result;
}

unint64_t sub_1D5CB2BEC()
{
  result = qword_1EDF21AF0;
  if (!qword_1EDF21AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21AF0);
  }

  return result;
}

unint64_t sub_1D5CB2C44()
{
  result = qword_1EDF21AD8;
  if (!qword_1EDF21AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21AD8);
  }

  return result;
}

unint64_t sub_1D5CB2C9C()
{
  result = qword_1EDF21AE0;
  if (!qword_1EDF21AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21AE0);
  }

  return result;
}

unint64_t sub_1D5CB2CF0()
{
  result = qword_1EDF21AF8;
  if (!qword_1EDF21AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21AF8);
  }

  return result;
}

uint64_t sub_1D5CB2D4C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x7470697263736564;
    if (a1 != 2)
    {
      v6 = 0x69747265706F7270;
    }

    if (a1)
    {
      v5 = 1701667182;
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
    v1 = 0x736D657469;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x726F66736E617274;
    if (a1 != 4)
    {
      v3 = 0x746E756F63;
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

uint64_t FormatCompilerProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_1D5C30060(0, &qword_1EDF44038, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatCompilerPrimitiveProperty);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v89 = &v70 - v5;
  sub_1D5C30060(0, &qword_1EDF44030, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatCompilerPrimitiveProperty);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v88 = &v70 - v8;
  sub_1D5CB3BF0();
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v86 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C34074(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  v83 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v84 = &v70 - v14;
  sub_1D5C34074(0, &qword_1EDF44010, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatCompilerPrimitiveProperty);
  v81 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v82 = &v70 - v17;
  sub_1D5C30060(0, &qword_1EDF44040, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatCompilerPrimitiveProperty);
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v80 = &v70 - v20;
  v77 = type metadata accessor for FormatCompilerEnumProperty(0);
  MEMORY[0x1EEE9AC00](v77, v21);
  v79 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B58AF0();
  v92 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v76 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF44028, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatCompilerPrimitiveProperty);
  v74 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v75 = &v70 - v28;
  sub_1D5C34074(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  v73 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v70 - v31;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v91 = v33;
  v94 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v70 - v35;
  v37 = type metadata accessor for FormatCompilerProperty(0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v41 = v95;
  sub_1D7264B0C();
  v42 = v41;
  if (v41)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v42);
    swift_willThrow();
  }

  else
  {
    v71 = v32;
    v72 = v40;
    v43 = a1[3];
    v95 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v43);
    v44 = sub_1D7264AFC();
    LOBYTE(v43) = Dictionary<>.errorOnUnknownKeys.getter(v44);

    v45 = v91;
    v46 = v36;
    if (v43)
    {
      v47 = sub_1D726433C();
      v48 = (v47 + 40);
      v49 = *(v47 + 16) + 1;
      while (--v49)
      {
        v50 = v48 + 2;
        v51 = *v48;
        v48 += 2;
        if (v51 >= 4)
        {
          v52 = *(v50 - 3);

          sub_1D5E2D970();
          v42 = swift_allocError();
          *v53 = v52;
          *(v53 + 8) = v51;
          *(v53 + 16) = &unk_1F5114838;
          *(v53 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v94 + 8))(v46, v45);
          a1 = v95;
          goto LABEL_9;
        }
      }
    }

    sub_1D5CB3C84();
    v96 = 0uLL;
    sub_1D726431C();
    if (v97 > 4u)
    {
      if (v97 <= 6u)
      {
        v61 = v94;
        a1 = v95;
        v55 = v90;
        v96 = xmmword_1D7279980;
        if (v97 == 5)
        {
          sub_1D6680C50();
          v62 = v82;
          sub_1D726431C();
          (*(v61 + 8))(v46, v45);
          v66 = v72;
          sub_1D6680CD4(v62, v72);
        }

        else
        {
          sub_1D5CB3E08();
          v69 = v84;
          sub_1D726431C();
          (*(v61 + 8))(v46, v45);
          v66 = v72;
          sub_1D5CB5494(v69, v72);
        }
      }

      else
      {
        v58 = v94;
        a1 = v95;
        v55 = v90;
        if (v97 == 7)
        {
          v96 = xmmword_1D7279980;
          sub_1D5B58B84(qword_1EDF1FC80, sub_1D5CB3BF0);
          v64 = v86;
          sub_1D726431C();
          (*(v58 + 8))(v46, v45);
          v66 = v72;
          sub_1D5C8F76C(v64, v72, sub_1D5CB3BF0);
        }

        else
        {
          v96 = xmmword_1D7279980;
          if (v97 == 8)
          {
            sub_1D6680B24();
            v59 = v88;
            sub_1D726431C();
            (*(v58 + 8))(v46, v45);
            v66 = v72;
            sub_1D6680BB4(v59, v72);
          }

          else
          {
            sub_1D66809F8();
            v67 = v89;
            sub_1D726431C();
            (*(v58 + 8))(v46, v45);
            v66 = v72;
            sub_1D6680A88(v67, v72);
          }
        }
      }
    }

    else if (v97 <= 1u)
    {
      v96 = xmmword_1D7279980;
      if (v97)
      {
        sub_1D6680E90();
        v68 = v75;
        sub_1D726431C();
        a1 = v95;
        (*(v94 + 8))(v46, v45);
        v66 = v72;
        sub_1D6680F20(v68, v72);
      }

      else
      {
        sub_1D5CB5524();
        v60 = v71;
        sub_1D726431C();
        a1 = v95;
        (*(v94 + 8))(v46, v45);
        v66 = v72;
        sub_1D5CB55A8(v60, v72);
      }

      v55 = v90;
    }

    else
    {
      v55 = v90;
      if (v97 == 2)
      {
        v96 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC8869C0, sub_1D5B58AF0);
        v63 = v76;
        sub_1D726431C();
        (*(v94 + 8))(v46, v45);
        v66 = v72;
        sub_1D5C8F76C(v63, v72, sub_1D5B58AF0);
        a1 = v95;
      }

      else
      {
        v56 = v94;
        v96 = xmmword_1D7279980;
        if (v97 == 3)
        {
          sub_1D5B58B84(&qword_1EDF235C8, type metadata accessor for FormatCompilerEnumProperty);
          v57 = v79;
          sub_1D726431C();
          a1 = v95;
          (*(v56 + 8))(v46, v45);
          v66 = v72;
          sub_1D5C8F76C(v57, v72, type metadata accessor for FormatCompilerEnumProperty);
        }

        else
        {
          sub_1D6680D64();
          v65 = v80;
          sub_1D726431C();
          a1 = v95;
          (*(v56 + 8))(v46, v45);
          v66 = v72;
          sub_1D6680DF4(v65, v72);
        }
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5C8F76C(v66, v55, type metadata accessor for FormatCompilerProperty);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CB3BF0()
{
  if (!qword_1EDF44050[0])
  {
    sub_1D72585BC();
    sub_1D5B58B84(&qword_1EDF45B80, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for FormatCompilerPrimitiveProperty();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF44050);
    }
  }
}

unint64_t sub_1D5CB3C84()
{
  result = qword_1EDF28990;
  if (!qword_1EDF28990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28990);
  }

  return result;
}

unint64_t sub_1D5CB3D38()
{
  result = qword_1EDF28998;
  if (!qword_1EDF28998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28998);
  }

  return result;
}

uint64_t sub_1D5CB3D8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CB3DBC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CB3DBC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CB3E08()
{
  result = qword_1EDF1FC60;
  if (!qword_1EDF1FC60)
  {
    sub_1D5C34074(255, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FC60);
  }

  return result;
}

void sub_1D5CB3E8C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v31 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  v12 = *(sub_1D725B76C() - 8);
  v13 = *(v12 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  v17 = *(v12 + 64);
  if (v10 <= v14)
  {
    v18 = v14;
  }

  else
  {
    v18 = v10;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v9)
  {
    v20 = *(v8 + 64);
  }

  else
  {
    v20 = *(v8 + 64) + 1;
  }

  if (!v13)
  {
    ++v17;
  }

  v21 = ((v16 + 16 + ((((v15 + 49) & ~v15) + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v16) + v17;
  if (a3 <= v19)
  {
    goto LABEL_29;
  }

  if (v21 <= 3)
  {
    v22 = ((a3 - v19 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v22))
    {
      v11 = 4;
      if (v19 >= a2)
      {
        goto LABEL_39;
      }

      goto LABEL_30;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v22 >= 2)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

LABEL_29:
    if (v19 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v11 = 1;
  if (v19 >= a2)
  {
LABEL_39:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *&a1[v21] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_46;
      }

      *&a1[v21] = 0;
    }

    else if (v11)
    {
      a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    if (!a2)
    {
      return;
    }

LABEL_46:
    if ((v18 & 0x80000000) != 0)
    {
      v27 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 17) & ~v15;
      if (v10 == v19)
      {
        if (v9 >= 2)
        {
          v28 = *(v31 + 56);

          v28(v27, a2 + 1, v9, v7);
        }
      }

      else
      {
        v29 = *(v12 + 56);
        v30 = (v16 + 16 + ((v27 + v20) & 0xFFFFFFFFFFFFFFF8)) & ~v16;

        v29(v30, a2 + 1);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

LABEL_30:
  v24 = ~v19 + a2;
  if (v21 >= 4)
  {
    bzero(a1, v21);
    *a1 = v24;
    v25 = 1;
    if (v11 > 1)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v25 = (v24 >> (8 * v21)) + 1;
  if (!v21)
  {
LABEL_61:
    if (v11 > 1)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v26 = v24 & ~(-1 << (8 * v21));
  bzero(a1, v21);
  if (v21 == 3)
  {
    *a1 = v26;
    a1[2] = BYTE2(v26);
    goto LABEL_61;
  }

  if (v21 == 2)
  {
    *a1 = v26;
    if (v11 > 1)
    {
LABEL_65:
      if (v11 == 2)
      {
        *&a1[v21] = v25;
      }

      else
      {
        *&a1[v21] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v11 > 1)
    {
      goto LABEL_65;
    }
  }

LABEL_62:
  if (v11)
  {
    a1[v21] = v25;
  }
}

uint64_t sub_1D5CB4224(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1D725B76C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (!v7)
  {
    ++v15;
  }

  v16 = *(v6 + 80);
  v17 = *(v10 + 80);
  if (v11)
  {
    v18 = *(*(v9 - 8) + 64);
  }

  else
  {
    v18 = *(*(v9 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v17 + 16;
  if (a2 <= v14)
  {
    goto LABEL_40;
  }

  v20 = v18 + ((v19 + ((((v16 + 49) & ~v16) + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v23 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v23 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    if (v23 < 2)
    {
LABEL_40:
      if ((v13 & 0x80000000) == 0)
      {
        v27 = *(a1 + 1);
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }

      v29 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v16 + 17) & ~v16;
      if (v8 == v14)
      {
        if (v7 < 2)
        {
          return 0;
        }

        v30 = (*(v6 + 48))(v29, v7, v5);
      }

      else
      {
        v30 = (*(v10 + 48))((v19 + ((v29 + v15) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
      }

      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_40;
  }

LABEL_27:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 <= 3)
    {
      v25 = v20;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v14 + (v26 | v24) + 1;
}

uint64_t FormatCompilerPrimitiveProperty.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v66 = &v57 - v12;
  v75 = sub_1D726393C();
  v67 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v13);
  v63 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v69 = a3;
  v70 = &v57 - v17;
  v68 = a2;
  v18 = _s10CodingKeysOMa_182();
  WitnessTable = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  *&v77 = v18;
  *(&v77 + 1) = WitnessTable;
  v72 = v20;
  v73 = WitnessTable;
  v78 = v20;
  v79 = v21;
  v71 = v21;
  v22 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v23 = sub_1D726435C();
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v57 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = v80;
  sub_1D7264B0C();
  v28 = v27;
  if (v27)
  {
LABEL_2:
    v29 = a1;
    sub_1D61E4FBC(a1, v28);
    swift_willThrow();
  }

  else
  {
    v62 = v18;
    v80 = v26;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v31 = sub_1D7264AFC();
    v32 = Dictionary<>.errorOnUnknownKeys.getter(v31);

    v29 = a1;
    if (v32)
    {
      v33 = 0;
      v29 = (sub_1D726433C() + 48);
      while (1)
      {
        if (v33 == sub_1D726279C())
        {

          v29 = a1;
          goto LABEL_12;
        }

        v34 = sub_1D726277C();
        sub_1D726271C();
        if ((v34 & 1) == 0)
        {
          break;
        }

        v35 = *v29;
        v77 = *(v29 - 1);
        LOBYTE(v78) = v35;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_14;
        }

        v36 = sub_1D6AFC82C(v22);
        ++v33;
        v29 += 24;
        if (v37)
        {
          v38 = v36;
          v39 = v37;

          v40 = sub_1D6AFC690(v62, v73, v72, v71);
          sub_1D5E2D970();
          v28 = swift_allocError();
          *v41 = v38;
          *(v41 + 8) = v39;
          *(v41 + 16) = v40;
          *(v41 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v74 + 8))(v80, v23);
          goto LABEL_2;
        }
      }

      sub_1D7263DBC();
      __break(1u);
LABEL_14:
      __break(1u);
    }

    else
    {
LABEL_12:
      v77 = 0uLL;
      LOBYTE(v78) = 0;
      v42 = sub_1D72642BC();
      v44 = v43;
      v77 = xmmword_1D728CF30;
      LOBYTE(v78) = 0;
      v45 = sub_1D72642BC();
      v22 = v74;
      v73 = v45;
      v47 = v46;
      v77 = xmmword_1D7297410;
      LOBYTE(v78) = 0;
      sub_1D5C4E620(&type metadata for FormatCodingEmptyDescriptiveStrategy, &protocol witness table for FormatCodingEmptyDescriptiveStrategy, v76);
      v71 = v76[0];
      v72 = v76[1];
      v77 = xmmword_1D72BAA60;
      LOBYTE(v78) = 0;
      sub_1D5C4E620(&type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy, v76);
      v60 = v42;
      v61 = v47;
      v62 = v44;
      v59 = LOBYTE(v76[0]);
      v77 = xmmword_1D72BAA70;
      LOBYTE(v78) = 0;
      sub_1D726427C();
      v77 = xmmword_1D72BAA80;
      LOBYTE(v78) = 0;
      sub_1D5C4E620(&type metadata for FormatCodingFalseStrategy, &protocol witness table for FormatCodingFalseStrategy, v76);
    }

    v48 = v23;
    v58 = LOBYTE(v76[0]);
    sub_1D5C30060(0, &qword_1EDF1AD30, sub_1D5B56F50, &type metadata for FormatCompilerFlag, MEMORY[0x1E69E64E8]);
    sub_1D5B56DC4();
    v50 = v49;
    v77 = xmmword_1D72BAA90;
    LOBYTE(v78) = 0;
    v51 = sub_1D5B58B84(&qword_1EDF21380, sub_1D5B56DC4);
    sub_1D5C4E620(v50, v51, v76);
    v52 = v76[0];
    sub_1D725B76C();
    v77 = xmmword_1D72BAAA0;
    LOBYTE(v78) = 0;
    sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
    v53 = v66;
    v54 = v80;
    sub_1D726427C();
    (*(v22 + 8))(v54, v48);
    v55 = v63;
    (*(v67 + 32))(v63, v70, v75);
    v56 = v64;
    sub_1D5C4E944(v53, v64, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    sub_1D5CB5394(v60, v62, v73, v61, v71, v72, v59, v55, v65, v58, v52, v56);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1D5CB4F80(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0x7470697263736564;
    if (a1 != 2)
    {
      v6 = 0x6465726975716572;
    }

    if (a1)
    {
      v5 = 1701667182;
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
    v1 = 0x72656C69706D6F63;
    v2 = 0xD000000000000010;
    if (a1 != 7)
    {
      v2 = 1885433183;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746C7561666564;
    if (a1 != 4)
    {
      v3 = 0x7461636572706564;
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

uint64_t static FormatCodingStrategy.decode<A>(from:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v12[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v6);
  v8 = v12 - v7;
  sub_1D726435C();
  swift_getAssociatedConformanceWitness();
  v9 = v12[3];
  result = sub_1D726431C();
  if (!v9)
  {
    v11 = v12[0];
    (*(a2 + 88))(v8, a1, a2);
    return (*(v11 + 8))(v8, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1D5CB5250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1D5CB52A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5CB52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = static FormatCodingEmptySetStrategy.defaultValue.getter(*(a1 + 16), a2, a3, a4, *(a1 + 48));
  *a5 = result;
  return result;
}

uint64_t _s8NewsFeed28FormatCodingEmptySetStrategyV12defaultValueShyxGvgZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D726275C();
  if (sub_1D726279C())
  {
    v8 = sub_1D6865CCC(v7, a1, a5);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  return v8;
}

uint64_t sub_1D5CB5394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v14 = type metadata accessor for FormatCompilerPrimitiveProperty();
  v15 = v14[12];
  v16 = sub_1D726393C();
  (*(*(v16 - 8) + 32))(a9 + v15, a8, v16);
  *(a9 + v14[13]) = a10;
  *(a9 + v14[14]) = a11;
  return sub_1D5C4EA2C(a12, a9 + v14[15], &qword_1EDF45AD0, MEMORY[0x1E69D6A58], sub_1D5B4C02C);
}

uint64_t sub_1D5CB5494(uint64_t a1, uint64_t a2)
{
  sub_1D5C34074(0, &qword_1EDF44020, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5CB5524()
{
  result = qword_1EDF1FC58;
  if (!qword_1EDF1FC58)
  {
    sub_1D5C34074(255, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1FC58);
  }

  return result;
}

uint64_t sub_1D5CB55A8(uint64_t a1, uint64_t a2)
{
  sub_1D5C34074(0, &qword_1EDF44018, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatCompilerPrimitiveProperty);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D5CB564C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5B590A0(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1D5B590A0(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1D5CB57BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B590A0(0, qword_1EDF43D48, type metadata accessor for FormatCompilerSlotDefinitionItemSetAuxiliary);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D5B590A0(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D5CB5918(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5AD98();
    sub_1D5FD3778(a2, type metadata accessor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB59A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5AD98();
    sub_1D5CB6B48(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5A24(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5AB88(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D5B4CE7C(a2, type metadata accessor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5AE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5D0FC(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D5CB6B8C(a2, type metadata accessor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5BAC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D703BE74(255, &qword_1EDF3C920, type metadata accessor for FormatOption);
    sub_1D703C2C0(a2, type metadata accessor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5C58(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5DF98(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    sub_1D7253FA0(a2, type metadata accessor for FormatOption);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5D1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B81B04();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5D7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C34074(255, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5E08(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5AE40(255, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB5E94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B567C8(255, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5CB5F20()
{
  result = qword_1EDF04FB0;
  if (!qword_1EDF04FB0)
  {
    sub_1D5B49714(255, &qword_1EDF1B2A0);
    sub_1D5CB5FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FB0);
  }

  return result;
}

unint64_t sub_1D5CB5FA8()
{
  result = qword_1EDF10CA8;
  if (!qword_1EDF10CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CA8);
  }

  return result;
}

uint64_t FormatContentSlot.Resolved.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5CB665C(0, &qword_1EDF03A68, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB66D8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v31 = a2;
  v14 = v11;
  sub_1D5B5D0FC(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  LOBYTE(v32) = 1;
  sub_1D5CB5AE8(&qword_1EDF1B350, &unk_1EDF45930);
  sub_1D726431C();
  v30 = v36[0];
  sub_1D5B81B04();
  LOBYTE(v32) = 2;
  sub_1D5CB5D1C(&qword_1EDF3C7D0);
  sub_1D726431C();
  v29 = v36[0];
  sub_1D5B5D0FC(0, &qword_1EDF04C68, type metadata accessor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E62F8]);
  LOBYTE(v32) = 3;
  sub_1D5CB6A84(&qword_1EDF04C58, &qword_1EDF0B020);
  sub_1D726431C();
  v28 = v36[0];
  sub_1D5CB6BD4();
  LOBYTE(v32) = 4;
  sub_1D5CB6C3C();
  sub_1D726431C();
  v27 = v36[0];
  sub_1D5CB6CDC();
  LOBYTE(v32) = 5;
  sub_1D5CB6D74();
  sub_1D726431C();
  v26 = v36[0];
  sub_1D5CB6E2C();
  v37 = 6;
  sub_1D5CB6E8C(&unk_1EDF05728, sub_1D5CB6F04);
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v25 = v38;
  *&v32 = v14;
  *(&v32 + 1) = v13;
  v16 = v29;
  v15 = v30;
  *&v33 = v30;
  *(&v33 + 1) = v29;
  v17 = v28;
  v18 = v27;
  *&v34 = v28;
  *(&v34 + 1) = v27;
  v19 = v26;
  *&v35 = v26;
  *(&v35 + 1) = v38;
  v20 = v33;
  v21 = v31;
  *v31 = v32;
  v21[1] = v20;
  v22 = v35;
  v21[2] = v34;
  v21[3] = v22;
  sub_1D5CB6F58(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v14;
  v36[1] = v13;
  v36[2] = v15;
  v36[3] = v16;
  v36[4] = v17;
  v36[5] = v18;
  v36[6] = v19;
  v36[7] = v25;
  return sub_1D5CB6FB4(v36);
}

void sub_1D5CB665C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5CB66D8();
    v7 = a3(a1, &_s8ResolvedV10CodingKeysON_3, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5CB66D8()
{
  result = qword_1EDF10CD8;
  if (!qword_1EDF10CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CD8);
  }

  return result;
}

unint64_t sub_1D5CB6730()
{
  result = qword_1EDF10CC0;
  if (!qword_1EDF10CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CC0);
  }

  return result;
}

unint64_t sub_1D5CB6788()
{
  result = qword_1EDF10CC8;
  if (!qword_1EDF10CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10CC8);
  }

  return result;
}

uint64_t sub_1D5CB67DC()
{
  v1 = *v0;
  v2 = 1953459315;
  v3 = 0x6974704F6D657469;
  if (v1 != 5)
  {
    v3 = 0x697875416D657469;
  }

  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0x656C65536D657469;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x736E6F6974706FLL;
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

uint64_t type metadata accessor for FormatContentSlotItemObject.Resolved()
{
  result = qword_1EDF22800;
  if (!qword_1EDF22800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5CB691C()
{
  result = sub_1D5B5534C(319, &qword_1EDF3C720);
  if (v1 <= 0x3F)
  {
    result = sub_1D5B5A498(319, &qword_1EDF3C6C0);
    if (v2 <= 0x3F)
    {
      result = sub_1D5B5534C(319, &qword_1EDF3C770);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for FormatWebEmbed.Resolved();
        if (v4 <= 0x3F)
        {
          result = sub_1D5B5534C(319, &qword_1EDF3C750);
          if (v5 <= 0x3F)
          {
            result = sub_1D5B5534C(319, &qword_1EDF3C700);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for PuzzleStatistic();
              if (v7 <= 0x3F)
              {
                result = sub_1D5B5A498(319, &qword_1EDF3C6B0);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for FormatCustomItem.Resolved();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5CB6A84(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5D0FC(255, &qword_1EDF04C68, type metadata accessor for FormatContentSlotItemObject.Resolved, MEMORY[0x1E69E62F8]);
    sub_1D5CB6B8C(a2, type metadata accessor for FormatContentSlotItemObject.Resolved);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB6B48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatOption();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CB6B8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5CB6BD4()
{
  if (!qword_1EDF1B820)
  {
    sub_1D5B81B04();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B820);
    }
  }
}

unint64_t sub_1D5CB6C3C()
{
  result = qword_1EDF05698;
  if (!qword_1EDF05698)
  {
    sub_1D5CB6BD4();
    sub_1D5CB5D1C(&qword_1EDF3C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05698);
  }

  return result;
}

void sub_1D5CB6CDC()
{
  if (!qword_1EDF05700)
  {
    sub_1D5B5D0FC(255, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF05700);
    }
  }
}

unint64_t sub_1D5CB6D74()
{
  result = qword_1EDF056F0;
  if (!qword_1EDF056F0)
  {
    sub_1D5CB6CDC();
    sub_1D5CB5AE8(&qword_1EDF1B350, &unk_1EDF45930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF056F0);
  }

  return result;
}

void sub_1D5CB6E2C()
{
  if (!qword_1EDF1B8D0)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B8D0);
    }
  }
}

uint64_t sub_1D5CB6E8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5CB6E2C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5CB6F04()
{
  result = qword_1EDF09CC0;
  if (!qword_1EDF09CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CC0);
  }

  return result;
}

unint64_t sub_1D5CB7008()
{
  result = qword_1EDF04BA0;
  if (!qword_1EDF04BA0)
  {
    sub_1D5B49714(255, &qword_1EDF04BB8);
    sub_1D5CB7090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04BA0);
  }

  return result;
}

unint64_t sub_1D5CB7090()
{
  result = qword_1EDF0A988;
  if (!qword_1EDF0A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A988);
  }

  return result;
}

unint64_t sub_1D5CB70E4()
{
  result = qword_1EDF3C870;
  if (!qword_1EDF3C870)
  {
    sub_1D5B5D048(255, &qword_1EDF3C880, &type metadata for FormatContentSubgroupFilter, MEMORY[0x1E69E62F8]);
    sub_1D5B59EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C870);
  }

  return result;
}

unint64_t sub_1D5CB7230()
{
  result = qword_1EDF2B670;
  if (!qword_1EDF2B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B670);
  }

  return result;
}

uint64_t FormatBindExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BD58, sub_1D5C50AA0, sub_1D5C50AF4);
  v45 = v5;
  *&v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v39 - v7;
  sub_1D5CB7844();
  v10 = v9;
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB78D8();
  sub_1D5B58B84(&qword_1EDF25418, sub_1D5CB78D8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v42 = v8;
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v16 = v45;
  v17 = v46;
  if (v15)
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

      v28 = sub_1D661939C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v47 + 8))(v13, v10);
      a1 = v43;
      goto LABEL_10;
    }

LABEL_7:
  }

  v21 = sub_1D5C31D18(v13, 0, 0, 0, sub_1D5CB7844);
  v23 = v22;
  v24 = v21;
  v25 = sub_1D5C95A1C(v13, 1, 0, 0, sub_1D5CB7B94, sub_1D5CB7844, &qword_1EDF3BE80, sub_1D5CB7B94);
  v40 = v24;
  v32 = v25;
  v41 = xmmword_1D7297410;
  v50 = xmmword_1D7297410;
  v51 = 0;
  v33 = sub_1D726434C();
  if (v33)
  {
    v48 = v41;
    v49 = 0;
    sub_1D726431C();
    v34 = v44;
    *&v41 = v52;
  }

  else
  {
    *&v41 = 1;
    v34 = v44;
  }

  v44 = xmmword_1D72BAA60;
  v50 = xmmword_1D72BAA60;
  v51 = 0;
  if (sub_1D726434C())
  {
    v39 = v23;
    v48 = v44;
    v49 = 0;
    sub_1D5CD0AB8();
    v35 = v42;
    sub_1D726431C();
    v36 = sub_1D725A74C();
    (*(v34 + 8))(v35, v16);
    v37 = v47;
    v23 = v39;
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v47;
  }

  (*(v37 + 8))(v13, v10);
  v38 = v41;
  *v17 = v40;
  v17[1] = v23;
  v17[2] = v32;
  v17[3] = v38;
  v17[4] = v36;
  v30 = v43;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

void sub_1D5CB7844()
{
  if (!qword_1EDF1A118)
  {
    sub_1D5CB78D8();
    sub_1D5B58B84(&qword_1EDF25418, sub_1D5CB78D8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A118);
    }
  }
}

void sub_1D5CB78D8()
{
  if (!qword_1EDF25410)
  {
    sub_1D5CB795C();
    sub_1D5CB79B0();
    sub_1D5CB7AB4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25410);
    }
  }
}

unint64_t sub_1D5CB795C()
{
  result = qword_1EDF2B688;
  if (!qword_1EDF2B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B688);
  }

  return result;
}

unint64_t sub_1D5CB79B0()
{
  result = qword_1EDF2B690;
  if (!qword_1EDF2B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B690);
  }

  return result;
}

unint64_t sub_1D5CB7A08()
{
  result = qword_1EDF2B678;
  if (!qword_1EDF2B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B678);
  }

  return result;
}

unint64_t sub_1D5CB7A60()
{
  result = qword_1EDF2B680;
  if (!qword_1EDF2B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B680);
  }

  return result;
}

unint64_t sub_1D5CB7AB4()
{
  result = qword_1EDF2B698;
  if (!qword_1EDF2B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B698);
  }

  return result;
}

uint64_t sub_1D5CB7B08()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x746E756F63;
  v4 = 0x737469617274;
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
    v2 = 0x73646E696BLL;
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

void sub_1D5CB7B94()
{
  if (!qword_1EDF3BE78)
  {
    sub_1D5B4CCC0();
    sub_1D5B4C410();
    sub_1D5B4B090();
    v0 = sub_1D725A75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BE78);
    }
  }
}

uint64_t sub_1D5CB7C18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFEF)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483632;
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF0)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 15;
    }
  }

  return result;
}

uint64_t sub_1D5CB7C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF0 && *(a1 + 16))
  {
    return (*a1 + 2147483632);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 15;
  if (v4 >= 0x11)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t FormatItemKind.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5CB85B4(0, &qword_1EDF19C58, sub_1D5CB861C, &type metadata for FormatItemKind.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  v11 = v2;
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v12 = sub_1D72646FC();
    v15 = v12;
    v16 = v13;
    v17 = v12 == 0x656C6369747261 && v13 == 0xE700000000000000;
    if (v17 || (sub_1D72646CC() & 1) != 0 || v15 == 0x656E696C64616568 && v16 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v19 = 0;
    }

    else if (v15 == 0x6575737369 && v16 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v19 = 1;
    }

    else if (v15 == 0x6465626D45626577 && v16 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v19 = 2;
    }

    else if (v15 == 0x6172546F69647561 && v16 == 0xEA00000000006B63 || (sub_1D72646CC() & 1) != 0)
    {

      v19 = 3;
    }

    else if (v15 == 6775156 && v16 == 0xE300000000000000)
    {

      v19 = 4;
    }

    else
    {
      v32 = a2;
      if (sub_1D72646CC())
      {

        v19 = 4;
      }

      else if (v15 == 0x65726F6373 && v16 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 5;
      }

      else if (v15 == 0x676E69646E617473 && v16 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 6;
      }

      else if (v15 == 0x74656B63617262 && v16 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 7;
      }

      else if (v15 == 0x65726F6353786F62 && v16 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 8;
      }

      else if (v15 == 0x726F6353656E696CLL && v16 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 9;
      }

      else if (v15 == 0x65527972756A6E69 && v16 == 0xEC00000074726F70 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 10;
      }

      else if (v15 == 0x6579616C5079656BLL && v16 == 0xE900000000000072 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 11;
      }

      else if (v15 == 0x656C7A7A7570 && v16 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 12;
      }

      else if (v15 == 0x7954656C7A7A7570 && v16 == 0xEA00000000006570 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 13;
      }

      else if (v15 == 0x7453656C7A7A7570 && v16 == 0xEF63697473697461 || (sub_1D72646CC() & 1) != 0)
      {

        v19 = 14;
      }

      else
      {
        if ((v15 != 0x657069636572 || v16 != 0xE600000000000000) && (sub_1D72646CC() & 1) == 0)
        {
          v28 = sub_1D7263E3C();
          v27 = swift_allocError();
          v21 = v20;
          v25 = v20;
          sub_1D5EEA608();
          v26 = *(v22 + 48);
          *v21 = MEMORY[0x1E69E6158];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_1D7264ACC();
          v29 = 0;
          v30 = 0xE000000000000000;
          sub_1D7263D4C();

          v29 = 0xD000000000000017;
          v30 = 0x80000001D73C7BF0;
          MEMORY[0x1DA6F9910](v15, v16);
          v11 = v27;

          v23 = v25;
          sub_1D7263DFC();
          (*(*(v28 - 8) + 104))(v23, *MEMORY[0x1E69E6B08]);
          swift_willThrow();
          __swift_destroy_boxed_opaque_existential_1(v31);
          goto LABEL_4;
        }

        v19 = 15;
      }

      a2 = v32;
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
    v18 = 0;
    goto LABEL_15;
  }

  v32 = a2;
LABEL_4:
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CB861C();
  sub_1D7264B0C();
  LOBYTE(v31[0]) = 0;
  sub_1D6076F4C();
  sub_1D726431C();
  LOBYTE(v29) = 1;
  sub_1D6076FA0();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);

  v18 = v31[0];
  v19 = v31[1];
  a2 = v32;
LABEL_15:
  *a2 = v18;
  a2[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CB85B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D5CB861C()
{
  result = qword_1EDF326D8[0];
  if (!qword_1EDF326D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF326D8);
  }

  return result;
}

unint64_t sub_1D5CB8674()
{
  result = qword_1EDF326C8;
  if (!qword_1EDF326C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326C8);
  }

  return result;
}

unint64_t sub_1D5CB86CC()
{
  result = qword_1EDF326D0;
  if (!qword_1EDF326D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF326D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed14FormatItemKindO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5CB8738()
{
  sub_1D7264A0C();
  FormatItemKind.hash(into:)();
  return sub_1D7264A5C();
}

uint64_t FormatItemKind.hash(into:)()
{
  switch(*(v0 + 8))
  {
    case 0:
      v1 = 0;
      goto LABEL_18;
    case 1:
      v1 = 1;
      goto LABEL_18;
    case 2:
      v1 = 2;
      goto LABEL_18;
    case 3:
      v1 = 3;
      goto LABEL_18;
    case 4:
      v1 = 4;
      goto LABEL_18;
    case 5:
      v1 = 5;
      goto LABEL_18;
    case 6:
      v1 = 6;
      goto LABEL_18;
    case 7:
      v1 = 7;
      goto LABEL_18;
    case 8:
      v1 = 8;
      goto LABEL_18;
    case 9:
      v1 = 9;
      goto LABEL_18;
    case 0xALL:
      v1 = 10;
      goto LABEL_18;
    case 0xBLL:
      v1 = 11;
      goto LABEL_18;
    case 0xCLL:
      v1 = 12;
      goto LABEL_18;
    case 0xDLL:
      v1 = 13;
      goto LABEL_18;
    case 0xELL:
      v1 = 14;
      goto LABEL_18;
    case 0xFLL:
      v1 = 15;
LABEL_18:
      result = MEMORY[0x1DA6FC0B0](v1);
      break;
    default:
      MEMORY[0x1DA6FC0B0](16);

      result = sub_1D72621EC();
      break;
  }

  return result;
}

void sub_1D5CB88F0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D5CB8978();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5CB8978()
{
  if (!qword_1EDF45168)
  {
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45168);
    }
  }
}

unint64_t sub_1D5CB89D0()
{
  result = qword_1EDF2FE28;
  if (!qword_1EDF2FE28)
  {
    sub_1D5C34074(255, &qword_1EDF2FE20, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatSizeColumn);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FE28);
  }

  return result;
}

unsigned int *sub_1D5CB8A54(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t FormatSizeColumn.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v50 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v52 = &v43 - v7;
  v54 = v9;
  v55 = v8;
  v10 = _s10CodingKeysOMa_69();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v57 = v10;
  *(&v57 + 1) = WitnessTable;
  v51 = WitnessTable;
  v49 = v12;
  v58 = v12;
  v59 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v43 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v56;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    v21 = a1;
    goto LABEL_14;
  }

  v44 = v13;
  v45 = 0;
  v46 = v18;
  v56 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v21 = a1;
  v24 = v55;
  if ((v23 & 1) == 0)
  {
LABEL_11:
    v57 = 0uLL;
    LOBYTE(v58) = 0;
    v37 = v52;
    v38 = v56;
    v40 = v45;
    v39 = v46;
    sub_1D726431C();
    if (!v40)
    {
      v57 = xmmword_1D728CF30;
      LOBYTE(v58) = 0;
      sub_1D5C4E620(&type metadata for FormatCodingTrueStrategy, &protocol witness table for FormatCodingTrueStrategy, &v60);
      (*(v53 + 8))(v39, v38);
      v41 = v60;
      v42 = v47;
      (*(v50 + 32))(v47, v37, v24);
      sub_1D5CB929C(v42, v41, v24, v48);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    (*(v53 + 8))(v39, v38);
    v20 = v40;
LABEL_14:
    sub_1D61E4FBC(v21, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v25 = 0;
  v26 = (sub_1D726433C() + 48);
  v27 = v51;
  while (1)
  {
    if (v25 == sub_1D726279C())
    {

      v24 = v55;
      goto LABEL_11;
    }

    v28 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v28 & 1) == 0)
    {
      break;
    }

    v30 = *v26;
    v57 = *(v26 - 1);
    LOBYTE(v58) = v30;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_17;
    }

    v31 = sub_1D6AFC82C(v14);
    ++v25;
    v26 += 24;
    if (v32)
    {
      v33 = v31;
      v34 = v32;

      v35 = sub_1D6AFC690(v10, v27, v49, v44);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v36 = v33;
      *(v36 + 8) = v34;
      *(v36 + 16) = v35;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v53 + 8))(v46, v56);
      goto LABEL_14;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D5CB923C(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x69724F6E67696C61;
  }

  return 1885433183;
}

uint64_t sub_1D5CB929C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for FormatSizeColumn();
  *(a4 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_1D5CB9318()
{
  result = qword_1EDF24A40;
  if (!qword_1EDF24A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24A40);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatContentSizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 2)
  {
    v4 = 0;
  }

  if (a2 > 1)
  {
    v5 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = -32;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FormatContentSizeCategory.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  sub_1D5C30198(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  v10 = v2;
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(&v31, v32);
    v11 = sub_1D72646FC();
    v23 = v11;
    v24 = v12;
    v25 = v11 == 7958113 && v12 == 0xE300000000000000;
    if (v25 || (sub_1D72646CC() & 1) != 0)
    {

      v26 = -64;
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(&v31);
      goto LABEL_15;
    }

    if (v23 == 1480683374 && v24 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v26 = -63;
      goto LABEL_14;
    }

    if (v23 == 0x5841796C6E6FLL && v24 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v26 = -62;
      goto LABEL_14;
    }

    sub_1D5E2D970();
    v10 = swift_allocError();
    *v28 = v23;
    v28[1] = v24;
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = 0x7000000000000000;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(&v31);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
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
        v21 = swift_allocError();
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = &unk_1F5118970;
        *(v22 + 24) = xmmword_1D72874E0;
        swift_willThrow();

        (*(v6 + 8))(v9, v5);
        sub_1D61E4FBC(a1, v21);
        swift_willThrow();

        return __swift_destroy_boxed_opaque_existential_1(a1);
      }
    }
  }

  sub_1D6C27F94();
  v31 = 0uLL;
  sub_1D726431C();
  switch(v33)
  {
    case 1:
      (*(v6 + 8))(v9, v5);

      v26 = -63;
      break;
    case 2:
      (*(v6 + 8))(v9, v5);

      v26 = -62;
      break;
    case 3:
    case 9:
      sub_1D5C30198(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
      v31 = xmmword_1D7279980;
      sub_1D6C27FE8();
      sub_1D726431C();
      (*(v6 + 8))(v9, v5);

      v26 = v33;
      break;
    case 4:
    case 10:
      sub_1D5C30198(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
      v31 = xmmword_1D7279980;
      sub_1D6C27FE8();
      sub_1D726431C();
      (*(v6 + 8))(v9, v5);

      v26 = v33 | 0x20;
      break;
    case 5:
    case 11:
      sub_1D5C30198(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
      v31 = xmmword_1D7279980;
      sub_1D6C27FE8();
      sub_1D726431C();
      (*(v6 + 8))(v9, v5);

      v26 = v33 | 0x40;
      break;
    case 6:
    case 12:
      sub_1D5C30198(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
      v31 = xmmword_1D7279980;
      sub_1D6C27FE8();
      sub_1D726431C();
      (*(v6 + 8))(v9, v5);

      v26 = v33 | 0x60;
      break;
    case 7:
    case 13:
      sub_1D5C30198(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
      v31 = xmmword_1D7279980;
      sub_1D6C27FE8();
      sub_1D726431C();
      (*(v6 + 8))(v9, v5);

      v26 = v33 | 0x80;
      break;
    case 8:
    case 14:
      sub_1D5C30198(0, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
      v31 = xmmword_1D7279980;
      sub_1D6C27FE8();
      sub_1D726431C();
      (*(v6 + 8))(v9, v5);

      v26 = v33 | 0xA0;
      break;
    default:
      (*(v6 + 8))(v9, v5);

      v26 = -64;
      break;
  }

LABEL_15:
  *v30 = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_42;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_35;
      }

      v8 = 1;
      sub_1D5CBA0FC(*a1, 1uLL);
      sub_1D5CBA0FC(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_42;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_42;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_42;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_42;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_42;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_42;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_42;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_42;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_42;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_42;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_42;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_42;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_42;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_35;
      }

      sub_1D5CBA0FC(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_42;
    default:
      if (v5 >= 0x10)
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1D72646CC();
          sub_1D5CBA110(v4, v5);
          sub_1D5CBA110(v2, v3);
          sub_1D5CBA0FC(v2, v3);
          sub_1D5CBA0FC(v4, v5);
          return v11 & 1;
        }

        sub_1D5CBA110(v9, v3);
        sub_1D5CBA110(v2, v3);
        sub_1D5CBA0FC(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_42:
        sub_1D5CBA0FC(v6, v7);
        return 1;
      }

      else
      {
LABEL_35:
        sub_1D5CBA110(*a2, *(a2 + 8));
        sub_1D5CBA110(v2, v3);
        sub_1D5CBA0FC(v2, v3);
        sub_1D5CBA0FC(v4, v5);
        return 0;
      }
  }
}

uint64_t sub_1D5CBA0FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
  }

  return result;
}

uint64_t sub_1D5CBA110(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
  }

  return result;
}

unint64_t sub_1D5CBA124()
{
  result = qword_1EDF2CA28;
  if (!qword_1EDF2CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CA28);
  }

  return result;
}

void sub_1D5CBA178()
{
  if (!qword_1EDF254F0)
  {
    sub_1D5CBA5D0();
    sub_1D5CBA624();
    sub_1D5CBA728();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF254F0);
    }
  }
}

uint64_t FormatColumnRowSpan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5CBA524();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CBA178();
  sub_1D5B58B84(&qword_1EDF254F8, sub_1D5CBA178);
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

      v20 = sub_1D6627E68(1937207154, 0xE400000000000000, 0x6F69746172, 0xE500000000000000);
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

  v27 = 0uLL;
  v28 = 0;
  v17 = sub_1D72642FC();
  v27 = xmmword_1D728CF30;
  v28 = 0;
  sub_1D5CBA7C4();
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v25;
  v24 = v26;
  *v13 = v17;
  *(v13 + 8) = v23;
  *(v13 + 16) = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CBA524()
{
  if (!qword_1EDF1A188)
  {
    sub_1D5CBA178();
    sub_1D5B58B84(&qword_1EDF254F8, sub_1D5CBA178);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A188);
    }
  }
}

unint64_t sub_1D5CBA5D0()
{
  result = qword_1EDF2CA40;
  if (!qword_1EDF2CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CA40);
  }

  return result;
}

unint64_t sub_1D5CBA624()
{
  result = qword_1EDF2CA48;
  if (!qword_1EDF2CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CA48);
  }

  return result;
}

unint64_t sub_1D5CBA67C()
{
  result = qword_1EDF2CA30;
  if (!qword_1EDF2CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CA30);
  }

  return result;
}

unint64_t sub_1D5CBA6D4()
{
  result = qword_1EDF2CA38;
  if (!qword_1EDF2CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CA38);
  }

  return result;
}

unint64_t sub_1D5CBA728()
{
  result = qword_1EDF2CA50;
  if (!qword_1EDF2CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CA50);
  }

  return result;
}

uint64_t sub_1D5CBA77C()
{
  v1 = 0x6F69746172;
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
    return 1937207154;
  }
}

unint64_t sub_1D5CBA7C4()
{
  result = qword_1EDF34108;
  if (!qword_1EDF34108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34108);
  }

  return result;
}

uint64_t _s5ColorOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t _s5ColorOwet_2(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t FormatRatio.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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

    v13 = v25;
    v14 = v10;
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
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5116D70;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CBAC18();
    v26 = 0uLL;
    sub_1D726431C();
    v23 = v27;
    sub_1D5C71DC8();
    v26 = xmmword_1D7279980;
    sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    *v13 = v27;
    *(v13 + 8) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CBAC18()
{
  result = qword_1EDF34110;
  if (!qword_1EDF34110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34110);
  }

  return result;
}

unint64_t sub_1D5CBACCC()
{
  result = qword_1EDF34118;
  if (!qword_1EDF34118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34118);
  }

  return result;
}

uint64_t sub_1D5CBAD20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CBAD50();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CBAD50()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1D5CBAD9C()
{
  if (!qword_1EDF2FE30)
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    sub_1D5C71E64();
    v0 = type metadata accessor for FormatSizeColumn();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2FE30);
    }
  }
}

uint64_t sub_1D5CBAE38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

uint64_t FormatItemCollection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5CBB104();
    sub_1D5CBB194(&qword_1EDF050F8, &qword_1EDF12428);
    sub_1D726472C();
    sub_1D5CCCC20(v8[6], &v7);
    v6 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CBB104()
{
  if (!qword_1EDF1B398)
  {
    sub_1D5C2CA80(255, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B398);
    }
  }
}

uint64_t sub_1D5CBB194(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CBB104();
    sub_1D5CBB224(a2, sub_1D5CBB26C);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5CBB224(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5CBB26C()
{
  if (!qword_1EDF338A0)
  {
    sub_1D5B4AD74();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF338A0);
    }
  }
}

uint64_t sub_1D5CBB2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CBB328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t FormatItem.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BD98, sub_1D5B4C754, sub_1D5B4C7A8);
  v93 = v3;
  v88 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v92 = &v79 - v5;
  sub_1D5C2E528();
  v100 = v6;
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  *&v99 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v98 = v9;
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
  v97 = v12;
  v94 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v96 = &v79 - v14;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v104 = v15;
  v102 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  *&v103 = &v79 - v17;
  sub_1D5C2E60C(0, &qword_1EDF3BD58, sub_1D5C50AA0, sub_1D5C50AF4);
  v19 = v18;
  *&v101 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v79 - v21;
  sub_1D5CBC4D4();
  v24 = v23;
  v105 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CBC450();
  sub_1D5B58B84(&qword_1EDF24D18, sub_1D5CBC450);
  v28 = v110;
  sub_1D7264B0C();
  v29 = v28;
  if (v28)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v29);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v87 = v22;
  v110 = v19;
  v30 = v105;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_1D7264AFC();
  v32 = Dictionary<>.errorOnUnknownKeys.getter(v31);

  v33 = v27;
  if (v32)
  {
    v34 = sub_1D726433C();
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = (v34 + 48);
      while (*v36 != 1)
      {
        v36 += 24;
        if (!--v35)
        {
          goto LABEL_7;
        }
      }

      v42 = *(v36 - 2);
      v41 = *(v36 - 1);

      v43 = sub_1D661D604();
      sub_1D5E2D970();
      v44 = swift_allocError();
      *v45 = v42;
      *(v45 + 8) = v41;
      *(v45 + 16) = v43;
      v29 = v44;
      *(v45 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v30 + 8))(v27, v24);
      goto LABEL_10;
    }

LABEL_7:
  }

  v108 = 0uLL;
  v109 = 0;
  v37 = sub_1D72642BC();
  v39 = v38;
  v40 = v37;
  v108 = xmmword_1D728CF30;
  v109 = 0;
  v86 = sub_1D726422C();
  v48 = v47;
  v108 = xmmword_1D7297410;
  v109 = 0;
  v83 = sub_1D726422C();
  v84 = v39;
  v85 = v49;
  v108 = xmmword_1D72BAA60;
  v109 = 0;
  sub_1D5B4CCC0();
  sub_1D726431C();
  v80 = v40;
  v82 = v106;
  v81 = xmmword_1D72BAA70;
  v108 = xmmword_1D72BAA70;
  v109 = 0;
  if (sub_1D726434C())
  {
    v106 = v81;
    v107 = 0;
    sub_1D5CD0AB8();
    v50 = v87;
    v51 = v110;
    sub_1D726431C();
    *&v81 = v48;
    v52 = sub_1D725A74C();
    v53 = v50;
    v54 = v52;
    (*(v101 + 8))(v53, v51);
  }

  else
  {
    *&v81 = v48;
    v54 = MEMORY[0x1E69E7CC0];
  }

  v108 = xmmword_1D72BAA80;
  v109 = 0;
  sub_1D5C51470();
  v55 = v103;
  v56 = v104;
  sub_1D726431C();
  v110 = sub_1D725A74C();
  (*(v102 + 8))(v55, v56);
  type metadata accessor for FormatItemNodeStyle(0);
  v108 = xmmword_1D72BAA90;
  v109 = 0;
  sub_1D5B58B84(qword_1EDF2C518, type metadata accessor for FormatItemNodeStyle);
  sub_1D726427C();
  v104 = v106;
  v103 = xmmword_1D72BAAA0;
  v108 = xmmword_1D72BAAA0;
  v109 = 0;
  if (sub_1D726434C())
  {
    v106 = v103;
    v107 = 0;
    sub_1D5C2F040();
    v57 = v96;
    v58 = v97;
    sub_1D726431C();
    *&v103 = v54;
    v102 = sub_1D725A74C();
    (*(v94 + 8))(v57, v58);
  }

  else
  {
    *&v103 = v54;
    v102 = MEMORY[0x1E69E7CC0];
  }

  v59 = v100;
  v61 = v98;
  v60 = v99;
  v101 = xmmword_1D72BAAB0;
  v108 = xmmword_1D72BAAB0;
  v109 = 0;
  if (sub_1D726434C())
  {
    v106 = v101;
    v107 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v62 = v95;
    sub_1D726431C();
    v63 = sub_1D725A74C();
    v64 = v62;
    v65 = v63;
    (*(v91 + 8))(v64, v61);
  }

  else
  {
    v65 = MEMORY[0x1E69E7CD0];
  }

  v101 = xmmword_1D72BAAC0;
  v108 = xmmword_1D72BAAC0;
  v109 = 0;
  if (sub_1D726434C())
  {
    v106 = v101;
    v107 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    sub_1D726431C();
    v100 = sub_1D725A74C();
    (*(v90 + 8))(v60, v59);
  }

  else
  {
    v100 = MEMORY[0x1E69E7CC0];
  }

  *&v101 = v65;
  v99 = xmmword_1D72BAAD0;
  v108 = xmmword_1D72BAAD0;
  v109 = 0;
  if (sub_1D726434C())
  {
    v106 = v99;
    v107 = 0;
    sub_1D666CDAC();
    v66 = v92;
    v67 = v93;
    sub_1D726431C();
    v68 = v33;
    v69 = sub_1D725A74C();
    (*(v88 + 8))(v66, v67);
  }

  else
  {
    v68 = v33;
    v69 = MEMORY[0x1E69E7CC0];
  }

  v108 = xmmword_1D72BAAE0;
  v109 = 0;
  sub_1D5CA5BD0();
  sub_1D726427C();
  v70 = v85;
  v71 = v84;
  v72 = v110;
  (*(v105 + 8))(v68, v24);
  v73 = v106;
  swift_bridgeObjectRelease_n();
  v74 = v89;
  *v89 = v80;
  v74[1] = v71;
  v75 = v81;
  v74[2] = v86;
  v74[3] = v75;
  v74[4] = v83;
  v74[5] = v70;
  v76 = *(&v82 + 1);
  v74[6] = v82;
  v74[7] = v76;
  v74[8] = v103;
  v74[9] = v72;
  v77 = v102;
  v74[10] = v104;
  v74[11] = v77;
  v78 = v100;
  v74[12] = v101;
  v74[13] = v78;
  v74[14] = v69;
  *(v74 + 120) = v73;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}