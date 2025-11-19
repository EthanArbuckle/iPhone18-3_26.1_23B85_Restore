uint64_t FormatOptionsNodeStatementValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v75 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v76 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v79 = &v75 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v84 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v83 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v75 - v30;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v1 + 8);
  v88 = *v1;
  v37 = *(v1 + 24);
  v85 = *(v1 + 16);
  v86 = v36;
  v39 = *(v1 + 32);
  v38 = *(v1 + 40);
  v81 = v37;
  v82 = v39;
  v80 = v38;
  v40 = *(v1 + 48);
  v41 = *(v1 + 50);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = sub_1D5C30408();
  v87 = v35;
  sub_1D5D2EE70(&type metadata for FormatOptionsNodeStatementValue, &type metadata for FormatCodingKeys, v45, v42, &type metadata for FormatOptionsNodeStatementValue, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonG, v43, v35, v44, &off_1F51F6BF8);
  v46 = ((4 * v41) | (v40 >> 11) & 3);
  if (v46 > 3)
  {
    if (((4 * v41) | (v40 >> 11) & 3) <= 5u)
    {
      if (v46 == 4)
      {
        *&v96 = v88;
        *(&v96 + 1) = v86;
        v97 = v85;
        v98 = v81;
        v99 = v82;
        v100 = v80;
        v101 = v40;
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v60 = sub_1D725BD1C();
        v61 = __swift_project_value_buffer(v60, qword_1EDFFCDE0);
        v50 = v77;
        (*(*(v60 - 8) + 16))(v77, v61, v60);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = v87;
        sub_1D6389B0C(0, &v96, v50);
      }

      else
      {
        *&v104 = v88;
        *(&v104 + 1) = v86;
        v105 = v85;
        v106 = v81;
        v107 = v82;
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v72 = sub_1D725BD1C();
        v73 = __swift_project_value_buffer(v72, qword_1EDFFCE98);
        v50 = v76;
        (*(*(v72 - 8) + 16))(v76, v73, v72);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v47 = v87;
        sub_1D6389E9C(6, &v104, v50);
      }
    }

    else if (v46 == 6)
    {
      v47 = v87;
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCE98);
      v50 = v75;
      (*(*(v62 - 8) + 16))(v75, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D638A03C(7, v88, v50);
    }

    else
    {
      v47 = v87;
      if (v46 == 7)
      {
        if (qword_1EDF31F58[0] != -1)
        {
          swift_once();
        }

        v48 = sub_1D725BD1C();
        v49 = __swift_project_value_buffer(v48, qword_1EDFFCE98);
        v50 = v78;
        (*(*(v48 - 8) + 16))(v78, v49, v48);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D638A1D0(8, v88, v50);
      }

      else
      {
        v69 = v88[2];
        v102[0] = v88[1];
        v102[1] = v69;
        v103[0] = v88[3];
        *(v103 + 11) = *(v88 + 59);
        sub_1D6D1C57C(v102, &v89, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
        if (qword_1EDF31F08 != -1)
        {
          swift_once();
        }

        v70 = sub_1D725BD1C();
        v71 = __swift_project_value_buffer(v70, qword_1EDFFCDE0);
        v50 = v79;
        (*(*(v70 - 8) + 16))(v79, v71, v70);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D6389CB4(4, v102, v50);
        sub_1D6D1A3E8(v102, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
      }
    }

LABEL_36:
    sub_1D6D1C604(v50, type metadata accessor for FormatVersionRequirement);
    v57 = v47;
    return sub_1D6D1C604(v57, sub_1D5D30DC4);
  }

  v51 = v31;
  v52 = v27;
  v50 = v83;
  v53 = v84;
  if (v46 > 1)
  {
    if (v46 == 2)
    {
      *&v90 = v88;
      *(&v90 + 1) = v86;
      v91 = v85;
      v92 = v81;
      v93 = v82;
      v94 = v80;
      v95 = v40 & 0xE7FF;
      if (qword_1EDF31ED8 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD68);
      (*(*(v58 - 8) + 16))(v50, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v87;
      sub_1D63897CC(5, &v90, v50);
    }

    else
    {
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v67 = sub_1D725BD1C();
      v68 = __swift_project_value_buffer(v67, qword_1EDFFCD50);
      v50 = v53;
      (*(*(v67 - 8) + 16))(v53, v68, v67);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v47 = v87;
      sub_1D6389974(3, v88, v86, v85 & 1, v53);
    }

    goto LABEL_36;
  }

  if (v46)
  {
    v64 = v87;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v65 = sub_1D725BD1C();
    v66 = __swift_project_value_buffer(v65, qword_1EDFFCD18);
    (*(*(v65 - 8) + 16))(v52, v66, v65);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6389600(2, v88, v52);
    sub_1D6D1C604(v52, type metadata accessor for FormatVersionRequirement);
    v57 = v64;
  }

  else
  {
    v54 = v87;
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCD18);
    (*(*(v55 - 8) + 16))(v51, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D6389434(1, v88, v51);
    sub_1D6D1C604(v51, type metadata accessor for FormatVersionRequirement);
    v57 = v54;
  }

  return sub_1D6D1C604(v57, sub_1D5D30DC4);
}

uint64_t sub_1D6D1B6E0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x676E69646E6962;
    v6 = 0x74616F6C66;
    if (a1 != 2)
    {
      v6 = 0x6E6F6974706FLL;
    }

    if (a1)
    {
      v5 = 0x72656765746E69;
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
    v1 = 1836412517;
    v2 = 1702125924;
    if (a1 != 7)
    {
      v2 = 7107189;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x686374697773;
    if (a1 != 4)
    {
      v3 = 0x676E69727473;
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

uint64_t sub_1D6D1B7E0()
{
  sub_1D7264A0C();
  sub_1D694D938();
  return sub_1D7264A5C();
}

uint64_t sub_1D6D1B830()
{
  sub_1D7264A0C();
  sub_1D694D938();
  return sub_1D7264A5C();
}

uint64_t sub_1D6D1B874@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6D1B6E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6D1B8F0()
{
  v1 = *v0;
  sub_1D7264A0C();
  if (v1 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6D1B978()
{
  if (*v0 == 12)
  {
    return MEMORY[0x1DA6FC0B0](0);
  }

  MEMORY[0x1DA6FC0B0](1);
  FormatOptionType.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6D1BA18()
{
  v1 = *v0;
  sub_1D7264A0C();
  if (v1 == 12)
  {
    MEMORY[0x1DA6FC0B0](0);
  }

  else
  {
    MEMORY[0x1DA6FC0B0](1);
    FormatOptionType.rawValue.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6D1BABC(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v5 = (v3 + 16 * v1);
    while (1)
    {
      if (v2 == v1)
      {
        return v4;
      }

      if (v1 >= v2)
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_15;
      }

      v7 = v5;
      v8 = *v5;
      v5 += 16;
      ++v1;
      if ((v8 & 1) == 0)
      {
        v9 = *(v7 - 1);
        if (v9 < 0)
        {
          break;
        }
      }
    }

    v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5C3C480();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    v13 = *(v4 + 16);
    sub_1D62B72CC(v9, 0);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v14 = *(v4 + 24) >> 1, v14 <= v13))
    {
      result = sub_1D5B858EC(result, v13 + 1, 1, v4);
      v4 = result;
      v14 = *(result + 24) >> 1;
    }

    if (v14 > *(v4 + 16))
    {
      swift_arrayInitWithCopy();

      ++*(v4 + 16);
      result = sub_1D62B72BC(v9, 0);
      v1 = v6;
      continue;
    }

    break;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D6D1BC38(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = result + 49;
LABEL_3:
    v5 = (v4 + 24 * v2);
    while (v2 < v1)
    {
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_19;
      }

      if ((*v5 & 1) == 0)
      {
        if (*(v5 - 1))
        {
          v7 = *(v5 - 17);
          v8 = *(v5 - 1);
          v9 = *(v5 - 9);
          sub_1D5C3C480();
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          *(inited + 32) = v7;
          *(inited + 40) = v9;
          v11 = *(v3 + 16);
          sub_1D5E04C58(v7, v9, v8, 0);
          sub_1D5E04CC4(v7);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0 || (v12 = *(v3 + 24) >> 1, v12 <= v11))
          {
            result = sub_1D5B858EC(result, v11 + 1, 1, v3);
            v3 = result;
            v12 = *(result + 24) >> 1;
          }

          if (v12 > *(v3 + 16))
          {
            swift_arrayInitWithCopy();

            ++*(v3 + 16);
            result = sub_1D5E04C68(v7, v9, v8, 0);
            v2 = v6;
            if (v6 != v1)
            {
              goto LABEL_3;
            }

            return v3;
          }

LABEL_20:
          __break(1u);
          return result;
        }

        result = sub_1D5E04C68(*(v5 - 17), *(v5 - 9), *(v5 - 1), 0);
      }

      ++v2;
      v5 += 24;
      if (v6 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D6D1BE08()
{
  result = qword_1EDF2ED80;
  if (!qword_1EDF2ED80)
  {
    sub_1D5C5A148(255, &qword_1EDF2ED78, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED80);
  }

  return result;
}

unint64_t sub_1D6D1BE98(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8)
{
  v9 = ((4 * a8) | (a7 >> 11) & 3);
  if (v9 <= 3)
  {
    if (((4 * a8) | (a7 >> 11) & 3) > 1u)
    {
      if (v9 == 2)
      {
        v10 = a7 & 0xE7FF;

        return sub_1D5E1DE98(result, a2, a3, a4, a5, a6, v10);
      }

      if (v9 != 3)
      {
        return result;
      }
    }
  }

  if (((4 * a8) | (a7 >> 11) & 3) <= 5u)
  {
    if (v9 == 4)
    {

      return sub_1D6D1BFC8(result, a2, a3, a4, a5, a6, a7);
    }

    if (v9 != 5)
    {
      return result;
    }
  }

  if (v9 == 6)
  {

    return sub_1D5F33D8C(result);
  }

  else
  {
    if (v9 == 7)
    {
    }

    else
    {
      if (v9 != 8)
      {
        return result;
      }
    }
  }
}

uint64_t sub_1D6D1BFC8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int16 a7)
{
  v7 = a7 >> 13;
  if (v7 == 4 || v7 == 3)
  {
    return sub_1D5D28C84(result, a2, a3, a4);
  }

  if (v7 == 2)
  {

    return sub_1D5E1DF18(result, a2, a3, a4, a5, a6, a7, HIBYTE(a7) & 0x1F);
  }

  return result;
}

unint64_t sub_1D6D1C018()
{
  result = qword_1EDF1E660;
  if (!qword_1EDF1E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E660);
  }

  return result;
}

unint64_t sub_1D6D1C06C(void *a1)
{
  a1[1] = sub_1D5C59674();
  a1[2] = sub_1D66A7A58();
  result = sub_1D6D1C0A4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D1C0A4()
{
  result = qword_1EDF1F880;
  if (!qword_1EDF1F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F880);
  }

  return result;
}

uint64_t sub_1D6D1C108(uint64_t result, unsigned int a2)
{
  *(result + 48) = *(result + 48) & 0xE7FF | ((a2 & 3) << 11);
  *(result + 50) = a2 >> 2;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatOptionsNodeStatementValue.CodingValidationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 0xC;
  v9 = v7 - 12;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FormatOptionsNodeStatementValue.CodingValidationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
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

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6D1C28C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xC)
  {
    return v1 - 11;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D6D1C2A0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 11;
  }

  return result;
}

unint64_t sub_1D6D1C2D4()
{
  result = qword_1EC895128;
  if (!qword_1EC895128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895128);
  }

  return result;
}

unint64_t sub_1D6D1C32C()
{
  result = qword_1EDF1F890;
  if (!qword_1EDF1F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1F890);
  }

  return result;
}

uint64_t sub_1D6D1C380(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 == 12)
  {
    if (v2 == 12)
    {
      v3 = 1;
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if (v2 == 12)
  {
    goto LABEL_5;
  }

  v4 = FormatOptionType.rawValue.getter();
  v6 = v5;
  if (v4 == FormatOptionType.rawValue.getter() && v6 == v7)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D72646CC();
  }

  return v3 & 1;
}

void sub_1D6D1C448(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6D1C49C(uint64_t a1)
{
  sub_1D6D1C448(0, qword_1EDF1EF40, type metadata accessor for FormatOptionsNodeStatementResult);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6D1C514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D1C57C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C5A148(0, a3, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6D1C604(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6D1C664()
{
  if (!qword_1EDF1B280)
  {
    sub_1D5C5A148(255, qword_1EDF2F000, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, type metadata accessor for FormatSwitchValue.CaseValue);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B280);
    }
  }
}

unint64_t sub_1D6D1C708()
{
  result = qword_1EC895130;
  if (!qword_1EC895130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895130);
  }

  return result;
}

id sub_1D6D1C760()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDF1BB90 = result;
  return result;
}

void sub_1D6D1C7B4()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EDF1BBA8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CAA0()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05BB0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CD34()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895150 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CE70()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05B98 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1CFAC()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05BA8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D158()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895160 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D26C()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895170 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D344(uint64_t a1, void *a2)
{
  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D3E8()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF05BE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D4CC()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895178 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D5A4(uint64_t a1, void *a2)
{
  v3 = sub_1D726203C();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1D648()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EDF1BBD0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DA54()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895190 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DAF0()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC895198 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DB8C()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_1EC8951A0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1DE88(uint64_t a1, void *a2, void **a3, void *a4)
{
  if (*a2 != -1)
  {
    v10 = a3;
    swift_once();
    a3 = v10;
  }

  v5 = *a3;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 configurationWithPointSize:4 weight:3 scale:17.0];
  v9 = [v7 imageByApplyingSymbolConfiguration_];

  *a4 = v9;
}

id sub_1D6D1DF68(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

void sub_1D6D1E000(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, void *a5)
{
  v7 = sub_1D726203C();
  v8 = [objc_opt_self() *a4];

  if (v8)
  {
    *a5 = v8;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDF1BB90;
  v6 = sub_1D726203C();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E1EC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951C0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E2DC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EDF05CC0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E3CC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951C8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E4BC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EDF05C40 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E5AC()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951D0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E69C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951D8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E78C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951E0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E87C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951E8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1E96C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1EA5C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC8951F8 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6D1EB4C()
{
  if (qword_1EDF1BB88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDF1BB90;
  v1 = sub_1D726203C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v2)
  {
    qword_1EC895200 = v2;
  }

  else
  {
    __break(1u);
  }
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Images.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Images.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(void *a1, void *a2)
{
  if (qword_1EDF05CF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EDF05D00;
  if (*(off_1EDF05D00 + 2) && (v5 = sub_1D6D62BC4(a1), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);

    v8 = sub_1D5EC4D50(a2, v7);
    swift_endAccess();

    if (v8)
    {
      return v8;
    }
  }

  else
  {
    swift_endAccess();
  }

  v9 = [a1 imageWithRenderingMode_];
  v8 = sub_1D726366C();

  swift_beginAccess();
  v10 = off_1EDF05D00;
  if (*(off_1EDF05D00 + 2) && (v11 = sub_1D6D62BC4(a1), (v12 & 1) != 0))
  {
    v13 = *(v10[7] + 8 * v11);
    swift_endAccess();

    if ((v13 & 0xC000000000000001) == 0)
    {
LABEL_11:
      v14 = v8;
LABEL_17:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D6D78298(v8, a2, isUniquelyReferenced_nonNull_native);
      swift_beginAccess();
      v18 = a1;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = off_1EDF05D00;
      off_1EDF05D00 = 0x8000000000000000;
      sub_1D6D7825C(v13, v18, v19);

      off_1EDF05D00 = v20;
      swift_endAccess();
      return v8;
    }
  }

  else
  {
    swift_endAccess();
    v13 = MEMORY[0x1E69E7CC8];
    if ((MEMORY[0x1E69E7CC8] & 0xC000000000000001) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v13 >= 0)
  {
    v13 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v15 = v8;
  result = sub_1D7263BFC();
  if (!__OFADD__(result, 1))
  {
    v13 = sub_1D5F58C94(v13, result + 1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1D6D1EF58(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  if (v9)
  {
    v10 = [objc_opt_self() configurationWithPointSize:a5 weight:a2];
    v11 = [v9 imageWithConfiguration_];

    [v11 imageWithTintColor:a1 renderingMode:1];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FCPuzzleTypeProviding.isAllowed.getter()
{
  if ([v0 isPublic])
  {
    return 1;
  }

  else
  {
    return NFInternalBuild();
  }
}

char *FCPuzzleTypeProviding.contentSelectors.getter()
{
  v1 = v0;
  v2 = [v0 puzzlePrimaryColor];
  if (v2)
  {

    v3 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1D5B858EC((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    v6 = &v3[16 * v5];
    *(v6 + 4) = 0xD00000000000001DLL;
    *(v6 + 5) = 0x80000001D73F15E0;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = [v0 themeColor];
  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1D5B858EC((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = 0xD00000000000001BLL;
    *(v10 + 5) = 0x80000001D73F15C0;
  }

  v11 = [v0 darkStylePuzzlePrimaryColor];
  if (v11)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v13 = *(v3 + 2);
    v12 = *(v3 + 3);
    if (v13 >= v12 >> 1)
    {
      v3 = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v3);
    }

    *(v3 + 2) = v13 + 1;
    v14 = &v3[16 * v13];
    *(v14 + 4) = 0xD000000000000022;
    *(v14 + 5) = 0x80000001D73F1590;
  }

  v15 = [v0 darkStyleThemeColor];
  if (v15)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
    }

    v17 = *(v3 + 2);
    v16 = *(v3 + 3);
    if (v17 >= v16 >> 1)
    {
      v3 = sub_1D5B858EC((v16 > 1), v17 + 1, 1, v3);
    }

    *(v3 + 2) = v17 + 1;
    v18 = &v3[16 * v17];
    *(v18 + 4) = 0xD000000000000020;
    *(v18 + 5) = 0x80000001D73F1560;
  }

  v19 = [v0 orderedNavigationBarThemes];
  if (v19)
  {
    v20 = v19;
    sub_1D632010C();
    v21 = sub_1D726267C();

    v46 = v1;
    if (v21 >> 62)
    {
      v37 = sub_1D7263BFC();
      if (v37 < 0)
      {
        __break(1u);
      }

      v22 = v37;
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
LABEL_50:

        v1 = v46;
        goto LABEL_51;
      }
    }

    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x1DA6FB460](v23, v21);
      }

      else
      {
        v26 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      v27 = [v26 rankForegroundColor];
      swift_unknownObjectRelease();
      if (v27)
      {
        [v27 red];
        [v27 green];
        [v27 blue];
        [v27 alpha];

        sub_1D7263D4C();

        v28 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v28);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
        }

        v30 = *(v3 + 2);
        v29 = *(v3 + 3);
        if (v30 >= v29 >> 1)
        {
          v3 = sub_1D5B858EC((v29 > 1), v30 + 1, 1, v3);
        }

        *(v3 + 2) = v30 + 1;
        v31 = &v3[16 * v30];
        *(v31 + 4) = 0xD00000000000001BLL;
        *(v31 + 5) = 0x80000001D73F1540;
      }

      if (v24)
      {
        v32 = MEMORY[0x1DA6FB460](v23, v21);
      }

      else
      {
        v32 = *(v21 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      v33 = [v32 rankForegroundDarkModeColor];
      swift_unknownObjectRelease();
      if (v33)
      {
        [v33 red];
        [v33 green];
        [v33 blue];
        [v33 alpha];

        sub_1D7263D4C();

        v34 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
        }

        v36 = *(v3 + 2);
        v35 = *(v3 + 3);
        if (v36 >= v35 >> 1)
        {
          v3 = sub_1D5B858EC((v35 > 1), v36 + 1, 1, v3);
        }

        *(v3 + 2) = v36 + 1;
        v25 = &v3[16 * v36];
        *(v25 + 4) = 0xD000000000000020;
        *(v25 + 5) = 0x80000001D73F1510;
      }

      ++v23;
    }

    while (v22 != v23);
    goto LABEL_50;
  }

LABEL_51:
  v38 = [v1 kind];
  sub_1D726207C();

  sub_1D726210C();

  sub_1D5BF4D9C();
  v39 = sub_1D7263A6C();
  v41 = v40;

  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](v39, v41);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D5B858EC(0, *(v3 + 2) + 1, 1, v3);
  }

  v43 = *(v3 + 2);
  v42 = *(v3 + 3);
  if (v43 >= v42 >> 1)
  {
    v3 = sub_1D5B858EC((v42 > 1), v43 + 1, 1, v3);
  }

  *(v3 + 2) = v43 + 1;
  v44 = &v3[16 * v43];
  *(v44 + 4) = 0xD000000000000011;
  *(v44 + 5) = 0x80000001D73F14F0;
  return v3;
}

uint64_t sub_1D6D1F874(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  sub_1D6D1FE78(0, &qword_1EC895218, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D1FE24();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v5)
  {
    v15 = 1;
    sub_1D72643FC();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D6D1F9F4(uint64_t a1)
{
  v2 = sub_1D6D1FE24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D1FA30(uint64_t a1)
{
  v2 = sub_1D6D1FE24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D1FA6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6D1FC30(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D6D1FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1D6939CDC(0, &qword_1EC88C020, sub_1D60F41F0, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5F3D224();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7270C10;
  *(v11 + 32) = 0x696669746E656449;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E69E61C8];
  *(v11 + 72) = MEMORY[0x1E69E6158];
  *(v11 + 80) = v13;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 88) = 0;
  *(v11 + 96) = 1701667150;
  *(v11 + 104) = 0xE400000000000000;
  *(v11 + 136) = v12;
  *(v11 + 144) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  *(v11 + 152) = 0;
  *(inited + 56) = &type metadata for DebugInspectionDataSection;
  *(inited + 64) = &off_1F5132800;
  *(inited + 32) = 6775124;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v11;

  result = sub_1D60F3E18(inited);
  a5[3] = &type metadata for DebugInspectionDataSource;
  a5[4] = &off_1F51328C8;
  *a5 = result;
  return result;
}

uint64_t sub_1D6D1FC30(void *a1)
{
  sub_1D6D1FE78(0, &qword_1EC895208, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D1FE24();
  sub_1D7264B0C();
  if (!v1)
  {
    v13 = 0;
    v9 = sub_1D72642BC();
    v12 = 1;
    sub_1D72642BC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6D1FE24()
{
  result = qword_1EC895210;
  if (!qword_1EC895210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895210);
  }

  return result;
}

void sub_1D6D1FE78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D1FE24();
    v7 = a3(a1, &type metadata for DebugInspectionTag.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D1FEF0()
{
  result = qword_1EC895220;
  if (!qword_1EC895220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895220);
  }

  return result;
}

unint64_t sub_1D6D1FF48()
{
  result = qword_1EC895228;
  if (!qword_1EC895228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895228);
  }

  return result;
}

unint64_t sub_1D6D1FFA0()
{
  result = qword_1EC895230;
  if (!qword_1EC895230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895230);
  }

  return result;
}

uint64_t sub_1D6D2006C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D200F0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  sub_1D6D206EC(0, &qword_1EC895250, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D20698();
  sub_1D7264B5C();
  v16 = 0;
  sub_1D72643FC();
  if (!v4)
  {
    v15 = 1;
    sub_1D726440C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D6D20270()
{
  if (*v0)
  {
    return 0x73776F726874;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1D6D202AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73776F726874 && a2 == 0xE600000000000000)
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

uint64_t sub_1D6D2038C(uint64_t a1)
{
  v2 = sub_1D6D20698();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D203C8(uint64_t a1)
{
  v2 = sub_1D6D20698();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D20404@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D6D204B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1D6D2045C()
{
  result = qword_1EC895238;
  if (!qword_1EC895238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895238);
  }

  return result;
}

uint64_t sub_1D6D204B0(void *a1)
{
  sub_1D6D206EC(0, &qword_1EC895240, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D20698();
  sub_1D7264B0C();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1D72642BC();
    v11[14] = 1;
    sub_1D72642CC();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1D6D20698()
{
  result = qword_1EC895248;
  if (!qword_1EC895248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895248);
  }

  return result;
}

void sub_1D6D206EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D20698();
    v7 = a3(a1, &type metadata for FormatDerivedDataBlockReference.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D20764()
{
  result = qword_1EC895258;
  if (!qword_1EC895258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895258);
  }

  return result;
}

unint64_t sub_1D6D207BC()
{
  result = qword_1EC895260;
  if (!qword_1EC895260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895260);
  }

  return result;
}

unint64_t sub_1D6D20814()
{
  result = qword_1EC895268;
  if (!qword_1EC895268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895268);
  }

  return result;
}

uint64_t sub_1D6D2087C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v15 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[0] = *a5;
  v19 = *(a5 + 8);
  sub_1D5CED2F0(a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1D5CED354(v18);
    return (*(a7 + 8))(a1, a2, a3, a4, a6, a7);
  }

  v22 = *(v18 + 1);
  if (v19 <= 2)
  {
    if (v19)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
      v34[-10] = a6;
      v34[-9] = a7;
      v34[-8] = v7;
      v34[-7] = a2;
      v34[-6] = a3;
      v34[-5] = a4;
      v34[-4] = v23;
      v34[-3] = v22;
      LOBYTE(v34[-2]) = v24;
      if (v19 == 1)
      {
        v25 = sub_1D719996C(sub_1D6D20FC0, &v34[-12], v34[0]);
      }

      else
      {
        v25 = sub_1D7199954(sub_1D6D20F90, &v34[-12], v34[0]);
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
      v34[-10] = a6;
      v34[-9] = a7;
      v34[-8] = v7;
      v34[-7] = a2;
      v34[-6] = a3;
      v34[-5] = a4;
      v34[-4] = v29;
      v34[-3] = v22;
      LOBYTE(v34[-2]) = v30;
      v25 = sub_1D7199954(sub_1D6D20FF0, &v34[-12], v34[0]);
    }

    goto LABEL_13;
  }

  if (v19 == 3)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
    v34[-10] = a6;
    v34[-9] = a7;
    v34[-8] = v7;
    v34[-7] = a2;
    v34[-6] = a3;
    v34[-5] = a4;
    v34[-4] = v31;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = v32;
    v25 = sub_1D7199954(sub_1D6D20F60, &v34[-12], v34[0]);
    goto LABEL_13;
  }

  if (v19 == 4)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload, v21);
    v34[-10] = a6;
    v34[-9] = a7;
    v34[-8] = v7;
    v34[-7] = a2;
    v34[-6] = a3;
    v34[-5] = a4;
    v34[-4] = v27;
    v34[-3] = v22;
    LOBYTE(v34[-2]) = v28;
    v25 = sub_1D719996C(sub_1D6D20F30, &v34[-12], v34[0]);
LABEL_13:
    v33 = v25;

    return v33;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6D20B98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v25 = a8;
  v24[0] = a3;
  v24[1] = a2;
  v15 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = (v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7270C10;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v26 = v18;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  swift_unknownObjectRetain();

  v19 = sub_1D7261F3C();
  v21 = v20;

  v22 = (*(a10 + 8))(v17, v24[0], v19, v21, a9, a10);

  result = sub_1D5CED354(v17);
  *v25 = v22;
  return result;
}

uint64_t sub_1D6D20D64@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v30 = a8;
  v28 = a3;
  v29 = a2;
  v27 = a9;
  v15 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v15, v15);
  v17 = (&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *a1;
  *v17 = *a1;
  swift_storeEnumTagMultiPayload();
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a6;
  *(v19 + 56) = a7;
  v31 = v19;
  sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v20 = v18;

  v21 = sub_1D7261F3C();
  v23 = v22;

  v24 = (*(a10 + 8))(v17, v28, v21, v23, v27, a10);

  result = sub_1D5CED354(v17);
  *v30 = v24;
  return result;
}

uint64_t sub_1D6D21068(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CED2F0(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v12 = *v11;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v17 = a2 & 0xDFFFFFFFFFFFFFFFLL;
      v14 = sub_1D5F33DF0(v12, a3, a4);
      swift_unknownObjectRelease();
      v13 = v14 ^ 1;
    }

    else
    {
      v17 = a2;
      v13 = sub_1D5F33DF0(v12, a3, a4);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D5CED354(v11);
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed27WebEmbedFailureContentModelO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1D6D211B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6D211F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t sub_1D6D2123C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D6D21264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D21BA0(a1, v7, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v10 = *v7;
    v11 = *v7 >> 61;
    if (v11 > 2)
    {
      v12 = *(*((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 48);

      v29 = [v12 identifier];
      v30 = sub_1D726207C();
      v32 = v31;

      sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

      *a2 = v30;
      *(a2 + 8) = v32;
      goto LABEL_16;
    }

    if (!v11)
    {
      v18 = *(v10 + 16);
      v19 = *(v18 + 56);
      if (!v19)
      {
        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        goto LABEL_3;
      }

      v20 = *(v18 + 56);
      if (v20)
      {
        v21 = [v20 identifier];
        v22 = sub_1D726207C();
        v24 = v23;

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = v22;
        *(a2 + 8) = v24;
      }

      else
      {

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = xmmword_1D734C570;
      }

LABEL_16:
      v9 = 3;
      goto LABEL_17;
    }

    if (v11 == 1)
    {
      v13 = *(*((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 56);
      if (v13)
      {

        v14 = [v13 identifier];
        v15 = sub_1D726207C();
        v17 = v16;

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = v15;
LABEL_15:
        *(a2 + 8) = v17;
        v9 = 1;
        goto LABEL_17;
      }

      sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      sub_1D5E4CF90();

      sub_1D725BE8C();
      v25 = *(v33[1] + 56);
      swift_unknownObjectRetain();

      if (v25)
      {
        v26 = [v25 identifier];
        swift_unknownObjectRelease();
        v27 = sub_1D726207C();
        v17 = v28;

        sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);

        *a2 = v27;
        goto LABEL_15;
      }

      sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);
    }

    *a2 = xmmword_1D734C570;
    v9 = 1;
    goto LABEL_17;
  }

  sub_1D6D21C08(a1, type metadata accessor for WebEmbedDataVisualization);
  result = sub_1D6D21C08(v7, type metadata accessor for WebEmbedDataVisualization);
LABEL_3:
  *a2 = 0;
  *(a2 + 8) = 0;
  v9 = -1;
LABEL_17:
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_1D6D2171C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6D21CD8(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = type metadata accessor for PuzzleResourceSource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  sub_1D6D21AA8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
    result = sub_1D6D21C68(v7, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
    *a2 = 0;
    *(a2 + 8) = 0;
    v18 = -1;
  }

  else
  {
    sub_1D6D21B3C(v7, v16);
    sub_1D6D21BA0(v16, v12, type metadata accessor for PuzzleResourceSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v20 = [*v12 identifier];
        v21 = sub_1D726207C();
        v23 = v22;
        swift_unknownObjectRelease();

        sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
        result = sub_1D6D21C08(v16, type metadata accessor for PuzzleResourceSource);
        *a2 = v21;
        *(a2 + 8) = v23;
      }

      else
      {
        sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
        sub_1D6D21C08(v16, type metadata accessor for PuzzleResourceSource);
        v25 = *v12;
        v26 = *(v12 + 1);
        sub_1D5B4D334();
        v28 = *(v27 + 48);
        sub_1D6D21C68(&v12[*(v27 + 64)], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v29 = sub_1D72585BC();
        result = (*(*(v29 - 8) + 8))(&v12[v28], v29);
        *a2 = v25;
        *(a2 + 8) = v26;
      }
    }

    else
    {
      sub_1D6D21C68(a1, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
      result = sub_1D6D21C08(v16, type metadata accessor for PuzzleResourceSource);
      v24 = *(v12 + 1);
      *a2 = *v12;
      *(a2 + 8) = v24;
    }

    v18 = 4;
  }

  *(a2 + 16) = v18;
  return result;
}

uint64_t sub_1D6D21AA8(uint64_t a1, uint64_t a2)
{
  sub_1D6D21CD8(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D21B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleResourceSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D21BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D21C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D21C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6D21CD8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6D21CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t static FormatArticleOverrides.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDF28AC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FormatArticleOverrides();
  v3 = __swift_project_value_buffer(v2, qword_1EDF28AD0);
  return sub_1D5CE4888(v3, a1, type metadata accessor for FormatArticleOverrides);
}

uint64_t sub_1D6D21DC0()
{
  v0 = type metadata accessor for FormatArticleOverrides();
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v35 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v34 - v17;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_1EDF28AD0);
  v36 = __swift_project_value_buffer(v0, qword_1EDF28AD0);
  v23 = sub_1D725891C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = type metadata accessor for FormatThumbnail();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v26(v18, 1, 1, v24);
  v27 = sub_1D72585BC();
  v28 = *(*(v27 - 8) + 56);
  v37 = v7;
  v28(v7, 1, 1, v27);
  *v3 = 0;
  v3[1] = 0;
  sub_1D5CE4888(v22, v3 + v0[5], sub_1D5B5B2A0);
  *(v3 + v0[6]) = 6;
  v29 = (v3 + v0[7]);
  *v29 = 0;
  v29[1] = 0;
  sub_1D5CE4888(v18, v11, sub_1D5B5CFA0);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_1D5CE4A1C(v18, sub_1D5B5CFA0);
    sub_1D5CE4A1C(v22, sub_1D5B5B2A0);
    sub_1D5CE4A1C(v11, sub_1D5B5CFA0);
    v30 = v35;
    v26(v35, 1, 1, v24);
  }

  else
  {
    v30 = v35;
    v31 = sub_1D5EFA80C();
    sub_1D5CE4A1C(v18, sub_1D5B5CFA0);
    sub_1D5CE4A1C(v22, sub_1D5B5B2A0);
    if (v31)
    {
      v32 = 1;
    }

    else
    {
      sub_1D5CE4888(v11, v30, type metadata accessor for FormatThumbnail);
      v32 = 0;
    }

    v26(v30, v32, 1, v24);
    sub_1D5CE4A1C(v11, type metadata accessor for FormatThumbnail);
  }

  sub_1D5CE46AC(v30, v3 + v0[8], sub_1D5B5CFA0);
  sub_1D5CE46AC(v37, v3 + v0[9], sub_1D5B4D3E0);
  return sub_1D5CE46AC(v3, v36, type metadata accessor for FormatArticleOverrides);
}

uint64_t FormatArticleOverrides.init(title:displayDate:storyType:shortExcerpt:thumbnail:routeURL:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v36 = a8;
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v35 - v23;
  v25 = *a4;
  if (a2)
  {
    v26 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v26 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

      a1 = 0;
      a2 = 0;
    }
  }

  *a9 = a1;
  a9[1] = a2;
  v27 = type metadata accessor for FormatArticleOverrides();
  sub_1D5CE4888(a3, a9 + v27[5], sub_1D5B5B2A0);
  *(a9 + v27[6]) = v25;
  if (a6)
  {
    v28 = HIBYTE(a6) & 0xF;
    if ((a6 & 0x2000000000000000) == 0)
    {
      v28 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v28)
    {

      a5 = 0;
      a6 = 0;
    }
  }

  v29 = (a9 + v27[7]);
  *v29 = a5;
  v29[1] = a6;
  sub_1D5CE4888(a7, v20, sub_1D5B5CFA0);
  v30 = type metadata accessor for FormatThumbnail();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v20, 1, v30) == 1)
  {
    sub_1D5CE4A1C(a7, sub_1D5B5CFA0);
    sub_1D5CE4A1C(a3, sub_1D5B5B2A0);
    sub_1D5CE4A1C(v20, sub_1D5B5CFA0);
    (*(v31 + 56))(v24, 1, 1, v30);
  }

  else
  {
    v32 = sub_1D5EFA80C();
    sub_1D5CE4A1C(a7, sub_1D5B5CFA0);
    sub_1D5CE4A1C(a3, sub_1D5B5B2A0);
    if (v32)
    {
      v33 = 1;
    }

    else
    {
      sub_1D5CE4888(v20, v24, type metadata accessor for FormatThumbnail);
      v33 = 0;
    }

    (*(v31 + 56))(v24, v33, 1, v30);
    sub_1D5CE4A1C(v20, type metadata accessor for FormatThumbnail);
  }

  sub_1D5CE46AC(v24, a9 + v27[8], sub_1D5B5CFA0);
  return sub_1D5CE46AC(v36, a9 + v27[9], sub_1D5B4D3E0);
}

uint64_t FormatArticleOverrides.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatArticleOverrides.storyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatArticleOverrides();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FormatArticleOverrides.shortExcerpt.getter()
{
  v1 = *(v0 + *(type metadata accessor for FormatArticleOverrides() + 28));

  return v1;
}

uint64_t sub_1D6D22728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6D24288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6D22750(uint64_t a1)
{
  v2 = sub_1D5CE4350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D2278C(uint64_t a1)
{
  v2 = sub_1D5CE4350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatArticleOverrides.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5CE42EC(0, &qword_1EDF02650, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CE4350();
  sub_1D7264B5C();
  v13[15] = 0;
  sub_1D726437C();
  if (!v2)
  {
    v11 = type metadata accessor for FormatArticleOverrides();
    v13[14] = 1;
    sub_1D725891C();
    sub_1D5CE45B4(&qword_1EDF45B18, MEMORY[0x1E6969530]);
    sub_1D72643BC();
    v13[13] = *(v3 + *(v11 + 24));
    v13[12] = 2;
    sub_1D6B362E8();
    sub_1D72643BC();
    v13[11] = 3;
    sub_1D726437C();
    v13[10] = 4;
    type metadata accessor for FormatThumbnail();
    sub_1D5CE45B4(&qword_1EDF117E8, type metadata accessor for FormatThumbnail);
    sub_1D72643BC();
    v13[9] = 5;
    sub_1D72585BC();
    sub_1D5CE45B4(&unk_1EDF45B70, MEMORY[0x1E6968FB0]);
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6D22B0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v61 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for FormatArticleOverrides();
  v20 = *(v19 - 1);
  *&v22 = MEMORY[0x1EEE9AC00](v19, v21).n128_u64[0];
  v24 = (&v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 respondsToSelector_])
  {
    v58 = a2;
    v25 = [a1 appliedOverrideMetadata];
    v26 = v25;
    v60 = v10;
    if (v25)
    {
      if (([v25 respondsToSelector_] & 1) != 0 && (v27 = objc_msgSend(v26, sel_title)) != 0)
      {
        v28 = v27;
        v29 = sub_1D726207C();
        v31 = v30;

        v32 = HIBYTE(v31) & 0xF;
        v59 = v29;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {
          v56 = v31;
        }

        else
        {

          v59 = 0;
          v56 = 0;
        }

        v10 = v60;
      }

      else
      {
        v59 = 0;
        v56 = 0;
      }

      v37 = [v26 displayDate];
      if (v37)
      {
        v38 = v37;
        sub_1D72588BC();

        v39 = sub_1D725891C();
        (*(*(v39 - 8) + 56))(v14, 0, 1, v39);
      }

      else
      {
        v40 = sub_1D725891C();
        (*(*(v40 - 8) + 56))(v14, 1, 1, v40);
      }

      sub_1D5CE46AC(v14, v18, sub_1D5B5B2A0);
      if (([v26 respondsToSelector_] & 1) != 0 && (v41 = objc_msgSend(v26, sel_shortExcerpt)) != 0)
      {
        v42 = v10;
        v43 = v41;
        v44 = sub_1D726207C();
        v36 = v45;

        v46 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v46 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          v57 = v44;
        }

        else
        {

          v57 = 0;
          v36 = 0;
        }

        v35 = v56;
        v10 = v42;
      }

      else
      {
        v57 = 0;
        v36 = 0;
        v35 = v56;
      }
    }

    else
    {
      v34 = sub_1D725891C();
      (*(*(v34 - 8) + 56))(v18, 1, 1, v34);
      v35 = 0;
      v59 = 0;
      v57 = 0;
      v36 = 0;
    }

    sub_1D6D231F0(v26, v10);
    v47 = [a1 storyType];
    if (v47 <= 5)
    {
      v48 = 0x50403020106uLL >> (8 * v47);
    }

    else
    {
      v48 = 6;
    }

    sub_1D6D23430(v26, v61);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v35 && (v52 = sub_1D725891C(), v53 = (*(*(v52 - 8) + 48))(v18, 1, v52), !v36) && (v47 > 5) | (1u >> v47) & 1 && v53 == 1 && (v54 = type metadata accessor for FormatThumbnail(), (*(*(v54 - 8) + 48))(v60, 1, v54) == 1) && (v55 = sub_1D72585BC(), (*(*(v55 - 8) + 48))(v61, 1, v55) == 1))
    {
      sub_1D5CE4A1C(v61, sub_1D5B4D3E0);
      sub_1D5CE4A1C(v60, sub_1D5B5CFA0);
      sub_1D5CE4A1C(v18, sub_1D5B5B2A0);
      v33 = 1;
      a2 = v58;
    }

    else
    {
      *v24 = v59;
      v24[1] = v35;
      sub_1D5CE4888(v18, v24 + v19[5], sub_1D5B5B2A0);
      *(v24 + v19[6]) = v48;
      v49 = (v24 + v19[7]);
      *v49 = v57;
      v49[1] = v36;
      v50 = v60;
      sub_1D5CE4888(v60, v24 + v19[8], sub_1D5B5CFA0);
      sub_1D5CE46AC(v61, v24 + v19[9], sub_1D5B4D3E0);
      sub_1D5CE4A1C(v50, sub_1D5B5CFA0);
      sub_1D5CE4A1C(v18, sub_1D5B5B2A0);
      a2 = v58;
      sub_1D5CE46AC(v24, v58, type metadata accessor for FormatArticleOverrides);
      v33 = 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    v33 = 1;
  }

  return (*(v20 + 56))(a2, v33, 1, v19);
}

uint64_t sub_1D6D231F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B5CFA0();
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && ([a1 respondsToSelector_] & 1) != 0)
  {
    v9 = [a1 formatThumbnail];
    v10 = v9;
    sub_1D5EFB8E4(v9, v8);
    v11 = type metadata accessor for FormatThumbnail();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {

      sub_1D5CE4A1C(v8, sub_1D5B5CFA0);
      return (*(v12 + 56))(a2, 1, 1, v11);
    }

    else
    {
      v16 = sub_1D5EFA80C();

      if (v16)
      {
        v17 = 1;
      }

      else
      {
        sub_1D5CE4888(v8, a2, type metadata accessor for FormatThumbnail);
        v17 = 0;
      }

      (*(v12 + 56))(a2, v17, 1, v11);
      return sub_1D5CE4A1C(v8, type metadata accessor for FormatThumbnail);
    }
  }

  else
  {
    v14 = type metadata accessor for FormatThumbnail();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_1D6D23430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D24494(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v25 - v16;
  if (!a1)
  {
    (*(v6 + 56))(&v25 - v16, 1, 1, v5, v17);
LABEL_10:
    sub_1D5CE4A1C(v18, sub_1D6D24494);
    v23 = sub_1D72585BC();
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  if ([a1 respondsToSelector_])
  {
    v19 = [a1 routeURL];
    if (v19)
    {
      v20 = v19;
      sub_1D72584EC();

      v21 = sub_1D72585BC();
      (*(*(v21 - 8) + 56))(v9, 0, 1, v21);
    }

    else
    {
      v22 = sub_1D72585BC();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
    }

    sub_1D5CE46AC(v9, v13, sub_1D5B4D3E0);
    (*(v6 + 56))(v13, 0, 1, v5);
  }

  else
  {
    (*(v6 + 56))(v13, 1, 1, v5);
  }

  sub_1D5CE46AC(v13, v18, sub_1D6D24494);
  if ((*(v6 + 48))(v18, 1, v5) == 1)
  {
    goto LABEL_10;
  }

  return sub_1D5CE46AC(v18, a2, sub_1D5B4D3E0);
}

BOOL _s8NewsFeed22FormatArticleOverridesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v80 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BB60D4();
  v82 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v83 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for FormatThumbnail();
  v87 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v14);
  v81 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5CFA0();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v88 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6B6DEDC();
  v84 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D725891C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BA8044();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1[1];
  v89 = a2;
  v37 = a2[1];
  if (v36)
  {
    if (!v37)
    {
      return 0;
    }

    v38 = a1;
    if ((*a1 != *v89 || v36 != v37) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v38 = a1;
    if (v37)
    {
      return 0;
    }
  }

  v77 = v5;
  v78 = v4;
  v39 = type metadata accessor for FormatArticleOverrides();
  v40 = v39[5];
  v41 = *(v32 + 48);
  sub_1D5CE4888(v38 + v40, v35, sub_1D5B5B2A0);
  sub_1D5CE4888(v89 + v40, &v35[v41], sub_1D5B5B2A0);
  v42 = *(v23 + 48);
  if (v42(v35, 1, v22) == 1)
  {
    if (v42(&v35[v41], 1, v22) == 1)
    {
      sub_1D5CE4A1C(v35, sub_1D5B5B2A0);
      goto LABEL_17;
    }

LABEL_13:
    v43 = sub_1D5BA8044;
    v44 = v35;
LABEL_14:
    sub_1D5CE4A1C(v44, v43);
    return 0;
  }

  sub_1D5CE4888(v35, v30, sub_1D5B5B2A0);
  if (v42(&v35[v41], 1, v22) == 1)
  {
    (*(v23 + 8))(v30, v22);
    goto LABEL_13;
  }

  (*(v23 + 32))(v26, &v35[v41], v22);
  sub_1D5CE45B4(&qword_1EDF45B10, MEMORY[0x1E6969530]);
  v46 = sub_1D7261FBC();
  v47 = *(v23 + 8);
  v47(v26, v22);
  v47(v30, v22);
  sub_1D5CE4A1C(v35, sub_1D5B5B2A0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v48 = v39[6];
  v49 = *(v38 + v48);
  v50 = *(v89 + v48);
  if (v49 == 6)
  {
    v52 = v77;
    v51 = v78;
    v54 = v87;
    v53 = v88;
    if (v50 != 6)
    {
      return 0;
    }
  }

  else
  {
    v52 = v77;
    v51 = v78;
    v54 = v87;
    v53 = v88;
    if (v50 == 6 || (sub_1D6DDAEB0(v49, v50) & 1) == 0)
    {
      return 0;
    }
  }

  v55 = v39[7];
  v56 = (v38 + v55);
  v57 = *(v38 + v55 + 8);
  v58 = (v89 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v59)
  {
    return 0;
  }

  v60 = v39;
  v61 = v39[8];
  v62 = *(v84 + 48);
  v63 = v86;
  sub_1D5CE4888(v38 + v61, v86, sub_1D5B5CFA0);
  sub_1D5CE4888(v89 + v61, v63 + v62, sub_1D5B5CFA0);
  v64 = *(v54 + 48);
  v65 = v85;
  if (v64(v63, 1, v85) == 1)
  {
    if (v64(v63 + v62, 1, v65) == 1)
    {
      sub_1D5CE4A1C(v63, sub_1D5B5CFA0);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  sub_1D5CE4888(v63, v53, sub_1D5B5CFA0);
  if (v64(v63 + v62, 1, v65) == 1)
  {
    sub_1D5CE4A1C(v53, type metadata accessor for FormatThumbnail);
LABEL_34:
    v43 = sub_1D6B6DEDC;
    v44 = v63;
    goto LABEL_14;
  }

  v66 = v81;
  sub_1D5CE46AC(v63 + v62, v81, type metadata accessor for FormatThumbnail);
  v67 = _s8NewsFeed15FormatThumbnailV2eeoiySbAC_ACtFZ_0(v53, v66);
  sub_1D5CE4A1C(v66, type metadata accessor for FormatThumbnail);
  sub_1D5CE4A1C(v53, type metadata accessor for FormatThumbnail);
  sub_1D5CE4A1C(v63, sub_1D5B5CFA0);
  if (!v67)
  {
    return 0;
  }

LABEL_36:
  v68 = v60[9];
  v69 = v83;
  v70 = *(v82 + 48);
  sub_1D5CE4888(v38 + v68, v83, sub_1D5B4D3E0);
  sub_1D5CE4888(v89 + v68, v69 + v70, sub_1D5B4D3E0);
  v71 = *(v52 + 48);
  if (v71(v69, 1, v51) != 1)
  {
    v72 = v80;
    sub_1D5CE4888(v69, v80, sub_1D5B4D3E0);
    if (v71(v69 + v70, 1, v51) == 1)
    {
      (*(v52 + 8))(v72, v51);
      goto LABEL_41;
    }

    v73 = v79;
    (*(v52 + 32))(v79, v69 + v70, v51);
    sub_1D5CE45B4(&unk_1EDF45B60, MEMORY[0x1E6968FB0]);
    v74 = sub_1D7261FBC();
    v75 = *(v52 + 8);
    v75(v73, v51);
    v75(v72, v51);
    sub_1D5CE4A1C(v69, sub_1D5B4D3E0);
    return (v74 & 1) != 0;
  }

  if (v71(v69 + v70, 1, v51) != 1)
  {
LABEL_41:
    v43 = sub_1D5BB60D4;
    v44 = v69;
    goto LABEL_14;
  }

  sub_1D5CE4A1C(v69, sub_1D5B4D3E0);
  return 1;
}

void sub_1D6D24120(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6D24174(void *a1)
{
  a1[1] = sub_1D5CE45B4(&qword_1EDF3FCB8, type metadata accessor for FormatArticleOverrides);
  a1[2] = sub_1D5CE45B4(&unk_1EDF0DB90, type metadata accessor for FormatArticleOverrides);
  result = sub_1D5CE45B4(&qword_1EC895270, type metadata accessor for FormatArticleOverrides);
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D24234()
{
  result = qword_1EC895278;
  if (!qword_1EC895278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895278);
  }

  return result;
}

uint64_t sub_1D6D24288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4479616C70736964 && a2 == 0xEB00000000657461 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70795479726F7473 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63784574726F6873 && a2 == 0xEC00000074707265 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69616E626D756874 && a2 == 0xE90000000000006CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C52556574756F72 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t FormatPaywallBinding.Text.text(from:selectors:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *v2;
  if (v5 <= 4)
  {
    if (*v2 <= 1u)
    {
      if (*v2)
      {
        v4 = *(a1 + 64);
      }

      goto LABEL_24;
    }

    if (v5 == 2)
    {
      v4 = *(a1 + 80);
      goto LABEL_24;
    }

    if (v5 == 3)
    {
      if (*(a1 + 104))
      {
        v4 = *(a1 + 96);
LABEL_24:

        return v4;
      }
    }

    else if (*(a1 + 152))
    {
      v4 = *(a1 + 144);
      goto LABEL_24;
    }

    return 0;
  }

  if (*v2 <= 6u)
  {
    if (v5 == 5)
    {
      if (*(a1 + 168))
      {
        v4 = *(a1 + 160);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *(a1 + 136);
      if (!v13)
      {
        return 0xD000000000000012;
      }

      if (v13 == 1)
      {
        return 0xD000000000000011;
      }

      if (v13 != 2)
      {
        sub_1D7263D4C();

        v17 = 0x80000001D73F1600;
        v15 = MEMORY[0x1DA6F9D20](v13, MEMORY[0x1E69E6158]);
        MEMORY[0x1DA6F9910](v15);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        return 0xD000000000000013;
      }
    }

    return 0;
  }

  if (v5 == 7)
  {
    v6 = *(a1 + 176);
    if (!v6 || ([*(a1 + 176) respondsToSelector_] & 1) == 0)
    {
      return 0;
    }

    return FCArticleRole.selector.getter([v6 role]);
  }

  else
  {
    if (v5 == 8)
    {
      if (*(a1 + 192))
      {
        v4 = *(a1 + 184);
        goto LABEL_24;
      }

      return 0;
    }

    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);

    v16 = 0x6C6C6177796170;
    v17 = 0xE700000000000000;
    v18 = v4;
    v19 = v3;
    v20 = v10;
    v21 = v9;
    v22 = v8;
    v23 = v7;
    v24 = a2(v12);
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D6D247F8();
    sub_1D6D24F3C(&qword_1EC895290, sub_1D6D247F8);
    v4 = sub_1D725D06C();

    sub_1D6D248A8(&v16);
  }

  return v4;
}

void sub_1D6D247F8()
{
  if (!qword_1EC895280)
  {
    sub_1D6D24854();
    v0 = type metadata accessor for FormatCellAutomation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895280);
    }
  }
}

unint64_t sub_1D6D24854()
{
  result = qword_1EC895288;
  if (!qword_1EC895288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895288);
  }

  return result;
}

uint64_t sub_1D6D248A8(uint64_t a1)
{
  sub_1D6D247F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6D24904(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x52656C6369747261;
    v6 = 0xD00000000000001DLL;
    if (a1 != 8)
    {
      v6 = 0x6974616D6F747561;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1 != 5)
    {
      v7 = 0xD000000000000015;
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
    v2 = 0xD000000000000017;
    if (a1 != 3)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = v2;
    }

    if (a1)
    {
      v1 = 0x4E6C656E6E616863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D6D24A68(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D6D24904(*a1);
  v5 = v4;
  if (v3 == sub_1D6D24904(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6D24AF0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6D24904(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D24B54()
{
  sub_1D6D24904(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6D24BA8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6D24904(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D24C08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6D25798();
  *a1 = result;
  return result;
}

unint64_t sub_1D6D24C38@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6D24904(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatPaywallBinding.Text.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6D24D9C()
{
  result = qword_1EC895298;
  if (!qword_1EC895298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895298);
  }

  return result;
}

unint64_t sub_1D6D24DF0(uint64_t a1)
{
  result = sub_1D6D24E18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D24E18()
{
  result = qword_1EC8952A0;
  if (!qword_1EC8952A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952A0);
  }

  return result;
}

unint64_t sub_1D6D24E6C(void *a1)
{
  a1[1] = sub_1D665FCD8();
  a1[2] = sub_1D6704EF8();
  result = sub_1D6D24D9C();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D24F3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6D24F84()
{
  if (!qword_1EC8952B0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8952B0);
    }
  }
}

unint64_t sub_1D6D24FD8()
{
  result = qword_1EC8952B8;
  if (!qword_1EC8952B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952B8);
  }

  return result;
}

unint64_t sub_1D6D2502C()
{
  result = qword_1EDF2ADA0;
  if (!qword_1EDF2ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADA0);
  }

  return result;
}

uint64_t sub_1D6D25080@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (v5 <= 4)
  {
    if (*a1 <= 1u)
    {
      if (*a1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 72);

        v9 = 0x206C656E6E616843;
        v10 = 0xEC000000656D614ELL;
      }

      else
      {
        v7 = *a2;
        v8 = *(a2 + 8);

        v9 = 0x696669746E656449;
        v10 = 0xEA00000000007265;
      }

      goto LABEL_43;
    }

    if (v5 == 2)
    {
      v7 = *(a2 + 80);
      v8 = *(a2 + 88);

      v10 = 0x80000001D73F1710;
      v11 = a3;
      v9 = 0xD000000000000016;
LABEL_44:
      v13 = v7;
      v15 = v8;
      goto LABEL_45;
    }

    if (v5 == 3)
    {
      v6 = "Services Bundle Price";
      if (*(a2 + 104))
      {
        v7 = *(a2 + 96);
        v8 = *(a2 + 104);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD000000000000019;
    }

    else
    {
      v6 = "Services Bundle Price Delta";
      if (*(a2 + 152))
      {
        v7 = *(a2 + 144);
        v8 = *(a2 + 152);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD000000000000015;
    }

LABEL_42:
    v10 = v6 | 0x8000000000000000;
LABEL_43:
    v11 = a3;
    goto LABEL_44;
  }

  if (*a1 <= 6u)
  {
    if (v5 == 5)
    {
      v6 = "Activation Eligibility";
      if (*(a2 + 168))
      {
        v7 = *(a2 + 160);
        v8 = *(a2 + 168);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD00000000000001BLL;
      goto LABEL_42;
    }

    v21 = *(a2 + 136);
    if (v21)
    {
      if (v21 == 1)
      {
        v15 = 0x80000001D73F1620;
        v13 = 0xD000000000000011;
      }

      else if (v21 == 2)
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      else
      {
        sub_1D7263D4C();

        *&v28 = 0xD000000000000013;
        *(&v28 + 1) = 0x80000001D73F1600;
        v25 = MEMORY[0x1DA6F9D20](v21, MEMORY[0x1E69E6158]);
        MEMORY[0x1DA6F9910](v25);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v15 = 0x80000001D73F1600;
        v13 = 0xD000000000000013;
      }
    }

    else
    {
      v15 = 0x80000001D73F1640;
      v13 = 0xD000000000000012;
    }

    v10 = 0x80000001D73F1690;
    v11 = a3;
    v9 = 0xD000000000000016;
  }

  else if (v5 == 7)
  {
    v12 = *(a2 + 176);
    if (v12 && ([v12 respondsToSelector_] & 1) != 0)
    {
      v13 = FCArticleRole.selector.getter([v12 role]);
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v9 = 0x20656C6369747241;
    v10 = 0xEC000000656C6F52;
    v11 = a3;
  }

  else
  {
    if (v5 == 8)
    {
      v6 = "appleOneViaCarrier";
      if (*(a2 + 192))
      {
        v7 = *(a2 + 184);
        v8 = *(a2 + 192);
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      v9 = 0xD000000000000020;
      goto LABEL_42;
    }

    v17 = *a2;
    v16 = *(a2 + 8);
    v18 = *(a2 + 16);
    v33 = *(a2 + 32);
    v34 = v18;
    *&v28 = 0x6C6C6177796170;
    *(&v28 + 1) = 0xE700000000000000;
    *&v29 = v17;
    *(&v29 + 1) = v16;
    v30 = v18;
    v31 = v33;
    v32 = MEMORY[0x1E69E7CD0];
    v26[3] = v18;
    v26[4] = v33;
    v27 = MEMORY[0x1E69E7CD0];
    v26[1] = v28;
    v26[2] = v29;
    sub_1D72578EC();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    sub_1D5E422A8(&v34, v26);
    sub_1D5E422A8(&v33, v26);
    sub_1D72578DC();
    sub_1D6D247F8();
    sub_1D6D24F3C(&qword_1EC895290, sub_1D6D247F8);
    v19 = sub_1D725D06C();
    if (v3)
    {

      sub_1D6D248A8(&v28);
    }

    else
    {
      v17 = v19;
      v22 = v20;

      sub_1D6D248A8(&v28);

      v16 = v22;
    }

    v9 = 0x6974616D6F747541;
    v11 = a3;
    v10 = 0xEA00000000006E6FLL;
    v13 = v17;
    v15 = v16;
  }

LABEL_45:
  sub_1D711F844(v9, v10, v13, v15, v11);
  v23 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v23 - 8) + 56))(a3, 0, 1, v23);
}

double sub_1D6D25598@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5EA74B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 192);
  v10 = *(a1 + 224);
  v29[13] = *(a1 + 208);
  v29[14] = v10;
  v11 = *(a1 + 128);
  v12 = *(a1 + 160);
  v13 = *(a1 + 176);
  v29[9] = *(a1 + 144);
  v29[10] = v12;
  v29[11] = v13;
  v29[12] = v9;
  v14 = *(a1 + 64);
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v29[5] = *(a1 + 80);
  v29[6] = v15;
  v30 = *(a1 + 240);
  v29[7] = v16;
  v29[8] = v11;
  v17 = *(a1 + 16);
  v29[0] = *a1;
  v29[1] = v17;
  v18 = *(a1 + 48);
  v29[2] = *(a1 + 32);
  v29[3] = v18;
  v29[4] = v14;
  *&v27[0] = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 10, 0);
  v19 = 0;
  v20 = *&v27[0];
  do
  {
    v26 = byte_1F50F73F0[v19 + 32];
    sub_1D6D25080(&v26, v29, v8);
    *&v27[0] = v20;
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D69972A4(v21 > 1, v22 + 1, 1);
      v20 = *&v27[0];
    }

    ++v19;
    *(v20 + 16) = v22 + 1;
    sub_1D5E4F52C(v8, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22);
  }

  while (v19 != 10);
  sub_1D6795150(1954047316, 0xE400000000000000, 0, 0, v20, v27);

  result = *v27;
  v24 = v27[1];
  *a2 = v27[0];
  *(a2 + 16) = v24;
  *(a2 + 32) = v28;
  return result;
}

uint64_t sub_1D6D25798()
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

uint64_t FormatSymbolScale.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x6C6C616D73;
  v4 = 0x6D756964656DLL;
  if (v1 != 3)
  {
    v4 = 0x656772616CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6669636570736E75;
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

NewsFeed::FormatSymbolScale_optional __swiftcall FormatSymbolScale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D6D258EC()
{
  result = qword_1EC8952C0;
  if (!qword_1EC8952C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952C0);
  }

  return result;
}

uint64_t sub_1D6D25940()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D25A1C()
{
  sub_1D72621EC();
}

uint64_t sub_1D6D25AE4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D25BC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v2 != 3)
  {
    v8 = 0x656772616CLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEA00000000006465;
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

unint64_t sub_1D6D25C60(uint64_t a1)
{
  *(a1 + 8) = sub_1D6D25C90();
  result = sub_1D6D25CE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6D25C90()
{
  result = qword_1EC8952C8;
  if (!qword_1EC8952C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952C8);
  }

  return result;
}

unint64_t sub_1D6D25CE4()
{
  result = qword_1EDF2ED30;
  if (!qword_1EDF2ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED30);
  }

  return result;
}

unint64_t sub_1D6D25D38(uint64_t a1)
{
  result = sub_1D6D25D60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D25D60()
{
  result = qword_1EC8952D0;
  if (!qword_1EC8952D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952D0);
  }

  return result;
}

unint64_t sub_1D6D25DB4(void *a1)
{
  a1[1] = sub_1D5C954A4();
  a1[2] = sub_1D66C3A00();
  result = sub_1D6D258EC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D25E74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t SharingTopicActivity.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6D25F50()
{
  result = qword_1EC8952D8;
  if (!qword_1EC8952D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952D8);
  }

  return result;
}

uint64_t sub_1D6D25FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = sub_1D6D26098(a1, a2, a3);
  sub_1D72618EC();
  v8 = *(a3 + 16);
  *a4 = v6;
  *(a4 + 8) = 0x736E6F6974704FLL;
  *(a4 + 16) = 0xE700000000000000;
  *(a4 + 24) = v7;
  *(a4 + 32) = 0x322E686374697773;
  *(a4 + 40) = 0xE800000000000000;
  *(a4 + 48) = 0x736E6F6974704FLL;
  *(a4 + 56) = 0xE700000000000000;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = v8;
  *(a4 + 88) = 0;
  *(a4 + 96) = v10;
  *(a4 + 104) = v11;
}

void *sub_1D6D26098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = type metadata accessor for FormatOption();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v31 - v13);

  sub_1D6A9DF10(v15, v36, 0.0, 0.0, 22.0, 22.0);
  v16 = *(a3 + 16);
  if (v16)
  {
    v32 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = a3 + v32;
    v18 = *(v4 + 72);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5D2477C(v17, v14);
      v20 = *v14;
      v21 = v14[1];

      sub_1D6B777A8(v36, &v35);
      v22 = v35;
      *v7 = v20;
      *(v7 + 1) = v21;
      *(v7 + 2) = v22;
      *(v7 + 3) = 1;
      v23 = *(v33 + 28);
      v24 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v24 - 8) + 56))(&v7[v23], 1, 1, v24);
      sub_1D5D25B9C(v14);
      sub_1D5D247E0(v7, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D5CEABA0(0, v19[2] + 1, 1, v19);
      }

      v26 = v19[2];
      v25 = v19[3];
      if (v26 >= v25 >> 1)
      {
        v19 = sub_1D5CEABA0(v25 > 1, v26 + 1, 1, v19);
      }

      v19[2] = v26 + 1;
      sub_1D5D247E0(v34, v19 + v32 + v26 * v18);
      v17 += v18;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v27 = sub_1D68CAFC4(v19);

  v28 = sub_1D5F63640(v27);

  v29 = sub_1D7073500(v28);

  sub_1D6202060(v36);
  return v29;
}

uint64_t FormatArrangementResolverOptions.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D725C42C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FormatArrangementResolverOptions.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D725C42C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1D6D26478()
{
  result = sub_1D725C42C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6D26524()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6D26598()
{
  v1 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_id;
  v2 = sub_1D725895C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D6D268F0(v0 + OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_cacheFile);

  v3 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem__isExpanded;
  sub_1D5EF05B8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatFileTreeItem()
{
  result = qword_1EC8952E8;
  if (!qword_1EC8952E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6D266FC()
{
  sub_1D725895C();
  if (v0 <= 0x3F)
  {
    sub_1D6032A5C();
    if (v1 <= 0x3F)
    {
      sub_1D5EF05B8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1D6D2681C()
{
  result = qword_1EC881120;
  if (!qword_1EC881120)
  {
    sub_1D725895C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881120);
  }

  return result;
}

uint64_t sub_1D6D26874@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8NewsFeed23DebugFormatFileTreeItem_id;
  v5 = sub_1D725895C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D6D268F0(uint64_t a1)
{
  sub_1D6032A5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static FormatWebEmbedNodeContent.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v33 - v12;
  v14 = *a1;
  v15 = *a2;
  v16 = *a1 >> 62;
  if (!v16)
  {
    if (!(v15 >> 62))
    {
      v23 = *(v14 + 40);
      v24 = *(v14 + 32);
      v25 = *(v15 + 32);
      v26 = *(v15 + 40);
      v36 = *(v14 + 16);
      v37 = v24;
      v38 = v23;
      v33 = *(v15 + 16);
      v34 = v25;
      v35 = v26;

      v21 = _s8NewsFeed25FormatWebEmbedNodeBindingO2eeoiySbAC_ACtFZ_0(&v36, &v33);
      goto LABEL_7;
    }

LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  if (v16 != 1)
  {
    if (v15 >> 62 == 2)
    {
      v27 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v36 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      *(&v36 + 1) = v27;
      *&v33 = v29;
      *(&v33 + 1) = v28;

      if (static FormatWebEmbedNodeContent.== infix(_:_:)(&v36, &v33))
      {

        sub_1D634C12C(v27, v28);
        v31 = v30;

        swift_bridgeObjectRelease_n();
        if (v31)
        {
          v21 = 1;
          return v21 & 1;
        }
      }

      else
      {
      }
    }

    goto LABEL_13;
  }

  if (v15 >> 62 != 1)
  {
    goto LABEL_13;
  }

  v17 = v11;
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = *(v5 + 16);
  v20(v13, v18, v17);
  v20(v8, v19, v17);

  v21 = sub_1D72584CC();
  v22 = *(v5 + 8);
  v22(v8, v17);
  v22(v13, v17);
LABEL_7:

  return v21 & 1;
}

uint64_t sub_1D6D26C38(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v40 - v12;
  v14 = *v2;
  v15 = *v2 >> 62;
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = swift_projectBox();
      v41 = v6;
      v17 = *(v6 + 16);
      v17(v13, v16, v5);
      v18 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier + 8);
      v43 = *(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
      v17(v9, v13, v5);
      v42 = v18;

      sub_1D725A7EC();
      v19 = v45[0];
      v20 = *(*(v45[0] + 40) + 16);
      swift_beginAccess();
      v21 = *(*(v20 + 16) + 16);
      v44 = a2;
      if (v21)
      {
        v47 = *(v19 + 56);

        v23 = sub_1D6F622E0(v22);
        sub_1D5B886D0(v23);

        v24 = v47;
      }

      else
      {
        v24 = sub_1D6E46E28();
      }

      v33 = MEMORY[0x1E69E7CD0];
      v48 = MEMORY[0x1E69E7CD0];
      swift_beginAccess();
      v34 = qword_1EC893B38;
      v35 = off_1EC893B40;

      v36 = sub_1D5BE240C(v34, v35, v24);

      v37 = v41;
      if (v36)
      {
        sub_1D5FEA1F0();
        v33 = v48;
      }

      type metadata accessor for FormatWebEmbedData();
      swift_allocObject();
      v38 = v44;

      v29 = sub_1D69B58D8(v43, v42, v9, v38, v33);
      (*(v37 + 8))(v13, v5);
    }

    else
    {
      v30 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);

      sub_1D5FBB054(v45, a1, v31, v32);
      v47 = v45[0];
      v29 = sub_1D6D26C38(a1, a2);
    }
  }

  else
  {
    v25 = *(v14 + 16);
    v26 = *(v14 + 24);
    v27 = *(v14 + 32);
    v28 = *(v14 + 40);
    v45[0] = v25;
    v45[1] = v26;
    v45[2] = v27;
    v46 = v28;
    sub_1D62B6164(v25, v26, v27, v28);
    v29 = sub_1D69BB124(a1, a2);
    sub_1D62B61A8(v25, v26, v27, v28);
  }

  return v29;
}

unint64_t sub_1D6D26FD8(uint64_t a1)
{
  result = sub_1D66D3CE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D27000(void *a1)
{
  a1[1] = sub_1D5CCAEC8();
  a1[2] = sub_1D66D3C0C();
  result = sub_1D6D27038();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D27038()
{
  result = qword_1EC8952F8;
  if (!qword_1EC8952F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8952F8);
  }

  return result;
}

uint64_t sub_1D6D270A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(v5 + 16);
  v12 = *(a4 + 64);

  result = v12(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v14;
  a5[2] = v11;
  return result;
}

uint64_t FormatSourceItemData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

id sub_1D6D271C4()
{
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v5, v6).n128_u64[0];
  v9 = &v21 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed32PuzzleTypeLinkPresentationSource_puzzleType);
  v11 = [v10 nameForSharing];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  v12 = [v10 identifier];
  if (!v12)
  {
    sub_1D726207C();
    v12 = sub_1D726203C();
  }

  v13 = [objc_opt_self() nss:v12 NewsURLForPuzzleTypeID:?];

  if (v13)
  {
    sub_1D72584EC();

    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = sub_1D6D274B0(v10);
  sub_1D5EB84C0(v9, v4);
  sub_1D72585BC();
  v16 = *(v14 - 8);
  v17 = 0;
  if ((*(v16 + 48))(v4, 1, v14) != 1)
  {
    v17 = sub_1D725844C();
    (*(v16 + 8))(v4, v14);
  }

  v18 = [objc_allocWithZone(NELinkMetadataSource) initWithTitle:v11 url:v17 imageProvider:v15 iconProvider:v15];

  v19 = [v18 linkMetadata];
  sub_1D5E3E404(v9);
  return v19;
}

id sub_1D6D274B0(uint64_t a1)
{
  v2 = sub_1D725C2FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D725C2DC();
  sub_1D725C2CC();
  (*(v3 + 8))(v6, v2);
  v8 = sub_1D726203C();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1D6D27B1C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F596C0;
  aBlock[3] = &block_descriptor_94;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  return v7;
}

uint64_t sub_1D6D276A8(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D5B542A8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_1D726294C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a6;
    v16[6] = a1;
    v16[7] = a2;
    swift_unknownObjectRetain();
    sub_1D5DEA510(a1);
    sub_1D6BD1334(0, 0, v12, &unk_1D734D150, v16);
  }

  else if (a1)
  {
    return a1(0, 0);
  }

  return result;
}

uint64_t sub_1D6D27828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_1D6D278C0;

  return sub_1D6D27BF8(a5);
}

uint64_t sub_1D6D278C0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6D279C0, 0, 0);
}

uint64_t sub_1D6D279C0()
{
  v1 = v0[5];
  if (v1 && (v2 = UIImagePNGRepresentation(v1)) != 0)
  {
    v3 = v2;
    v4 = sub_1D725867C();
    v6 = v5;

    v7 = sub_1D725865C();
    sub_1D5B952F8(v4, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[2];
  v9 = v0[5];
  if (v8)
  {
    v10 = v7;
    v8(v7, 0);
  }

  else
  {

    v9 = v7;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D6D27B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6D27828(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D6D27C18()
{
  v1 = [*(v0 + 48) coverImageAssetHandle];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 filePath];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D726207C();
      v7 = v6;

      *(v0 + 32) = v5;
      *(v0 + 40) = v7;
      sub_1D5F129A4();
      swift_allocObject();
      v8 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v2;
      sub_1D5F129A4();
      swift_allocObject();
      v8 = sub_1D725BBAC();
    }

    *(v0 + 64) = v8;
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_1D6D27DBC;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D6D27DBC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6D27ED8;
  }

  else
  {

    v2 = sub_1D6045CB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6D27ED8()
{
  v18 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = sub_1D725C42C();
  __swift_project_value_buffer(v1, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v2 = sub_1D725C3FC();
  v3 = sub_1D7262EBC();
  swift_unknownObjectRelease();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  v6 = v0[7];
  if (v4)
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = [v7 identifier];
    v11 = sub_1D726207C();
    v13 = v12;

    v14 = sub_1D5BC5100(v11, v13, &v17);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D5B42000, v2, v3, "Failed downloading asset handle for Puzzle Type ID: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  v15 = v0[1];

  return v15(0);
}

uint64_t WebEmbedDataVisualization.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
    v15 = 0x3A636972656E6567;
    v16 = 0xE90000000000003ALL;
    MEMORY[0x1DA6F9910](*v5, v5[1]);
    v10 = v15;
    sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v9;
    v15 = 0x3A3A7374726F7073;
    v16 = 0xE800000000000000;
    v14[1] = v11;
    v12 = SportsDataVisualization.identifier.getter();
    MEMORY[0x1DA6F9910](v12);

    return v15;
  }

  return v10;
}

uint64_t WebEmbedDataVisualization.urlDataSources.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v11 = *v9;
    v12 = *v9 >> 61;
    if (v12 <= 2)
    {
      if (!v12)
      {
        v10 = *(*(v11 + 16) + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources);

LABEL_17:

        return v10;
      }

      v16 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 == 1)
      {
        v14 = *(v16 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed31SportsStandingDataVisualization_urlDataSources;
      }

      else
      {
        v14 = *(v16 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_urlDataSources;
      }
    }

    else
    {
      v13 = v11 & 0x1FFFFFFFFFFFFFFFLL;
      if (v12 > 4)
      {
        if (v12 == 5)
        {
          v14 = *(v13 + 16);
          v15 = &OBJC_IVAR____TtC8NewsFeed35SportsInjuryReportDataVisualization_urlDataSources;
        }

        else
        {
          v14 = *(v13 + 16);
          v15 = &OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources;
        }
      }

      else if (v12 == 3)
      {
        v14 = *(v13 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed31SportsBoxScoreDataVisualization_urlDataSources;
      }

      else
      {
        v14 = *(v13 + 16);
        v15 = &OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources;
      }
    }

    v10 = *(v14 + *v15);

    goto LABEL_17;
  }

  sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
  v10 = *&v5[*(v2 + 24)];

  sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  return v10;
}

uint64_t WebEmbedDataVisualization.webEmbedKind.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D61880A0(v1, v6);
  v7 = swift_getEnumCaseMultiPayload() == 1;
  result = sub_1D5BF1BAC(v6, type metadata accessor for WebEmbedDataVisualization);
  *a1 = v7;
  return result;
}

uint64_t WebEmbedDataVisualization.kind.getter()
{
  v1 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BF1BAC(v4, type metadata accessor for WebEmbedDataVisualization);
    return 0x636972656E6567;
  }

  else
  {
    v6 = *v4 >> 61;

    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          return 0x676E69646E617473;
        }

        else
        {
          return 0x74656B63617262;
        }
      }

      else
      {
        return 0x65726F6373;
      }
    }

    else if (v6 > 4)
    {
      if (v6 == 5)
      {
        return 0x65527972756A6E69;
      }

      else
      {
        return 0x6579616C5079656BLL;
      }
    }

    else if (v6 == 3)
    {
      return 0x65726F6353786F62;
    }

    else
    {
      return 0x726F6353656E696CLL;
    }
  }
}

uint64_t WebEmbedDataVisualization.sportsDataVisualization.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = sub_1D5BF1BAC(v7, type metadata accessor for WebEmbedDataVisualization);
    v9 = 0xF000000000000007;
  }

  else
  {
    v9 = *v7;
  }

  *a1 = v9;
  return result;
}

uint64_t static WebEmbedDataVisualization.== infix(_:_:)()
{
  v0 = WebEmbedDataVisualization.identifier.getter();
  v2 = v1;
  if (v0 == WebEmbedDataVisualization.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

uint64_t sub_1D6D28818()
{
  v1 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D6D2968C();
    v6 = sub_1D6D29D78();
    v15 = v5;
    sub_1D6985118(v6);
    v7 = MEMORY[0x1E6968FB0];
    sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
    sub_1D72585BC();
    sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v7);
    sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
    v8 = sub_1D72623CC();

    sub_1D5BF1BAC(v4, type metadata accessor for WebEmbedDataVisualization);
  }

  else
  {
    v9 = *v4;
    if (*v4 >> 61 == 2)
    {
      v8 = *(*((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
    }

    else
    {
      v15 = *v4;
      v10 = sub_1D6F86D04();
      v14[1] = v9;
      v11 = sub_1D6F87060();
      v14[0] = v10;
      sub_1D6985118(v11);
      v15 = v14[0];
      v12 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D72585BC();
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v12);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      v8 = sub_1D72623CC();
    }
  }

  return v8;
}

unint64_t sub_1D6D28B24()
{
  v1 = v0;
  sub_1D5E4CF90();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = (&v47 - v15);
  sub_1D61880A0(v1, &v47 - v15);
  v57 = v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BF1BAC(v16, type metadata accessor for WebEmbedDataVisualization);
    return MEMORY[0x1E69E7CC0];
  }

  v17 = MEMORY[0x1E69E7CC0];
  v51 = *v16;
  v18 = MEMORY[0x1E69E7CC0];
  if (v51 >> 61 == 2)
  {
    v19 = *((v51 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    (*(v4 + 16))(v7, v19 + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_visualizations, v3);
    sub_1D6D2C068(&unk_1EDF17890, sub_1D5E4CF90);

    sub_1D726238C();
    v49 = v9;
    v50 = v59;
    v47 = v19;
    v48 = v13;
    if (v59 >> 62)
    {
      goto LABEL_61;
    }

    v20 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v21 = v60;
    v18 = MEMORY[0x1E69E7CC0];
    if (v60 == v20)
    {
LABEL_7:

      v13 = v48;
      v9 = v49;
      v17 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v54 = v50 & 0xFFFFFFFFFFFFFF8;
    v55 = v50 & 0xC000000000000001;
    v52 = v20;
    v53 = v50 + 32;
    while (1)
    {
      if (v55)
      {
        v29 = MEMORY[0x1DA6FB460](v21, v50);
        v30 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          v20 = sub_1D7263BFC();
          goto LABEL_6;
        }

        if (v21 >= *(v54 + 16))
        {
          goto LABEL_55;
        }

        v29 = *(v53 + 8 * v21);

        v30 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_54;
        }
      }

      v60 = v30;
      v31 = *(v29 + OBJC_IVAR____TtC8NewsFeed30SportsBracketDataVisualization_events);
      if (v31 >> 62)
      {
        v32 = sub_1D7263BFC();
        if (!v32)
        {
LABEL_39:

          v34 = MEMORY[0x1E69E7CC0];
          goto LABEL_40;
        }
      }

      else
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v32)
        {
          goto LABEL_39;
        }
      }

      v58 = MEMORY[0x1E69E7CC0];
      sub_1D6997184(0, v32 & ~(v32 >> 63), 0);
      if (v32 < 0)
      {
        goto LABEL_58;
      }

      v56 = v18;
      v33 = 0;
      v34 = v58;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1DA6FB460](v33, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v33 + 32);
        }

        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v58 = v34;
        v38 = *(v34 + 16);
        v37 = *(v34 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1D6997184((v37 > 1), v38 + 1, 1);
          v34 = v58;
        }

        ++v33;
        *(v34 + 16) = v38 + 1;
        *(v34 + 8 * v38 + 32) = v36;
      }

      while (v32 != v33);

      v18 = v56;
      v20 = v52;
LABEL_40:
      v39 = *(v34 + 16);
      v40 = *(v18 + 2);
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
        goto LABEL_56;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v41 <= *(v18 + 3) >> 1)
      {
        if (*(v34 + 16))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        v18 = sub_1D698BA80(isUniquelyReferenced_nonNull_native, v43, 1, v18);
        if (*(v34 + 16))
        {
LABEL_49:
          if ((*(v18 + 3) >> 1) - *(v18 + 2) < v39)
          {
            goto LABEL_59;
          }

          swift_arrayInitWithCopy();

          if (v39)
          {
            v44 = *(v18 + 2);
            v45 = __OFADD__(v44, v39);
            v46 = v44 + v39;
            if (v45)
            {
              goto LABEL_60;
            }

            *(v18 + 2) = v46;
          }

          goto LABEL_19;
        }
      }

      if (v39)
      {
        goto LABEL_57;
      }

LABEL_19:
      v21 = v60;
      if (v60 == v20)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_8:
  v22 = *(v18 + 2);
  if (!v22)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v59 = v17;
  sub_1D6997134(0, v22, 0);
  v23 = 32;
  v24 = v59;
  do
  {
    v25 = v18;
    *v13 = *&v18[v23];
    swift_storeEnumTagMultiPayload();
    v59 = v24;
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);

    if (v26 >= v27 >> 1)
    {
      sub_1D6997134(v27 > 1, v26 + 1, 1);
      v24 = v59;
    }

    *(v24 + 16) = v26 + 1;
    sub_1D5BE762C(v13, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, type metadata accessor for WebEmbedDataVisualization);
    v23 += 8;
    --v22;
    v18 = v25;
  }

  while (v22);

  return v24;
}

uint64_t WebEmbedKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6D29200@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v13, v9, type metadata accessor for GenericDataVisualization);
    v14 = *(v6 + 20);
    v15 = sub_1D72585BC();
    (*(*(v15 - 8) + 16))(a2, &v9[v14], v15);
    return sub_1D5BF1BAC(v9, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v17[1] = *v13;
    a1();
  }
}

uint64_t sub_1D6D29394()
{
  v0 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v27 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for WebEmbedDataVisualization();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = sub_1D6D28B24();
  v12 = *(v11 + 16);
  if (v12)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v12, 0);
    v13 = v33;
    v14 = *(v3 + 80);
    v26 = v11;
    v15 = v11 + ((v14 + 32) & ~v14);
    v28 = *(v3 + 72);
    do
    {
      sub_1D61880A0(v15, v10);
      sub_1D61880A0(v10, v6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = v27;
        sub_1D5BE762C(v6, v27, type metadata accessor for GenericDataVisualization);
        v31 = 0x3A636972656E6567;
        v32 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v16, v16[1]);
        v17 = v31;
        v18 = v32;
        sub_1D5BF1BAC(v10, type metadata accessor for WebEmbedDataVisualization);
        v19 = v16;
        v20 = type metadata accessor for GenericDataVisualization;
      }

      else
      {
        v30 = *v6;
        v31 = 0x3A3A7374726F7073;
        v32 = 0xE800000000000000;
        v21 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v21);

        v17 = v31;
        v18 = v32;
        v20 = type metadata accessor for WebEmbedDataVisualization;
        v19 = v10;
      }

      sub_1D5BF1BAC(v19, v20);
      v33 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v13 = v33;
      }

      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v18;
      v15 += v28;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v13;
}

size_t sub_1D6D2968C()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D72585BC();
  v6 = *(v45 - 8);
  v8 = MEMORY[0x1EEE9AC00](v45, v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v17, v5, type metadata accessor for GenericDataVisualization);
    v18 = *&v5[*(v2 + 24)];
    if (v18 >> 62)
    {
      v19 = sub_1D7263BFC();
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x1E69E7CC0];
    if (!v19)
    {
LABEL_16:
      v47 = v13;
      v28 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v28);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      v27 = sub_1D72623CC();

      sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
      return v27;
    }

    v43 = v18;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D69971B4(0, v19 & ~(v19 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v42 = v5;
      v20 = 0;
      v13 = v47;
      v21 = v43;
      v44 = v43 & 0xC000000000000001;
      v22 = (v6 + 16);
      v23 = v19;
      do
      {
        if (v44)
        {
          v24 = MEMORY[0x1DA6FB460](v20, v21);
          (*v22)(v10, v24 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
          v21 = v43;
          swift_unknownObjectRelease();
        }

        else
        {
          (*v22)(v10, *(v21 + 8 * v20 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
        }

        v47 = v13;
        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          sub_1D69971B4(v25 > 1, v26 + 1, 1);
          v21 = v43;
          v13 = v47;
        }

        ++v20;
        *(v13 + 2) = v26 + 1;
        (*(v6 + 32))(&v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v26], v10, v45);
      }

      while (v23 != v20);
      v5 = v42;
      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    v1 = *v17;
    if (*v17 >> 61 == 2)
    {
      v27 = *(*((v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls);

LABEL_30:

      return v27;
    }

    v47 = *v17;
    v29 = sub_1D6F88478();
    if (!(v29 >> 62))
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }
  }

  v30 = sub_1D7263BFC();
LABEL_19:
  v31 = MEMORY[0x1E69E7CC0];
  if (!v30)
  {
LABEL_29:
    v47 = v31;
    v40 = MEMORY[0x1E6968FB0];
    sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
    sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v40);
    sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
    v27 = sub_1D72623CC();

    goto LABEL_30;
  }

  v43 = v1;
  v46 = MEMORY[0x1E69E7CC0];

  result = sub_1D69971B4(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v31 = v46;
    v44 = v32 & 0xC000000000000001;
    v35 = (v6 + 16);
    v36 = v32;
    do
    {
      if (v44)
      {
        v37 = MEMORY[0x1DA6FB460](v34, v36);
        (*v35)(v13, v37 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
        swift_unknownObjectRelease();
      }

      else
      {
        (*v35)(v13, *(v36 + 8 * v34 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v45);
      }

      v46 = v31;
      v39 = *(v31 + 2);
      v38 = *(v31 + 3);
      if (v39 >= v38 >> 1)
      {
        sub_1D69971B4(v38 > 1, v39 + 1, 1);
        v31 = v46;
      }

      ++v34;
      *(v31 + 2) = v39 + 1;
      (*(v6 + 32))(&v31[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v39], v13, v45);
    }

    while (v30 != v34);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

void *sub_1D6D29D78()
{
  v1 = 0;
  v91 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v91, v2);
  v93 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v107 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v105 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v106 = &v90 - v13;
  v14 = type metadata accessor for WebEmbedDataVisualization();
  v100 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (&v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v95 = (&v90 - v21);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = (&v90 - v27);
  sub_1D61880A0(v0, &v90 - v27);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    if (*v28 >> 61 == 2)
    {
      v86 = *(*((*v28 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_childDataSourceUrls);
    }

    else
    {
      v111 = MEMORY[0x1E69E7CC0];
      v88 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v88);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      v86 = sub_1D72623CC();
    }

    return v86;
  }

  result = sub_1D6D28B24();
  v99 = result[2];
  if (!v99)
  {

    v87 = MEMORY[0x1E69E7CC0];
LABEL_76:
    v111 = v87;
    v89 = MEMORY[0x1E6968FB0];
    sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
    sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v89);
    sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
    v86 = sub_1D72623CC();

    sub_1D5BF1BAC(v28, type metadata accessor for WebEmbedDataVisualization);
    return v86;
  }

  v90 = v28;
  v30 = 0;
  v98 = result + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v31 = (v5 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v108 = v5 + 32;
  v109 = v4;
  v94 = v14;
  v96 = v18;
  v97 = result;
  v33 = v95;
  v103 = v25;
  while (v30 < result[2])
  {
    v104 = v32;
    sub_1D61880A0(&v98[*(v100 + 72) * v30], v25);
    sub_1D61880A0(v25, v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v102 = v30;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D61880A0(v25, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v101 = v1;
        v37 = v18;
        v38 = v93;
        sub_1D5BE762C(v37, v93, type metadata accessor for GenericDataVisualization);
        v39 = *(v38 + *(v91 + 24));
        if (v39 >> 62)
        {
          v40 = sub_1D7263BFC();
        }

        else
        {
          v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v41 = MEMORY[0x1E69E7CC0];
        if (v40)
        {
          v111 = MEMORY[0x1E69E7CC0];
          result = sub_1D69971B4(0, v40 & ~(v40 >> 63), 0);
          if (v40 < 0)
          {
            goto LABEL_84;
          }

          v42 = 0;
          v41 = v111;
          do
          {
            if ((v39 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x1DA6FB460](v42, v39);
              (*v31)(v107, v43 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
              swift_unknownObjectRelease();
            }

            else
            {
              (*v31)(v107, *(v39 + 8 * v42 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
            }

            v111 = v41;
            v45 = *(v41 + 16);
            v44 = *(v41 + 24);
            if (v45 >= v44 >> 1)
            {
              sub_1D69971B4(v44 > 1, v45 + 1, 1);
              v41 = v111;
            }

            ++v42;
            *(v41 + 16) = v45 + 1;
            v4 = v109;
            (*(v5 + 32))(v41 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v45, v107, v109);
          }

          while (v40 != v42);
        }

        v111 = v41;
        v69 = MEMORY[0x1E6968FB0];
        sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
        sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v69);
        sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
        v1 = v101;
        v50 = sub_1D72623CC();

        v51 = sub_1D5BF1BAC(v93, type metadata accessor for GenericDataVisualization);
        goto LABEL_56;
      }

      v49 = *v18;
      if (v49 >> 61 == 2)
      {
        v50 = *(*((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_dataSourceUrls);

LABEL_56:
        v74 = v103;
        v75 = sub_1D6D29D78(v51);
        v111 = v50;
        sub_1D6985118(v75);
        v76 = MEMORY[0x1E6968FB0];
        sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
        sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v76);
        sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
        v48 = sub_1D72623CC();

        sub_1D5BF1BAC(v74, type metadata accessor for WebEmbedDataVisualization);
        v33 = v95;
        sub_1D5BF1BAC(v95, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_57;
      }

      v101 = v1;
      v111 = v49;
      v61 = sub_1D6F88478();
      v62 = v61;
      if (v61 >> 62)
      {
        v63 = sub_1D7263BFC();
        v92 = v49;
        if (!v63)
        {
          goto LABEL_54;
        }

LABEL_39:
        v110 = MEMORY[0x1E69E7CC0];

        result = sub_1D69971B4(0, v63 & ~(v63 >> 63), 0);
        if (v63 < 0)
        {
          goto LABEL_85;
        }

        v64 = 0;
        v65 = v110;
        do
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x1DA6FB460](v64, v62);
            (*v31)(v105, v66 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v31)(v105, *(v62 + 8 * v64 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
          }

          v110 = v65;
          v68 = *(v65 + 16);
          v67 = *(v65 + 24);
          if (v68 >= v67 >> 1)
          {
            sub_1D69971B4(v67 > 1, v68 + 1, 1);
            v65 = v110;
          }

          ++v64;
          *(v65 + 16) = v68 + 1;
          v4 = v109;
          (*(v5 + 32))(v65 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v68, v105, v109);
        }

        while (v63 != v64);
      }

      else
      {
        v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v92 = v49;
        if (v63)
        {
          goto LABEL_39;
        }

LABEL_54:
        v65 = MEMORY[0x1E69E7CC0];
      }

      v111 = v65;
      v73 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v73);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      v1 = v101;
      v50 = sub_1D72623CC();

      goto LABEL_56;
    }

    v46 = *v33;
    if (*v33 >> 61 == 2)
    {
      v47 = v46 & 0x1FFFFFFFFFFFFFFFLL;
      sub_1D5BF1BAC(v103, type metadata accessor for WebEmbedDataVisualization);
      v48 = *(*(v47 + 16) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
    }

    else
    {
      v101 = v1;
      v92 = v46;
      v111 = v46;
      v52 = sub_1D6F88478();
      v53 = v52;
      if (v52 >> 62)
      {
        v54 = sub_1D7263BFC();
      }

      else
      {
        v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v55 = MEMORY[0x1E69E7CC0];
      if (v54)
      {
        v110 = MEMORY[0x1E69E7CC0];

        result = sub_1D69971B4(0, v54 & ~(v54 >> 63), 0);
        if (v54 < 0)
        {
          goto LABEL_83;
        }

        v56 = 0;
        v57 = v110;
        do
        {
          if ((v53 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x1DA6FB460](v56, v53);
            (*v31)(v106, v58 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v31)(v106, *(v53 + 8 * v56 + 32) + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url, v4);
          }

          v110 = v57;
          v60 = *(v57 + 16);
          v59 = *(v57 + 24);
          if (v60 >= v59 >> 1)
          {
            sub_1D69971B4(v59 > 1, v60 + 1, 1);
            v57 = v110;
          }

          ++v56;
          *(v57 + 16) = v60 + 1;
          v4 = v109;
          (*(v5 + 32))(v57 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v60, v106, v109);
        }

        while (v54 != v56);

        v55 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v57 = MEMORY[0x1E69E7CC0];
      }

      v111 = v57;
      v70 = MEMORY[0x1E6968FB0];
      sub_1D6D2C378(0, &qword_1EDF05400, MEMORY[0x1E6968FB0]);
      sub_1D6D2C334(&qword_1EDF053F0, &qword_1EDF05400, v70);
      sub_1D6D2C068(&qword_1EDF3C3E0, MEMORY[0x1E6968FB0]);
      v1 = v101;
      v71 = sub_1D72623CC();

      v111 = v55;
      v72 = sub_1D72623CC();

      v111 = v71;
      v4 = v109;
      sub_1D6985118(v72);
      v48 = sub_1D72623CC();

      sub_1D5BF1BAC(v103, type metadata accessor for WebEmbedDataVisualization);

      v33 = v95;
    }

LABEL_57:
    v77 = *(v48 + 16);
    result = v104;
    v78 = v104[2];
    v79 = v78 + v77;
    if (__OFADD__(v78, v77))
    {
      goto LABEL_79;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v80 = v104;
    if (result && v79 <= v104[3] >> 1)
    {
      if (*(v48 + 16))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v78 <= v79)
      {
        v81 = v78 + v77;
      }

      else
      {
        v81 = v78;
      }

      result = sub_1D5D57E44(result, v81, 1, v104);
      v80 = result;
      if (*(v48 + 16))
      {
LABEL_66:
        if ((v80[3] >> 1) - v80[2] < v77)
        {
          goto LABEL_81;
        }

        v82 = v80;
        swift_arrayInitWithCopy();

        v32 = v82;
        result = v97;
        v35 = v102;
        if (v77)
        {
          v83 = v82[2];
          v84 = __OFADD__(v83, v77);
          v85 = v83 + v77;
          if (v84)
          {
            goto LABEL_82;
          }

          v82[2] = v85;
        }

        goto LABEL_5;
      }
    }

    v34 = v80;

    v32 = v34;
    result = v97;
    v35 = v102;
    if (v77)
    {
      goto LABEL_80;
    }

LABEL_5:
    v30 = v35 + 1;
    v18 = v96;
    v25 = v103;
    if (v30 == v99)
    {
      v87 = v32;

      v28 = v90;
      goto LABEL_76;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

uint64_t WebEmbedDataVisualization.dataSourcesContains(url:)(uint64_t a1)
{
  v2 = WebEmbedDataVisualization.urlDataSources.getter();
  v4[2] = a1;
  LOBYTE(a1) = sub_1D6151AD0(sub_1D6D2AEA8, v4, v2);

  return a1 & 1;
}

uint64_t sub_1D6D2AEEC()
{
  v0 = WebEmbedDataVisualization.identifier.getter();
  v2 = v1;
  if (v0 == WebEmbedDataVisualization.identifier.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D72646CC();
  }

  return v4 & 1;
}

uint64_t WebEmbedDataVisualization.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    return sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11[1] = *v9;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }
}

uint64_t WebEmbedDataVisualization.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v9;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6D2B250()
{
  v1 = v0;
  v2 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D61880A0(v1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v9, v5, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1BAC(v5, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v11 = *v9;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  return sub_1D7264A5C();
}

uint64_t WebEmbedDataVisualization.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v22, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D2BFB0(0, &qword_1EDF039C0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D2BEB4();
  v15 = v25;
  sub_1D7264B0C();
  if (!v15)
  {
    v21 = v14;
    v25 = v11;
    v17 = v23;
    v16 = v24;
    v29 = 0;
    sub_1D6D2BF08();
    sub_1D726431C();
    if (v30)
    {
      v28 = 1;
      sub_1D6D2C068(&qword_1EC895370, type metadata accessor for GenericDataVisualization);
      sub_1D726431C();
      (*(v17 + 8))(v10, v7);
      v19 = v21;
      sub_1D5BE762C(v5, v21, type metadata accessor for GenericDataVisualization);
      v20 = v16;
    }

    else
    {
      v27 = 1;
      sub_1D6D2BF5C();
      sub_1D726431C();
      v20 = v16;
      (*(v17 + 8))(v10, v7);
      v19 = v21;
      *v21 = v26;
    }

    swift_storeEnumTagMultiPayload();
    sub_1D5BE762C(v19, v20, type metadata accessor for WebEmbedDataVisualization);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t WebEmbedDataVisualization.encode(to:)(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for GenericDataVisualization();
  MEMORY[0x1EEE9AC00](v20, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebEmbedDataVisualization();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D2BFB0(0, &qword_1EDF025E8, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6D2BEB4();
  sub_1D7264B5C();
  sub_1D61880A0(v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE762C(v10, v6, type metadata accessor for GenericDataVisualization);
    v28 = 1;
    v27 = 0;
    sub_1D6D2C014();
    v16 = v21;
    sub_1D726443C();
    if (!v16)
    {
      v26 = 1;
      sub_1D6D2C068(&qword_1EC895378, type metadata accessor for GenericDataVisualization);
      sub_1D726443C();
    }

    sub_1D5BF1BAC(v6, type metadata accessor for GenericDataVisualization);
    return (*(v22 + 8))(v15, v12);
  }

  else
  {
    v18 = *v10;
    v25 = 0;
    sub_1D6D2C014();
    v19 = v21;
    sub_1D726443C();
    if (!v19)
    {
      v23 = v18;
      v24 = 1;
      sub_1D6D2C0B0();
      sub_1D726443C();
    }

    (*(v22 + 8))(v15, v12);
  }
}

uint64_t sub_1D6D2BAA4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

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

uint64_t sub_1D6D2BB08(uint64_t a1)
{
  v2 = sub_1D6D2BEB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6D2BB44(uint64_t a1)
{
  v2 = sub_1D6D2BEB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6D2BB80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636972656E6567;
  }

  else
  {
    v3 = 0x7374726F7073;
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
    v5 = 0x636972656E6567;
  }

  else
  {
    v5 = 0x7374726F7073;
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

uint64_t sub_1D6D2BC24()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6D2BCA4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6D2BD10()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6D2BD98(uint64_t *a1@<X8>)
{
  v2 = 0x7374726F7073;
  if (*v1)
  {
    v2 = 0x636972656E6567;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D6D2BEB4()
{
  result = qword_1EDF0BBC0[0];
  if (!qword_1EDF0BBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0BBC0);
  }

  return result;
}

unint64_t sub_1D6D2BF08()
{
  result = qword_1EDF0BB98;
  if (!qword_1EDF0BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BB98);
  }

  return result;
}

unint64_t sub_1D6D2BF5C()
{
  result = qword_1EDF0D138;
  if (!qword_1EDF0D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D138);
  }

  return result;
}

void sub_1D6D2BFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6D2BEB4();
    v7 = a3(a1, &type metadata for WebEmbedDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6D2C014()
{
  result = qword_1EDF0BBA8;
  if (!qword_1EDF0BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBA8);
  }

  return result;
}

uint64_t sub_1D6D2C068(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6D2C0B0()
{
  result = qword_1EDF0D148;
  if (!qword_1EDF0D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D148);
  }

  return result;
}

unint64_t sub_1D6D2C108()
{
  result = qword_1EC895380;
  if (!qword_1EC895380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895380);
  }

  return result;
}

unint64_t sub_1D6D2C1D8()
{
  result = qword_1EC895388;
  if (!qword_1EC895388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895388);
  }

  return result;
}

unint64_t sub_1D6D2C230()
{
  result = qword_1EC895390;
  if (!qword_1EC895390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895390);
  }

  return result;
}

unint64_t sub_1D6D2C288()
{
  result = qword_1EDF0BBB0;
  if (!qword_1EDF0BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBB0);
  }

  return result;
}

unint64_t sub_1D6D2C2E0()
{
  result = qword_1EDF0BBB8;
  if (!qword_1EDF0BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBB8);
  }

  return result;
}

uint64_t sub_1D6D2C334(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D6D2C378(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6D2C378(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D6D2C3CC()
{
  result = qword_1EDF0BBA0;
  if (!qword_1EDF0BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BBA0);
  }

  return result;
}

uint64_t sub_1D6D2C438()
{
  sub_1D725A76C();
  if (!*(v0 + 64))
  {
    swift_beginAccess();
    v1 = MEMORY[0x1E69D6AD8];
    sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    sub_1D725B8DC();
    swift_endAccess();
    swift_beginAccess();
    sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v1);
    sub_1D725B8DC();
    swift_endAccess();
    *(v0 + 64) = 1;

    sub_1D725B32C();
  }

  return sub_1D725A77C();
}

uint64_t sub_1D6D2C570(uint64_t *a1)
{
  v2 = v1;
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v53 - v17;
  v19 = type metadata accessor for FormatDebuggerContext();
  v61 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D7261B9C();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a1;
  v59 = a1[1];
  v60 = v28;
  v29 = a1[2];
  v57 = a1[3];
  v58 = v29;
  v55 = a1[4];
  sub_1D5B5DA7C();
  *v27 = sub_1D726308C();
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8018], v23);
  LOBYTE(a1) = sub_1D7261BBC();
  result = (*(v24 + 8))(v27, v23);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  sub_1D725A76C();
  if (*(v2 + 64) == 1)
  {
    v31 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count;
    if (!*(v2 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count))
    {
      v32 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext;
      swift_beginAccess();
      sub_1D6D2E328(v2 + v32, v18);
      v33 = (*(v61 + 48))(v18, 1, v19);
      v54 = v32;
      if (v33 == 1)
      {
        v34 = sub_1D6CC4A78;
        v35 = v18;
      }

      else
      {
        sub_1D6D2E480(v18, v22);
        v37 = *(v22 + 16);
        v36 = *(v22 + 24);
        if (*v22 == v60 && *(v22 + 8) == v59 || (sub_1D72646CC()) && v37 == v58 && v36 == v57)
        {
          v38 = *(v22 + 40);
          sub_1D6D2E4E4(v22, type metadata accessor for FormatDebuggerContext);
          v22 = v38 + 1;
          if (!__OFADD__(v38, 1))
          {
LABEL_18:
            v39 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
            swift_beginAccess();
            v40 = *(v19 + 24);
            v41 = MEMORY[0x1E69D6AD8];
            sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
            (*(*(v42 - 8) + 16))(&v14[v40], v2 + v39, v42);
            v43 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_workspaceStack;
            swift_beginAccess();
            v44 = *(v19 + 28);
            sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v41);
            (*(*(v45 - 8) + 16))(&v14[v44], v2 + v43, v45);
            v46 = v59;
            *v14 = v60;
            *(v14 + 1) = v46;
            v47 = v57;
            *(v14 + 2) = v58;
            *(v14 + 3) = v47;
            v48 = v55;
            *(v14 + 4) = v55;
            *(v14 + 5) = v22;
            (*(v61 + 56))(v14, 0, 1, v19);
            v49 = v54;
            swift_beginAccess();

            sub_1D6CC4E20(v48);
            sub_1D6D2E41C(v14, v2 + v49);
            swift_endAccess();
            sub_1D6D2E328(v2 + v49, v10);
            sub_1D6D2E328(v10, v56);

            sub_1D725B32C();

            sub_1D6D2E4E4(v10, sub_1D6CC4A78);
            result = sub_1D6D2E4E4(v14, sub_1D6CC4A78);
            v50 = *(v2 + v31);
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (!v51)
            {
              *(v2 + v31) = v52;
              sub_1D725A77C();
              return sub_1D726319C();
            }

            goto LABEL_21;
          }

          __break(1u);
        }

        v34 = type metadata accessor for FormatDebuggerContext;
        v35 = v22;
      }

      sub_1D6D2E4E4(v35, v34);
      v22 = 1;
      goto LABEL_18;
    }
  }

  return sub_1D725A77C();
}

uint64_t sub_1D6D2CB34()
{
  sub_1D725A76C();
  *(v0 + 64) = 2;

  sub_1D725B32C();

  sub_1D725A77C();
  sub_1D725A76C();
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) != 1)
  {
    return sub_1D725A77C();
  }

  *(v0 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v1 = v0 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v1 = 0;
  *(v1 + 8) = 2;
  sub_1D725A77C();
  return sub_1D72631AC();
}

uint64_t sub_1D6D2CBFC()
{
  v1 = v0;
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v19[-v8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v19[-v12];
  sub_1D725A76C();
  if (*(v0 + 64) == 1)
  {
    swift_beginAccess();
    v14 = MEMORY[0x1E69D6AD8];
    sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    sub_1D725B8DC();
    swift_endAccess();
    swift_beginAccess();
    sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v14);
    sub_1D725B8DC();
    swift_endAccess();
    v15 = type metadata accessor for FormatDebuggerContext();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    v16 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext;
    swift_beginAccess();
    sub_1D6D2E41C(v13, v1 + v16);
    swift_endAccess();
    sub_1D6D2E328(v1 + v16, v9);
    sub_1D6D2E328(v9, v5);

    sub_1D725B32C();

    sub_1D6D2E4E4(v9, sub_1D6CC4A78);
    sub_1D6D2E4E4(v13, sub_1D6CC4A78);
    *(v1 + 64) = 0;
    v19[8] = 0;

    sub_1D725B32C();
  }

  sub_1D725A77C();
  sub_1D725A76C();
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) != 1)
  {
    return sub_1D725A77C();
  }

  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v17 = v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v17 = 0;
  *(v17 + 8) = 2;
  sub_1D725A77C();
  return sub_1D72631AC();
}

uint64_t sub_1D6D2CF00(char a1)
{
  v3 = v1;
  sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1D725A76C();
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) != 1)
  {
    return sub_1D725A77C();
  }

  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v10 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
  swift_beginAccess();
  (*(v6 + 16))(v9, v3 + v10, v5);
  sub_1D6CC4D88();
  sub_1D7262BFC();
  sub_1D7262C5C();
  v11 = sub_1D7262C4C();
  (*(v6 + 8))(v9, v5);
  v12 = v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v12 = v11;
  *(v12 + 8) = a1;
  sub_1D725A77C();
  return sub_1D72631AC();
}

uint64_t sub_1D6D2D0E4()
{
  v1 = v0;
  v2 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1D6CC4A78(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21[-v10];
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D6D2E25C();
  swift_allocObject();
  *(v0 + 16) = sub_1D725B2FC();
  v21[7] = 0;
  sub_1D6D2E2D8(0, &qword_1EC895408, &type metadata for FormatDebugger.State, MEMORY[0x1E69D6748]);
  swift_allocObject();
  *(v0 + 24) = sub_1D725B2FC();
  v12 = type metadata accessor for FormatDebuggerContext();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  sub_1D6D2E328(v11, v7);
  sub_1D6D2E180(0, &qword_1EC895410, sub_1D6CC4A78, MEMORY[0x1E69D6748]);
  swift_allocObject();
  v14 = sub_1D725B2FC();
  sub_1D6D2E4E4(v11, sub_1D6CC4A78);
  *(v1 + 32) = v14;
  if (qword_1EC87D730 != -1)
  {
    swift_once();
  }

  sub_1D6D2E38C();
  swift_allocObject();

  *(v1 + 40) = sub_1D725977C();
  if (qword_1EC87D738 != -1)
  {
    swift_once();
  }

  swift_allocObject();

  v15 = sub_1D725977C();
  v16 = MEMORY[0x1E69E7CC8];
  *(v1 + 48) = v15;
  *(v1 + 56) = v16;
  *(v1 + 64) = 0;
  v13((v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext), 1, 1, v12);
  v17 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_semaphore;
  *(v1 + v17) = dispatch_semaphore_create(0);
  v18 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_lock;
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  *(v1 + v18) = sub_1D725A7AC();
  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_count) = 0;
  v19 = v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  *v19 = 0;
  *(v19 + 8) = 2;
  type metadata accessor for FormatDebuggerCallStackFrame(0);
  sub_1D725B8EC();
  type metadata accessor for FormatDebuggerWorkspaceStackFrame();
  sub_1D725B8EC();
  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalBindBreakExecution) = 1;
  *(v1 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalLayoutBreakExecution) = 1;

  sub_1D725B33C();

  sub_1D725B35C();

  sub_1D725974C();

  sub_1D725971C();

  sub_1D725974C();

  sub_1D725971C();

  return v1;
}

uint64_t sub_1D6D2D5D4()
{
  sub_1D725A7BC();

  sub_1D725B7CC();
}

uint64_t sub_1D6D2D66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC8];
LABEL_16:
    swift_beginAccess();
    *(a1 + 56) = v4;
  }

  v3 = (a2 + 56);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v7 = *(v3 - 3);
    v6 = *(v3 - 2);
    v9 = *(v3 - 1);
    v8 = *v3;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_1D6D62D64(v7, v6, v9, v8);
    v13 = v4[2];
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (v4[3] < v16)
    {
      sub_1D6D74D28(v16, isUniquelyReferenced_nonNull_native);
      v11 = sub_1D6D62D64(v7, v6, v9, v8);
      if ((v17 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v11;
    sub_1D6D8617C();
    v11 = v23;
    if (v17)
    {
LABEL_3:
      v5 = (v4[7] + 32 * v11);
      *v5 = v7;
      v5[1] = v6;
      v5[2] = v9;
      v5[3] = v8;

      goto LABEL_4;
    }

LABEL_11:
    v4[(v11 >> 6) + 8] |= 1 << v11;
    v19 = (v4[6] + 32 * v11);
    *v19 = v7;
    v19[1] = v6;
    v19[2] = v9;
    v19[3] = v8;
    v20 = (v4[7] + 32 * v11);
    *v20 = v7;
    v20[1] = v6;
    v20[2] = v9;
    v20[3] = v8;
    v21 = v4[2];
    v15 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v15)
    {
      goto LABEL_18;
    }

    v4[2] = v22;
LABEL_4:
    v3 += 4;
    if (!--v2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6D2D884()
{
  sub_1D725A7BC();

  sub_1D725B7CC();
}

uint64_t sub_1D6D2D914@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = v3;
  sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v56 - v12;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v57 = *a1;
  v58 = v15;
  sub_1D725A76C();
  if (a2)
  {
    if ((*(v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalLayoutBreakExecution) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if ((*(v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalBindBreakExecution) & 1) == 0)
  {
    goto LABEL_26;
  }

  v56 = v16;
  v17 = v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState;
  v18 = *(v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState);
  if (!*(v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState + 8))
  {
    swift_beginAccess();
    v28 = *(v3 + 56);
    if (*(v28 + 16))
    {
      v29 = sub_1D6D62D64(v57, v14, v58, v56);
      if (v30)
      {
        v31 = (*(v28 + 56) + 32 * v29);
        v33 = *v31;
        v32 = v31[1];
        v34 = v31[2];
        v35 = v31[3];
        swift_endAccess();
        *v17 = 0;
        *(v17 + 8) = 2;
        *a3 = v33;
        a3[1] = v32;
        a3[2] = v34;
        a3[3] = v35;
        v27 = 1;
        goto LABEL_13;
      }
    }

    swift_endAccess();
    v43 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
    swift_beginAccess();
    (*(v10 + 16))(v13, v4 + v43, v9);
    sub_1D6CC4D88();
    sub_1D7262BFC();
    sub_1D7262C5C();
    v44 = sub_1D7262C4C();
    (*(v10 + 8))(v13, v9);
    if (v18 >= v44)
    {
      *v17 = 0;
      *(v17 + 8) = 2;
      v45 = v58;
      *a3 = v57;
      a3[1] = v14;
      v46 = v56;
      a3[2] = v45;
      a3[3] = v46;
      v36 = 1;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (*(v3 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_breakExecutionState + 8) != 1)
  {
    if (v18)
    {
      *v17 = 0;
      v36 = 2;
      *(v17 + 8) = 2;
      v37 = v58;
      *a3 = v57;
      a3[1] = v14;
      v38 = v56;
      a3[2] = v37;
      a3[3] = v38;
LABEL_21:
      a3[4] = v36;

      return sub_1D725A77C();
    }

    swift_beginAccess();
    v47 = *(v3 + 56);
    if (*(v47 + 16))
    {
      v48 = sub_1D6D62D64(v57, v14, v58, v56);
      if (v49)
      {
        v50 = (*(v47 + 56) + 32 * v48);
        v52 = *v50;
        v51 = v50[1];
        v53 = v50[2];
        v54 = v50[3];
        swift_endAccess();
        *a3 = v52;
        a3[1] = v51;
        a3[2] = v53;
        a3[3] = v54;
        a3[4] = 0;
        goto LABEL_14;
      }
    }

    swift_endAccess();
LABEL_26:
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return sub_1D725A77C();
  }

  swift_beginAccess();
  v19 = *(v3 + 56);
  if (!*(v19 + 16) || (v20 = sub_1D6D62D64(v57, v14, v58, v56), (v21 & 1) == 0))
  {
    swift_endAccess();
    v39 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
    swift_beginAccess();
    (*(v10 + 16))(v13, v4 + v39, v9);
    sub_1D6CC4D88();
    sub_1D7262BFC();
    sub_1D7262C5C();
    v40 = sub_1D7262C4C();
    (*(v10 + 8))(v13, v9);
    if (v40 < v18)
    {
      *v17 = 0;
      *(v17 + 8) = 2;
      v41 = v58;
      *a3 = v57;
      a3[1] = v14;
      v42 = v56;
      a3[2] = v41;
      a3[3] = v42;
      v36 = 3;
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  v22 = (*(v19 + 56) + 32 * v20);
  v24 = *v22;
  v23 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  swift_endAccess();
  *v17 = 0;
  *(v17 + 8) = 2;
  *a3 = v24;
  a3[1] = v23;
  a3[2] = v25;
  a3[3] = v26;
  v27 = 3;
LABEL_13:
  a3[4] = v27;
LABEL_14:

  return sub_1D725A77C();
}

uint64_t sub_1D6D2DD9C()
{

  sub_1D6D2E4E4(v0 + OBJC_IVAR____TtC8NewsFeed14FormatDebugger_internalContext, sub_1D6CC4A78);

  v1 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_callStack;
  v2 = MEMORY[0x1E69D6AD8];
  sub_1D6D2E180(0, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed14FormatDebugger_workspaceStack;
  sub_1D6D2E180(0, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1D6D2DF0C()
{
  sub_1D6D2DD9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatDebugger()
{
  result = qword_1EC8953E0;
  if (!qword_1EC8953E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6D2DFB8()
{
  sub_1D6CC4A78(319);
  if (v0 <= 0x3F)
  {
    sub_1D6D2E180(319, &qword_1EC885CE8, type metadata accessor for FormatDebuggerCallStackFrame, MEMORY[0x1E69D6AD8]);
    if (v1 <= 0x3F)
    {
      sub_1D6D2E180(319, &qword_1EC8811C8, type metadata accessor for FormatDebuggerWorkspaceStackFrame, MEMORY[0x1E69D6AD8]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D6D2E180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D6D2E208()
{
  result = qword_1EC8953F0;
  if (!qword_1EC8953F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8953F0);
  }

  return result;
}

void sub_1D6D2E25C()
{
  if (!qword_1EC8953F8)
  {
    sub_1D6D2E2D8(255, &qword_1EC895400, &type metadata for FormatDebuggerBreakpoint, MEMORY[0x1E69E62F8]);
    v0 = sub_1D725B36C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8953F8);
    }
  }
}

void sub_1D6D2E2D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6D2E328(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4A78(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6D2E38C()
{
  if (!qword_1EC88DD68)
  {
    v0 = sub_1D725976C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88DD68);
    }
  }
}

uint64_t sub_1D6D2E41C(uint64_t a1, uint64_t a2)
{
  sub_1D6CC4A78(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D2E480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDebuggerContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D2E4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D6D2E564(uint64_t a1, char a2, void *a3)
{
  v8 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *a3 + 8);
  if (a2 < 0)
  {
    sub_1D6751050(v16, v11);
    if (v3)
    {
      return v4;
    }

    v23 = a2 & 0x7F;
    sub_1D67C8650(v11);
    v4 = v19;
    v17 = type metadata accessor for FeedPuzzleStatistic;
    v18 = v11;
  }

  else
  {
    sub_1D6752174(v16, v15);
    if (v3)
    {
      return v4;
    }

    v22 = a2;
    v4 = sub_1D6CCD0FC(v15);
    v17 = type metadata accessor for FeedHeadline;
    v18 = v15;
  }

  sub_1D5BDDC48(v18, v17);
  return v4;
}

double sub_1D6D2E6DC(uint64_t a1, char a2)
{
  v5 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 < 0)
  {
    sub_1D5FB5494();
    if (v2)
    {
      return v3;
    }

    v17[15] = a2 & 0x7F;
    sub_1D67C8650(v8);
    v3 = v15;
    v13 = type metadata accessor for FeedPuzzleStatistic;
    v14 = v8;
  }

  else
  {
    sub_1D5FB61AC();
    if (v2)
    {
      return v3;
    }

    v17[14] = a2;
    v3 = sub_1D6CCD0FC(v12);
    v13 = type metadata accessor for FeedHeadline;
    v14 = v12;
  }

  sub_1D5BDDC48(v14, v13);
  return v3;
}

uint64_t FormatBindingFloatExpression.logic.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D62B50D4(v2);
}

void sub_1D6D2E894(uint64_t a1, unsigned int a2, void *a3)
{
  v7 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a2 >> 5) & 3;
  if (!v15)
  {
    sub_1D6B7C374(*(a1 + *a3), v14);
    if (v3)
    {
      return;
    }

    v19 = a2;
    sub_1D6CCD0FC(v14);
    v16 = type metadata accessor for FeedHeadline;
    v17 = v14;
    goto LABEL_7;
  }

  if (v15 == 1)
  {
    sub_1D6B7B9A4(*(a1 + *a3), v10);
    if (v3)
    {
      return;
    }

    v20 = a2 & 0x9F;
    sub_1D67C8650(v10);
    v16 = type metadata accessor for FeedPuzzleStatistic;
    v17 = v10;
LABEL_7:
    sub_1D5BDDC48(v17, v16);
    return;
  }

  sub_1D6D2E564(a1, a2 & 0x9F, a3);
}

void sub_1D6D2EA3C(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (a2 >> 5) & 3;
  if (!v13)
  {
    sub_1D5FB543C();
    if (v2)
    {
      return;
    }

    v16[14] = a2;
    sub_1D6CCD0FC(v12);
    v14 = type metadata accessor for FeedHeadline;
    v15 = v12;
    goto LABEL_7;
  }

  if (v13 == 1)
  {
    sub_1D5FB51BC();
    if (v2)
    {
      return;
    }

    v16[15] = a2 & 0x9F;
    sub_1D67C8650(v8);
    v14 = type metadata accessor for FeedPuzzleStatistic;
    v15 = v8;
LABEL_7:
    sub_1D5BDDC48(v15, v14);
    return;
  }

  sub_1D6D2E6DC(a1, a2 & 0x9F);
}

uint64_t FormatBindingFloatExpression.logic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D62B5230(*(v1 + 8));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_1D6D2EC28(uint64_t a1, unsigned int a2, unsigned __int8 a3, uint64_t a4)
{
  v8 = type metadata accessor for FeedPuzzleStatistic();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a2 >> 5) & 3;
  if (!v16)
  {
    sub_1D6B7C374(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v15);
    LOBYTE(v28) = a2;
    v18 = sub_1D6CCD0FC(v15);
    v19 = type metadata accessor for FeedHeadline;
    v20 = v15;
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    sub_1D6B7B9A4(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v11);
    LOBYTE(v28) = a2 & 0x9F;
    sub_1D67C8650(v11);
    v18 = v17;
    v19 = type metadata accessor for FeedPuzzleStatistic;
    v20 = v11;
LABEL_5:
    sub_1D5BDDC48(v20, v19);
    goto LABEL_7;
  }

  v18 = sub_1D6D2E564(a1, a2 & 0x9F, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
LABEL_7:
  if (a3 == 12)
  {
    return 0;
  }

  if (a3 == 13)
  {
    return 1;
  }

  v27[1] = a4;
  v28 = a1;
  v22 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v23 = v22();
  FormatFloat.value(contextLayoutOptions:)(v23);
  v25 = v24;

  if (a3 > 5u)
  {
    if (a3 <= 8u)
    {
      if (a3 != 6)
      {
        if (a3 != 7)
        {
          return v18 < v25;
        }

        return v18 != v25;
      }

      return v18 == v25;
    }

    if (a3 != 9)
    {
      if (a3 != 10)
      {
        goto LABEL_23;
      }

      return v25 < v18;
    }
  }

  else
  {
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 != 1)
        {
          return v18 < v25;
        }

        return v18 != v25;
      }

      return v18 == v25;
    }

    if (a3 != 3)
    {
      if (a3 != 4)
      {
LABEL_23:
        v26 = v25 > v18;
        return !v26;
      }

      return v25 < v18;
    }
  }

  v26 = v18 > v25;
  return !v26;
}

BOOL _s8NewsFeed28FormatBindingFloatExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = *(a1 + 1);
  v3 = *(a1 + 2);
  v5 = *a2;
  v7 = *(a2 + 1);
  v6 = *(a2 + 2);
  v8 = (v2 >> 5) & 3;
  v9 = v5 & 0x60;
  if (!v8)
  {
    if (v2 != v5 || v9 != 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v8 == 1)
  {
    v10 = (v5 ^ v2) & 0xFFFFFF9F;
    if (v9 != 32 || v10 != 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (v9 != 64)
  {
    return 0;
  }

  if ((v2 & 0x80) == 0)
  {
    if ((v5 & 0x80) != 0 || ((v5 ^ v2) & 0x1F) != 0)
    {
      return 0;
    }

LABEL_13:
    if (v4 == 12)
    {
      if (*(a2 + 1) == 12)
      {
LABEL_23:
        sub_1D62B50D4(*(a2 + 1));
        sub_1D62B5230(v4);
        sub_1D62B5230(v7);
        return 1;
      }
    }

    else
    {
      if (v4 == 13)
      {
        if (*(a2 + 1) != 13)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      if ((v7 & 0xFE) != 0xC)
      {
        v17[0] = v4;
        v18 = v3;
        v15[0] = v7;
        v16 = v6;
        sub_1D62B50D4(v7);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v4);
        sub_1D62B50D4(v7);
        v14 = _s8NewsFeed40FormatBindingFloatExpressionLogicCompareV2eeoiySbAC_ACtFZ_0(v17, v15);
        sub_1D62B5230(v4);
        sub_1D62B5230(v7);
        sub_1D62B5230(v7);
        sub_1D62B5230(v4);
        return (v14 & 1) != 0;
      }
    }

LABEL_26:
    sub_1D62B50D4(v4);
    sub_1D62B50D4(v7);
    sub_1D62B5230(v4);
    sub_1D62B5230(v7);
    return 0;
  }

  result = 0;
  if ((v5 & 0x80) != 0 && ((v5 ^ v2) & 0x1F) == 0)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1D6D2F108(uint64_t a1)
{
  result = sub_1D6D2F130();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D2F130()
{
  result = qword_1EC895418;
  if (!qword_1EC895418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895418);
  }

  return result;
}

unint64_t sub_1D6D2F184(void *a1)
{
  a1[1] = sub_1D6677C44();
  a1[2] = sub_1D67011EC();
  result = sub_1D6D2F1BC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D2F1BC()
{
  result = qword_1EC895420;
  if (!qword_1EC895420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895420);
  }

  return result;
}

uint64_t sub_1D6D2F210(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 24))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0xD)
  {
    v4 = 13;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 14;
  if (v3 < 0xC)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D6D2F264(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 13;
    }
  }

  return result;
}

uint64_t sub_1D6D2F2B8()
{
  sub_1D5B87E10(v0 + 16);
  sub_1D5B87E10(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t UserActionObservationManager.remove(monitor:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1D7263BFC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_14:
          __break(1u);
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_14;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        swift_unknownObjectRelease();
        if (v8 == a1)
        {

          swift_beginAccess();
          sub_1D5EC4C00(v5);
          swift_endAccess();
        }
      }

      ++v5;
    }

    while (v6 != v4);
  }
}

uint64_t UserActionObservationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10UserActionO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6D2F4FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6D2F54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D6D2F5DC(uint64_t *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  v4 = v1[2];
  if (v4 >> 62)
  {
LABEL_35:
    result = sub_1D7263BFC();
    v5 = result;
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = v4 & 0xC000000000000001;

  v7 = 0;
  v18 = v4;
  do
  {
    if (v6)
    {
      v8 = MEMORY[0x1DA6FB460](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
    {
      v9 = *(v8 + 24);
      ObjectType = swift_getObjectType();
      v11 = ObjectType;
      if (v2)
      {
        v12 = sub_1D725A5FC();
        (*(v9 + 8))(v2, v12, v11, v9);
        v4 = v18;
      }

      else
      {
        (*(v9 + 16))(ObjectType, v9);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    ++v7;
  }

  while (v5 != v7);

LABEL_17:
  v13 = v1[2];
  v19 = MEMORY[0x1E69E7CC0];
  if (v13 >> 62)
  {
    v14 = sub_1D7263BFC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = v1;
    v4 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v2 = MEMORY[0x1DA6FB460](v4, v13);
        v16 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v17 = v19;
          v1 = v15;
          goto LABEL_33;
        }
      }

      else
      {
        if (v4 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v2 = *(v13 + 8 * v4 + 32);

        v16 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_30;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        v1 = &v19;
        sub_1D7263EAC();
      }

      else
      {
      }

      ++v4;
      if (v16 == v14)
      {
        goto LABEL_31;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v1[2] = v17;
}

uint64_t sub_1D6D2F8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1D6D47228(a1, a2, a3, a4, a5);
  v6 = v5;

  return v6;
}

uint64_t sub_1D6D2F930(uint64_t a1)
{
  v84 = type metadata accessor for DebugFormatCacheFile();
  v2 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84, v3);
  v75 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D4635C(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v86 = &v69 - v11;
  sub_1D6D48AAC();
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v74 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v82 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v81 = &v69 - v20;
  v76 = MEMORY[0x1E69E7CC8];
  v88 = MEMORY[0x1E69E7CC8];
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;
  v80 = v2 + 56;
  v83 = v2;
  v79 = v2 + 48;
  v87 = a1;

  v27 = 0;
  v78 = a1 + 64;
  for (i = v25; ; v25 = i)
  {
    v28 = v27;
    if (!v24)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v27 = v28;
LABEL_10:
      v29 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v30 = v29 | (v27 << 6);
      v31 = (*(v87 + 48) + 16 * v30);
      v33 = *v31;
      v32 = v31[1];
      v34 = v83;
      v35 = v85;
      v36 = v81;
      sub_1D6D49454(*(v87 + 56) + *(v83 + 72) * v30, &v81[*(v85 + 48)], type metadata accessor for DebugFormatCacheFile);
      *v36 = v33;
      v36[1] = v32;
      v37 = v82;
      sub_1D6D491B0(v36, v82, sub_1D6D48AAC);
      v38 = *(v35 + 48);
      v39 = v37;
      v40 = v37 + v38;
      v41 = v86;
      sub_1D6D49454(v40, v86, type metadata accessor for DebugFormatCacheFile);
      v42 = v84;
      (*(v34 + 56))(v41, 0, 1, v84);
      sub_1D6D485F4(v41, v8, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D6D4635C);
      if ((*(v34 + 48))(v8, 1, v42) != 1)
      {
        break;
      }

      sub_1D6D494BC(v41, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      sub_1D6D494BC(v8, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
      result = sub_1D6D49218(v39, sub_1D6D48AAC);
      v28 = v27;
      v21 = v78;
      v25 = i;
      if (!v24)
      {
LABEL_7:
        while (1)
        {
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v27 >= v25)
          {

            return v76;
          }

          v24 = *(v21 + 8 * v27);
          ++v28;
          if (v24)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }

    v43 = v75;
    sub_1D6D491B0(v8, v75, type metadata accessor for DebugFormatCacheFile);
    v44 = *(v43 + 8);
    v71 = *v43;
    v45 = *(v43 + 16);
    v73 = *(v43 + 24);
    v46 = *(v43 + 40);
    v72 = *(v43 + 32);
    v47 = *(v43 + 48);
    v69 = v44;
    if (v47)
    {
      swift_beginAccess();

      v48 = v46;

      v70 = sub_1D6C4CF94(v49);
    }

    else
    {

      v48 = v46;

      v70 = MEMORY[0x1E69E7CC0];
    }

    sub_1D6D494BC(v86, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    sub_1D6D49218(v75, type metadata accessor for DebugFormatCacheFile);
    v50 = v39;
    v51 = v74;
    sub_1D6D491B0(v50, v74, sub_1D6D48AAC);
    v52 = v76[2];
    if (v76[3] <= v52)
    {
      sub_1D6D7503C(v52 + 1, 1);
    }

    v53 = v88;
    v55 = *v51;
    v54 = v51[1];
    sub_1D7264A0C();
    sub_1D72621EC();
    result = sub_1D7264A5C();
    v56 = v53 + 64;
    v76 = v53;
    v57 = -1 << *(v53 + 32);
    v58 = result & ~v57;
    v59 = v58 >> 6;
    if (((-1 << v58) & ~*(v53 + 64 + 8 * (v58 >> 6))) == 0)
    {
      break;
    }

    v60 = __clz(__rbit64((-1 << v58) & ~*(v53 + 64 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_28:
    v65 = *(v85 + 48);
    *(v56 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
    v66 = v76;
    v67 = (v76[6] + 16 * v60);
    *v67 = v55;
    v67[1] = v54;
    v68 = v66[7] + (v60 << 7);
    *v68 = v71;
    *(v68 + 8) = v69;
    *(v68 + 16) = v45;
    *(v68 + 24) = v73;
    *(v68 + 32) = v72;
    *(v68 + 40) = v48;
    *(v68 + 48) = 0u;
    *(v68 + 64) = 0u;
    *(v68 + 80) = v70;
    *(v68 + 88) = 0u;
    *(v68 + 104) = 0u;
    *(v68 + 120) = 0;
    ++v66[2];
    result = sub_1D6D49218(v51 + v65, type metadata accessor for DebugFormatCacheFile);
    v21 = v78;
  }

  v61 = 0;
  v62 = (63 - v57) >> 6;
  while (++v59 != v62 || (v61 & 1) == 0)
  {
    v63 = v59 == v62;
    if (v59 == v62)
    {
      v59 = 0;
    }

    v61 |= v63;
    v64 = *(v56 + 8 * v59);
    if (v64 != -1)
    {
      v60 = __clz(__rbit64(~v64)) + (v59 << 6);
      goto LABEL_28;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D6D30108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 64);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (a2 & 1) != 0) && (sub_1D5B68374(*(v5 + 56) + 40 * v6, v27), sub_1D5B49474(0, qword_1EDF431A0), swift_dynamicCast()))
  {
    v8 = *&v28[8];
    v7 = *v28;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1D6D307EC(a2, &v26[1]);
  v26[0] = 0;
  memset(&v26[8], 0, 80);
  if (v7)
  {
    swift_unknownObjectRetain();
  }

  v22 = *&v26[32];
  v23 = *&v26[48];
  v24 = *&v26[64];
  v25 = *&v26[80];
  v20 = *v26;
  v21 = *&v26[16];
  sub_1D6D4635C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  swift_retain_n();
  sub_1D5CF6A5C(v26, v28);
  v9 = sub_1D725A80C();
  *&v28[40] = v22;
  *&v28[56] = v23;
  *&v28[72] = v24;
  *&v28[8] = v20;
  *v28 = a1;
  *&v28[88] = v25;
  *&v29 = v7;
  *&v28[24] = v21;
  *(&v29 + 1) = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1D725BDCC();
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = a1;
  v12 = *&v28[80];
  *(v11 + 96) = *&v28[64];
  *(v11 + 112) = v12;
  *(v11 + 128) = v29;
  v13 = *&v28[16];
  *(v11 + 32) = *v28;
  *(v11 + 48) = v13;
  v14 = *&v28[48];
  *(v11 + 64) = *&v28[32];
  *(v11 + 80) = v14;

  sub_1D5D056DC(v28, &v19);
  v15 = sub_1D725B92C();
  sub_1D6D493A8(0, &qword_1EC895428, &type metadata for FeedFontLoadResult, MEMORY[0x1E69E62F8]);
  sub_1D725BA7C();

  v16 = sub_1D725B92C();
  type metadata accessor for FormatPackageInventory();
  v17 = sub_1D725BA8C();

  sub_1D5D05738(v28);
  sub_1D5D09C48(v26);
  sub_1D5F587AC(v7, v8);
  return v17;
}

uint64_t sub_1D6D3047C(uint64_t a1, char a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  sub_1D6D478DC();
  sub_1D725BDCC();
  v3 = swift_allocObject();
  *(v3 + 16) = v8;
  *(v3 + 17) = a2;
  v4 = sub_1D725B92C();
  sub_1D6A86060(0);
  sub_1D725BA9C();

  v5 = sub_1D725B92C();
  v6 = sub_1D725BB5C();

  return v6;
}

uint64_t sub_1D6D30634(uint64_t a1, char a2)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  sub_1D6D478DC();
  sub_1D725BDCC();
  v3 = swift_allocObject();
  *(v3 + 16) = v8;
  *(v3 + 17) = a2;
  v4 = sub_1D725B92C();
  sub_1D6A85FC8(0);
  sub_1D725BAAC();

  v5 = sub_1D725B92C();
  v6 = sub_1D725BB5C();

  return v6;
}

uint64_t sub_1D6D307EC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 72);
  if (v4 == 8)
  {
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D5B71130(&qword_1EC895430, a1, type metadata accessor for DebugFormatManager);
    result = sub_1D725964C();
    LOBYTE(v4) = v6;
    *(v2 + 72) = v6;
  }

  *a2 = v4;
  return result;
}

void *sub_1D6D308DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = a1;
  v25 = a2;
  v4 = sub_1D726307C();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D725A79C();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  sub_1D725A78C();
  sub_1D725A7BC();
  swift_allocObject();
  v14 = sub_1D725A7AC();
  v15 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = v14;
  *(v2 + 24) = v15;
  *(v2 + 32) = v15;
  *(v2 + 40) = v15;
  type metadata accessor for DebugFormatService();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v2 + 48) = v16;
  *(v2 + 72) = 8;
  v21 = sub_1D5B5A498(0, &qword_1EDF1AA30);
  sub_1D7261AFC();
  v17 = MEMORY[0x1E69E8030];
  sub_1D6D4635C(0, &unk_1EC88DEC8, MEMORY[0x1E69E8030], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D7273AE0;
  sub_1D726303C();
  v26 = v18;
  sub_1D5B71130(&qword_1EDF1AA50, 255, MEMORY[0x1E69E8030]);
  sub_1D6D4635C(0, &unk_1EDF1AE90, v17, MEMORY[0x1E69E62F8]);
  sub_1D5B6D5F8(&qword_1EDF1AE80, &unk_1EDF1AE90, v17);
  sub_1D7263B6C();
  (*(v22 + 104))(v7, *MEMORY[0x1E69E8090], v23);
  v3[10] = sub_1D72630BC();
  v19 = v25;
  v3[7] = v24;
  v3[8] = v19;
  return v3;
}

uint64_t sub_1D6D30CA8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v36 = a4;
  v33 = a2;
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 16);
  v31 = v11;
  v32 = v13;
  v34 = v8 + 16;
  v29 = v7;
  (v13)(v12, a2, v7, v10);
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v35 = a3;
  *(v15 + 17) = 0;
  v30 = *(v8 + 32);
  v30(v15 + ((v14 + 18) & ~v14), v12, v7);
  type metadata accessor for DebugFormatManagerIndex();
  v28[1] = type metadata accessor for DebugFormatManager();
  v28[2] = a1;
  sub_1D725BDBC();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 17) = 0;
  v17 = sub_1D725B92C();
  sub_1D725BA9C();

  v18 = v29;
  v32(v12, v33, v29);
  v19 = (v14 + 16) & ~v14;
  v20 = v19 + v31;
  v21 = swift_allocObject();
  v30(v21 + v19, v12, v18);
  *(v21 + v20) = 0;
  v22 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  sub_1D725BA9C();

  v23 = swift_allocObject();
  v24 = v35;
  *(v23 + 16) = v36;
  *(v23 + 17) = v24;
  v25 = sub_1D725B92C();
  sub_1D6D478DC();
  v26 = sub_1D725BAAC();

  return v26;
}

uint64_t sub_1D6D31030(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v30 = a3;
  v31 = a4;
  sub_1D6D478DC();
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DebugFormatManagerIndex();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v14);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v29 - v18;
  sub_1D6D49454(a1, v10, sub_1D6D478DC);
  v20 = *&v10[*(v7 + 56)];
  v21 = *&v10[*(v7 + 72)];
  sub_1D6D491B0(v10, v19, type metadata accessor for DebugFormatManagerIndex);
  v32 = v20;
  v33 = a2;
  sub_1D6D48DD8();
  sub_1D725BDCC();

  v22 = sub_1D725B92C();
  sub_1D5EF3A64(0);
  sub_1D725BA8C();

  sub_1D6D49454(v19, v15, type metadata accessor for DebugFormatManagerIndex);
  v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v31;
  *(v24 + 16) = v30;
  *(v24 + 17) = v25;
  *(v24 + 24) = v21;
  sub_1D6D491B0(v15, v24 + v23, type metadata accessor for DebugFormatManagerIndex);
  v26 = sub_1D725B92C();
  sub_1D6A86060(0);
  v27 = sub_1D725BA8C();

  sub_1D6D49218(v19, type metadata accessor for DebugFormatManagerIndex);
  return v27;
}

uint64_t sub_1D6D31304@<X0>(uint64_t *a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v25 = a3;
  v10 = type metadata accessor for DebugFormatManagerIndex();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v24[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = 0;
  v19 = 0;
  v20 = *a1;
  if ((a2 & 1) == 0 && (v25 & 1) == 0)
  {

    v18 = 1;
    v19 = a4;
  }

  sub_1D6D49454(v26, v13, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v13, v17);
  v21 = *(v14 + 20);
  sub_1D6A86060(0);
  sub_1D6D49454(&v17[v21], a6 + *(v22 + 28), type metadata accessor for DebugFormatFileDirectoryMetadata);

  result = sub_1D6D49218(v17, type metadata accessor for DebugFormatFileDirectory);
  *a6 = v20;
  *(a6 + 8) = v19;
  *(a6 + 16) = v18;
  return result;
}

uint64_t sub_1D6D314E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v36 = a4;
  v33 = a2;
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v8 + 16);
  v31 = v11;
  v32 = v13;
  v34 = v8 + 16;
  v29 = v7;
  (v13)(v12, a2, v7, v10);
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  v35 = a3;
  *(v15 + 17) = 1;
  v30 = *(v8 + 32);
  v30(v15 + ((v14 + 18) & ~v14), v12, v7);
  type metadata accessor for DebugFormatManagerIndex();
  v28[1] = type metadata accessor for DebugFormatManager();
  v28[2] = a1;
  sub_1D725BDBC();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 17) = 1;
  v17 = sub_1D725B92C();
  sub_1D725BA9C();

  v18 = v29;
  v32(v12, v33, v29);
  v19 = (v14 + 16) & ~v14;
  v20 = v19 + v31;
  v21 = swift_allocObject();
  v30(v21 + v19, v12, v18);
  *(v21 + v20) = 1;
  v22 = sub_1D725B92C();
  sub_1D6D48490(0, &qword_1EC895460, type metadata accessor for DebugFormatManagerIndex, sub_1D6D47FBC);
  sub_1D725BA9C();

  v23 = swift_allocObject();
  v24 = v35;
  v23[16] = v36;
  v23[17] = v24;
  v23[18] = 1;
  v25 = sub_1D725B92C();
  sub_1D6D478DC();
  v26 = sub_1D725BAAC();

  return v26;
}

uint64_t sub_1D6D3187C@<X0>(uint64_t a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v34 = a3;
  v35 = a2;
  v33 = a4;
  v6 = type metadata accessor for DebugFormatFileDirectory(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D478DC();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DebugFormatManagerIndex();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v32 - v21;
  sub_1D6D49454(a1, v14, sub_1D6D478DC);
  v23 = *&v14[*(v11 + 56)];
  v24 = *&v14[*(v11 + 72)];
  sub_1D6D491B0(v14, v22, type metadata accessor for DebugFormatManagerIndex);
  v25 = sub_1D6D47A68(v23);
  if (v4)
  {
    sub_1D6D49218(v22, type metadata accessor for DebugFormatManagerIndex);
  }

  else
  {
    v32 = v25;
    v27 = v34;
    v28 = v33;

    if (v35 & 1) != 0 || (v27)
    {

      v24 = 0;
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    sub_1D6D491B0(v22, v18, type metadata accessor for DebugFormatManagerIndex);
    sub_1D6D47A1C(v18, v9);
    v30 = *(v6 + 20);
    sub_1D6A85FC8(0);
    sub_1D6D49454(&v9[v30], v28 + *(v31 + 28), type metadata accessor for DebugFormatFileDirectoryMetadata);
    result = sub_1D6D49218(v9, type metadata accessor for DebugFormatFileDirectory);
    *v28 = v32;
    *(v28 + 8) = v24;
    *(v28 + 16) = v29;
  }

  return result;
}

char *sub_1D6D31B5C(void *a1, uint64_t (*a2)(void, __n128), void (*a3)(void))
{
  v33 = a3;
  v32 = type metadata accessor for DebugFormatFileDirectory(0);
  v6 = MEMORY[0x1EEE9AC00](v32, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2(0, v6);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  sub_1D6D4635C(0, &qword_1EC895448, type metadata accessor for DebugFormatManagerError, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for DebugFormatManagerIndex();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v31 - v23;
  v34 = a1;
  v25 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v26 = type metadata accessor for DebugFormatManagerError();
  v27 = swift_dynamicCast();
  v28 = *(*(v26 - 8) + 56);
  if (!v27)
  {
    v28(v16, 1, 1, v26);
    sub_1D6D494BC(v16, &qword_1EC895448, type metadata accessor for DebugFormatManagerError);
LABEL_6:
    swift_willThrow();
    v29 = a1;
    return v20;
  }

  v28(v16, 0, 1, v26);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1D6D49218(v16, type metadata accessor for DebugFormatManagerError);
    goto LABEL_6;
  }

  sub_1D6D491B0(v16, v24, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D49454(v24, v20, type metadata accessor for DebugFormatManagerIndex);
  sub_1D6D47A1C(v20, v8);
  sub_1D6D49454(&v8[*(v32 + 20)], &v12[*(v9 + 28)], type metadata accessor for DebugFormatFileDirectoryMetadata);
  sub_1D6D49218(v8, type metadata accessor for DebugFormatFileDirectory);
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 2;
  v33(0);
  swift_allocObject();
  v20 = sub_1D725BB1C();
  sub_1D6D49218(v24, type metadata accessor for DebugFormatManagerIndex);
  return v20;
}

uint64_t sub_1D6D31F1C(uint64_t a1, __int128 *a2)
{
  v3 = a2[5];
  v11 = a2[4];
  v12 = v3;
  v13 = a2[6];
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v5 = a2[3];
  v9 = a2[2];
  v10 = v5;
  result = FormatPackageInventory.resources(context:)(&v7, &v14);
  if (!v2)
  {
    v7 = v14;
    *&v8 = v15;
    sub_1D6D493A8(0, &qword_1EDF17A38, &type metadata for FormatPrefetchResources, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  return result;
}

uint64_t sub_1D6D31FD4(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v7 = *a1;
  sub_1D6D493A8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D72816C0;
  v9 = a4[5];
  v16[4] = a4[4];
  v16[5] = v9;
  v16[6] = a4[6];
  v10 = a4[1];
  v16[0] = *a4;
  v16[1] = v10;
  v11 = a4[3];
  v16[2] = a4[2];
  v16[3] = v11;
  v12 = sub_1D6D3210C(v7, a3, v16);
  if (v4)
  {
    *(v8 + 16) = 0;
  }

  else
  {
    v14 = v12;
    sub_1D6D493A8(0, &qword_1EDF3B9B0, &type metadata for FeedFontLoadResult, MEMORY[0x1E69D6B18]);
    *(v8 + 32) = v14;
    v15 = sub_1D725BA4C();

    return v15;
  }
}

uint64_t sub_1D6D3210C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v115 = a2;
  v109 = sub_1D7261ABC();
  v112 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v5);
  v108 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D7261B2C();
  v111 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D725891C();
  v118 = *(v10 - 8);
  v11 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v13 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v86 - v16;
  v18 = a3[5];
  v123[4] = a3[4];
  v123[5] = v18;
  v123[6] = a3[6];
  v19 = a3[1];
  v123[0] = *a3;
  v123[1] = v19;
  v20 = a3[3];
  v123[2] = a3[2];
  v123[3] = v20;
  sub_1D5D056DC(v123, &v120);
  v21 = v117;
  v22 = sub_1D6D46E88(a1, v123);
  v23 = v21;
  sub_1D5D05738(v123);
  if (v21)
  {
    return v13;
  }

  v116 = v10;
  v117 = v11;
  v114 = v17;
  v104 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v9;
  v24 = sub_1D5D06170(v22);

  v25 = *(v113 + 56);
  sub_1D725A76C();
  swift_beginAccess();

  v27 = sub_1D5D06650(v26);

  if ((v24 & 0xC000000000000001) != 0)
  {
    v28 = sub_1D7263BFC();
    v29 = swift_unknownObjectRetain();
    v30 = sub_1D6E14AA0(v29, v28);
  }

  else
  {

    v30 = v24;
  }

  v31 = v115;
  v32 = v116;
  v33 = v118;
  v34 = sub_1D5D06DD0(v27, v30);

  sub_1D725A77C();

  if ((v34 & 0xC000000000000001) == 0)
  {
    if (*(v34 + 16))
    {
      goto LABEL_7;
    }

LABEL_10:

    v120 = MEMORY[0x1E69E7CC0];
    v121 = MEMORY[0x1E69E7CC0];
    sub_1D6D493A8(0, &qword_1EDF3B9B0, &type metadata for FeedFontLoadResult, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_10;
  }

LABEL_7:
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x6863746566657250, 0xEC00000020676E69);
  v113 = v34 & 0xC000000000000001;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = sub_1D7263BFC();
  }

  else
  {
    v35 = *(v34 + 16);
  }

  v119 = v35;
  v36 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v36);

  MEMORY[0x1DA6F9910](0xD00000000000001CLL, 0x80000001D73F1B10);
  v103 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role;
  v37 = *(v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  if (v37 <= 2)
  {
    v38 = 0xE600000000000000;
    if (*(v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      if (v37 == 1)
      {
        v39 = 0x726564616568;
      }

      else
      {
        v39 = 0x7265746F6F66;
      }
    }

    else
    {
      v39 = 0x74756F79616CLL;
    }
  }

  else if (*(v31 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
  {
    if (v37 == 5)
    {
      v38 = 0xE700000000000000;
      v39 = 0x7972617262696CLL;
    }

    else
    {
      v39 = 0x756F72676B636162;
      v38 = 0xEA0000000000646ELL;
    }
  }

  else if (v37 == 3)
  {
    v38 = 0xE700000000000000;
    v39 = 0x6C6C6177796170;
  }

  else
  {
    v38 = 0xE500000000000000;
    v39 = 0x656D656874;
  }

  MEMORY[0x1DA6F9910](v39, v38);

  MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
  v40 = *(v115 + 16);
  v101 = *(v115 + 24);
  v102 = v40;
  MEMORY[0x1DA6F9910]();
  v41 = v120;
  v42 = v121;
  if (qword_1EC87D498 == -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v85 = v41;
    swift_once();
    v41 = v85;
LABEL_26:
    v88 = v25;
    v89 = v23;
    v100 = qword_1EC9BA710;
    sub_1D5F5EBA0(2, 0, 0, v41, v42);

    v43 = v112;
    v87 = v34;
    if (v113)
    {

      sub_1D7263BBC();
      sub_1D5B5A498(0, &qword_1EDF1AAF0);
      sub_1D5D062B0();
      sub_1D7262B8C();
      v44 = v122[12];
      v25 = v122[13];
      v45 = v122[14];
      v42 = v122[15];
      v34 = v122[16];
    }

    else
    {
      v46 = -1 << *(v34 + 32);
      v25 = v34 + 56;
      v45 = ~v46;
      v47 = -v46;
      v48 = v47 < 64 ? ~(-1 << v47) : -1;
      v34 = v48 & *(v34 + 56);

      v42 = 0;
    }

    v86 = v45;
    v49 = (v45 + 64) >> 6;
    v97 = " fonts from inventory, role=";
    v96 = v33 + 16;
    v95 = v117 + 7;
    v93 = v122;
    v94 = v33 + 32;
    v91 = (v111 + 8);
    v92 = (v43 + 8);
    v90 = v33 + 8;
    v106 = v44;
    v98 = v49;
    v99 = v25;
    if (v44 < 0)
    {
      break;
    }

LABEL_33:
    v50 = v42;
    v51 = v34;
    v23 = v42;
    if (v34)
    {
LABEL_37:
      v52 = (v51 - 1) & v51;
      v53 = *(*(v44 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v51)))));
      if (v53)
      {
        goto LABEL_41;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v23 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v23 >= v49)
      {
        goto LABEL_63;
      }

      v51 = *(v25 + 8 * v23);
      ++v50;
      if (v51)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v54 = sub_1D7263C2C();
    if (!v54)
    {
      break;
    }

    v119 = v54;
    sub_1D5B5A498(0, &qword_1EDF1AAF0);
    swift_dynamicCast();
    v53 = v120;
    v23 = v42;
    v52 = v34;
    if (!v120)
    {
      break;
    }

LABEL_41:
    v113 = v52;
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000025, v97 | 0x8000000000000000);
    v55 = *(v115 + v103);
    v56 = 0x7972617262696CLL;
    if (v55 != 5)
    {
      v56 = 0x756F72676B636162;
    }

    v57 = 0xEA0000000000646ELL;
    if (v55 == 5)
    {
      v57 = 0xE700000000000000;
    }

    v58 = 0x656D656874;
    if (v55 == 3)
    {
      v58 = 0x6C6C6177796170;
    }

    v59 = 0xE500000000000000;
    if (v55 == 3)
    {
      v59 = 0xE700000000000000;
    }

    if (*(v115 + v103) <= 4u)
    {
      v56 = v58;
      v57 = v59;
    }

    v60 = 0x726564616568;
    if (v55 != 1)
    {
      v60 = 0x7265746F6F66;
    }

    if (!*(v115 + v103))
    {
      v60 = 0x74756F79616CLL;
    }

    if (*(v115 + v103) <= 2u)
    {
      v61 = v60;
    }

    else
    {
      v61 = v56;
    }

    if (*(v115 + v103) <= 2u)
    {
      v62 = 0xE600000000000000;
    }

    else
    {
      v62 = v57;
    }

    MEMORY[0x1DA6F9910](v61, v62);

    MEMORY[0x1DA6F9910](0x3D6469202CLL, 0xE500000000000000);
    MEMORY[0x1DA6F9910](v102, v101);
    MEMORY[0x1DA6F9910](0x3D746E6F66202CLL, 0xE700000000000000);
    v63 = [v53 description];
    v64 = sub_1D726207C();
    v66 = v65;

    MEMORY[0x1DA6F9910](v64, v66);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    v110 = v120;
    v117 = v121;
    v67 = v114;
    sub_1D725890C();
    v112 = v53;
    v68 = v100;
    v111 = *(v100 + 40);
    v69 = v104;
    (*(v33 + 16))(v104, v67, v32);
    v70 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v71 = (v95 + v70) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v71 + 23) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    (*(v118 + 32))(v73 + v70, v69, v116);
    v74 = (v73 + v71);
    v75 = v117;
    *v74 = v110;
    v74[1] = v75;
    *(v73 + v72) = 2;
    *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v68;
    v122[2] = sub_1D6D476B8;
    v122[3] = v73;
    v120 = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122[0] = sub_1D5B6B06C;
    v122[1] = &block_descriptor_95;
    v76 = _Block_copy(&v120);

    v77 = v105;
    sub_1D7261AEC();
    v119 = MEMORY[0x1E69E7CC0];
    sub_1D5B71130(&qword_1EDF3A8F0, 255, MEMORY[0x1E69E7F60]);
    v78 = MEMORY[0x1E69E7F60];
    sub_1D6D4635C(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D5B6D5F8(&qword_1EDF1B560, &qword_1EDF1B570, v78);
    v79 = v108;
    v80 = v109;
    v33 = v118;
    sub_1D7263B6C();
    MEMORY[0x1DA6FA730](0, v77, v79, v76);
    _Block_release(v76);
    v81 = v79;
    v32 = v116;
    (*v92)(v81, v80);
    (*v91)(v77, v107);
    (*(v33 + 8))(v114, v32);

    v42 = v23;
    v34 = v113;
    v49 = v98;
    v25 = v99;
    v44 = v106;
    if ((v106 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_63:
  sub_1D5B87E38();
  FeedFontManager.load(fonts:downloadIfNeeded:)(v87);

  v82 = sub_1D725B92C();
  sub_1D725BA8C();

  v83 = sub_1D725B92C();
  v13 = sub_1D725BACC();

  return v13;
}