uint64_t sub_1AB16B90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB16D18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB16B940(uint64_t a1)
{
  v2 = sub_1AB05CC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB16B97C(uint64_t a1)
{
  v2 = sub_1AB05CC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.Policy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CB8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v14 = *(v1 + 32);
  v7 = *(v1 + 40);
  v12 = *(v1 + 41);
  v13 = v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB05CC00();
  sub_1AB462274();
  v22 = 0;
  v8 = v17;
  sub_1AB461B64();
  if (!v8)
  {
    v9 = v12;
    v21 = 1;
    sub_1AB461B64();
    v20 = 2;
    sub_1AB461B64();
    v19 = v9;
    v18 = 3;
    sub_1AB16C76C();
    sub_1AB461BF4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t JetPackAsset.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetPackAsset(0) + 20);

  return sub_1AB05DB38(v3, a1);
}

uint64_t JetPackAsset.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JetPackAsset(0) + 20);

  return sub_1AB16C7C0(a1, v3);
}

uint64_t JetPackAsset.cacheKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset(0) + 28));

  return v1;
}

uint64_t JetPackAsset.wasReadFromCache.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t JetPackAsset.wasRevalidated.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t JetPackAsset.willBeRevalidated.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JetPackAsset.channelID.getter()
{
  v1 = *(v0 + *(type metadata accessor for JetPackAsset(0) + 44));

  return v1;
}

uint64_t JetPackAsset.channelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.description.getter()
{
  v1 = type metadata accessor for JetPackAsset(0);
  v2 = v0 + v1[6];
  if (*(v2 + 4))
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = *v2;
    v58[0] = 4023401;
    v58[1] = 0xE300000000000000;
    LODWORD(v57) = v4;
    v5 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v5);

    v3 = sub_1AB020904(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1AB020904((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = 4023401;
    *(v8 + 5) = 0xE300000000000000;
  }

  v58[0] = 1031365995;
  v58[1] = 0xE400000000000000;
  MEMORY[0x1AC59BA20](*(v0 + v1[7]), *(v0 + v1[7] + 8));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AB020904(0, *(v3 + 2) + 1, 1, v3);
  }

  v10 = *(v3 + 2);
  v9 = *(v3 + 3);
  if (v10 >= v9 >> 1)
  {
    v3 = sub_1AB020904((v9 > 1), v10 + 1, 1, v3);
  }

  *(v3 + 2) = v10 + 1;
  v11 = &v3[16 * v10];
  *(v11 + 4) = 1031365995;
  *(v11 + 5) = 0xE400000000000000;
  strcpy(v58, "metadata=");
  WORD1(v58[1]) = 0;
  HIDWORD(v58[1]) = -385875968;
  v12 = JetPackAsset.Metadata.description.getter();
  MEMORY[0x1AC59BA20](v12);

  v13 = v58[0];
  v14 = v58[1];
  v16 = *(v3 + 2);
  v15 = *(v3 + 3);
  if (v16 >= v15 >> 1)
  {
    v3 = sub_1AB020904((v15 > 1), v16 + 1, 1, v3);
  }

  *(v3 + 2) = v16 + 1;
  v17 = &v3[16 * v16];
  *(v17 + 4) = v13;
  *(v17 + 5) = v14;
  v18 = (v0 + v1[11]);
  if (v18[1])
  {
    v19 = *v18;
    strcpy(v58, "channelID=");
    BYTE3(v58[1]) = 0;
    HIDWORD(v58[1]) = -369098752;
    MEMORY[0x1AC59BA20](v19);
    v20 = v58[0];
    v21 = v58[1];
    v23 = *(v3 + 2);
    v22 = *(v3 + 3);
    if (v23 >= v22 >> 1)
    {
      v3 = sub_1AB020904((v22 > 1), v23 + 1, 1, v3);
    }

    *(v3 + 2) = v23 + 1;
    v24 = &v3[16 * v23];
    *(v24 + 4) = v20;
    *(v24 + 5) = v21;
  }

  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1AB4615D4();

  v25 = *(v0 + v1[8]);
  v58[0] = 0xD000000000000011;
  v58[1] = 0x80000001AB4FFE20;
  if (v25)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x1AC59BA20](v26, v27);

  v28 = v58[0];
  v29 = v58[1];
  v31 = *(v3 + 2);
  v30 = *(v3 + 3);
  if (v31 >= v30 >> 1)
  {
    v3 = sub_1AB020904((v30 > 1), v31 + 1, 1, v3);
  }

  *(v3 + 2) = v31 + 1;
  v32 = &v3[16 * v31];
  *(v32 + 4) = v28;
  *(v32 + 5) = v29;
  sub_1AB4615D4();

  v58[0] = 0x6C61766552736177;
  v58[1] = 0xEF3D646574616469;
  if (*(v0 + v1[9]))
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (*(v0 + v1[9]))
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x1AC59BA20](v33, v34);

  v35 = v58[0];
  v36 = v58[1];
  v38 = *(v3 + 2);
  v37 = *(v3 + 3);
  if (v38 >= v37 >> 1)
  {
    v3 = sub_1AB020904((v37 > 1), v38 + 1, 1, v3);
  }

  *(v3 + 2) = v38 + 1;
  v39 = &v3[16 * v38];
  *(v39 + 4) = v35;
  *(v39 + 5) = v36;
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1AB4615D4();

  v40 = *(v0 + v1[10]);
  v58[0] = 0xD000000000000012;
  v58[1] = 0x80000001AB4FFE40;
  if (v40)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x1AC59BA20](v41, v42);

  v43 = v58[0];
  v44 = v58[1];
  v46 = *(v3 + 2);
  v45 = *(v3 + 3);
  if (v46 >= v45 >> 1)
  {
    v3 = sub_1AB020904((v45 > 1), v46 + 1, 1, v3);
  }

  *(v3 + 2) = v46 + 1;
  v47 = &v3[16 * v46];
  *(v47 + 4) = v43;
  *(v47 + 5) = v44;
  sub_1AB01494C(v0, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8);
  if (swift_dynamicCast())
  {
    v58[0] = 0x3D68746170;
    v58[1] = 0xE500000000000000;

    MEMORY[0x1AC59BA20](v57);
    swift_bridgeObjectRelease_n();

    v48 = v58[0];
    v49 = v58[1];
    v51 = *(v3 + 2);
    v50 = *(v3 + 3);
    if (v51 >= v50 >> 1)
    {
      v3 = sub_1AB020904((v50 > 1), v51 + 1, 1, v3);
    }

    *(v3 + 2) = v51 + 1;
    v52 = &v3[16 * v51];
    *(v52 + 4) = v48;
    *(v52 + 5) = v49;
  }

  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1AB4615D4();

  strcpy(v58, "JetPackAsset(");
  HIWORD(v58[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  sub_1AB01561C(&qword_1ED4D21F0, &qword_1EB4366C8);
  v53 = sub_1AB460484();
  v55 = v54;

  MEMORY[0x1AC59BA20](v53, v55);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v58[0];
}

unint64_t sub_1AB16C670()
{
  result = qword_1ED4D0A30;
  if (!qword_1ED4D0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0A30);
  }

  return result;
}

unint64_t sub_1AB16C6C4()
{
  result = qword_1ED4D0AB0;
  if (!qword_1ED4D0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0AB0);
  }

  return result;
}

unint64_t sub_1AB16C718()
{
  result = qword_1EB436CA8;
  if (!qword_1EB436CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436CA8);
  }

  return result;
}

unint64_t sub_1AB16C76C()
{
  result = qword_1EB436CC0;
  if (!qword_1EB436CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436CC0);
  }

  return result;
}

uint64_t sub_1AB16C7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB16C828()
{
  result = qword_1EB436CD0;
  if (!qword_1EB436CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436CD0);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AB16C8FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1AB16C940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAsset.Policy.OSInvalidation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.Policy.OSInvalidation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAsset.Policy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for JetPackAsset.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1AB16CCB4()
{
  result = qword_1EB436CE8;
  if (!qword_1EB436CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436CE8);
  }

  return result;
}

unint64_t sub_1AB16CD0C()
{
  result = qword_1EB436CF0;
  if (!qword_1EB436CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436CF0);
  }

  return result;
}

unint64_t sub_1AB16CD64()
{
  result = qword_1EB436CF8;
  if (!qword_1EB436CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436CF8);
  }

  return result;
}

uint64_t sub_1AB16CDB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1734440037 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766572 && a2 == 0xED00007441646574 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E646C697562 && a2 == 0xEB00000000726562 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_1AB461DA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7845726576726573 && a2 == 0xED00006465726970 || (sub_1AB461DA4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1AB16D06C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566863746170 && a2 == 0xEC0000006E6F6973)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

uint64_t sub_1AB16D18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65674178616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001AB4FFE60 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567417463697665 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C61766E49736FLL && a2 == 0xEE006E6F69746164)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AB461DA4();

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

unint64_t sub_1AB16D2FC()
{
  result = qword_1EB436D00;
  if (!qword_1EB436D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436D00);
  }

  return result;
}

uint64_t AutomationSemantics._id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 AutomationSemantics._id.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

BOOL static AutomationSemantics.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return (sub_1AB16D86C(*a1, *a2) & 1) != 0 && (sub_1AB16D8FC(v2, v3) & 1) != 0;
}

BOOL sub_1AB16D454(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return (sub_1AB16D86C(*a1, *a2) & 1) != 0 && (sub_1AB16D8FC(v2, v3) & 1) != 0;
}

uint64_t sub_1AB16D4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(v3 - 2);
    v10 = *(v3 - 1);
    v11 = *v3;
    if (v8 <= 2)
    {
      if (*i)
      {
        if (v8 == 1)
        {
          if (v11 != 1)
          {
            goto LABEL_33;
          }

          sub_1AB16DB5C(*(i - 2), *(i - 1), 1);
          sub_1AB16DB5C(v9, v10, 1);
          if (*&v6 != *&v9)
          {
            return 0;
          }
        }

        else
        {
          if (v11 != 2)
          {
            goto LABEL_33;
          }

          sub_1AB16DB5C(*(i - 2), *(i - 1), 2);
          sub_1AB16DB5C(v9, v10, 2);
          if (v6 != v9)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          goto LABEL_33;
        }

        sub_1AB16DB5C(*(i - 2), *(i - 1), 0);
        sub_1AB16DB5C(v9, v10, 0);
        if ((v9 ^ v6))
        {
          return 0;
        }
      }

      goto LABEL_6;
    }

    if (v8 != 3)
    {
      break;
    }

    if (v11 != 3)
    {
      goto LABEL_32;
    }

    if (v6 == v9 && v7 == v10)
    {
      sub_1AB16DB30(*(i - 2), *(i - 1), 3);
      sub_1AB16DB30(v6, v7, 3);
      sub_1AB16DB5C(v6, v7, 3);
      sub_1AB16DB5C(v6, v7, 3);
    }

    else
    {
      v5 = sub_1AB461DA4();
      sub_1AB16DB30(v9, v10, 3);
      sub_1AB16DB30(v6, v7, 3);
      sub_1AB16DB5C(v6, v7, 3);
      sub_1AB16DB5C(v9, v10, 3);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_6:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v8 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_32;
    }

    sub_1AB16DB30(*(v3 - 2), *(v3 - 1), 4);
    sub_1AB16DB30(v6, v7, 4);
    sub_1AB16DB30(v9, v10, 4);
    sub_1AB16DB30(v6, v7, 4);
    v12 = sub_1AB16D4A4(v6, v9);
    sub_1AB16DB5C(v6, v7, 4);
    sub_1AB16DB5C(v9, v10, 4);
    sub_1AB16DB5C(v9, v10, 4);
    sub_1AB16DB5C(v6, v7, 4);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v11 == 5)
  {
    sub_1AB16DB30(*(v3 - 2), *(v3 - 1), 5);
    sub_1AB16DB30(v6, v7, 5);
    sub_1AB16DB30(v9, v10, 5);
    sub_1AB16DB30(v6, v7, 5);
    v13 = sub_1AB171280(v6, v9);
    sub_1AB16DB5C(v6, v7, 5);
    sub_1AB16DB5C(v9, v10, 5);
    sub_1AB16DB5C(v9, v10, 5);
    sub_1AB16DB5C(v6, v7, 5);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

LABEL_32:
  sub_1AB16DB30(*(i - 2), *(i - 1), *i);

LABEL_33:
  sub_1AB16DB30(v9, v10, v11);
  sub_1AB16DB5C(v6, v7, v8);
  sub_1AB16DB5C(v9, v10, v11);
  sub_1AB16DB5C(v6, v7, v8);
  return 0;
}

uint64_t sub_1AB16D86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1AB461DA4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AB16D8FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (sub_1AB461DA4() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7 || (v5 != v8 || v6 != v7) && (sub_1AB461DA4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AB16D9DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 64)
    {
      v5 = *(a1 + i + 48);
      v6 = *(a1 + i + 56);
      v7 = *(a1 + i + 72);
      v8 = *(a1 + i + 88);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v17 = *(a2 + i + 64);
      v18 = *(a1 + i + 64);
      v11 = *(a2 + i + 72);
      v15 = *(a2 + i + 80);
      v16 = *(a1 + i + 80);
      v12 = *(a2 + i + 88);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1AB461DA4() & 1) == 0)
      {
        break;
      }

      if ((v5 != v9 || v6 != v10) && (sub_1AB461DA4() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v11)
        {
          return 0;
        }
      }

      else
      {
        if (v18 == v17)
        {
          v13 = v11;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          return 0;
        }
      }

      if (v8)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == v15)
        {
          v4 = v12;
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1AB16DB30(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t sub_1AB16DB5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3 || a3 == 5 || a3 == 4)
  {
  }

  return result;
}

uint64_t MediaArtworkSourceConfiguration.quality.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_1AB16DC9C()
{
  sub_1AB4615D4();

  v0 = sub_1AB460DF4();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](0xD000000000000014, 0x80000001AB4FFEA0);
  return 0x2079616C70736944;
}

BOOL _s9JetEngine31MediaArtworkSourceConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = sub_1AB460544();
  v12 = v11;
  if (v10 != sub_1AB460544() || v12 != v13)
  {
    v15 = sub_1AB461DA4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }

    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    if (v2 == v6)
    {
      v16 = v7;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (!v7)
  {
    return 0;
  }

LABEL_14:
  v17 = sub_1AB460544();
  v19 = v18;
  if (v17 == sub_1AB460544() && v19 == v20)
  {

    return v4 == v8 && v5 == v9;
  }

  v21 = sub_1AB461DA4();

  if ((v21 & 1) == 0)
  {
    return 0;
  }

  return v4 == v8 && v5 == v9;
}

uint64_t sub_1AB16DECC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB16DF14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void JetpackMetadata.compression.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 9);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

void JetpackMetadata.encryption.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 11);
  *a1 = *(v1 + 10);
  a1[1] = v2;
}

uint64_t JetpackMetadata.signature.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AB16DFC0(v2, v3, v4);
}

uint64_t sub_1AB16DFC0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1AB017200(a2, a3);
  }

  return result;
}

uint64_t JetpackMetadata.versionIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_9JetEngine16JetpackSignatureVSg(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AB16E06C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1AB16E0C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t MulticastDelegate.__allocating_init()()
{
  v0 = swift_allocObject();
  MulticastDelegate.init()();
  return v0;
}

uint64_t MulticastDelegate.init()()
{
  v1 = [objc_opt_self() weakObjectsHashTable];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB436D10);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void MulticastDelegate.add(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) addObject_];
  swift_unknownObjectRelease();

  os_unfair_lock_unlock((v1 + 24));
}

void MulticastDelegate.remove(_:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1AB16E2E8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1AB16E2E8(id *a1)
{
  v9 = *a1;
  v1 = [*a1 allObjects];
  v2 = sub_1AB460954();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AB4618F4())
  {
    v4 = i - 1;
    if (!__OFSUB__(i, 1))
    {
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1AC59C990](v4, v2);
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }

          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v2 + 32 + 8 * v4);
          swift_unknownObjectRetain();
        }

        swift_unknownObjectRetain();
        v6 = sub_1AB461D84();
        swift_unknownObjectRelease();
        if (v5 == v6)
        {
          [v9 removeObject_];
        }

        swift_unknownObjectRelease_n();
        if (!v4)
        {
        }
      }

      while (!__OFSUB__(v4--, 1));
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void MulticastDelegate.invoke(_:)(void (*a1)(char *), uint64_t a2)
{
  v5 = *v2;
  v6 = v2[2];
  os_unfair_lock_lock((v6 + 24));
  sub_1AB16E640((v6 + 16), a1, a2, *(v5 + 80));

  os_unfair_lock_unlock((v6 + 24));
}

uint64_t sub_1AB16E4C8(id *a1)
{
  v1 = [*a1 allObjects];
  v2 = sub_1AB460954();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (1)
    {
      while (__OFSUB__(v3--, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        v3 = sub_1AB4618F4();
        if (!v3)
        {
        }
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1AC59C990](v3, v2);
        goto LABEL_11;
      }

      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 32 + 8 * v3);
      swift_unknownObjectRetain();
LABEL_11:
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v5)
      {
        v7[0] = 0x756F72676B636162;
        v7[1] = 0xEA0000000000646ELL;
        sub_1AB1ED268(v7);
        swift_unknownObjectRelease();

        if (!v3)
        {
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (!v3)
        {
        }
      }
    }
  }
}

uint64_t sub_1AB16E640(id *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  v8 = sub_1AB461354();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*a1 allObjects];
  v16 = sub_1AB460954();

  if (v16 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1AB4618F4())
  {
    v27 = v16;
    v28 = v16 & 0xC000000000000001;
    v21 = v5;
    v22 = v16 + 32;
    v5 = (v12 + 56);
    v23 = v16 & 0xFFFFFFFFFFFFFF8;
    ++v24;
    v16 = v12 + 32;
    v18 = (v12 + 8);
    while (!__OFSUB__(i--, 1))
    {
      if (v28)
      {
        v12 = MEMORY[0x1AC59C990](i, v27);
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (i >= *(v23 + 16))
        {
          goto LABEL_17;
        }

        v12 = *(v22 + 8 * i);
        swift_unknownObjectRetain();
      }

      v29 = v12;
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        (*v5)(v11, 0, 1, a4);
        (*v16)(v14, v11, a4);
        v26(v14);
        swift_unknownObjectRelease();
        (*v18)(v14, a4);
        if (!i)
        {
        }
      }

      else
      {
        swift_unknownObjectRelease();
        (*v5)(v11, 1, 1, a4);
        (*v24)(v11, v25);
        if (!i)
        {
        }
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t MulticastDelegate.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB16E9E0()
{
  v1 = v0[25];
  v2 = v0[24];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

id static NSURLSessionConfiguration.appleServices(forProcess:)(uint64_t a1)
{
  v2 = [swift_getObjCClassFromMetadata() defaultSessionConfiguration];

  return v2;
}

id AMSURLSession.init(process:bag:urlProtocol:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1AB04E7C4();
  v11 = static NSURLSessionConfiguration.appleServices(forProcess:)(a1);
  v12 = [v10 initWithConfiguration_];

  v13 = v12;
  v14 = sub_1AB087834(a1, a2);
  sub_1AB0877D0(v5, v6, v7, v8, v9);
  [v13 setProtocolHandler_];
  swift_unknownObjectRelease();
  [v13 setResponseDecoder_];

  swift_unknownObjectRelease();
  return v13;
}

id static AMSURLSession.forJetEngineStorefront(with:for:usingProtocol:)(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  v5 = *a3;
  v4 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = [objc_opt_self() ams:a2 configurationWithProcessInfo:*a1 bag:?];
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  if (v4)
  {
    if (v4 == 1)
    {
      v6 = 0;
      v7 = 0;
      v10 = 2;
      v5 = 1;
      v4 = 0;
    }

    else
    {

      v10 = 0;
    }
  }

  else
  {
    v10 = 2;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  v11 = [objc_opt_self() currentProcess];
  v12 = sub_1AB087834(v11, v3);

  sub_1AB0877D0(v5, v4, v6, v7, v10);
  [v9 setProtocolHandler_];
  swift_unknownObjectRelease();
  [v9 setResponseDecoder_];
  return v9;
}

uint64_t sub_1AB16ED6C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 96);

  sub_1AB0877D0(v4, v3, v2, v1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1AB16EE04()
{
  v0 = sub_1AB4619B4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB16EE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AB16EECC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1AB16EF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AB16EFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1AB16F018@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB16EE04();
  *a1 = result;
  return result;
}

uint64_t sub_1AB16F050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB0D6494(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AB16F094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB16EE04();
  *a1 = result;
  return result;
}

uint64_t sub_1AB16F0C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AB170894();
  *a1 = result;
  return result;
}

uint64_t sub_1AB16F0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1AB16F140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidepackedIntent.init(initial:resolveUsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v6 = a4 + *(type metadata accessor for SidepackedIntent() + 28);

  return sub_1AB0149B0(a2, v6);
}

uint64_t static SidepackedIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = type metadata accessor for SidepackedIntent();
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v21 - v14;
  sub_1AB16F4DC(a1, a2, a3, v12);
  if ((*(v13 + 48))(v12, 1, v7) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v16 = *(a2 - 8);
    v17 = 1;
    v18 = v22;
  }

  else
  {
    (*(v13 + 32))(v15, v12, v7);
    v16 = *(a2 - 8);
    v19 = v22;
    (*(v16 + 16))(v22, v15, a2);
    (*(v13 + 8))(v15, v7);
    v17 = 0;
    v18 = v19;
  }

  return (*(v16 + 56))(v18, v17, 1, a2);
}

uint64_t sub_1AB16F4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a2;
  v49 = a4;
  v6 = type metadata accessor for SidepackedIntent();
  v47 = sub_1AB461354();
  v45 = *(v47 - 8);
  v7 = MEMORY[0x1EEE9AC00](v47);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  v12 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v41 - v17;
  v19 = *(v6 - 8);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v24 = *(v12 + 16);
  v46 = a1;
  v24(v18, a1, a3);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v27 = *(v19 + 56);
    v26(v11, 0, 1, v6);
    v28 = *(v19 + 32);
    v28(v23, v11, v6);
    v29 = v49;
    v28(v49, v23, v6);
    return v27(v29, 0, 1, v6);
  }

  v43 = *(v19 + 56);
  v26(v11, 1, 1, v6);
  v31 = v11;
  v32 = v47;
  v45 = *(v45 + 8);
  (v45)(v31, v47);
  v24(v15, v46, a3);
  v33 = v48;
  type metadata accessor for AnyIntentModel();
  if (swift_dynamicCast())
  {
    v54[0] = v51;
    v54[1] = v52;
    v55 = v53;
    sub_1AB0149B0(v54, &v51);
    v50 = v33;
    swift_getExtendedExistentialTypeMetadata();
    v34 = v44;
    v35 = swift_dynamicCast();
    v36 = v49;
    if (v35)
    {
      v37 = v43;
      v43(v34, 0, 1, v6);
      v38 = *(v19 + 32);
      v39 = v42;
      v38(v42, v34, v6);
      v38(v36, v39, v6);
      return v37(v36, 0, 1, v6);
    }

    v43(v34, 1, 1, v6);
    (v45)(v34, v32);
  }

  else
  {
    v40 = sub_1AB461354();
    v51 = 0u;
    v52 = 0u;
    v53 = 0;
    (*(*(v40 - 8) + 8))(&v51, v40);
    v36 = v49;
  }

  return v43(v36, 1, 1, v6);
}

uint64_t static SidepackedIntent._unwrapData<A>(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v28 = a5;
  v29 = a6;
  v26 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1AB461354();
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SidepackedIntent();
  v13 = sub_1AB461354();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v24 - v19;
  sub_1AB16F4DC(a1, a2, v27, v17);
  if ((*(v18 + 48))(v17, 1, v12) == 1)
  {
    (*(v14 + 8))(v17, v13);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v29, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v22 = v29;
    (*(v18 + 32))(v20, v17, v12);
    static Continuous._unwrapOnlyElement<A>(of:)(v20, AssociatedTypeWitness, a2, v11);
    (*(v18 + 8))(v20, v12);
    v23 = *(AssociatedTypeWitness - 8);
    if ((*(v23 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v24 + 8))(v11, v25);
      return (*(v23 + 56))(v22, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      (*(v23 + 32))(v22, v11, AssociatedTypeWitness);
      return (*(v23 + 56))(v22, 0, 1, AssociatedTypeWitness);
    }
  }
}

uint64_t SidepackedIntent<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidepackedIntent.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1AB461B04();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SidepackedIntent();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = v36;
  sub_1AB462224();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = v12;
  v36 = v10;
  v14 = v34;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v15 = sub_1AB462214();
  JSONContext.init(userInfo:)(v15);
  v16 = v39[0];
  v37[0] = 0;
  v17 = v35;
  sub_1AB4619F4();
  v18 = v9;
  JSONObject.init(from:)(v38, v39);
  v19 = v14;
  sub_1AB0B9254(v39, v37);
  v40 = v16;
  AnyIntentModel.init(deserializing:using:)(v37, &v40, a2, v38);
  v20 = *(v36 + 28);
  v21 = type metadata accessor for AnyIntentModel();
  v22 = v28;
  AnyIntentModel._canonicalized.getter(v21, &v28[v20]);
  (*(*(v21 - 8) + 8))(v38, v21);
  LOBYTE(v38[0]) = 1;
  v23 = v33;
  sub_1AB461AC4();
  sub_1AB066D84(v39);
  (*(v19 + 8))(v18, v17);
  (*(v30 + 32))(v22, v23, a2);
  v24 = v29;
  v25 = v36;
  (*(v29 + 16))(v31, v22, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v24 + 8))(v22, v25);
}

uint64_t SidepackedIntent<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18 = a4;
  v17 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  JSONObject.subscript.getter(0x6C616974696E6924, 0xE800000000000000, v20);

  v19[0] = v11;
  v12 = *(a3 + 8);

  v12(v20, v19, a2, a3);
  if (v4)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    v14 = v18;
    (*(v17 + 32))(v18, v9, a2);
    JSONObject.subscript.getter(0x746E65746E6924, 0xE700000000000000, v19);

    v21 = v11;
    AnyIntentModel.init(deserializing:using:)(v19, &v21, a2, v20);
    v15 = *(type metadata accessor for SidepackedIntent() + 28);
    v16 = type metadata accessor for AnyIntentModel();
    AnyIntentModel._canonicalized.getter(v16, v14 + v15);
    sub_1AB066D84(a1);
    return (*(*(v16 - 8) + 8))(v20, v16);
  }
}

uint64_t sub_1AB1704A8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getExtendedExistentialTypeMetadata();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB170540(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_1AB17067C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t ScalarDictionary.Value.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB0165C4(a1, v35);
  sub_1AB016760(0, &qword_1ED4D1940);
  if (swift_dynamicCast())
  {
    [v33[0] objCType];
    v4 = sub_1AB460704();
    v6 = v5;
    v7 = v4 == 66 && v5 == 0xE100000000000000;
    if (v7 || (v8 = v4, (sub_1AB461DA4() & 1) != 0) || v8 == 99 && v6 == 0xE100000000000000 || (sub_1AB461DA4() & 1) != 0)
    {

      v9 = [v33[0] BOOLValue];

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
      *a2 = v9;
LABEL_13:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return result;
    }

    if (v8 == 100 && v6 == 0xE100000000000000 || (sub_1AB461DA4() & 1) != 0 || v8 == 102 && v6 == 0xE100000000000000)
    {

LABEL_28:
      [v33[0] doubleValue];
      v14 = v13;

      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
      *a2 = v14;
      goto LABEL_16;
    }

    v27 = sub_1AB461DA4();

    if (v27)
    {
      goto LABEL_28;
    }

    v28 = [v33[0] integerValue];

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
    *a2 = v28;
LABEL_19:
    *(a2 + 8) = 0;
    v11 = 2;
    goto LABEL_48;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
    *a2 = LOBYTE(v33[0]);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
    if (!swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v12 = v33[1];
        result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
        *a2 = v33[0];
        *(a2 + 8) = v12;
        v11 = 3;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
        if (swift_dynamicCast())
        {
          v15 = sub_1AB170DD8(v33[0]);

          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
          *a2 = v15;
          *(a2 + 8) = 0;
          v11 = 5;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
          if (swift_dynamicCast())
          {
            v16 = *(v34 + 16);
            if (v16)
            {
              v17 = v34 + 32;
              v18 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1AB0165C4(v17, v33);
                sub_1AB0165C4(v33, v29);
                ScalarDictionary.Value.init(rawValue:)(&v30, v29);
                __swift_destroy_boxed_opaque_existential_1Tm(v33);
                v19 = v32;
                v21 = v30;
                v20 = v31;
                if (v32 == 255)
                {
                  sub_1AB170DC4(v30, v31, 255);
                }

                else
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v18 = sub_1AB2B0638(0, *(v18 + 2) + 1, 1, v18);
                  }

                  v23 = *(v18 + 2);
                  v22 = *(v18 + 3);
                  v24 = v23 + 1;
                  if (v23 >= v22 >> 1)
                  {
                    v26 = sub_1AB2B0638((v22 > 1), v23 + 1, 1, v18);
                    v24 = v23 + 1;
                    v18 = v26;
                  }

                  *(v18 + 2) = v24;
                  v25 = &v18[24 * v23];
                  *(v25 + 4) = v21;
                  *(v25 + 5) = v20;
                  v25[48] = v19;
                }

                v17 += 32;
                --v16;
              }

              while (v16);
            }

            else
            {

              v18 = MEMORY[0x1E69E7CC0];
            }

            __swift_destroy_boxed_opaque_existential_1Tm(a1);
            result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
            *a2 = v18;
            *(a2 + 8) = 0;
            v11 = 4;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
            result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
            *a2 = 0;
            *(a2 + 8) = 0;
            v11 = -1;
          }
        }
      }

      goto LABEL_48;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
    *a2 = v33[0];
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v35);
  *a2 = v33[0];
LABEL_16:
  *(a2 + 8) = 0;
  v11 = 1;
LABEL_48:
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1AB170DC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1AB16DB5C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1AB170DD8(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v39 = result;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_11:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = v11 | (v9 << 6);
      v13 = (*(v1 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_1AB0165C4(*(v1 + 56) + 32 * v12, v37);
      *&v36 = v15;
      *(&v36 + 1) = v14;
      v33 = v36;
      v34 = v37[0];
      v35 = v37[1];
      sub_1AB0165C4(&v34, v30);

      ScalarDictionary.Value.init(rawValue:)(&v31, v30);
      v16 = v32[0];
      if (LOBYTE(v32[0]) != 255)
      {
        break;
      }

      sub_1AB014AC0(&v33, &qword_1EB43A620);
      result = sub_1AB170DC4(v31, *(&v31 + 1), 255);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v29 = v31;
    v32[0] = v34;
    v32[1] = v35;
    v31 = v33;
    v17 = *(v2 + 16);
    if (*(v2 + 24) <= v17)
    {
      sub_1AB1D1BA4(v17 + 1, 1);
      v2 = v38;
    }

    v18 = v31;
    sub_1AB4620A4();
    sub_1AB460684();
    result = sub_1AB462104();
    v19 = v2 + 64;
    v20 = -1 << *(v2 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v19 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v2 + 48) + 16 * v23) = v18;
    v28 = *(v2 + 56) + 24 * v23;
    *v28 = v29;
    *(v28 + 16) = v16;
    ++*(v2 + 16);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v1 = v39;
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void ScalarDictionary.Value.rawValue.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = *(v1 + 8);
      a1[3] = MEMORY[0x1E69E6158];
      *a1 = v2;
      a1[1] = v12;
    }

    else if (v3 == 4)
    {
      v6 = *(v2 + 16);
      v7 = MEMORY[0x1E69E7CC0];
      if (v6)
      {
        v17 = MEMORY[0x1E69E7CC0];
        v8 = sub_1AB17783C(0, v6, 0);
        v7 = v17;
        v9 = v2 + 48;
        do
        {
          ScalarDictionary.Value.rawValue.getter(v16, v8);
          v17 = v7;
          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_1AB17783C((v10 > 1), v11 + 1, 1);
            v7 = v17;
          }

          *(v7 + 16) = v11 + 1;
          v8 = sub_1AB014B78(v16, (v7 + 32 * v11 + 32));
          v9 += 24;
          --v6;
        }

        while (v6);
      }

      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
      *a1 = v7;
    }

    else
    {
      v13 = *v1;
      v15 = sub_1AB178A94(v13);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
      *a1 = v15;
    }
  }

  else if (*(v1 + 16))
  {
    if (v3 == 1)
    {
      v4 = MEMORY[0x1E69E63B0];
    }

    else
    {
      v4 = MEMORY[0x1E69E6530];
    }

    a1[3] = v4;
    *a1 = v2;
  }

  else
  {
    a1[3] = MEMORY[0x1E69E6370];
    *a1 = v2 & 1;
  }
}

uint64_t sub_1AB171280(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v262 = a1;
  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  v11 = -1 << v9;
  if (v9 < 64)
  {
    v10 = ~v11;
  }

  v12 = v10 & *(a1 + 64);
  v13 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v12)
        {
          v14 = __clz(__rbit64(v12));
          v264 = (v12 - 1) & v12;
          goto LABEL_13;
        }

        v15 = v7;
        do
        {
          v7 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
LABEL_195:
            v167 = v11;
            v168 = v12;
            sub_1AB16DB30(v11, v12, v6);
            sub_1AB16DB30(v5, v261, 3);
            v169 = v5;
            v170 = v261;
            v171 = 3;
            goto LABEL_201;
          }

          if (v7 >= v13)
          {
            return 1;
          }

          v16 = *(v8 + 8 * v7);
          ++v15;
        }

        while (!v16);
        v14 = __clz(__rbit64(v16));
        v264 = (v16 - 1) & v16;
LABEL_13:
        v17 = v14 | (v7 << 6);
        v18 = (*(a1 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(a1 + 56) + 24 * v17;
        v6 = *v21;
        v22 = *(v21 + 8);
        v5 = *(v21 + 16);

        v265 = v22;
        sub_1AB16DB30(v6, v22, v5);
        v23 = v20 == 0;
        if (!v20)
        {
          return v23;
        }

        v24 = sub_1AB014DB4(v19, v20);
        v26 = v25;

        if ((v26 & 1) == 0)
        {
          goto LABEL_238;
        }

        v27 = *(a2 + 56) + 24 * v24;
        v2 = *v27;
        v3 = *(v27 + 8);
        LODWORD(v4) = *(v27 + 16);
        if (v4 <= 2)
        {
          break;
        }

        if (v4 == 3)
        {
          if (v5 != 3)
          {
            goto LABEL_192;
          }

          v5 = v265;
          if (v2 == v6 && v3 == v265)
          {

            sub_1AB16DB5C(v6, v265, 3);
            goto LABEL_47;
          }

          LOBYTE(v4) = sub_1AB461DA4();

          sub_1AB16DB5C(v2, v3, 3);
          v32 = v6;
          v33 = v265;
          v34 = 3;
LABEL_43:
          sub_1AB16DB5C(v32, v33, v34);
          a1 = v262;
          v12 = v264;
          if ((v4 & 1) == 0)
          {
            return v23;
          }
        }

        else
        {
          if (v4 != 4)
          {
            if (v5 != 5)
            {
LABEL_192:

              goto LABEL_237;
            }

            sub_1AB16DB30(*v27, *(v27 + 8), 5);
            sub_1AB16DB30(v2, v3, 5);
            v5 = v265;
            sub_1AB16DB30(v6, v265, 5);
            LOBYTE(v4) = sub_1AB171280(v2, v6);
            sub_1AB16DB5C(v6, v265, 5);
            sub_1AB16DB5C(v2, v3, 5);
            sub_1AB16DB5C(v2, v3, 5);
            v32 = v6;
            v33 = v265;
            v34 = 5;
            goto LABEL_43;
          }

          if (v5 != 4)
          {
            goto LABEL_192;
          }

          v29 = *(v2 + 16);
          if (v29 != *(v6 + 16))
          {

            LOBYTE(v5) = 4;
            goto LABEL_237;
          }

          if (v29)
          {
            v5 = v265;
            if (v2 == v6)
            {

              v30 = v6;
LABEL_27:
              sub_1AB16DB5C(v30, v3, 4);
              goto LABEL_47;
            }

            v259 = v6 + 32;
            sub_1AB16DB30(v2, v3, 4);
            sub_1AB16DB30(v2, v3, 4);
            v36 = sub_1AB16DB30(v6, v265, 4);
            v40 = 0;
            v256 = v3;
            v257 = v29;
            v258 = v6;
            while (2)
            {
              v45 = *(v2 + 16);
              if (v40 >= v45)
              {
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                v197 = v45;
                v198 = v39;
                v200 = v38;
                sub_1AB16DB30(v36, v37, v39);
                v193 = v228;
                v194 = v228;
                v195 = v233;
                v196 = v233;
                v199 = 4;
LABEL_226:
                sub_1AB16DB30(v194, v196, v199);
                sub_1AB16DB5C(v193, v195, v6);
                sub_1AB16DB5C(v197, v200, v198);
LABEL_227:
                sub_1AB16DB5C(v238, v227, 4);
                sub_1AB16DB5C(v231, v232, 4);
                sub_1AB16DB5C(v231, v232, 4);
                v215 = v238;
                v216 = v227;
                goto LABEL_228;
              }

              v45 = *(v6 + 16);
              if (v40 >= v45)
              {
                goto LABEL_222;
              }

              v46 = v2 + 32 + 24 * v40;
              v5 = *v46;
              v260 = v40;
              v261 = *(v46 + 8);
              v47 = *(v46 + 16);
              v48 = v259 + 24 * v40;
              v11 = *v48;
              v12 = *(v48 + 8);
              LODWORD(v6) = *(v48 + 16);
              if (v47 <= 2)
              {
                if (v47)
                {
                  if (v47 == 1)
                  {
                    if (v6 == 1)
                    {
                      v49 = *&v5;
                      v50 = *v48;
                      v51 = v5;
                      v52 = v3;
                      v53 = *v48;
                      v54 = *(v48 + 8);
                      sub_1AB16DB5C(v51, v261, 1);
                      v55 = v53;
                      v3 = v52;
                      v36 = sub_1AB16DB5C(v55, v54, 1);
                      if (v49 != v50)
                      {
                        goto LABEL_236;
                      }

                      goto LABEL_50;
                    }

                    v167 = *v48;
                    v168 = *(v48 + 8);
                    sub_1AB16DB30(*v48, v168, *(v48 + 16));
                    v169 = v5;
                    v170 = v261;
                    v171 = 1;
LABEL_201:
                    sub_1AB16DB5C(v169, v170, v171);
                    v172 = v167;
                    v173 = v168;
                    v174 = v6;
LABEL_235:
                    sub_1AB16DB5C(v172, v173, v174);
LABEL_236:
                    LOBYTE(v5) = 4;
                    v6 = v258;
                    sub_1AB16DB5C(v258, v265, 4);
                    sub_1AB16DB5C(v2, v3, 4);
                    goto LABEL_237;
                  }

                  if (v6 != 2)
                  {
                    v167 = *v48;
                    v168 = *(v48 + 8);
                    sub_1AB16DB30(*v48, v168, *(v48 + 16));
                    v169 = v5;
                    v170 = v261;
                    v171 = 2;
                    goto LABEL_201;
                  }

                  v4 = *v48;
                  v67 = *(v48 + 8);
                  sub_1AB16DB5C(v5, v261, 2);
                  v68 = v67;
                  v3 = v256;
                  v36 = sub_1AB16DB5C(v4, v68, 2);
                  v28 = v5 == v4;
                  LOBYTE(v4) = 4;
                  if (!v28)
                  {
                    goto LABEL_236;
                  }
                }

                else
                {
                  if (*(v48 + 16))
                  {
                    v167 = *v48;
                    v168 = *(v48 + 8);
                    sub_1AB16DB30(*v48, v168, *(v48 + 16));
                    v169 = v5;
                    v170 = v261;
                    v171 = 0;
                    goto LABEL_201;
                  }

                  v59 = v3;
                  v60 = *v48;
                  v61 = *(v48 + 8);
                  sub_1AB16DB5C(v5, v261, 0);
                  v36 = sub_1AB16DB5C(v60, v61, 0);
                  v62 = v60 ^ v5;
                  v3 = v59;
                  if (v62)
                  {
                    goto LABEL_236;
                  }
                }

LABEL_50:
                v40 = v260 + 1;
                v6 = v258;
                if (v260 + 1 == v257)
                {
                  v5 = v265;
                  sub_1AB16DB5C(v258, v265, 4);
                  sub_1AB16DB5C(v2, v3, 4);
                  v30 = v2;
                  goto LABEL_27;
                }

                continue;
              }

              break;
            }

            if (v47 == 3)
            {
              if (v6 != 3)
              {
                goto LABEL_195;
              }

              if (v5 != v11 || v261 != v12)
              {
                v4 = *v48;
                v41 = *(v48 + 8);
                v42 = sub_1AB461DA4();
                sub_1AB16DB30(v4, v41, 3);
                sub_1AB16DB30(v5, v261, 3);
                sub_1AB16DB5C(v5, v261, 3);
                v43 = v4;
                LOBYTE(v4) = 4;
                v44 = v41;
                v3 = v256;
                v36 = sub_1AB16DB5C(v43, v44, 3);
                if ((v42 & 1) == 0)
                {
                  goto LABEL_236;
                }

                goto LABEL_50;
              }

              sub_1AB16DB30(v5, v261, 3);
              sub_1AB16DB30(v5, v261, 3);
              sub_1AB16DB5C(v5, v261, 3);
              v64 = v5;
              v65 = v261;
              v66 = 3;
              goto LABEL_79;
            }

            if (v47 != 4)
            {
              v69 = *v48;
              v70 = *(v48 + 8);
              if (v6 != 5)
              {
                v167 = *v48;
                v168 = *(v48 + 8);
                sub_1AB16DB30(v69, v70, *(v48 + 16));
                sub_1AB16DB30(v5, v261, 5);
                v169 = v5;
                v170 = v261;
                v171 = 5;
                goto LABEL_201;
              }

              v4 = *v48;
              v71 = *(v48 + 8);
              sub_1AB16DB30(v69, v70, 5);
              sub_1AB16DB30(v5, v261, 5);
              sub_1AB16DB30(v4, v71, 5);
              sub_1AB16DB30(v5, v261, 5);
              v72 = sub_1AB171280(v5, v4);
              sub_1AB16DB5C(v5, v261, 5);
              sub_1AB16DB5C(v4, v71, 5);
              v73 = v4;
              LOBYTE(v4) = 4;
              v74 = v71;
              v3 = v256;
              sub_1AB16DB5C(v73, v74, 5);
              v36 = sub_1AB16DB5C(v5, v261, 5);
              if ((v72 & 1) == 0)
              {
                goto LABEL_236;
              }

              goto LABEL_50;
            }

            if (v6 != 4)
            {
              v167 = *v48;
              v168 = *(v48 + 8);
              sub_1AB16DB30(*v48, v168, *(v48 + 16));
              sub_1AB16DB30(v5, v261, 4);
              v169 = v5;
              v170 = v261;
              v171 = 4;
              goto LABEL_201;
            }

            v56 = *(v5 + 16);
            if (v56 != *(v11 + 16))
            {
              v175 = *v48;
              v176 = *(v48 + 8);
              sub_1AB16DB30(*v48, v176, 4);
              sub_1AB16DB30(v5, v261, 4);
              sub_1AB16DB5C(v5, v261, 4);
              v172 = v175;
              v173 = v176;
              goto LABEL_234;
            }

            if (v56)
            {
              v57 = v5 == v11;
            }

            else
            {
              v57 = 1;
            }

            if (v57)
            {
              v4 = *v48;
              v58 = *(v48 + 8);
              sub_1AB16DB30(*v48, v58, 4);
              sub_1AB16DB30(v5, v261, 4);
              sub_1AB16DB5C(v5, v261, 4);
              v36 = sub_1AB16DB5C(v4, v58, 4);
              v3 = v256;
              LOBYTE(v4) = 4;
              goto LABEL_50;
            }

            v248 = v11 + 32;
            v249 = v5 + 32;
            v4 = *v48;
            v75 = *(v48 + 8);
            sub_1AB16DB30(v11, v12, 4);
            v245 = v56;
            sub_1AB16DB30(v5, v261, 4);
            v250 = v4;
            v230 = v75;
            sub_1AB16DB30(v4, v75, 4);
            v251 = v5;
            result = sub_1AB16DB30(v5, v261, 4);
            v77 = 0;
            v3 = v256;
            LOBYTE(v4) = 4;
            while (2)
            {
              if (v77 >= *(v251 + 16))
              {
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
LABEL_245:
                __break(1u);
LABEL_246:
                __break(1u);
                return result;
              }

              if (v77 >= *(v250 + 16))
              {
                goto LABEL_242;
              }

              v78 = v249 + 24 * v77;
              v80 = *v78;
              v79 = *(v78 + 8);
              v81 = *(v78 + 16);
              v82 = v248 + 24 * v77;
              v84 = *v82;
              v83 = *(v82 + 8);
              v85 = *(v82 + 16);
              if (v81 <= 2)
              {
                if (v81)
                {
                  if (v81 == 1)
                  {
                    if (v85 == 1)
                    {
                      v86 = *&v80;
                      v87 = *v82;
                      v88 = v80;
                      v89 = v77;
                      v90 = *v82;
                      v91 = *(v82 + 8);
                      sub_1AB16DB5C(v88, v79, 1);
                      v92 = v90;
                      v77 = v89;
                      result = sub_1AB16DB5C(v92, v91, 1);
                      if (v86 != v87)
                      {
                        goto LABEL_233;
                      }

                      goto LABEL_87;
                    }

                    v185 = v79;
                    v178 = *v82;
                    v179 = *(v82 + 8);
                    sub_1AB16DB30(*v82, v179, *(v82 + 16));
                    v180 = v80;
                    v181 = v185;
                    v182 = 1;
LABEL_209:
                    sub_1AB16DB5C(v180, v181, v182);
                    v187 = v178;
                    v188 = v179;
                    v189 = v85;
LABEL_232:
                    sub_1AB16DB5C(v187, v188, v189);
LABEL_233:
                    sub_1AB16DB5C(v251, v261, 4);
                    sub_1AB16DB5C(v250, v230, 4);
                    sub_1AB16DB5C(v250, v230, 4);
                    v172 = v251;
                    v173 = v261;
LABEL_234:
                    v174 = 4;
                    goto LABEL_235;
                  }

                  if (v85 != 2)
                  {
                    v184 = v79;
                    v178 = *v82;
                    v179 = *(v82 + 8);
                    sub_1AB16DB30(*v82, v179, *(v82 + 16));
                    v180 = v80;
                    v181 = v184;
                    v182 = 2;
                    goto LABEL_209;
                  }

                  v109 = *v82;
                  v255 = v77;
                  v110 = *(v82 + 8);
                  sub_1AB16DB5C(v80, v79, 2);
                  v111 = v110;
                  v77 = v255;
                  result = sub_1AB16DB5C(v109, v111, 2);
                  if (v80 != v109)
                  {
                    goto LABEL_233;
                  }
                }

                else
                {
                  if (*(v82 + 16))
                  {
                    v186 = v79;
                    v178 = *v82;
                    v179 = *(v82 + 8);
                    sub_1AB16DB30(*v82, v179, *(v82 + 16));
                    v180 = v80;
                    v181 = v186;
                    v182 = 0;
                    goto LABEL_209;
                  }

                  v253 = v77;
                  v99 = *v82;
                  v100 = *(v82 + 8);
                  sub_1AB16DB5C(v80, v79, 0);
                  result = sub_1AB16DB5C(v99, v100, 0);
                  v101 = v99 ^ v80;
                  v77 = v253;
                  if (v101)
                  {
                    goto LABEL_233;
                  }
                }

LABEL_87:
                if (++v77 != v56)
                {
                  continue;
                }

                sub_1AB16DB5C(v251, v261, 4);
                sub_1AB16DB5C(v250, v230, 4);
                LOBYTE(v4) = 4;
                v3 = v256;
                sub_1AB16DB5C(v250, v230, 4);
                v64 = v251;
                v65 = v261;
                v66 = 4;
LABEL_79:
                v36 = sub_1AB16DB5C(v64, v65, v66);
                goto LABEL_50;
              }

              break;
            }

            if (v81 == 3)
            {
              if (v85 != 3)
              {
                v177 = v79;
                v178 = *v82;
                v179 = *(v82 + 8);
                sub_1AB16DB30(*v82, v179, *(v82 + 16));
                sub_1AB16DB30(v80, v177, 3);
                v180 = v80;
                v181 = v177;
                v182 = 3;
                goto LABEL_209;
              }

              v28 = v80 == v84;
              v102 = v80;
              v103 = v80;
              v104 = v79;
              if (v28 && v79 == v83)
              {
                sub_1AB16DB30(v102, v79, 3);
                sub_1AB16DB30(v103, v104, 3);
                sub_1AB16DB5C(v103, v104, 3);
                result = sub_1AB16DB5C(v103, v104, 3);
                v56 = v245;
                goto LABEL_87;
              }

              v106 = *v82;
              v254 = v77;
              v107 = *(v82 + 8);
              v246 = sub_1AB461DA4();
              sub_1AB16DB30(v106, v107, 3);
              sub_1AB16DB30(v103, v104, 3);
              sub_1AB16DB5C(v103, v104, 3);
              v108 = v107;
              v77 = v254;
              result = sub_1AB16DB5C(v106, v108, 3);
              v56 = v245;
            }

            else
            {
              v252 = v77;
              if (v81 == 4)
              {
                if (v85 != 4)
                {
                  v183 = v79;
                  v178 = *v82;
                  v179 = *(v82 + 8);
                  sub_1AB16DB30(v84, v83, v85);
                  sub_1AB16DB30(v80, v183, 4);
                  v180 = v80;
                  v181 = v183;
                  v182 = 4;
                  goto LABEL_209;
                }

                v93 = *(v80 + 16);
                if (v93 != *(v84 + 16))
                {
                  v190 = v79;
                  v191 = *v82;
                  v192 = *(v82 + 8);
                  sub_1AB16DB30(v84, v83, 4);
                  sub_1AB16DB30(v80, v190, 4);
                  sub_1AB16DB5C(v80, v190, 4);
                  v187 = v191;
                  v188 = v192;
                  goto LABEL_231;
                }

                v234 = v79;
                if (v93)
                {
                  v94 = v80 == v84;
                }

                else
                {
                  v94 = 1;
                }

                if (v94)
                {
                  v95 = *v82;
                  v96 = *(v82 + 8);
                  sub_1AB16DB30(v84, v83, 4);
                  sub_1AB16DB30(v80, v234, 4);
                  v56 = v245;
                  sub_1AB16DB5C(v80, v234, 4);
                  v97 = v95;
                  v98 = v96;
LABEL_106:
                  result = sub_1AB16DB5C(v97, v98, 4);
                  v77 = v252;
                  goto LABEL_87;
                }

                v242 = v84 + 32;
                v243 = v80 + 32;
                v114 = *v82;
                v115 = *(v82 + 8);
                sub_1AB16DB30(v84, v83, 4);
                v235 = v80;
                sub_1AB16DB30(v80, v234, 4);
                v244 = v114;
                v237 = v115;
                sub_1AB16DB30(v114, v115, 4);
                result = sub_1AB16DB30(v80, v234, 4);
                v116 = 0;
                v236 = v93;
                while (2)
                {
                  if (v116 >= *(v80 + 16))
                  {
                    goto LABEL_243;
                  }

                  if (v116 >= *(v244 + 16))
                  {
                    goto LABEL_244;
                  }

                  v119 = v243 + 24 * v116;
                  v120 = *v119;
                  v121 = *(v119 + 8);
                  v122 = *(v119 + 16);
                  v123 = v242 + 24 * v116;
                  v125 = *v123;
                  v124 = *(v123 + 8);
                  v126 = *(v123 + 16);
                  v247 = v116;
                  if (v122 <= 2)
                  {
                    if (v122)
                    {
                      if (v122 == 1)
                      {
                        if (v126 == 1)
                        {
                          v127 = *&v120;
                          sub_1AB16DB5C(v120, v121, 1);
                          result = sub_1AB16DB5C(v125, v124, 1);
                          if (v127 != *&v125)
                          {
                            goto LABEL_230;
                          }

                          goto LABEL_124;
                        }

                        v218 = v120;
                        v208 = *(v123 + 8);
                        v219 = v121;
                        sub_1AB16DB30(v125, v208, v126);
                        v210 = v218;
                        v211 = v219;
                        v212 = 1;
LABEL_219:
                        sub_1AB16DB5C(v210, v211, v212);
                        sub_1AB16DB5C(v125, v208, v126);
LABEL_230:
                        sub_1AB16DB5C(v80, v234, 4);
                        sub_1AB16DB5C(v244, v237, 4);
                        sub_1AB16DB5C(v244, v237, 4);
                        v187 = v80;
                        v188 = v234;
LABEL_231:
                        v189 = 4;
                        goto LABEL_232;
                      }

                      if (v126 != 2)
                      {
                        v207 = v120;
                        v208 = *(v123 + 8);
                        v209 = v121;
                        sub_1AB16DB30(v125, v208, v126);
                        v210 = v207;
                        v211 = v209;
                        v212 = 2;
                        goto LABEL_219;
                      }

                      v139 = v120;
                      sub_1AB16DB5C(v120, v121, 2);
                      result = sub_1AB16DB5C(v125, v124, 2);
                      v28 = v139 == v125;
                      v80 = v235;
                      if (!v28)
                      {
                        goto LABEL_230;
                      }
                    }

                    else
                    {
                      if (*(v123 + 16))
                      {
                        v220 = v120;
                        v208 = *(v123 + 8);
                        v221 = v121;
                        sub_1AB16DB30(v125, v208, v126);
                        v210 = v220;
                        v211 = v221;
                        v212 = 0;
                        goto LABEL_219;
                      }

                      v133 = v120;
                      sub_1AB16DB5C(v120, v121, 0);
                      result = sub_1AB16DB5C(v125, v124, 0);
                      if ((v125 ^ v133))
                      {
                        goto LABEL_230;
                      }
                    }

LABEL_124:
                    v116 = v247 + 1;
                    if (v247 + 1 == v236)
                    {
                      sub_1AB16DB5C(v80, v234, 4);
                      sub_1AB16DB5C(v244, v237, 4);
                      sub_1AB16DB5C(v244, v237, 4);
                      v97 = v80;
                      v56 = v245;
                      v98 = v234;
                      goto LABEL_106;
                    }

                    continue;
                  }

                  break;
                }

                if (v122 == 3)
                {
                  if (v126 != 3)
                  {
                    v213 = v120;
                    v208 = *(v123 + 8);
                    v214 = v121;
                    sub_1AB16DB30(v125, v208, v126);
                    sub_1AB16DB30(v213, v214, 3);
                    v210 = v213;
                    v211 = v214;
                    v212 = 3;
                    goto LABEL_219;
                  }

                  if (v120 == v125 && v121 == v124)
                  {
                    v117 = v120;
                    v118 = v121;
                    sub_1AB16DB30(v120, v121, 3);
                    sub_1AB16DB30(v117, v118, 3);
                    sub_1AB16DB5C(v117, v118, 3);
                    result = sub_1AB16DB5C(v117, v118, 3);
                    goto LABEL_124;
                  }

                  v135 = v120;
                  v136 = *(v123 + 8);
                  v137 = v121;
                  v240 = sub_1AB461DA4();
                  sub_1AB16DB30(v125, v136, 3);
                  sub_1AB16DB30(v135, v137, 3);
                  v138 = v135;
                  v80 = v235;
                  sub_1AB16DB5C(v138, v137, 3);
                  result = sub_1AB16DB5C(v125, v136, 3);
                }

                else
                {
                  v238 = v120;
                  v232 = *(v123 + 8);
                  if (v122 == 4)
                  {
                    if (v126 == 4)
                    {
                      v128 = *(v120 + 16);
                      if (v128 == *(v125 + 16))
                      {
                        v227 = v121;
                        if (v128)
                        {
                          v129 = v120 == v125;
                        }

                        else
                        {
                          v129 = 1;
                        }

                        v130 = v120;
                        if (v129)
                        {
                          sub_1AB16DB30(v125, v232, 4);
                          sub_1AB16DB30(v130, v227, 4);
                          sub_1AB16DB5C(v130, v227, 4);
                          v131 = v125;
                          v132 = v232;
LABEL_143:
                          result = sub_1AB16DB5C(v131, v132, 4);
                          v80 = v235;
                          goto LABEL_124;
                        }

                        sub_1AB16DB30(v125, v232, 4);
                        v229 = v128;
                        sub_1AB16DB30(v130, v227, 4);
                        sub_1AB16DB30(v125, v232, 4);
                        result = sub_1AB16DB30(v130, v227, 4);
                        v141 = 0;
                        v231 = v125;
                        v142 = (v125 + 48);
                        v143 = (v130 + 48);
                        while (2)
                        {
                          if (v141 >= *(v130 + 16))
                          {
                            goto LABEL_245;
                          }

                          if (v141 >= *(v231 + 16))
                          {
                            goto LABEL_246;
                          }

                          v150 = *(v143 - 2);
                          v151 = *(v143 - 1);
                          LODWORD(v6) = *v143;
                          v45 = *(v142 - 2);
                          v38 = *(v142 - 1);
                          v39 = *v142;
                          v239 = v142;
                          v241 = v143;
                          if (v6 <= 2)
                          {
                            if (*v143)
                            {
                              if (v6 == 1)
                              {
                                if (v39 != 1)
                                {
                                  goto LABEL_211;
                                }

                                v152 = *(v143 - 2);
                                v153 = *(v142 - 2);
                                v154 = *(v142 - 1);
                                sub_1AB16DB5C(v150, v151, 1);
                                result = sub_1AB16DB5C(v153, v154, 1);
                                if (v152 != *&v153)
                                {
                                  goto LABEL_227;
                                }
                              }

                              else
                              {
                                if (v39 != 2)
                                {
LABEL_211:
                                  v193 = *(v143 - 2);
                                  v194 = *(v142 - 2);
                                  v195 = *(v143 - 1);
                                  v196 = v38;
                                  v197 = v45;
                                  v198 = v39;
                                  v199 = v39;
                                  v200 = v38;
                                  goto LABEL_226;
                                }

                                v162 = *(v143 - 2);
                                v163 = v45;
                                v164 = v38;
                                sub_1AB16DB5C(v150, v151, 2);
                                result = sub_1AB16DB5C(v163, v164, 2);
                                if (v162 != v163)
                                {
                                  goto LABEL_227;
                                }
                              }
                            }

                            else
                            {
                              if (*v142)
                              {
                                goto LABEL_211;
                              }

                              v157 = *(v143 - 2);
                              v158 = v45;
                              v159 = v38;
                              sub_1AB16DB5C(v150, v151, 0);
                              result = sub_1AB16DB5C(v158, v159, 0);
                              if ((v158 ^ v157))
                              {
                                goto LABEL_227;
                              }
                            }

                            goto LABEL_162;
                          }

                          if (v6 == 3)
                          {
                            if (v39 != 3)
                            {
                              v193 = *(v143 - 2);
                              v195 = *(v143 - 1);
                              v197 = v45;
                              v198 = v39;
                              v200 = v38;
                              sub_1AB16DB30(v45, v38, v39);
                              v194 = v193;
                              v196 = v195;
                              v199 = 3;
                              goto LABEL_226;
                            }

                            if (v150 != v45 || v151 != v38)
                            {
                              v144 = *(v143 - 2);
                              v233 = *(v143 - 1);
                              v145 = *(v142 - 2);
                              v225 = v45;
                              v146 = v38;
                              v224 = sub_1AB461DA4();
                              sub_1AB16DB30(v145, v146, 3);
                              sub_1AB16DB30(v144, v233, 3);
                              sub_1AB16DB5C(v144, v233, 3);
                              v147 = v225;
                              v148 = v146;
                              v149 = 3;
                              goto LABEL_161;
                            }

                            v160 = *(v143 - 2);
                            v161 = *(v143 - 1);
                            sub_1AB16DB30(v150, v151, 3);
                            sub_1AB16DB30(v160, v161, 3);
                            sub_1AB16DB5C(v160, v161, 3);
                            result = sub_1AB16DB5C(v160, v161, 3);
                          }

                          else
                          {
                            v228 = *(v143 - 2);
                            v233 = *(v143 - 1);
                            v226 = *(v142 - 1);
                            v36 = *(v142 - 2);
                            v37 = v226;
                            if (v6 == 4)
                            {
                              if (v39 != 4)
                              {
                                goto LABEL_223;
                              }

                              v155 = *(v142 - 2);
                              v156 = *(v142 - 1);
                              sub_1AB16DB30(v45, v38, 4);
                              sub_1AB16DB30(v228, v233, 4);
                              sub_1AB16DB30(v155, v156, 4);
                              sub_1AB16DB30(v228, v233, 4);
                              v224 = sub_1AB16D4A4(v228, v155);
                              sub_1AB16DB5C(v228, v233, 4);
                              sub_1AB16DB5C(v155, v226, 4);
                              sub_1AB16DB5C(v155, v226, 4);
                              v147 = v228;
                              v148 = v233;
                              v149 = 4;
                            }

                            else
                            {
                              if (v39 != 5)
                              {
                                v197 = *(v142 - 2);
                                v198 = *v142;
                                v200 = *(v142 - 1);
                                sub_1AB16DB30(v45, v38, v39);
                                v193 = v228;
                                v194 = v228;
                                v195 = v233;
                                v196 = v233;
                                v199 = 5;
                                goto LABEL_226;
                              }

                              v165 = *(v142 - 2);
                              v166 = v38;
                              sub_1AB16DB30(v45, v38, 5);
                              sub_1AB16DB30(v228, v233, 5);
                              sub_1AB16DB30(v165, v166, 5);
                              sub_1AB16DB30(v228, v233, 5);
                              v224 = sub_1AB171280(v228, v165);
                              sub_1AB16DB5C(v228, v233, 5);
                              sub_1AB16DB5C(v165, v226, 5);
                              sub_1AB16DB5C(v165, v226, 5);
                              v147 = v228;
                              v148 = v233;
                              v149 = 5;
                            }

LABEL_161:
                            result = sub_1AB16DB5C(v147, v148, v149);
                            if ((v224 & 1) == 0)
                            {
                              goto LABEL_227;
                            }
                          }

LABEL_162:
                          ++v141;
                          v142 = v239 + 24;
                          v143 = v241 + 24;
                          v130 = v238;
                          if (v229 == v141)
                          {
                            sub_1AB16DB5C(v238, v227, 4);
                            sub_1AB16DB5C(v231, v232, 4);
                            sub_1AB16DB5C(v231, v232, 4);
                            v131 = v238;
                            v132 = v227;
                            goto LABEL_143;
                          }

                          continue;
                        }
                      }

                      v222 = v120;
                      v223 = v121;
                      sub_1AB16DB30(v125, v232, 4);
                      sub_1AB16DB30(v222, v223, 4);
                      sub_1AB16DB5C(v222, v223, 4);
                      v215 = v125;
                      v216 = v232;
LABEL_228:
                      v217 = 4;
LABEL_229:
                      sub_1AB16DB5C(v215, v216, v217);
                      v80 = v235;
                      goto LABEL_230;
                    }

                    v201 = v120;
                    v202 = v121;
                    v203 = *(v123 + 8);
                    sub_1AB16DB30(v125, v232, v126);
                    sub_1AB16DB30(v201, v202, 4);
                    v204 = v201;
                    v205 = v202;
                    v206 = 4;
LABEL_216:
                    sub_1AB16DB5C(v204, v205, v206);
                    v215 = v125;
                    v216 = v203;
                    v217 = v126;
                    goto LABEL_229;
                  }

                  v140 = v121;
                  if (v126 != 5)
                  {
                    v203 = *(v123 + 8);
                    sub_1AB16DB30(v125, v232, v126);
                    sub_1AB16DB30(v238, v140, 5);
                    v204 = v238;
                    v205 = v140;
                    v206 = 5;
                    goto LABEL_216;
                  }

                  sub_1AB16DB30(v125, v232, 5);
                  sub_1AB16DB30(v238, v140, 5);
                  sub_1AB16DB30(v125, v232, 5);
                  sub_1AB16DB30(v238, v140, 5);
                  v240 = sub_1AB171280(v238, v125);
                  sub_1AB16DB5C(v238, v140, 5);
                  sub_1AB16DB5C(v125, v232, 5);
                  sub_1AB16DB5C(v125, v232, 5);
                  result = sub_1AB16DB5C(v238, v140, 5);
                  v80 = v235;
                }

                if ((v240 & 1) == 0)
                {
                  goto LABEL_230;
                }

                goto LABEL_124;
              }

              v112 = v79;
              if (v85 != 5)
              {
                v178 = *v82;
                v179 = *(v82 + 8);
                sub_1AB16DB30(v84, v83, v85);
                sub_1AB16DB30(v80, v112, 5);
                v180 = v80;
                v181 = v112;
                v182 = 5;
                goto LABEL_209;
              }

              v113 = *v82;
              v237 = *(v82 + 8);
              sub_1AB16DB30(v84, v83, 5);
              sub_1AB16DB30(v80, v112, 5);
              sub_1AB16DB30(v113, v237, 5);
              sub_1AB16DB30(v80, v112, 5);
              v246 = sub_1AB171280(v80, v113);
              sub_1AB16DB5C(v80, v112, 5);
              sub_1AB16DB5C(v113, v237, 5);
              sub_1AB16DB5C(v113, v237, 5);
              v56 = v245;
              result = sub_1AB16DB5C(v80, v112, 5);
              v77 = v252;
            }

            if ((v246 & 1) == 0)
            {
              goto LABEL_233;
            }

            goto LABEL_87;
          }

          sub_1AB16DB5C(v35, v3, 4);
          v5 = v265;
LABEL_47:
          sub_1AB16DB5C(v6, v5, v4);
          a1 = v262;
          v12 = v264;
        }
      }

      if (*(v27 + 16))
      {
        break;
      }

      sub_1AB16DB5C(*v27, *(v27 + 8), 0);
      if (v5)
      {
        goto LABEL_238;
      }

      sub_1AB16DB5C(v6, v265, 0);
      a1 = v262;
      v12 = v264;
      if ((v2 ^ v6))
      {
        return v23;
      }
    }

    if (v4 == 1)
    {
      break;
    }

    sub_1AB16DB5C(*v27, *(v27 + 8), 2);
    if (v5 != 2)
    {
      goto LABEL_238;
    }

    sub_1AB16DB5C(v6, v265, 2);
    v28 = v2 == v6;
LABEL_39:
    a1 = v262;
    v12 = v264;
    if (!v28)
    {
      return v23;
    }
  }

  if (v5 == 1)
  {
    sub_1AB16DB5C(*v27, *(v27 + 8), 1);
    sub_1AB16DB5C(v6, v265, 1);
    v28 = *&v2 == *&v6;
    goto LABEL_39;
  }

LABEL_237:
  sub_1AB16DB5C(v2, v3, v4);
LABEL_238:
  sub_1AB16DB5C(v6, v265, v5);
  return 0;
}

void sub_1AB172D0C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v32 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v34 = (v7 - 1) & v7;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(a1 + 56) + 24 * v11;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);

    sub_1AB163984(v17, v16, v18);
    if (!v14)
    {
      return;
    }

    v19 = sub_1AB014DB4(v13, v14);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_31;
    }

    v22 = *(v2 + 56) + 24 * v19;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25)
    {
      if ((v18 & 1) == 0)
      {
        v31 = v24;
        goto LABEL_30;
      }

      sub_1AB016760(0, &qword_1ED4D1048);
      sub_1AB163984(v24, v23, 1);
      sub_1AB163984(v24, v23, 1);
      sub_1AB163984(v17, v16, 1);
      v26 = sub_1AB4612C4();
      sub_1AB163994(v17, v16, 1);
      sub_1AB163994(v24, v23, 1);
      sub_1AB163994(v24, v23, 1);
      v27 = v17;
      v28 = v16;
      v29 = 1;
LABEL_24:
      sub_1AB163994(v27, v28, v29);
      v2 = a2;
      v7 = v34;
      if ((v26 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v18)
      {

LABEL_30:
        v18 = v25 ^ 1;
        sub_1AB163994(v24, v23, v25);
LABEL_31:
        sub_1AB163994(v17, v16, v18);
        return;
      }

      if (v24 != v17 || v23 != v16)
      {
        v26 = sub_1AB461DA4();

        sub_1AB163994(v24, v23, 0);
        v27 = v17;
        v28 = v16;
        v29 = 0;
        goto LABEL_24;
      }

      sub_1AB163994(v17, v16, 0);
      sub_1AB163994(v17, v16, 0);
      v2 = a2;
      v7 = v34;
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v32)
    {
      return;
    }

    v10 = *(a1 + 64 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v34 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1AB173000(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1AB014DB4(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1AB461DA4();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t ScalarDictionary.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{

  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v5 = v15;
  if (!v15)
  {
    sub_1AB014AC0(v14, &qword_1EB436BA0);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    goto LABEL_6;
  }

  v6 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v6 + 160))(&v17, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!*(&v18 + 1))
  {
LABEL_6:
    sub_1AB014AC0(&v17, &qword_1EB436BC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AB4D4720;
    sub_1AB163664();
    *(v11 + 32) = swift_allocError();
    *v12 = xmmword_1AB4D6780;
    *(v12 + 16) = 0x20000001F1FF6C38uLL;
    *(v12 + 24) = 0;
    swift_allocError();
    *v13 = &type metadata for ScalarDictionary;
    v13[1] = v11;
    v13[2] = 0;
    v13[3] = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v20[0] = v17;
  v20[1] = v18;
  v7 = v19;
  v21 = v19;
  v8 = *(&v18 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v20, *(&v18 + 1));
  v9 = (*(v7 + 48))(sub_1AB1733D4, 0, MEMORY[0x1E69E6158], &type metadata for ScalarDictionary.Value, MEMORY[0x1E69E6168], v8, v7);
  sub_1AB066D84(a1);
  result = sub_1AB07CDB0(v20);
  if (!v2)
  {
    *a2 = v9;
  }

  return result;
}

uint64_t sub_1AB1733D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1AB014A58(a3, v15, &qword_1EB436BA0);
  v8 = v16;
  if (!v16)
  {
    sub_1AB014AC0(v15, &qword_1EB436BA0);
LABEL_6:
    sub_1AB163664();
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    v14 = MEMORY[0x1E69E7CC0];
    v13[2] = 0x40000001F1FF6C38uLL;
    v13[3] = v14;
    swift_willThrow();
  }

  v9 = v17;
  __swift_project_boxed_opaque_existential_1Tm(v15, v16);
  (*(v9 + 168))(&v18, v8, v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v4)
  {
    return result;
  }

  v11 = v19;
  if (v19 == 255)
  {
    goto LABEL_6;
  }

  v12 = v18;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  *(a4 + 32) = v11;
}

uint64_t ScalarDictionary.init(tryDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  sub_1AB014A58(a1, v14, &qword_1EB436BA0);
  v6 = v15;
  if (!v15)
  {

    sub_1AB014AC0(v14, &qword_1EB436BA0);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
LABEL_6:
    sub_1AB066D84(a1);
    result = sub_1AB014AC0(&v17, &qword_1EB436BC0);
    v11 = MEMORY[0x1E69E7CC8];
    goto LABEL_7;
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v7 + 160))(&v17, v6, v7);
  v8 = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (!*(&v18 + 1))
  {

    goto LABEL_6;
  }

  v20 = v17;
  v21 = v18;
  v22 = v19;
  MEMORY[0x1EEE9AC00](v8);
  v13[2] = v5;
  v9 = *(&v21 + 1);
  v10 = v22;
  __swift_project_boxed_opaque_existential_1Tm(&v20, *(&v21 + 1));
  v11 = (*(v10 + 48))(sub_1AB1797C4, v13, MEMORY[0x1E69E6158], &type metadata for ScalarDictionary.Value, MEMORY[0x1E69E6168], v9, v10);

  sub_1AB066D84(a1);
  result = sub_1AB07CDB0(&v20);
LABEL_7:
  *a3 = v11;
  return result;
}

uint64_t sub_1AB1736EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AB014A58(a3, v24, &qword_1EB436BA0);
  v9 = v25;
  if (!v25)
  {
    sub_1AB014AC0(v24, &qword_1EB436BA0);
    v21 = 0u;
    v22 = 0u;
    goto LABEL_6;
  }

  v10 = v26;
  __swift_project_boxed_opaque_existential_1Tm(v24, v25);
  (*(v10 + 120))(&v21, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  if (!*(&v22 + 1))
  {
LABEL_6:
    v14 = &unk_1EB437E60;
    goto LABEL_7;
  }

  sub_1AB014B78(&v21, v27);
  sub_1AB0165C4(v27, v24);
  ScalarDictionary.Value.init(rawValue:)(v24, &v21);
  v11 = v22;
  if (v22 != 255)
  {
    v12 = v21;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = v12;
    *(a5 + 32) = v11;
  }

  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a4, v24);
  sub_1AB014A58(v24, &v21, &qword_1EB436EC0);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    v16 = v23;
    __swift_project_boxed_opaque_existential_1Tm(&v21, *(&v22 + 1));
    sub_1AB163664();
    v17 = swift_allocError();
    v18 = MEMORY[0x1E69E7CC0];
    *v19 = a1;
    v19[1] = a2;
    v19[2] = 0x40000001F1FF6C38uLL;
    v19[3] = v18;
    v20 = *(v16 + 8);

    v20(&type metadata for ScalarDictionary.Value, v17, v15, v16);

    sub_1AB014AC0(v24, &qword_1EB436EC0);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);

    result = __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    goto LABEL_8;
  }

  sub_1AB014AC0(v24, &qword_1EB436EC0);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v14 = &qword_1EB436EC0;
LABEL_7:
  result = sub_1AB014AC0(&v21, v14);
LABEL_8:
  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  return result;
}

Swift::Bool __swiftcall ScalarDictionary.contains(_:)(Swift::String a1)
{
  if (*(*v1 + 16))
  {
    sub_1AB014DB4(a1._countAndFlagsBits, a1._object);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ScalarDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = sub_1AB014DB4(a1, a2), (v5 & 1) != 0) && (v6 = (*(v3 + 56) + 24 * v4), !v6[16]))
  {
    return *v6 & 1;
  }

  else
  {
    return 2;
  }
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1AB014DB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(v3 + 56) + 24 * v4);
  if (v6[16] == 1)
  {
    return *v6;
  }

  else
  {
    return 0;
  }
}

{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = sub_1AB014DB4(a1, a2), (v5 & 1) != 0) && (v6 = (*(v3 + 56) + 24 * v4), v6[16] == 2))
  {
    return *v6;
  }

  else
  {
    return 0;
  }
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1AB014DB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 24 * v4;
  if (*(v6 + 16) != 3)
  {
    return 0;
  }

  v7 = *v6;

  return v7;
}

{
  v3 = *v2;
  if (*(v3 + 16) && (v4 = sub_1AB014DB4(a1, a2), (v5 & 1) != 0) && *(*(v3 + 56) + 24 * v4 + 16) == 5)
  {
  }

  else
  {
    return 0;
  }
}

{
  v3 = *v2;
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = sub_1AB014DB4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 56) + 24 * v4;
  if (*(v6 + 16) != 4)
  {
    return 0;
  }

  v8 = *v6;
  v7 = *(v6 + 8);
  MEMORY[0x1EEE9AC00](v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DB0);
  sub_1AB01561C(&qword_1EB436DB8, &qword_1EB436DB0);
  v9 = sub_1AB460814();
  sub_1AB16DB5C(v8, v7, 4);
  return v9;
}

unint64_t sub_1AB173A24@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1AB014DB4(*a2, a2[1]), (v5 & 1) != 0) && (v6 = (*(v4 + 56) + 24 * result), !v6[16]))
  {
    v7 = *v6 & 1;
  }

  else
  {
    v7 = 2;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1AB173A88(unsigned __int8 *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *a1;

  if (v6 == 2)
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v5, v4, v9);

    return sub_1AB170DC4(v9[0], v9[1], v10);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1AB1D5558(v6 & 1, 0, 0, v5, v4, isUniquelyReferenced_nonNull_native);

    *a2 = v9[0];
  }

  return result;
}

uint64_t ScalarDictionary.subscript.setter(char a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 2)
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a2, a3, v9);

    return sub_1AB170DC4(v9[0], v9[1], v10);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_1AB1D5558(a1 & 1, 0, 0, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9[0];
  }

  return result;
}

uint64_t (*ScalarDictionary.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_1AB014DB4(a2, a3), (v7 & 1) != 0) && (v8 = (*(v5 + 56) + 24 * v6), !v8[16]))
  {
    v9 = *v8 & 1;
  }

  else
  {
    v9 = 2;
  }

  *(a1 + 24) = v9;
  return sub_1AB173C88;
}

uint64_t sub_1AB173C88(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 24);
  if (v4 == 2)
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v3, v2, v7);
    return sub_1AB170DC4(v7[0], v7[1], v8);
  }

  else
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7[0] = *v1;
    *v1 = 0x8000000000000000;
    sub_1AB1D5558(v4 & 1, 0, 0, v3, v2, isUniquelyReferenced_nonNull_native);

    *v1 = v7[0];
  }

  return result;
}

unint64_t sub_1AB173D98@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1AB014DB4(*a2, a2[1]), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    LODWORD(v6) = *(v6 + 16);
    v8 = v6 == 1;
    v9 = v6 != 1;
    if (!v8)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  return result;
}

uint64_t ScalarDictionary.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  return sub_1AB174090(a1, a2, a3, a4, 1);
}

{
  return sub_1AB174090(a1, a2, a3, a4, 2);
}

void (*ScalarDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1AB014DB4(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 24 * v10;
    v13 = *v12;
    LODWORD(v12) = *(v12 + 16);
    v14 = v12 == 1;
    v15 = v12 != 1;
    if (!v14)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 1;
  }

  *v8 = v13;
  *(v8 + 8) = v15;
  return sub_1AB173EE4;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1AB014DB4(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(v9 + 56) + 24 * v10;
    v13 = *v12;
    LODWORD(v12) = *(v12 + 16);
    v14 = v12 == 2;
    v15 = v12 != 2;
    if (!v14)
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v15 = 1;
  }

  *v8 = v13;
  *(v8 + 8) = v15;
  return sub_1AB174224;
}

unint64_t sub_1AB173F48@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_1AB014DB4(*a2, a2[1]), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    LODWORD(v6) = *(v6 + 16);
    v8 = v6 == 2;
    v9 = v6 != 2;
    if (!v8)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v9 = 1;
  }

  *a3 = v7;
  *(a3 + 8) = v9;
  return result;
}

uint64_t sub_1AB173FB8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = *a3;
  v6 = a3[1];
  if (*(a1 + 8))
  {

    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v7, v6, v12);

    return sub_1AB170DC4(v12[0], v12[1], v13);
  }

  else
  {
    v10 = *a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1AB1D5558(v10, 0, a5, v7, v6, isUniquelyReferenced_nonNull_native);

    *a2 = v12[0];
  }

  return result;
}

uint64_t sub_1AB174090(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a3, a4, v12);

    return sub_1AB170DC4(v12[0], v12[1], v13);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v5;
    *v5 = 0x8000000000000000;
    sub_1AB1D5558(a1, 0, a5, a3, a4, isUniquelyReferenced_nonNull_native);

    *v5 = v12[0];
  }

  return result;
}

void sub_1AB17422C(uint64_t **a1, uint64_t a2, char a3)
{
  v3 = *a1;
  v5 = (*a1)[3];
  v4 = (*a1)[4];
  v6 = (*a1)[2];
  if ((*a1)[1])
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0((*a1)[2], v5, v10);
    sub_1AB170DC4(v10[0], v10[1], v11);
  }

  else
  {
    v7 = *v3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *v4;
    *v4 = 0x8000000000000000;
    sub_1AB1D5558(v7, 0, a3, v6, v5, isUniquelyReferenced_nonNull_native);

    *v4 = v10[0];
  }

  free(v3);
}

uint64_t sub_1AB174370(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = a1[1];
  if (v6)
  {
    v7 = *a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1AB1D5558(v7, v6, 3, v5, v4, isUniquelyReferenced_nonNull_native);

    *a2 = v10[0];
  }

  else
  {

    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v5, v4, v10);

    return sub_1AB170DC4(v10[0], v10[1], v11);
  }

  return result;
}

uint64_t ScalarDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *v4;
    *v4 = 0x8000000000000000;
    sub_1AB1D5558(a1, a2, 3, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v11[0];
  }

  else
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a3, a4, v11);

    return sub_1AB170DC4(v11[0], v11[1], v12);
  }

  return result;
}

void (*ScalarDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1AB014DB4(a2, a3), (v11 & 1) != 0) && (v12 = *(v9 + 56) + 24 * v10, *(v12 + 16) == 3))
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  *v8 = v13;
  v8[1] = v14;
  return sub_1AB1745D0;
}

void sub_1AB1745D0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v6 = (*a1)[1];
  v5 = (*a1)[2];
  if (a2)
  {
    if (v6)
    {
      v7 = *v2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      *v3 = 0x8000000000000000;
      sub_1AB1D5558(v7, v6, 3, v5, v4, isUniquelyReferenced_nonNull_native);

      *v3 = v11;
    }

    else
    {
      _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0((*a1)[2], v4, &v11);
      sub_1AB170DC4(v11, v12, v13);
    }
  }

  else if (v6)
  {
    v9 = *v2;

    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    *v3 = 0x8000000000000000;
    sub_1AB1D5558(v9, v6, 3, v5, v4, v10);

    *v3 = v11;
  }

  else
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0((*a1)[2], v4, &v11);
    sub_1AB170DC4(v11, v12, v13);
  }

  free(v2);
}

uint64_t sub_1AB174794(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *a1;
  if (*a1)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = *a2;
    *a2 = 0x8000000000000000;
    sub_1AB1D5558(v6, 0, 5, v5, v4, isUniquelyReferenced_nonNull_native);

    *a2 = v9[0];
  }

  else
  {

    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(v5, v4, v9);

    return sub_1AB170DC4(v9[0], v9[1], v10);
  }

  return result;
}

uint64_t ScalarDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_1AB1D5558(a1, 0, 5, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9[0];
  }

  else
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a2, a3, v9);

    return sub_1AB170DC4(v9[0], v9[1], v10);
  }

  return result;
}

{
  if (a1)
  {
    v9[0] = a1;
    MEMORY[0x1EEE9AC00](a1);
    sub_1AB460A64();
    swift_getWitnessTable();
    v6 = sub_1AB460814();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_1AB1D5558(v6, 0, 4, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9[0];
  }

  else
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a2, a3, v9);

    return sub_1AB170DC4(v9[0], v9[1], v10);
  }

  return result;
}

uint64_t (*ScalarDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_1AB014DB4(a2, a3), (v7 & 1) != 0) && *(*(v5 + 56) + 24 * v6 + 16) == 5)
  {
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return sub_1AB1749A8;
}

uint64_t sub_1AB1749A8(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    if (v4)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      *v2 = 0x8000000000000000;
      sub_1AB1D5558(v4, 0, 5, v5, v3, isUniquelyReferenced_nonNull_native);

      *v2 = v9;
    }

    else
    {
      _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a1[1], v3, &v9);
      sub_1AB170DC4(v9, v10, v11);
    }
  }

  else if (v4)
  {

    v7 = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    *v2 = 0x8000000000000000;
    sub_1AB1D5558(v4, 0, 5, v5, v3, v7);

    *v2 = v9;
  }

  else
  {
    _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0(a1[1], v3, &v9);
    return sub_1AB170DC4(v9, v10, v11);
  }

  return result;
}

uint64_t sub_1AB174C4C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v9 = *a1;
  v10 = v5;
  ScalarDictionary.Value.rawValue.getter(v8);
  v6 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v6 ^ 1u, 1, a2);
}

uint64_t sub_1AB174E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8[3] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v8);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  return ScalarDictionary.Value.init(rawValue:)(v8, a3);
}

void (*ScalarDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x30uLL);
  }

  *a1 = v11;
  v11[4] = a5;
  v11[5] = v5;
  v11[2] = a3;
  v11[3] = a4;
  v11[1] = a2;
  *v11 = ScalarDictionary.subscript.getter(a2, a3);
  return sub_1AB174FA0;
}

void sub_1AB174FA0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if (a2)
  {

    ScalarDictionary.subscript.setter(v5, v4, v3);
  }

  else
  {

    ScalarDictionary.subscript.setter(v5, v4, v3);
  }

  free(v2);
}

uint64_t ScalarDictionary.merge(_:uniquingKeysWith:)(uint64_t *a1, void (*a2)(__int128 *__return_ptr, id *, uint64_t *))
{
  v4 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  *v2 = 0x8000000000000000;
  sub_1AB178FD8(v4, sub_1AB1794AC, 0, isUniquelyReferenced_nonNull_native, a2);

  *v2 = v7;
  return result;
}

uint64_t ScalarDictionary.merging(_:uniquingKeysWith:)@<X0>(uint64_t *a1@<X0>, void (*a2)(__int128 *__return_ptr, id *, uint64_t *)@<X1>, void *a3@<X8>)
{
  v7 = *a1;
  v8 = *v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB178FD8(v7, sub_1AB1794AC, 0, isUniquelyReferenced_nonNull_native, a2);

  if (v4)
  {
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AB1751E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = ScalarDictionary.init(tryDeserializing:using:)(a1, a2, &v5);
  *a3 = v5;
  return result;
}

id sub_1AB175224(id result)
{
  v2 = result;
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 2)
  {
    if (!*(v1 + 16))
    {
      goto LABEL_13;
    }

    if (v4 != 1)
    {
      goto LABEL_17;
    }

    result = [objc_opt_self() valueWithDouble:result inContext:*&v3];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  if (v4 == 3)
  {
    goto LABEL_15;
  }

  if (v4 != 4)
  {
    goto LABEL_21;
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1AB461754();
    v6 = (v3 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;
      sub_1AB16DB30(v7, v8, v9);
      sub_1AB175224(v2);
      sub_1AB16DB5C(v7, v8, v9);
      sub_1AB461724();
      v3 = *(v14 + 16);
      sub_1AB461764();
      sub_1AB461774();
      sub_1AB461734();
      --v5;
    }

    while (v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436ED8);
  v10 = sub_1AB461F94();
  v2 = [objc_opt_self() valueWithObject:v10 inContext:v2];
  swift_unknownObjectRelease();
  if (v2)
  {
    return v2;
  }

  __break(1u);
LABEL_13:
  result = [objc_opt_self() valueWithBool:v3 & 1 inContext:v2];
  if (result)
  {
    return result;
  }

  __break(1u);
LABEL_15:

  v11 = sub_1AB461F94();
  v2 = [objc_opt_self() valueWithObject:v11 inContext:v2];
  result = swift_unknownObjectRelease();
  if (!v2)
  {
    __break(1u);
LABEL_17:
    if (v3 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v3 <= 0x7FFFFFFF)
    {
      result = [objc_opt_self() valueWithInt32:v3 inContext:v2];
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_21:
      v12 = v2;
      sub_1AB179818(v3, v12);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE0);
      v13 = sub_1AB461F94();
      v2 = [objc_opt_self() valueWithObject:v13 inContext:v12];
      result = swift_unknownObjectRelease();
      if (v2)
      {
        return v2;
      }

LABEL_26:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_26;
  }

  return v2;
}

void ScalarDictionary.jsRepresentation(in:)(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v22 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v22)
  {
    v4 = v3 + 64;
    v5 = 1 << *(v3 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v3 + 64);
    v8 = (v5 + 63) >> 6;
    v21 = v3;

    v9 = 0;
    while (v7)
    {
      v10 = v9;
LABEL_10:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(v21 + 56) + 24 * (v11 | (v10 << 6));
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);

      sub_1AB16DB30(v14, v13, v15);
      v16 = sub_1AB175224(a1);
      sub_1AB16DB5C(v14, v13, v15);
      v17 = v16;
      v18 = sub_1AB460514();

      [v22 setValue:v17 forProperty:v18];
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        a2[3] = sub_1AB016760(0, &qword_1ED4D1B98);
        a2[4] = &protocol witness table for JSValue;
        *a2 = v22;
        return;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

char **sub_1AB175808(void *a1, uint64_t a2)
{
  v26[0] = a2;
  ScalarDictionary.jsRepresentation(in:)(a1, &v27);
  if (v2)
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AB4D4720;
    v30 = sub_1AB0168A8(0, 82, 0, MEMORY[0x1E69E7CC0]);
    v8._countAndFlagsBits = 0x69747265766E6F43;
    v8._object = 0xEC0000003C20676ELL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v8);
    v26[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436ED0);
    v26[0] = &type metadata for ScalarDictionary;
    sub_1AB014A58(v26, v25, &unk_1EB437E60);
    v27 = 0u;
    v28 = 0u;
    sub_1AB0169C4(v25, &v27);
    LOBYTE(v29) = 0;
    v9 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1AB0168A8(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1AB0168A8((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    v12 = &v9[40 * v11];
    v13 = v27;
    v14 = v28;
    v12[64] = v29;
    *(v12 + 2) = v13;
    *(v12 + 3) = v14;
    v30 = v9;
    sub_1AB014AC0(v26, &unk_1EB437E60);
    v15._object = 0x80000001AB4FFFA0;
    v24 = &v30;
    v15._countAndFlagsBits = 0xD000000000000045;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    *(v7 + 32) = v30;
    v16 = sub_1AB461094();
    if (os_log_type_enabled(v6, v16))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v17 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v17[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v17 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v19 = swift_allocObject();
      *(v19 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v27 = v7;
      *(&v27 + 1) = sub_1AB01A8D8;
      *&v28 = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v24 = sub_1AB460484();
      v21 = v20;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1AB4D4720;
      *(v22 + 56) = MEMORY[0x1E69E6158];
      *(v22 + 64) = sub_1AB016854();
      *(v22 + 32) = v24;
      *(v22 + 40) = v21;
      sub_1AB45FF14();
    }

    swift_willThrow();
  }

  else
  {
    v4 = *(&v28 + 1);
    v5 = v29;
    __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
    v24 = (*(v5 + 16))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  }

  return v24;
}

char **sub_1AB175C34(void *a1)
{
  v3 = *v1;

  v4 = sub_1AB1B9EB4(a1, v3);

  return v4;
}

uint64_t ScalarDictionary.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
    v5 = sub_1AB461DC4() & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    *a2 = v5;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ScalarDictionary.Value.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
      sub_1AB461E34();
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
      if (v2 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DB0);
        sub_1AB179A3C(&qword_1EB436DE0, sub_1AB179AB4);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DC0);
        sub_1AB179B08(&qword_1EB436DF0, sub_1AB179AB4);
      }

      sub_1AB461E74();
    }
  }

  else if (v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    if (v2 == 1)
    {
      sub_1AB461E54();
    }

    else
    {
      sub_1AB461E64();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    sub_1AB461E44();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t ScalarDictionary.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DC0);
    sub_1AB179B08(&qword_1EB436DC8, sub_1AB1799E8);
    sub_1AB461DF4();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ScalarDictionary.init(_partiallyFrom:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB01494C(a1, v6);
  v4 = sub_1AB17643C(v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1AB17643C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EC8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - v4;
  v60 = MEMORY[0x1E69E7CC8];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = sub_1AB462214();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v6, v59);

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C3C();
  sub_1AB462224();
  v47 = v3;
  v48 = a1;
  v52 = v5;
  v7 = sub_1AB461AE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DC0);
  sub_1AB460344();
  v49 = v7;
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_22:

    (*(v47 + 8))(v52, v2);
    sub_1AB014AC0(v59, &qword_1EB436EC0);
    v45 = v60;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    return v45;
  }

  v9 = (v49 + 48);
  v50 = v2;
  while (1)
  {
    v11 = *(v9 - 2);
    v10 = *(v9 - 1);
    v12 = *v9;
    if (v12 == 1)
    {
      sub_1AB179C90(*(v9 - 2), *(v9 - 1), 1);

      v13 = v11;
      v14 = v10;
    }

    else
    {
      v56 = *(v9 - 2);
      v13 = sub_1AB461C44();
      v14 = v15;
    }

    v53 = v11;
    v54 = v10;
    v55 = v12;
    sub_1AB1799E8();
    sub_1AB461AC4();
    sub_1AB179CA0(v11, v10, v12);
    v16 = v60;
    if (v58 == 255)
    {
      v28 = sub_1AB014DB4(v13, v14);
      v30 = v29;

      if (v30)
      {
        v31 = v60;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v31;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AB1D7528();
          v31 = v53;
        }

        sub_1AB16DB5C(*(*(v31 + 56) + 24 * v28), *(*(v31 + 56) + 24 * v28 + 8), *(*(v31 + 56) + 24 * v28 + 16));
        sub_1AB18F5BC(v28, v31);
        v60 = v31;
      }

      goto LABEL_3;
    }

    v51 = v58;
    v18 = v56;
    v17 = v57;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v16;
    v20 = sub_1AB014DB4(v13, v14);
    v22 = v16[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v16[3] < v25)
    {
      sub_1AB1D1BA4(v25, v19);
      v20 = sub_1AB014DB4(v13, v14);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_25;
      }

LABEL_17:
      if (v26)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    if (v19)
    {
      goto LABEL_17;
    }

    v39 = v20;
    sub_1AB1D7528();
    v20 = v39;
    if (v26)
    {
LABEL_18:
      v33 = v20;

      v34 = v53;
      v35 = v53[7] + 24 * v33;
      v36 = *v35;
      v37 = *(v35 + 8);
      *v35 = v18;
      *(v35 + 8) = v17;
      v38 = *(v35 + 16);
      *(v35 + 16) = v51;
      sub_1AB16DB5C(v36, v37, v38);
      v60 = v34;
      v2 = v50;
      goto LABEL_3;
    }

LABEL_20:
    v40 = v53;
    v53[(v20 >> 6) + 8] |= 1 << v20;
    v41 = (v40[6] + 16 * v20);
    *v41 = v13;
    v41[1] = v14;
    v42 = v40[7] + 24 * v20;
    *v42 = v18;
    *(v42 + 8) = v17;
    *(v42 + 16) = v51;
    v43 = v40[2];
    v24 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v24)
    {
      goto LABEL_24;
    }

    v40[2] = v44;
    v60 = v40;
    v2 = v50;
LABEL_3:
    v9 += 24;
    if (!--v8)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t ScalarDictionary.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);

  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DC0);
  sub_1AB179B08(&qword_1EB436DF0, sub_1AB179AB4);
  sub_1AB461E74();

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t sub_1AB176B6C(void *a1, uint64_t a2)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EB8);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v23 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB179C3C();
  v24 = v5;
  sub_1AB462274();
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v6 = sub_1AB462264();
  sub_1AB309E20(0xD000000000000027, 0x80000001AB4FFF70, v6, v33);

  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v26 = a2;

  v13 = 0;
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_6:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_13;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v10)) | (v14 << 6);
        v16 = (*(v26 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v26 + 56) + 24 * v15;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);

        sub_1AB16DB30(v20, v21, v22);
        if (!v18)
        {
          break;
        }

        v10 &= v10 - 1;
        v30 = v20;
        v31 = v21;
        v32 = v22;
        v27 = v17;
        v28 = v18;
        v29 = 1;
        sub_1AB179AB4();
        sub_1AB461BF4();
        sub_1AB16DB5C(v30, v31, v32);

        v13 = v14;
        if (!v10)
        {
          goto LABEL_6;
        }

LABEL_10:
        v14 = v13;
      }

LABEL_13:

      sub_1AB014AC0(v33, &qword_1EB436EC0);
      return (*(v23 + 8))(v24, v25);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB176F08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AB01494C(a1, v6);
  v4 = sub_1AB17643C(v6);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v4;
  return result;
}

unint64_t _s9JetEngine16ScalarDictionaryV11removeValue6forKeyAC0F0OSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1AB014DB4(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D7528();
      v10 = v13;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    result = sub_1AB18F5BC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

double sub_1AB177018@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1AB02B1D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D76C0();
      v9 = v11;
    }

    sub_1AB02B2E4(*(v9 + 48) + 40 * v7);
    sub_1AB014B78((*(v9 + 56) + 32 * v7), a2);
    sub_1AB18F78C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1AB17713C@<D0>(uint64_t (*a1)(void)@<X2>, void (*a2)(uint64_t, uint64_t)@<X3>, void (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v7 = v4;
  v9 = a1();
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v15 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v13 = v15;
    }

    sub_1AB0149B0((*(v13 + 56) + 40 * v11), a4);
    a2(v11, v13);
    *v7 = v13;
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1AB177244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1AB0370A8(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D880C();
      v10 = v18;
    }

    v11 = *(v10 + 56) + 48 * v8;
    v12 = *v11;
    v17 = *(v11 + 8);
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);
    v15 = *(v11 + 40);
    result = sub_1AB18FFFC(v8, v10);
    v16 = v17;
    *v4 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0uLL;
  }

  *a3 = v12;
  *(a3 + 8) = v16;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  return result;
}

uint64_t sub_1AB177368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AB014DB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D8D08();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for JetPackAsset(0);
    v19 = *(v12 - 8);
    sub_1AB065B84(v11 + *(v19 + 72) * v8, a3);
    sub_1AB19052C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for JetPackAsset(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_1AB1774C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AB014DB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D93FC();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_1AB18FAE0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1AB1775B4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = a2();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

double sub_1AB177658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1AB014DB4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1AB1D9890();
      v10 = v15;
    }

    v11 = (*(v10 + 56) + (v8 << 6));
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    v13 = v11[3];
    a3[2] = v11[2];
    a3[3] = v13;
    sub_1AB190B14(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1AB177748@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1AB014DB4(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

void *sub_1AB17781C(void *a1, int64_t a2, char a3)
{
  result = sub_1AB177AC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AB17783C(char *a1, int64_t a2, char a3)
{
  result = sub_1AB177BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB17785C(void *a1, int64_t a2, char a3)
{
  result = sub_1AB177E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB17787C(void *a1, int64_t a2, char a3)
{
  result = sub_1AB177F54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AB17789C(char *a1, int64_t a2, char a3)
{
  result = sub_1AB178088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AB1778BC(char *a1, int64_t a2, char a3)
{
  result = sub_1AB178194(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB1778DC(void *a1, int64_t a2, char a3)
{
  result = sub_1AB1782BC(a1, a2, a3, *v3, &unk_1EB439DB0, &unk_1AB4D6A98, &qword_1EB436B70);
  *v3 = result;
  return result;
}

char *sub_1AB17791C(char *a1, int64_t a2, char a3)
{
  result = sub_1AB177D08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB17793C(void *a1, int64_t a2, char a3)
{
  result = sub_1AB1782BC(a1, a2, a3, *v3, &qword_1EB436E10, &unk_1AB4D6A40, &qword_1EB4366C8);
  *v3 = result;
  return result;
}

char *sub_1AB17797C(char *a1, int64_t a2, char a3)
{
  result = sub_1AB1783F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AB17799C(char *a1, int64_t a2, char a3)
{
  result = sub_1AB178510(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1AB1779BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1AB1788B8(a1, a2, a3, *v3, &unk_1EB439DD0, &unk_1AB4D6AA0, type metadata accessor for LocalizedStringTable);
  *v3 = result;
  return result;
}

void *sub_1AB177A00(void *a1, int64_t a2, char a3)
{
  result = sub_1AB17863C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AB177A20(char *a1, int64_t a2, char a3)
{
  result = sub_1AB178784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AB177A40(void *a1, int64_t a2, char a3)
{
  result = sub_1AB0B3EA0(a1, a2, a3, *v3, &qword_1EB436E60, &unk_1AB4E1F70, &qword_1EB436E68);
  *v3 = result;
  return result;
}

size_t sub_1AB177A80(size_t a1, int64_t a2, char a3)
{
  result = sub_1AB1788B8(a1, a2, a3, *v3, &qword_1EB436E40, &unk_1AB4DA600, MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

void *sub_1AB177AC4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB177BF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB177D08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1AB177E0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AB177F54(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB178088(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB178194(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AB1782BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_1AB1783F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB178510(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 400);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[400 * v8])
    {
      memmove(v12, v13, 400 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1AB17863C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1AB178784(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1AB1788B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1AB178A94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0);
  result = sub_1AB461904();
  v3 = result;
  v4 = 0;
  v27 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 64;
  v25 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v27 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];

      ScalarDictionary.Value.rawValue.getter(v26, v19);
      v3 = v25;
      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v25[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      result = sub_1AB014B78(v26, (v25[7] + 32 * v15));
      v21 = v25[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v25[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AB178C30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, id *, _OWORD *), uint64_t a6)
{
  v8 = v6;
  v49 = a6;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v42 = a1;
  v43 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v44 = v11;
  v45 = 0;
  v46 = v14 & v12;
  v47 = a2;
  v48 = a3;

  sub_1AB06B8BC(&v40);
  v15 = *(&v40 + 1);
  if (!*(&v40 + 1))
  {
LABEL_5:
    sub_1AB0309A4();

    return;
  }

  while (1)
  {
    v16 = v40;
    v38 = v40;
    v39 = v15;
    sub_1AB014B78(&v41, v37);
    v17 = *v8;
    v19 = sub_1AB014DB4(v16, v15);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1AB461FC4();
      __break(1u);
      goto LABEL_24;
    }

    v23 = v18;
    if (v17[3] < v22)
    {
      break;
    }

    if (a4)
    {
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1AB0676CC();
      if (v23)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    v28 = *v8;
    *(*v8 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v29 = (v28[6] + 16 * v19);
    *v29 = v16;
    v29[1] = v15;
    sub_1AB014B78(v37, (v28[7] + 32 * v19));
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_22;
    }

    v28[2] = v32;
LABEL_6:
    sub_1AB06B8BC(&v40);
    v15 = *(&v40 + 1);
    a4 = 1;
    if (!*(&v40 + 1))
    {
      goto LABEL_5;
    }
  }

  sub_1AB01AF68(v22, a4 & 1);
  v24 = sub_1AB014DB4(v16, v15);
  if ((v23 & 1) != (v25 & 1))
  {
    goto LABEL_23;
  }

  v19 = v24;
  if ((v23 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v26 = *v8;
  sub_1AB0165C4(*(*v8 + 56) + 32 * v19, v35);
  a5(v36, v35, v37);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);

    v27 = (v26[7] + 32 * v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    sub_1AB014B78(v36, v27);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v35[0] = v7;
  v33 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    sub_1AB0309A4();

    return;
  }

LABEL_24:
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB4FFF50);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](39, 0xE100000000000000);
  sub_1AB461884();
  __break(1u);
}

void sub_1AB178FD8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void (*a5)(__int128 *__return_ptr, id *, uint64_t *))
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v55 = v11;
  v56 = v7;
  v57 = v6;
  while (1)
  {
    if (!v10)
    {
      v21 = v12;
      while (1)
      {
        v20 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v20 >= v11)
        {
          goto LABEL_27;
        }

        v19 = *(v7 + 8 * v20);
        ++v21;
        if (v19)
        {
          v60 = a4;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      sub_1AB461FC4();
      __break(1u);
      goto LABEL_34;
    }

    v60 = a4;
    v19 = v10;
    v20 = v12;
LABEL_15:
    v22 = __clz(__rbit64(v19)) | (v20 << 6);
    v23 = (*(v6 + 48) + 16 * v22);
    v24 = v23[1];
    v25 = *(v6 + 56) + 24 * v22;
    v27 = *v25;
    v26 = *(v25 + 8);
    v28 = *(v25 + 16);
    v69 = *v23;
    v70 = v24;
    v71 = v27;
    v72 = v26;
    v73 = v28;

    sub_1AB16DB30(v27, v26, v28);
    a2(&v74, &v69);
    v29 = v71;
    v30 = v72;
    v31 = v73;

    sub_1AB16DB5C(v29, v30, v31);
    if (!v75)
    {
LABEL_27:
      sub_1AB0309A4();

      return;
    }

    v33 = v76;
    v34 = v77;
    v67 = v74;
    v32 = v74;
    v68 = v75;
    v35 = v78;
    v69 = v76;
    v70 = v77;
    LOBYTE(v71) = v78;
    v36 = *v79;
    v61 = v75;
    v38 = sub_1AB014DB4(v74, v75);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_31;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      break;
    }

    if (v60)
    {
      if (v37)
      {
        goto LABEL_23;
      }
    }

    else
    {
      sub_1AB1D7528();
      if (v42)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    v13 = *v79;
    v13[(v38 >> 6) + 8] |= 1 << v38;
    v14 = (v13[6] + 16 * v38);
    *v14 = v32;
    v14[1] = v61;
    v15 = v13[7] + 24 * v38;
    *v15 = v33;
    *(v15 + 8) = v34;
    *(v15 + 16) = v35;
    v16 = v13[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_32;
    }

    v13[2] = v18;
LABEL_7:
    v6 = v57;
    v11 = v55;
    v7 = v56;
    v10 = (v19 - 1) & v19;
    a4 = 1;
    v12 = v20;
  }

  sub_1AB1D1BA4(v41, v60 & 1);
  v43 = sub_1AB014DB4(v32, v61);
  if ((v42 & 1) != (v44 & 1))
  {
    goto LABEL_33;
  }

  v38 = v43;
  if ((v42 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  v45 = *v79;
  v46 = *(*v79 + 56) + 24 * v38;
  v47 = *(v46 + 8);
  v62 = *v46;
  v63 = v47;
  v64 = *(v46 + 16);
  sub_1AB16DB30(v62, v47, v64);
  a5(&v65, &v62, &v69);
  if (!v59)
  {
    sub_1AB16DB5C(v62, v63, v64);
    sub_1AB16DB5C(v69, v70, v71);

    v48 = v45[7] + 24 * v38;
    v49 = v66;
    v50 = *v48;
    v51 = *(v48 + 8);
    *v48 = v65;
    v52 = *(v48 + 16);
    *(v48 + 16) = v49;
    sub_1AB16DB5C(v50, v51, v52);
    goto LABEL_7;
  }

  sub_1AB16DB5C(v62, v63, v64);

  v62 = v59;
  v53 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1AB16DB5C(v69, v70, v71);
    sub_1AB0309A4();

    return;
  }

LABEL_34:
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB4FFF50);
  sub_1AB461824();
  MEMORY[0x1AC59BA20](39, 0xE100000000000000);
  sub_1AB461884();
  __break(1u);
}

uint64_t sub_1AB1794AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = *(a1 + 32);
  *(a2 + 32) = v6;
  *a2 = v3;
  *(a2 + 8) = v2;

  return sub_1AB16DB30(v4, v5, v6);
}

uint64_t _s9JetEngine16ScalarDictionaryV5ValueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v2 == v5 && v3 == v6)
        {
          sub_1AB16DB30(v2, v3, 3);
          sub_1AB16DB30(v2, v3, 3);
          sub_1AB16DB5C(v2, v3, 3);
          sub_1AB16DB5C(v2, v3, 3);
          LOBYTE(v7) = 1;
        }

        else
        {
          LOBYTE(v7) = sub_1AB461DA4();
          sub_1AB16DB30(v5, v6, 3);
          sub_1AB16DB30(v2, v3, 3);
          sub_1AB16DB5C(v2, v3, 3);
          sub_1AB16DB5C(v5, v6, 3);
        }

        return v7 & 1;
      }
    }

    else if (v4 == 4)
    {
      if (v7 == 4)
      {
        sub_1AB16DB30(*a2, *(a2 + 8), 4);
        sub_1AB16DB30(v2, v3, 4);
        LOBYTE(v7) = sub_1AB16D4A4(v2, v5);
        sub_1AB16DB5C(v2, v3, 4);
        sub_1AB16DB5C(v5, v6, 4);
        return v7 & 1;
      }
    }

    else if (v7 == 5)
    {
      sub_1AB16DB30(*a2, *(a2 + 8), 5);
      sub_1AB16DB30(v2, v3, 5);
      LOBYTE(v7) = sub_1AB171280(v2, v5);
      sub_1AB16DB5C(v2, v3, 5);
      sub_1AB16DB5C(v5, v6, 5);
      return v7 & 1;
    }

LABEL_24:
    sub_1AB16DB30(v5, v6, v7);
    sub_1AB16DB5C(v2, v3, v4);
    sub_1AB16DB5C(v5, v6, v7);
LABEL_25:
    LOBYTE(v7) = 0;
    return v7 & 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1AB16DB5C(*a1, v3, 0);
      sub_1AB16DB5C(v5, v6, 0);
      v7 = (v5 ^ v2) ^ 1;
      return v7 & 1;
    }

    goto LABEL_24;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      sub_1AB16DB5C(*a1, v3, 2);
      sub_1AB16DB5C(v5, v6, 2);
      LOBYTE(v7) = v2 == v5;
      return v7 & 1;
    }

    goto LABEL_24;
  }

  if (v7 != 1)
  {
    goto LABEL_24;
  }

  sub_1AB16DB5C(*a1, v3, 1);
  sub_1AB16DB5C(v5, v6, 1);
  if (*&v2 != *&v5)
  {
    goto LABEL_25;
  }

  return v7 & 1;
}

uint64_t sub_1AB179818(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436EE8);
  result = sub_1AB461904();
  v4 = 0;
  v28 = result;
  v29 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v27 = result + 64;
  if (v10)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v31 = (v10 - 1) & v10;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v29 + 48) + 16 * v15);
      v17 = v16[1];
      v32 = *v16;
      v18 = *(v29 + 56) + 24 * v15;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);

      sub_1AB16DB30(v19, v20, v21);
      v22 = sub_1AB175224(a2);
      sub_1AB16DB5C(v19, v20, v21);
      result = v28;
      *(v27 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v23 = (v28[6] + 16 * v15);
      *v23 = v32;
      v23[1] = v17;
      *(v28[7] + 8 * v15) = v22;
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v28[2] = v26;
      v10 = v31;
      if (!v31)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v31 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB1799E8()
{
  result = qword_1EB436DD0;
  if (!qword_1EB436DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436DD0);
  }

  return result;
}

uint64_t sub_1AB179A3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436DB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AB179AB4()
{
  result = qword_1EB436DE8;
  if (!qword_1EB436DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436DE8);
  }

  return result;
}

uint64_t sub_1AB179B08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB436DC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AB179B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1AB179BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

unint64_t sub_1AB179C3C()
{
  result = qword_1EB4332E0;
  if (!qword_1EB4332E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4332E0);
  }

  return result;
}

uint64_t sub_1AB179C90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1AB179CA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ClientEntitlementChecker.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1AB02FFC0();
  v6 = *(a2 - 8);
  a3[4] = &type metadata for ClientEntitlementReader;
  a3[5] = &off_1F1FF6DA8;
  v7 = *(v6 + 8);

  return v7(a1, a2);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlement(_:)(Swift::String a1)
{
  sub_1AB179E04(a1._countAndFlagsBits, a1._object, v1);
  if (v2)
  {
    LODWORD(v2) = swift_dynamicCast();
    if (v2)
    {
      LOBYTE(v2) = v4;
    }
  }

  return v2;
}

void sub_1AB179E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v6 = *(a3 + 16);
  v7 = a1;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F88);
  sub_1AB01A1F0(sub_1AB17A4C8, v5, v4);
}

Swift::Bool __swiftcall ClientEntitlementChecker.hasEntitlements(_:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    sub_1AB179FEC(a1._rawValue, v1);
    v4 = v2;
    if (v2)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_1AB4602E4();

        return 0;
      }
    }

    return 0;
  }

  return 1;
}

void sub_1AB179FEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v5 = *(a2 + 16);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F78);
  sub_1AB01A1F0(sub_1AB17A394, v4, v3);
}

void sub_1AB17A07C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1AB460514();
    v9 = SecTaskCopyValueForEntitlement(v7, v8, &token);

    v10 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1AB17A470();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {

      *a5 = v9;
    }
  }

  else
  {
    *a5 = 0;
  }
}

void sub_1AB17A1AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CFDictionaryRef *a5@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v6 = SecTaskCreateWithAuditToken(0, &token);
  if (v6)
  {
    v7 = v6;
    *token.val = 0;
    v8 = sub_1AB460934();
    v9 = SecTaskCopyValuesForEntitlements(v7, v8, &token);

    v10 = *token.val;
    if (*token.val)
    {
      type metadata accessor for CFError(0);
      sub_1AB17A470();
      swift_allocError();
      *v11 = v10;
      swift_willThrow();
    }

    else
    {

      *a5 = v9;
    }
  }

  else
  {
    *a5 = 0;
  }
}

uint64_t sub_1AB17A330()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB17A394()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v1;
  v2 = *(v7 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F78);
  return v2(sub_1AB17A450, &v5, v3, v6, v7);
}

unint64_t sub_1AB17A470()
{
  result = qword_1EB436F80;
  if (!qword_1EB436F80)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB436F80);
  }

  return result;
}

uint64_t sub_1AB17A4C8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = v1;
  v10 = v2;
  v3 = *(v8 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F88);
  return v3(sub_1AB17A584, &v6, v4, v7, v8);
}

uint64_t sub_1AB17A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FF0);
  *(&v60 + 1) = v12;
  v61 = &protocol witness table for PreferenceKey<A>;
  *&v59 = a1;
  *(&v59 + 1) = a2;

  LocalPreferences.subscript.getter(&v59, &v57);
  if (v58)
  {
    sub_1AB014B78(&v57, v62);
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    sub_1AB0165C4(v62, &v59);
    v13 = sub_1AB45F9B4();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      v14 = *(v13 - 8);
      v15 = *(v14 + 56);
      v15(v11, 0, 1, v13);
      (*(v14 + 32))(a3, v11, v13);
      return (v15)(a3, 0, 1, v13);
    }

    else
    {
      v18 = *(v13 - 8);
      v19 = *(v18 + 56);
      v53[1] = v18 + 56;
      v54 = v19;
      v19(v11, 1, 1, v13);
      sub_1AB014AC0(v11, &qword_1EB4395E0);
      if (qword_1EB435D40 != -1)
      {
        swift_once();
      }

      v20 = qword_1EB43A248;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1AB4D47F0;
      v56 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
      v22._countAndFlagsBits = 0x6F662065756C6156;
      v22._object = 0xEA00000000002072;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v58 = v12;
      *&v57 = a1;
      *(&v57 + 1) = a2;
      sub_1AB014A58(&v57, v55, &unk_1EB437E60);
      v59 = 0u;
      v60 = 0u;

      sub_1AB0169C4(v55, &v59);
      LOBYTE(v61) = 0;
      v23 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
        v56 = v23;
      }

      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[40 * v25];
      v27 = v59;
      v28 = v60;
      v26[64] = v61;
      *(v26 + 2) = v27;
      *(v26 + 3) = v28;
      v56 = v23;
      sub_1AB014AC0(&v57, &unk_1EB437E60);
      v29._countAndFlagsBits = 544106784;
      v29._object = 0xE400000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v58 = v8;
      *&v57 = v4;
      sub_1AB014A58(&v57, v55, &unk_1EB437E60);
      v59 = 0u;
      v60 = 0u;

      sub_1AB0169C4(v55, &v59);
      LOBYTE(v61) = 0;
      v30 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v56 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v59;
      v35 = v60;
      v33[64] = v61;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v56 = v30;
      sub_1AB014AC0(&v57, &unk_1EB437E60);
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      *(v21 + 32) = v56;
      v56 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
      v37._object = 0x80000001AB500010;
      v37._countAndFlagsBits = 0xD000000000000015;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FF8);
      *&v57 = v13;
      sub_1AB014A58(&v57, v55, &unk_1EB437E60);
      v59 = 0u;
      v60 = 0u;
      sub_1AB0169C4(v55, &v59);
      LOBYTE(v61) = 0;
      v38 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1AB0168A8(0, *(v38 + 2) + 1, 1, v38);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = sub_1AB0168A8((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v41 = &v38[40 * v40];
      v42 = v59;
      v43 = v60;
      v41[64] = v61;
      *(v41 + 2) = v42;
      *(v41 + 3) = v43;
      v56 = v38;
      sub_1AB014AC0(&v57, &unk_1EB437E60);
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v44);
      *(v21 + 40) = v56;
      v45 = sub_1AB461094();
      if (os_log_type_enabled(v20, v45))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v46 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v46[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v46 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v48 = swift_allocObject();
        *(v48 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v59 = v21;
        *(&v59 + 1) = sub_1AB0223E4;
        *&v60 = v48;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v49 = sub_1AB460484();
        v51 = v50;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1AB4D4720;
        *(v52 + 56) = MEMORY[0x1E69E6158];
        *(v52 + 64) = sub_1AB016854();
        *(v52 + 32) = v49;
        *(v52 + 40) = v51;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      return v54(a3, 1, 1, v13);
    }
  }

  else
  {
    sub_1AB014AC0(&v57, &unk_1EB437E60);
    __swift_destroy_boxed_opaque_existential_1Tm(&v59);
    v17 = sub_1AB45F9B4();
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }
}

uint64_t sub_1AB17ADE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FE0);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FE8);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB0223E4;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 0;
}

uint64_t sub_1AB17B494(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FD0);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FD8);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB0223E4;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 0;
}

uint64_t sub_1AB17BB48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FC0);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1AB014B78(&v46, v51);
    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    sub_1AB0165C4(v51, &v48);
    v8 = MEMORY[0x1E69E6810];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      return v46;
    }

    if (qword_1EB435D40 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB43A248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    v45 = sub_1AB0168A8(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1AB0168A8(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1AB0168A8((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;

    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1AB0168A8(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1AB0168A8((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1AB0168A8(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001AB500010;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436FC8);
    *&v46 = v8;
    sub_1AB014A58(&v46, v44, &unk_1EB437E60);
    v48 = 0u;
    v49 = 0u;
    sub_1AB0169C4(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1AB0168A8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1AB0168A8((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1AB461094();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v37 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1AB0223E4;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
      sub_1AB016A34();
      v40 = sub_1AB460484();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1AB016854();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1AB45FF14();
    }

    v10 = v51;
  }

  else
  {
    sub_1AB014AC0(&v46, &unk_1EB437E60);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  return 0;
}