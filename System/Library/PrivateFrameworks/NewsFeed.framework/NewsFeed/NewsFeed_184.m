uint64_t sub_1D6C2A92C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x70614D6465626D65 && a2 == 0xED000073676E6970;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xEE0073746E657645 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73EDA80 == a2)
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

uint64_t FeedGroupFreezing.encode(to:)(void *a1)
{
  sub_1D5BA64F8(0, &qword_1EDF02960, sub_1D5BA6560, &type metadata for FeedGroupFreezing.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA6560();
  sub_1D7264B5C();
  v15 = 0;
  sub_1D6C2AC20();
  sub_1D726443C();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1D6C2AC74();
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D6C2AC20()
{
  result = qword_1EDF14EE8;
  if (!qword_1EDF14EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14EE8);
  }

  return result;
}

unint64_t sub_1D6C2AC74()
{
  result = qword_1EDF13B78;
  if (!qword_1EDF13B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13B78);
  }

  return result;
}

uint64_t sub_1D6C2ACC8@<X0>(char *a1@<X8>)
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

uint64_t sub_1D6C2AD28@<X0>(char *a1@<X8>)
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

uint64_t sub_1D6C2AD8C(uint64_t a1)
{
  v2 = sub_1D5BA6560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C2ADC8(uint64_t a1)
{
  v2 = sub_1D5BA6560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6C2AE04()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D6C2AE70()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

unint64_t FeedGroupFreezing.description.getter()
{
  v1 = *v0;
  sub_1D7263D4C();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v2, v3);

  return 0xD000000000000014;
}

uint64_t sub_1D6C2B008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461726479686572 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6C2B098(uint64_t a1)
{
  v2 = sub_1D5BA6B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C2B0D4(uint64_t a1)
{
  v2 = sub_1D5BA6B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupFreezingDisallow.encode(to:)(void *a1)
{
  sub_1D5BA64F8(0, &qword_1EDF028A0, sub_1D5BA6B2C, &type metadata for FeedGroupFreezingDisallow.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA6B2C();
  sub_1D7264B5C();
  sub_1D726440C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D6C2B274(void *a1)
{
  sub_1D5BA64F8(0, &qword_1EDF028A0, sub_1D5BA6B2C, &type metadata for FeedGroupFreezingDisallow.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5BA6B2C();
  sub_1D7264B5C();
  sub_1D726440C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for FormatCornerRadius.RoundedValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D6C2B4CC()
{
  result = qword_1EC893B20;
  if (!qword_1EC893B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B20);
  }

  return result;
}

unint64_t sub_1D6C2B524()
{
  result = qword_1EC893B28;
  if (!qword_1EC893B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B28);
  }

  return result;
}

unint64_t sub_1D6C2B57C()
{
  result = qword_1EC893B30;
  if (!qword_1EC893B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B30);
  }

  return result;
}

char *sub_1D6C2B5D8(unint64_t a1, unint64_t a2)
{
  v4 = sub_1D7257B5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v49 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D604FF7C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v46 - v14;
  v16 = sub_1D7257A4C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v21 = sub_1D7263A4C();
  v23 = v22;
  (*(v17 + 8))(v20, v16);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1D7263D4C();

    v53 = 0xD000000000000012;
    v54 = 0x80000001D73EDAE0;
    MEMORY[0x1DA6F9910](v21, v23);

    sub_1D7257C3C();

    sub_1D67A42D8(v15, v11);
    v25 = sub_1D7257C7C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v11, 1, v25) == 1)
    {
      sub_1D60AEDCC(v11);
      v27 = v49;
    }

    else
    {
      v29 = sub_1D7257B6C();
      (*(v26 + 8))(v11, v25);
      v27 = v49;
      if (v29)
      {
        v30 = *(v29 + 16);
        if (!v30)
        {
LABEL_20:

          v28 = MEMORY[0x1E69E7CC0];
LABEL_22:
          sub_1D60AEDCC(v15);
          return v28;
        }

LABEL_9:
        v46[1] = v29;
        v47 = v15;
        v32 = *(v5 + 16);
        v31 = v5 + 16;
        v33 = v29 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
        v50 = *(v31 + 56);
        v51 = v32;
        v52 = v31;
        v34 = (v31 - 8);
        v28 = MEMORY[0x1E69E7CC0];
        v48 = v4;
        v32(v27, v33, v4);
        while (1)
        {
          v35 = sub_1D7257B4C();
          if (v36)
          {
            v37 = v35;
            v38 = v36;
            v39 = sub_1D7257B3C();
            v41 = v40;
            (*v34)(v27, v4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_1D698CCE4(0, *(v28 + 2) + 1, 1, v28);
            }

            v43 = *(v28 + 2);
            v42 = *(v28 + 3);
            if (v43 >= v42 >> 1)
            {
              v28 = sub_1D698CCE4((v42 > 1), v43 + 1, 1, v28);
            }

            *(v28 + 2) = v43 + 1;
            v44 = &v28[32 * v43];
            *(v44 + 4) = v39;
            *(v44 + 5) = v41;
            *(v44 + 6) = v37;
            *(v44 + 7) = v38;
            v4 = v48;
            v27 = v49;
          }

          else
          {
            (*v34)(v27, v4);
          }

          v33 += v50;
          if (!--v30)
          {
            break;
          }

          v51(v27, v33, v4);
        }

        v15 = v47;
        goto LABEL_22;
      }
    }

    v29 = MEMORY[0x1E69E7CC0];
    v30 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v30)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  return MEMORY[0x1E69E7CC0];
}

id String.isNaturallyRTL.getter()
{
  v0 = sub_1D726203C();
  v1 = [v0 ne_isNaturallyRTL];

  return v1;
}

unint64_t sub_1D6C2BAA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D726236C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C2BAF0(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    sub_1D726233C();
    sub_1D5BF4D9C();
    v5 = sub_1D7263A0C();

    v6 = sub_1D5FD24A4(1uLL, v3, a2);
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = MEMORY[0x1DA6F97E0](v6, v8, v10, v12);
    v15 = v14;

    MEMORY[0x1DA6F9910](v13, v15);

    return v5;
  }

  else
  {
  }

  return v3;
}

unint64_t String.replacingCharacters(from:with:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  sub_1D5BF4D9C();
  swift_bridgeObjectRetain_n();
  v9 = sub_1D7263A1C();
  v11 = v10;
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    do
    {
      a4 = sub_1D6C2BD5C(v9, v11, a2, a3, a4, a5);
      v15 = v14;

      v9 = sub_1D7263A1C();
      v11 = v16;
      v18 = v17;

      a5 = v15;
    }

    while ((v18 & 1) == 0);
  }

  return a4;
}

unint64_t sub_1D6C2BD5C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_1D72639CC();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_1D72639CC();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_1D6BA2080(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_1D72622CC();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_1D6BA2080(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_1D6BA2080(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_1D72622CC();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_1D726229C();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x1DA6F9800](result);
LABEL_23:
        sub_1D726236C();
        sub_1D68C0C98();
        sub_1D726226C();

        sub_1D726226C();
        sub_1D6C2BAA4(a2, a5, a6);
        sub_1D726226C();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1D6C2C0F8(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t sub_1D6C2C15C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t FeedGroupDebug.__allocating_init(debugGroup:debugFormat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  if (*(a1 + 24))
  {
    sub_1D5B63F14(a1, v8);
    sub_1D5B63F14(v8, v6 + 16);
    *(v6 + 56) = a2;
    *(v6 + 64) = a3;
  }

  else
  {

    sub_1D6330678(a1);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t FeedGroupDebug.init(debugGroup:debugFormat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1D5B63F14(a1, v8);
    sub_1D5B63F14(v8, v3 + 16);
    *(v3 + 56) = a2;
    *(v3 + 64) = a3;
  }

  else
  {

    sub_1D6330678(a1);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

uint64_t FeedGroupDebug.debugIdentifier.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t FeedGroupDebug.debugName.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t FeedGroupDebug.debugTitle.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t FeedGroupDebug.debugCandidates.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t FeedGroupDebug.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t FeedGroupDebug.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C2C550()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D6C2C5A8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D6C2C600()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 32))(v1, v2);
}

id FCIssue.coverImagePrimaryLimitedColor.getter()
{
  result = [v0 coverImagePrimaryColor];
  if (result)
  {
    v2 = result;
    v3 = [result ne_color];

    v4 = sub_1D726354C();
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D726354C();
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() ts:v5 dynamicColor:v6 withDarkStyleVariant:?];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

id FCIssue.coverImagePrimaryExtraLimitedColor.getter()
{
  result = [v0 coverImagePrimaryColor];
  if (result)
  {
    v2 = result;
    v3 = [result ne_color];

    v4 = sub_1D726354C();
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D726354C();
      if (v6)
      {
        v7 = v6;
        v8 = [objc_opt_self() ts:v5 dynamicColor:v6 withDarkStyleVariant:?];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

id FCIssue.issueCoverModel.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D60D0A50();
  *&v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4).n128_u64[0];
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 coverImageAssetHandle];
  if (result)
  {
    v9 = result;
    [v1 coverImageAspectRatio];
    v11 = v10;
    v23 = v1;
    v12 = v9;
    v13 = [v23 layeredCoverJSON];
    if (!v13)
    {
LABEL_5:

      result = v23;
      *a1 = v23;
      *(a1 + 8) = v11;
      *(a1 + 16) = v12;
      *(a1 + 56) = 0;
      return result;
    }

    v14 = v13;
    v15 = sub_1D726207C();
    v17 = v16;

    sub_1D72579DC();
    v18 = sub_1D7257A4C();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    LOBYTE(v14) = sub_1D725AB8C();

    sub_1D60D0CFC(v7);
    if (v14)
    {

      goto LABEL_5;
    }

    [v23 layeredCoverAspectRatio];
    v20 = v19;

    v21 = v23;
    *a1 = v23;
    *(a1 + 8) = v20;
    *(a1 + 16) = v15;
    *(a1 + 24) = v17;
    *(a1 + 32) = v21;
    *(a1 + 40) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = 1;

    return v21;
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 56) = 2;
  }

  return result;
}

uint64_t sub_1D6C2CAB8()
{
  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FCIssue.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  result = FCIssue.issueCoverModel.getter(v4);
  if (v5)
  {
    if (v5 != 1)
    {
      v3 = 0;
      goto LABEL_7;
    }

    v3 = 16448;
  }

  else
  {
    v3 = 64;
  }

  result = sub_1D619CBDC(v4);
LABEL_7:
  *a1 = v3;
  return result;
}

uint64_t _s8NewsFeed11FormatRatioO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v3 == 1)
      {
LABEL_4:

        v5 = sub_1D633A310(v4, v2);

        return v5 & 1;
      }
    }

    else if (v3 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a2 + 8))
  {
    goto LABEL_4;
  }

  return 0;
}

unint64_t sub_1D6C2CC20(uint64_t a1)
{
  result = sub_1D6C2CC48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C2CC48()
{
  result = qword_1EC893B58;
  if (!qword_1EC893B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B58);
  }

  return result;
}

unint64_t sub_1D6C2CC9C(void *a1)
{
  a1[1] = sub_1D5CBA7C4();
  a1[2] = sub_1D66805F4();
  result = sub_1D6C2CCD4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C2CCD4()
{
  result = qword_1EC893B60;
  if (!qword_1EC893B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B60);
  }

  return result;
}

uint64_t sub_1D6C2CD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v58 = a3;
  sub_1D6C2DFE8(0, &qword_1EC884D08, MEMORY[0x1E697C780], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - v6;
  v8 = sub_1D7260FEC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C2DF38();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C2E4B8();
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C2E670();
  v24 = *(v23 - 8);
  v54 = v23;
  v55 = v24;
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C2E824();
  v29 = *(v28 - 8);
  v56 = v28;
  v57 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v53 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v51;
  v60 = a2;
  sub_1D6C2DFE8(0, &qword_1EC893B70, sub_1D6C2E04C, MEMORY[0x1E6981F40]);
  sub_1D6C2E430();
  sub_1D726168C();
  sub_1D7260FDC();
  sub_1D6C2EAAC(&qword_1EC893BD8, sub_1D6C2DF38);
  sub_1D726183C();
  (*(v9 + 8))(v12, v8);
  (*(v15 + 8))(v18, v14);
  v32 = [objc_opt_self() secondaryLabelColor];
  v33 = sub_1D726189C();
  KeyPath = swift_getKeyPath();
  v61 = v33;
  v35 = sub_1D7260EFC();
  v36 = v52;
  v37 = &v22[*(v52 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;
  sub_1D7260EDC();
  v38 = sub_1D6C2E6F4();
  v39 = v36;
  sub_1D72617DC();
  sub_1D5DBBD5C(v22);
  sub_1D72613DC();
  v40 = sub_1D72613EC();
  v41 = *(*(v40 - 8) + 56);
  v41(v7, 0, 1, v40);
  v42 = sub_1D726160C();
  v61 = v39;
  v62 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v53;
  v44 = v54;
  MEMORY[0x1DA6F8EA0](v7, v42, v54, OpaqueTypeConformance2);
  sub_1D6C2EA20(v7);
  (*(v55 + 8))(v27, v44);
  sub_1D72613DC();
  v41(v7, 0, 1, v40);
  v46 = sub_1D72615FC();
  v61 = v44;
  v62 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v46;
  v49 = v56;
  MEMORY[0x1DA6F8EA0](v7, v48, v56, v47);
  sub_1D6C2EA20(v7);
  return (*(v57 + 8))(v45, v49);
}

uint64_t sub_1D6C2D344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  sub_1D6C2E134();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v42 - v10;
  sub_1D6C2E2E0(0, &qword_1EC893B80, sub_1D6C2E0E0);
  v46 = v11;
  v43 = *(v11 - 8);
  v12 = v43;
  MEMORY[0x1EEE9AC00](v11, v13);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v42 - v17;
  type metadata accessor for DebugFormatInventoryTreeWorkspace();
  swift_allocObject();

  sub_1D6DB294C();
  type metadata accessor for DebugFormatInventoryTree();
  sub_1D6C2EAAC(&qword_1EC894480, type metadata accessor for DebugFormatInventoryTree);
  v18 = sub_1D7260F8C();
  v20 = v19;
  sub_1D6C2EAAC(&qword_1EC893BF8, type metadata accessor for DebugFormatInventoryTreeWorkspace);
  v21 = sub_1D7260F8C();
  v54 = v18;
  v55 = v20;
  v56 = v21;
  v57 = v22;
  sub_1D7260EDC();
  sub_1D6C2E0E0();
  sub_1D72617DC();

  v53 = &unk_1F5119638;
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_1D6C2EAFC(0, &qword_1EC893B98, &type metadata for DebugFormatInventoryPackageRole, MEMORY[0x1E69E62F8]);
  sub_1D6C2E1F0();
  sub_1D6C2E3B4();
  sub_1D6C2E2E0(255, &qword_1EC893BA8, sub_1D6C2E360);
  v25 = v24;
  v26 = sub_1D72613AC();
  v27 = sub_1D6C2E360();

  v54 = &type metadata for DebugFormatInventoryTreeRoleView;
  v55 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v25;
  v55 = v26;
  v56 = OpaqueTypeConformance2;
  v57 = MEMORY[0x1E697C750];
  swift_getOpaqueTypeConformance2();
  v29 = v52;
  sub_1D72619DC();
  v30 = *(v12 + 16);
  v31 = v45;
  v32 = v46;
  v30(v45, v51, v46);
  v33 = v47;
  v34 = v48;
  v35 = *(v48 + 16);
  v36 = v49;
  v35(v47, v29, v49);
  v37 = v50;
  v30(v50, v31, v32);
  sub_1D6C2E04C();
  v35(&v37[*(v38 + 48)], v33, v36);
  v39 = *(v34 + 8);
  v39(v52, v36);
  v40 = *(v43 + 8);
  v40(v51, v32);
  v39(v33, v36);
  return (v40)(v31, v32);
}

_BYTE *sub_1D6C2D860@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 0xE700000000000000;
  v4 = 0x7374756F79616CLL;
  v5 = 0xE600000000000000;
  v6 = 0x73656D656874;
  v7 = 0xE700000000000000;
  v8 = 0x6C6C6177796170;
  if (v2 != 4)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEB0000000073646ELL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x73726564616568;
  if (v2 != 1)
  {
    v9 = 0x737265746F6F66;
  }

  if (*result)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*result <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*result > 2u)
  {
    v3 = v5;
  }

  *a2 = v10;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D6C2D924@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = sub_1D72613AC();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C2E2E0(0, &qword_1EC893BA8, sub_1D6C2E360);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v32 - v11;
  v13 = *a1;
  v32[0] = *(a2 + 16);
  v14 = type metadata accessor for DebugFormatInventoryTree();
  sub_1D6C2EAAC(&qword_1EC894480, type metadata accessor for DebugFormatInventoryTree);

  v32[1] = v14;
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v43[1] = v38;
  v43[2] = v39;
  v43[3] = v40;
  sub_1D6C2EAFC(0, &qword_1EC893C00, &type metadata for DebugFormatFilter, MEMORY[0x1E6981948]);
  MEMORY[0x1DA6F9040](v43);
  v15 = v43[0];

  v16 = sub_1D6C2EB4C(v13);
  type metadata accessor for DebugFormatInventoryTreeRole();
  v17 = swift_allocObject();
  v18 = v17;
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      v19 = 0xE600000000000000;
      v21 = 0x73656D656874;
    }

    else if (v13 == 4)
    {
      v19 = 0xE700000000000000;
      v21 = 0x6C6C6177796170;
    }

    else
    {
      v19 = 0xEB0000000073646ELL;
      v21 = 0x756F72676B636162;
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    if (v13)
    {
      if (v13 == 1)
      {
        v20 = 1684104552;
      }

      else
      {
        v20 = 1953460070;
      }

      v21 = v20 | 0x73726500000000;
    }

    else
    {
      v21 = 0x7374756F79616CLL;
    }
  }

  *(v17 + 16) = v21;
  *(v17 + 24) = v19;
  *(v17 + 32) = v13;
  v22 = sub_1D5EF329C(v32[0], v16, v15);

  swift_beginAccess();
  v42 = v22;
  sub_1D6C2DFE8(0, &qword_1EC8857D0, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E69E62F8]);
  sub_1D726009C();
  swift_endAccess();
  *(v18 + OBJC_IVAR____TtC8NewsFeed28DebugFormatInventoryTreeRole_unfilteredDebugPackages) = v16;
  v23 = sub_1D7260F8C();
  v25 = v24;
  sub_1D6C2EAAC(&qword_1EC893C08, type metadata accessor for DebugFormatInventoryTreeRole);
  v26 = sub_1D7260F8C();
  v38 = v23;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  sub_1D7260EDC();
  v28 = sub_1D6C2E360();
  sub_1D72617DC();

  sub_1D726139C();
  v38 = &type metadata for DebugFormatInventoryTreeRoleView;
  v39 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  v30 = v37;
  sub_1D726183C();
  (*(v36 + 8))(v8, v30);
  return (*(v33 + 8))(v12, v29);
}

uint64_t sub_1D6C2DE34@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a1 = v3;
  return result;
}

uint64_t sub_1D6C2DEB4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

void sub_1D6C2DF38()
{
  if (!qword_1EC893B68)
  {
    sub_1D6C2DFE8(255, &qword_1EC893B70, sub_1D6C2E04C, MEMORY[0x1E6981F40]);
    sub_1D6C2E430();
    v0 = sub_1D726169C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893B68);
    }
  }
}

void sub_1D6C2DFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6C2E04C()
{
  if (!qword_1EC893B78)
  {
    sub_1D6C2E2E0(255, &qword_1EC893B80, sub_1D6C2E0E0);
    sub_1D6C2E134();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC893B78);
    }
  }
}

unint64_t sub_1D6C2E0E0()
{
  result = qword_1EC893B88;
  if (!qword_1EC893B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B88);
  }

  return result;
}

void sub_1D6C2E134()
{
  if (!qword_1EC893B90)
  {
    sub_1D6C2EAFC(255, &qword_1EC893B98, &type metadata for DebugFormatInventoryPackageRole, MEMORY[0x1E69E62F8]);
    sub_1D6C2E1F0();
    sub_1D6C2E3B4();
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893B90);
    }
  }
}

void sub_1D6C2E1F0()
{
  if (!qword_1EC893BA0)
  {
    sub_1D6C2E2E0(255, &qword_1EC893BA8, sub_1D6C2E360);
    sub_1D72613AC();
    sub_1D6C2E360();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC893BA0);
    }
  }
}

void sub_1D6C2E2E0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D6C2E360()
{
  result = qword_1EC893BB0;
  if (!qword_1EC893BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893BB0);
  }

  return result;
}

unint64_t sub_1D6C2E3B4()
{
  result = qword_1EC893BB8;
  if (!qword_1EC893BB8)
  {
    sub_1D6C2EAFC(255, &qword_1EC893B98, &type metadata for DebugFormatInventoryPackageRole, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893BB8);
  }

  return result;
}

unint64_t sub_1D6C2E430()
{
  result = qword_1EC893BC0;
  if (!qword_1EC893BC0)
  {
    sub_1D6C2DFE8(255, &qword_1EC893B70, sub_1D6C2E04C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893BC0);
  }

  return result;
}

void sub_1D6C2E4B8()
{
  if (!qword_1EC893BC8)
  {
    sub_1D6C2E520();
    sub_1D6C2E5F4();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC893BC8);
    }
  }
}

void sub_1D6C2E520()
{
  if (!qword_1EC893BD0)
  {
    sub_1D6C2DF38();
    sub_1D7260FEC();
    sub_1D6C2EAAC(&qword_1EC893BD8, sub_1D6C2DF38);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC893BD0);
    }
  }
}

void sub_1D6C2E5F4()
{
  if (!qword_1EC88D1F0)
  {
    sub_1D6C2EAFC(255, &qword_1EC88D1F8, MEMORY[0x1E697E0B8], MEMORY[0x1E69E6720]);
    v0 = sub_1D726157C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88D1F0);
    }
  }
}

void sub_1D6C2E670()
{
  if (!qword_1EC893BE0)
  {
    sub_1D6C2E4B8();
    sub_1D6C2E6F4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC893BE0);
    }
  }
}

unint64_t sub_1D6C2E6F4()
{
  result = qword_1EC893BE8;
  if (!qword_1EC893BE8)
  {
    sub_1D6C2E4B8();
    sub_1D6C2DF38();
    sub_1D7260FEC();
    sub_1D6C2EAAC(&qword_1EC893BD8, sub_1D6C2DF38);
    swift_getOpaqueTypeConformance2();
    sub_1D6C2EAAC(&qword_1EC88D210, sub_1D6C2E5F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893BE8);
  }

  return result;
}

void sub_1D6C2E824()
{
  if (!qword_1EC893BF0)
  {
    sub_1D6C2E670();
    sub_1D6C2E4B8();
    sub_1D6C2E6F4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC893BF0);
    }
  }
}

void *sub_1D6C2E8E8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return memcpy(a1, v3, 0x150uLL);
}

uint64_t sub_1D6C2E978(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(v4, __src, sizeof(v4));
  sub_1D6A86374(__dst, &v3);

  return sub_1D72600DC();
}

uint64_t sub_1D6C2EA20(uint64_t a1)
{
  sub_1D6C2DFE8(0, &qword_1EC884D08, MEMORY[0x1E697C780], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6C2EAAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D6C2EAFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6C2EB4C(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      memcpy(__dst, v3, sizeof(__dst));
      v1 = __dst[11];
    }

    else if (a1 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      memcpy(__dst, v3, sizeof(__dst));
      v1 = __dst[39];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      memcpy(__dst, v3, sizeof(__dst));
      v1 = __dst[18];
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      memcpy(__dst, v3, sizeof(__dst));
      v1 = __dst[25];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D72600CC();

      memcpy(__dst, v3, sizeof(__dst));
      v1 = __dst[32];
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    memcpy(__dst, v3, sizeof(__dst));
    v1 = __dst[4];
  }

  sub_1D60CEF18(__dst);

  return v1;
}

uint64_t static Commands.downloadIssues.getter()
{
  if (qword_1EDF16C38 != -1)
  {
    swift_once();
  }
}

uint64_t static SharingActivity.download(issue:)(void *a1)
{
  v2 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  if (qword_1EDF16C38 != -1)
  {
    swift_once();
  }

  sub_1D5E42B34();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D72816C0;
  *(v4 + 32) = a1;

  v5 = a1;
  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05BE0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDF05BE8;
  sub_1D725DFDC();
  swift_allocObject();
  return sub_1D725D5CC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE8download5issueACSo7FCIssueC_tFZ_0(void *a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF16C38 != -1)
  {
    swift_once();
  }

  sub_1D5E42B34();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D72816C0;
  *(v7 + 32) = a1;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();

  v10 = a1;
  v11 = [v9 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05BE0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDF05BE8;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v15[1] = v7;
  sub_1D725D3DC();
  swift_allocObject();
  v13 = v12;
  return sub_1D725D3AC();
}

unint64_t sub_1D6C2F3A0()
{
  result = qword_1EC893C10;
  if (!qword_1EC893C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C10);
  }

  return result;
}

uint64_t _s8NewsFeed13FormatRunModeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (*(a1 + 4) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v2 == 0.0)
    {
      if (v4 == 2 && LODWORD(v3) == 0)
      {
        return 1;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if (v4 == 2 && LODWORD(v3) == 1)
      {
        return 1;
      }
    }

    else if (v4 == 2 && LODWORD(v3) == 2)
    {
      return 1;
    }
  }

  else if (!*(a2 + 4) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D6C2F4DC(uint64_t a1)
{
  result = sub_1D6C2F504();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C2F504()
{
  result = qword_1EC893C18;
  if (!qword_1EC893C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C18);
  }

  return result;
}

unint64_t sub_1D6C2F558(void *a1)
{
  a1[1] = sub_1D667452C();
  a1[2] = sub_1D66740D8();
  result = sub_1D6C2F590();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C2F590()
{
  result = qword_1EC893C20;
  if (!qword_1EC893C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C20);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FormatRunMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for FormatRunMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6C2F684(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D6C2F69C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

void *sub_1D6C2F6C4(uint64_t a1, unsigned int *a2)
{
  if (*(a2 + 4) == 255)
  {
    v2 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v2);
    sub_1D5EA74B8();
    v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    v8 = (v7 + v6);
    v9 = 1701736270;
    goto LABEL_3;
  }

  v12 = *a2;
  if (!*(a2 + 4))
  {
    v21 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    sub_1D5EA74B8();
    v15 = *(*(v22 - 8) + 72);
    v23 = (*(*(v22 - 8) + 80) + 32) & ~*(*(v22 - 8) + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7270C10;
    v18 = (v17 + v23);
    v19 = 0x206E6F2065636E4FLL;
    v20 = 0xEE006E6565726353;
    goto LABEL_9;
  }

  if (*(a2 + 4) == 1)
  {
    v13 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v13);
    sub_1D5EA74B8();
    v15 = *(*(v14 - 8) + 72);
    v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7270C10;
    v18 = (v17 + v16);
    v19 = 0xD00000000000001ALL;
    v20 = 0x80000001D73EDC20;
LABEL_9:
    sub_1D711F844(1701869908, 0xE400000000000000, v19, v20, v18);
    v24 = type metadata accessor for FormatInspectionItem(0);
    v25 = *(*(v24 - 8) + 56);
    v25(v18, 0, 1, v24);
    LOBYTE(v34[0]) = 0;
    sub_1D7122D18(0xD000000000000014, 0x80000001D73EDC40, v12, (v18 + v15));
    v25((v18 + v15), 0, 1, v24);
    sub_1D6795150(0x65646F4D206E7552, 0xE800000000000000, 0, 0, v17, v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_10;
  }

  if (*a2)
  {
    v30 = MEMORY[0x1E69E6F90];
    sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v4 = inited + 32;
    sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v30);
    sub_1D5EA74B8();
    v6 = (*(*(v31 - 8) + 80) + 32) & ~*(*(v31 - 8) + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D7273AE0;
    if (v12 == 1)
    {
      v9 = 0xD000000000000010;
      v8 = (v7 + v6);
      v10 = 0x80000001D73EDC60;
    }

    else
    {
      v9 = 0x737961776C41;
      v8 = (v7 + v6);
      v10 = 0xE600000000000000;
    }

    goto LABEL_4;
  }

  v32 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v4 = inited + 32;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v32);
  sub_1D5EA74B8();
  v6 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = (v7 + v6);
  v9 = 1701015119;
LABEL_3:
  v10 = 0xE400000000000000;
LABEL_4:
  sub_1D711F844(1701869908, 0xE400000000000000, v9, v10, v8);
  v11 = type metadata accessor for FormatInspectionItem(0);
  (*(*(v11 - 8) + 56))(v7 + v6, 0, 1, v11);
  sub_1D6795150(0x65646F4D206E7552, 0xE800000000000000, 0, 0, v7, v34);
  swift_setDeallocating();
  sub_1D5EF5F0C(v7 + v6, sub_1D5EA74B8);
LABEL_10:
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v26 = swift_allocObject();
  *(inited + 32) = v26;
  *(v26 + 48) = v35;
  v27 = v34[1];
  *(v26 + 16) = v34[0];
  *(v26 + 32) = v27;
  v28 = sub_1D7073500(inited);
  swift_setDeallocating();
  sub_1D5EF5F0C(v4, sub_1D5E4F358);
  return v28;
}

uint64_t sub_1D6C2FFD0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v4 = v28;
    v5 = v1 + 56;
    result = sub_1D7263B7C();
    v6 = result;
    v7 = 0;
    v25 = v1 + 56;
    v23 = v1 + 64;
    v24 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v26 = v7;
      v27 = *(v1 + 36);
      sub_1D7263D4C();

      v10 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v10);

      v11 = v4;
      v29 = v4;
      v12 = v1;
      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        v11 = v29;
      }

      *(v11 + 16) = v14 + 1;
      v15 = v11 + 16 * v14;
      *(v15 + 32) = 0xD000000000000010;
      *(v15 + 40) = 0x80000001D73CD250;
      v8 = 1 << *(v12 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v25;
      v16 = *(v25 + 8 * v9);
      if ((v16 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v12;
      v4 = v11;
      if (v27 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (v23 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1D5C25E1C(v6, v27, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_1D5C25E1C(v6, v27, 0);
      }

LABEL_4:
      v7 = v26 + 1;
      v6 = v8;
      if (v26 + 1 == v24)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6C30264(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v299 = a2;
  v324 = a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1D6C36CA0(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v307 = &v294 - v9;
  v306 = type metadata accessor for BundleSession();
  v305 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306, v10);
  v295 = &v294 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1D725891C();
  v303 = *(v304 - 8);
  MEMORY[0x1EEE9AC00](v304, v12);
  v302 = &v294 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C36CA0(0, &qword_1EDF3C0A0, MEMORY[0x1E69D7128], v6);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v296 = &v294 - v16;
  v298 = sub_1D7259CFC();
  v297 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298, v17);
  v294 = &v294 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C36CA0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v6);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v318 = &v294 - v21;
  sub_1D6C36CA0(0, &qword_1EDF3C388, MEMORY[0x1E6969680], v6);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v316 = &v294 - v24;
  v322 = sub_1D7258A8C();
  v315 = *(v322 - 8);
  MEMORY[0x1EEE9AC00](v322, v25);
  v314 = &v294 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v310 = &v294 - v29;
  sub_1D6C36CA0(0, &qword_1EDF3C390, MEMORY[0x1E6969610], v6);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v311 = &v294 - v32;
  v33 = sub_1D7258AAC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v313 = &v294 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v294 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v294 - v43;
  v301 = *a3;
  v308 = *a4;
  v300 = OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_userInfo;
  v317 = OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_formatVersion;
  v45 = objc_opt_self();
  v46 = sub_1D726203C();
  sub_1D7258A4C();
  v47 = sub_1D72589DC();
  v48 = *(v34 + 8);
  v321 = v34 + 8;
  v323 = v48;
  v48(v44, v33);
  v49 = [v45 dateFormatFromTemplate:v46 options:0 locale:v47];

  if (v49)
  {
    v50 = sub_1D726207C();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0xE000000000000000;
  }

  v53 = 6829106;
  v325[0] = v50;
  v325[1] = v52;
  v330 = 72;
  v331 = 0xE100000000000000;
  v54 = sub_1D5BF4D9C();
  v55 = sub_1D7263ABC();
  v319 = v54;
  if (v55)
  {
    v312 = 6829106;
  }

  else
  {
    v325[0] = v50;
    v325[1] = v52;
    v330 = 107;
    v331 = 0xE100000000000000;
    v56 = sub_1D7263ABC();

    if ((v56 & 1) == 0)
    {
      v53 = 6828593;
    }

    v312 = v53;
  }

  sub_1D5C3C480();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D733E410;
  v325[0] = 11624;
  v325[1] = 0xE200000000000000;
  v58 = sub_1D7259EBC();
  v59 = [v58 horizontalSizeClass];

  if (v59)
  {
    if (v59 == 2)
    {
      v60 = 0x72616C75676572;
    }

    else
    {
      v60 = 0x6E776F6E6B6E75;
    }

    if (v59 == 1)
    {
      v61 = 0x746361706D6F63;
    }

    else
    {
      v61 = v60;
    }

    v62 = 0xE700000000000000;
  }

  else
  {
    v61 = 0x6669636570736E75;
    v62 = 0xEB00000000646569;
  }

  MEMORY[0x1DA6F9910](v61, v62);

  v63 = v325[1];
  *(v57 + 32) = v325[0];
  *(v57 + 40) = v63;
  v325[0] = 11638;
  v325[1] = 0xE200000000000000;
  v64 = sub_1D7259EBC();
  v65 = [v64 verticalSizeClass];

  if (v65 == 2)
  {
    v66 = 0x72616C75676572;
  }

  else
  {
    v66 = 0x6E776F6E6B6E75;
  }

  if (v65 == 1)
  {
    v67 = 0x746361706D6F63;
  }

  else
  {
    v67 = v66;
  }

  if (v65)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0x6669636570736E75;
  }

  if (v65)
  {
    v69 = 0xE700000000000000;
  }

  else
  {
    v69 = 0xEB00000000646569;
  }

  MEMORY[0x1DA6F9910](v68, v69);

  v70 = v325[1];
  *(v57 + 48) = v325[0];
  *(v57 + 56) = v70;
  v325[0] = 0x2D676E616CLL;
  v325[1] = 0xE500000000000000;
  sub_1D7258A4C();
  v71 = v310;
  sub_1D7258A9C();
  v323(v40, v33);
  v72 = v311;
  sub_1D7258A5C();
  v315 = *(v315 + 8);
  (v315)(v71, v322);
  v73 = sub_1D72589AC();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_1D6C36B50(v72, &qword_1EDF3C390, MEMORY[0x1E6969610]);
    v75 = 0xE700000000000000;
    v76 = 0x6E776F6E6B6E75;
  }

  else
  {
    v77 = sub_1D725899C();
    v78 = v72;
    v75 = v79;
    (*(v74 + 8))(v78, v73);
    v76 = v77;
  }

  MEMORY[0x1DA6F9910](v76, v75);

  v80 = sub_1D726210C();
  v82 = v81;

  *(v57 + 64) = v80;
  *(v57 + 72) = v82;
  v325[0] = 0x2D676E616CLL;
  v325[1] = 0xE500000000000000;
  sub_1D7258A4C();
  v83 = v314;
  sub_1D7258A9C();
  v309 = v33;
  v323(v44, v33);
  v84 = sub_1D7258A7C();
  v86 = v85;
  v87 = v322;
  v88 = v315;
  (v315)(v83, v322);
  MEMORY[0x1DA6F9910](v84, v86);

  v89 = sub_1D726210C();
  v91 = v90;

  *(v57 + 80) = v89;
  *(v57 + 88) = v91;
  v325[0] = 0x2D676E616CLL;
  v325[1] = 0xE500000000000000;
  sub_1D7258A4C();
  sub_1D7258A9C();
  v92 = v44;
  v93 = v309;
  v323(v92, v309);
  v94 = sub_1D7258A6C();
  v96 = v95;
  v88(v83, v87);
  MEMORY[0x1DA6F9910](v94, v96);

  v97 = sub_1D726210C();
  v99 = v98;

  *(v57 + 96) = v97;
  *(v57 + 104) = v99;
  strcpy(v325, "region-");
  v325[1] = 0xE700000000000000;
  v100 = v313;
  sub_1D7258A4C();
  v101 = v316;
  sub_1D7258A3C();
  v323(v100, v93);
  v102 = sub_1D7258A2C();
  v103 = *(v102 - 8);
  v104 = (*(v103 + 48))(v101, 1, v102);
  v105 = v319;
  if (v104 == 1)
  {
    sub_1D6C36B50(v101, &qword_1EDF3C388, MEMORY[0x1E6969680]);
    v106 = 0xE700000000000000;
    v107 = 0x6E776F6E6B6E75;
  }

  else
  {
    v108 = sub_1D725899C();
    v106 = v109;
    (*(v103 + 8))(v101, v102);
    v107 = v108;
  }

  MEMORY[0x1DA6F9910](v107, v106);

  v110 = sub_1D726210C();
  v112 = v111;

  *(v57 + 112) = v110;
  *(v57 + 120) = v112;
  strcpy(v325, "time-hour-");
  BYTE3(v325[1]) = 0;
  HIDWORD(v325[1]) = -369098752;
  MEMORY[0x1DA6F9910](v312, 0xE300000000000000);

  v113 = v325[1];
  *(v57 + 128) = v325[0];
  *(v57 + 136) = v113;
  strcpy(v325, "platform-");
  WORD1(v325[1]) = 0;
  HIDWORD(v325[1]) = -385875968;
  v114 = sub_1D7259EBC();
  v115 = [v114 userInterfaceIdiom];

  if (v115 > 1)
  {
    if (v115 == 2)
    {
      v116 = 0xE200000000000000;
      v117 = 30324;
      goto LABEL_50;
    }

    if (v115 != 3)
    {
      if (v115 == 5)
      {
        v116 = 0xE300000000000000;
        v117 = 6513005;
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v116 = 0xE700000000000000;
    v117 = 0x79616C50726163;
  }

  else
  {
    if (v115 == -1)
    {
      v117 = 0x6669636570736E75;
      v116 = 0xEB00000000646569;
      goto LABEL_50;
    }

    if (v115)
    {
      if (v115 == 1)
      {
        v116 = 0xE300000000000000;
        v117 = 6578544;
        goto LABEL_50;
      }

LABEL_47:
      v116 = 0xE700000000000000;
      v117 = 0x6E776F6E6B6E75;
      goto LABEL_50;
    }

    v116 = 0xE500000000000000;
    v117 = 0x656E6F6870;
  }

LABEL_50:
  v118 = 0xD000000000000016;
  MEMORY[0x1DA6F9910](v117, v116);

  v119 = v325[1];
  *(v57 + 144) = v325[0];
  *(v57 + 152) = v119;
  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v323 = 0xD000000000000012;
  v325[0] = 0xD000000000000012;
  v325[1] = 0x80000001D73EDCE0;
  v120 = sub_1D7259EBC();
  v121 = [v120 legibilityWeight];

  if (v121 == -1)
  {
    v124 = 0x6669636570736E75;
    v125 = 0xEB00000000646569;
  }

  else
  {
    v122 = 0xE700000000000000;
    v123 = 1684828002;
    if (v121 == 1)
    {
      v122 = 0xE400000000000000;
    }

    else
    {
      v123 = 0x6E776F6E6B6E75;
    }

    if (v121)
    {
      v124 = v123;
    }

    else
    {
      v124 = 0x72616C75676572;
    }

    if (v121)
    {
      v125 = v122;
    }

    else
    {
      v125 = 0xE700000000000000;
    }
  }

  MEMORY[0x1DA6F9910](v124, v125);

  v126 = v325[1];
  *(v57 + 160) = v325[0];
  *(v57 + 168) = v126;
  strcpy(v325, "ax-contrast-");
  BYTE5(v325[1]) = 0;
  HIWORD(v325[1]) = -5120;
  v127 = sub_1D7259EBC();
  v128 = [v127 accessibilityContrast];

  if (v128 == -1)
  {
    v131 = 0x6669636570736E75;
    v132 = 0xEB00000000646569;
  }

  else
  {
    v129 = 0xE700000000000000;
    v130 = 1751607656;
    if (v128 == 1)
    {
      v129 = 0xE400000000000000;
    }

    else
    {
      v130 = 0x6E776F6E6B6E75;
    }

    if (v128)
    {
      v131 = v130;
    }

    else
    {
      v131 = 0x6C616D726F6ELL;
    }

    if (v128)
    {
      v132 = v129;
    }

    else
    {
      v132 = 0xE600000000000000;
    }
  }

  MEMORY[0x1DA6F9910](v131, v132);

  v133 = v325[1];
  *(v57 + 176) = v325[0];
  *(v57 + 184) = v133;
  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0xD000000000000016;
  v325[1] = 0x80000001D73EDD00;
  v134 = sub_1D7259EEC();
  UIContentSizeCategory.description.getter();

  v135 = sub_1D726210C();
  v137 = v136;

  v330 = v135;
  v331 = v137;
  v328 = 95;
  v329 = 0xE100000000000000;
  v326 = 45;
  v327 = 0xE100000000000000;
  v138 = sub_1D7263A6C();
  v140 = v139;

  MEMORY[0x1DA6F9910](v138, v140);

  v141 = v325[1];
  *(v57 + 192) = v325[0];
  *(v57 + 200) = v141;
  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0x762D74616D726F66;
  v325[1] = 0xEF2D6E6F69737265;
  v142 = sub_1D725BC9C();
  MEMORY[0x1DA6F9910](v142);

  v143 = v325[1];
  *(v57 + 208) = v325[0];
  *(v57 + 216) = v143;
  strcpy(v325, "app-version-");
  BYTE5(v325[1]) = 0;
  HIWORD(v325[1]) = -5120;
  v144 = objc_opt_self();
  v145 = [v144 mainBundle];
  v146 = v318;
  sub_1D725BD5C();
  v147 = sub_1D725BD1C();
  v148 = *(v147 - 8);
  if ((*(v148 + 48))(v146, 1, v147) == 1)
  {
    sub_1D6C36B50(v146, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v149 = 0xE700000000000000;
    v150 = 0x6E776F6E6B6E75;
  }

  else
  {
    v118 = sub_1D725BC9C();
    v149 = v151;
    (*(v148 + 8))(v146, v147);
    v150 = v118;
  }

  MEMORY[0x1DA6F9910](v150, v149);

  v152 = sub_1D726210C();
  v154 = v153;

  *(v57 + 224) = v152;
  *(v57 + 232) = v154;
  strcpy(v325, "app-build-");
  BYTE3(v325[1]) = 0;
  HIDWORD(v325[1]) = -369098752;
  v155 = [v144 mainBundle];
  v156 = sub_1D72636BC();
  v158 = v157;

  MEMORY[0x1DA6F9910](v156, v158);

  v159 = sub_1D726210C();
  v161 = v160;

  *(v57 + 240) = v159;
  *(v57 + 248) = v161;
  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  strcpy(v325, "app-bundle-id-");
  HIBYTE(v325[1]) = -18;
  v162 = [v144 mainBundle];
  v163 = [v162 bundleIdentifier];

  v164 = v324;
  if (v163)
  {
    v165 = sub_1D726207C();
    v167 = v166;

    v330 = v165;
    v331 = v167;
    v328 = 46;
    v329 = 0xE100000000000000;
    v326 = 45;
    v327 = 0xE100000000000000;
    v168 = sub_1D7263A6C();
    v170 = v169;
  }

  else
  {
    v170 = 0xE700000000000000;
    v168 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1DA6F9910](v168, v170);

  v171 = sub_1D726210C();
  v173 = v172;

  *(v57 + 256) = v171;
  *(v57 + 264) = v173;
  v325[0] = 0x2D656C616373;
  v325[1] = 0xE600000000000000;
  v174 = v164;
  sub_1D7259F1C();
  if ((*&v175 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_218;
  }

  if (v175 <= -9.22337204e18)
  {
LABEL_218:
    __break(1u);
    goto LABEL_219;
  }

  if (v175 >= 9.22337204e18)
  {
LABEL_219:
    __break(1u);
LABEL_220:
    swift_once();
    goto LABEL_132;
  }

  v330 = v175;
  v176 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v176);

  MEMORY[0x1DA6F9910](120, 0xE100000000000000);
  v177 = v325[1];
  *(v57 + 272) = v325[0];
  *(v57 + 280) = v177;
  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0xD000000000000015;
  v325[1] = 0x80000001D73EDD20;
  v178 = sub_1D7259EBC();
  v179 = [v178 userInterfaceStyle];

  v322 = 0xD000000000000015;
  if (v179)
  {
    v180 = 0xE700000000000000;
    v181 = 1802658148;
    if (v179 == 2)
    {
      v180 = 0xE400000000000000;
    }

    else
    {
      v181 = 0x6E776F6E6B6E75;
    }

    if (v179 == 1)
    {
      v182 = 0x746867696CLL;
    }

    else
    {
      v182 = v181;
    }

    if (v179 == 1)
    {
      v183 = 0xE500000000000000;
    }

    else
    {
      v183 = v180;
    }
  }

  else
  {
    v183 = 0xEB00000000646569;
    v182 = 0x6669636570736E75;
  }

  MEMORY[0x1DA6F9910](v182, v183);

  v184 = v325[1];
  *(v57 + 288) = v325[0];
  *(v57 + 296) = v184;
  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0xD000000000000011;
  v325[1] = 0x80000001D73EDD40;
  sub_1D7259EAC();
  v185 = sub_1D726210C();
  v187 = v186;

  v330 = v185;
  v331 = v187;
  v328 = 32;
  v329 = 0xE100000000000000;
  v326 = 45;
  v327 = 0xE100000000000000;
  v188 = sub_1D7263A6C();
  v190 = v189;

  MEMORY[0x1DA6F9910](v188, v190);

  v191 = v325[1];
  *(v57 + 304) = v325[0];
  *(v57 + 312) = v191;
  v192 = sub_1D5B86020(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v330 = v192;
  v193 = v296;
  sub_1D6C36BC0(v299, v296);
  v194 = v297;
  v195 = v298;
  if ((*(v297 + 48))(v193, 1, v298) == 1)
  {
    sub_1D6C36B50(v193, &qword_1EDF3C0A0, MEMORY[0x1E69D7128]);
  }

  else
  {
    v196 = v294;
    (*(v194 + 32))(v294, v193, v195);
    strcpy(v325, "column-");
    v325[1] = 0xE700000000000000;
    v328 = sub_1D7259CCC();
    v197 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v197);

    sub_1D5B860D0(v325, v325[0], v325[1]);
    (*(v194 + 8))(v196, v195);
  }

  v198 = sub_1D7259EEC();
  v199 = sub_1D72631BC();

  if (v199)
  {
    sub_1D5B860D0(v325, 0xD000000000000018, 0x80000001D73EE1E0);
  }

  v200 = sub_1D7259EBC();
  v201 = [v200 legibilityWeight];

  if (v201 == -1)
  {
    IsBoldTextEnabled = UIAccessibilityIsBoldTextEnabled();
    v105 = v320;
    if (!IsBoldTextEnabled)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v105 = v320;
  if (v201 && (v201 == 1 || UIAccessibilityIsBoldTextEnabled()))
  {
LABEL_103:
    sub_1D5B860D0(v325, 0x2D646C6F622D7861, 0xEC00000074786574);
  }

LABEL_104:
  if (UIAccessibilityIsGrayscaleEnabled())
  {
    sub_1D5B860D0(v325, 0x73796172672D7861, 0xEC000000656C6163);
  }

  v203 = sub_1D7259EBC();
  v204 = [v203 accessibilityContrast];

  if (v204 == -1)
  {
    if (!UIAccessibilityDarkerSystemColorsEnabled())
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  if (v204 && (v204 == 1 || UIAccessibilityDarkerSystemColorsEnabled()))
  {
LABEL_112:
    sub_1D5B860D0(v325, 0xD000000000000017, 0x80000001D73EE1C0);
  }

LABEL_113:
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    sub_1D5B860D0(v325, v323, 0x80000001D73EE1A0);

    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_115;
    }
  }

  else if (!UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_115:
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      goto LABEL_116;
    }

LABEL_120:
    if (!UIAccessibilityShouldDifferentiateWithoutColor())
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  sub_1D5B860D0(v325, 0xD000000000000010, 0x80000001D73EE180);

  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    goto LABEL_120;
  }

LABEL_116:
  sub_1D5B860D0(v325, 0xD000000000000016, 0x80000001D73EE160);

  if (UIAccessibilityShouldDifferentiateWithoutColor())
  {
LABEL_121:
    sub_1D5B860D0(v325, 0xD000000000000025, 0x80000001D73EE130);
  }

LABEL_122:
  v205 = (v105 + v300);
  if (UIAccessibilityButtonShapesEnabled())
  {
    sub_1D5B860D0(v325, 0xD000000000000010, 0x80000001D73EE110);
  }

  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0x6D726F6674616C70;
  v325[1] = 0xEF2D6C65646F6D2DLL;
  v207 = MEMORY[0x1DA6FC760](v206);
  sub_1D726207C();

  v208 = sub_1D726210C();
  v210 = v209;

  MEMORY[0x1DA6F9910](v208, v210);

  sub_1D5B860D0(v325, v325[0], v325[1]);

  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0xD000000000000011;
  v325[1] = 0x80000001D73EDD60;
  v211 = NSSNTPBAnalyticsOsVersionValue();
  sub_1D726207C();

  v212 = sub_1D726210C();
  v214 = v213;

  MEMORY[0x1DA6F9910](v212, v214);

  sub_1D5B860D0(v325, v325[0], v325[1]);

  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = 0xD000000000000019;
  v325[1] = 0x80000001D73CD1F0;
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    v215 = 0x6C616E7265746E69;
  }

  else
  {
    v215 = 0x6C616E7265747865;
  }

  MEMORY[0x1DA6F9910](v215, 0xE800000000000000);

  sub_1D5B860D0(v325, v325[0], v325[1]);

  sub_1D6C36C54();
  if (sub_1D72638DC())
  {
    sub_1D5B860D0(v325, 0xD000000000000017, 0x80000001D73EE0F0);
  }

  v216 = v302;
  sub_1D725890C();
  v217 = sub_1D5BFAE14();
  (*(v303 + 8))(v216, v304);
  sub_1D5B87D50(v217);

  v218 = v205[3];
  v219 = v205[4];
  __swift_project_boxed_opaque_existential_1(v205, v218);
  v220 = (*(v219 + 8))(v218, v219);
  sub_1D5B886D0(v220);
  LOBYTE(v325[0]) = v301;
  v221 = FeedKind.selector.getter();
  v118 = v322;
  if (v222)
  {
    sub_1D5B860D0(v325, v221, v222);
  }

  v174 = OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_featureAvailability;
  v164 = MEMORY[0x1E69E7CD0];
  v328 = MEMORY[0x1E69E7CD0];
  if (qword_1EDF34D10 != -1)
  {
    goto LABEL_220;
  }

LABEL_132:
  v223 = (v105 + v174);

  sub_1D5B886D0(v224);
  if (qword_1EDF34D18 != -1)
  {
    swift_once();
  }

  sub_1D5B886D0(v225);
  if (qword_1EDF31E68 != -1)
  {
    swift_once();
  }

  sub_1D5B886D0(v226);
  v227 = v223[3];
  v228 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v227);
  if ((*(v228 + 8))(v227, v228))
  {
    sub_1D5B860D0(v325, v323, 0x80000001D73EE0D0);
  }

  v229 = v223[3];
  v230 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v229);
  if ((*(v230 + 32))(v229, v230))
  {
    sub_1D5B860D0(v325, 0xD00000000000001FLL, 0x80000001D73EE0B0);
  }

  v231 = v223[3];
  v232 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v231);
  if ((*(v232 + 112))(v231, v232))
  {
    sub_1D5B860D0(v325, 0xD00000000000001CLL, 0x80000001D73EE090);
  }

  v233 = v223[3];
  v234 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v233);
  if ((*(v234 + 88))(v233, v234))
  {
    sub_1D5B860D0(v325, 0xD000000000000018, 0x80000001D73EE040);

    sub_1D5B860D0(v325, 0xD000000000000021, 0x80000001D73EE060);
  }

  v235 = v223[3];
  v236 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v235);
  if ((*(v236 + 128))(v235, v236))
  {
    sub_1D5B860D0(v325, v118, 0x80000001D73EE020);
  }

  v237 = v223[3];
  v238 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v237);
  if ((*(v238 + 96))(v237, v238))
  {
    sub_1D5B860D0(v325, 0xD00000000000002DLL, 0x80000001D73EDFF0);
  }

  v239 = v223[3];
  v240 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v239);
  if ((*(v240 + 160))(v239, v240))
  {
    sub_1D5B860D0(v325, 0xD000000000000016, 0x80000001D73EDFD0);
  }

  v241 = v223[3];
  v242 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v241);
  if ((*(v242 + 192))(v241, v242))
  {
    sub_1D5B860D0(v325, 0xD000000000000026, 0x80000001D73EDFA0);
  }

  v243 = v223[3];
  v244 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v243);
  if ((*(v244 + 168))(v243, v244))
  {
    sub_1D5B860D0(v325, 0xD000000000000014, 0x80000001D73EDF80);
  }

  v245 = v223[3];
  v246 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v245);
  if ((*(v246 + 176))(v245, v246))
  {
    sub_1D5B860D0(v325, 0xD000000000000016, 0x80000001D73EB430);
  }

  v247 = v223[3];
  v248 = v223[4];
  __swift_project_boxed_opaque_existential_1(v223, v247);
  if ((*(v248 + 200))(v247, v248))
  {
    sub_1D5B860D0(v325, 0x2D65727574616566, 0xEC000000646F6F66);
  }

  if (sub_1D725A9CC())
  {
    v249 = v223[3];
    v250 = v223[4];
    __swift_project_boxed_opaque_existential_1(v223, v249);
    if ((*(v250 + 208))(v249, v250))
    {
      sub_1D5B860D0(v325, 0xD000000000000019, 0x80000001D73EDF60);
    }
  }

  if (sub_1D7261A3C())
  {
    sub_1D5B860D0(v325, 0x2D65727574616566, 0xED00007373616C67);
  }

  sub_1D5B860D0(v325, 0xD00000000000001DLL, 0x80000001D73EDD80);

  sub_1D5B860D0(v325, 0xD000000000000019, 0x80000001D73EDDA0);

  sub_1D5B860D0(v325, 0xD00000000000001DLL, 0x80000001D73EDDC0);

  sub_1D5B860D0(v325, 0xD00000000000001CLL, 0x80000001D73EDDE0);

  sub_1D5B860D0(v325, 0xD000000000000018, 0x80000001D73EDE00);

  sub_1D5B860D0(v325, 0xD000000000000014, 0x80000001D73EDE20);

  sub_1D5B860D0(v325, 0xD00000000000001BLL, 0x80000001D73EDE40);

  sub_1D5B860D0(v325, 0xD000000000000018, 0x80000001D73EDE60);

  sub_1D5B886D0(v328);
  v251 = [objc_opt_self() sharedAccount];
  v328 = v164;
  v252 = [v251 currentStoreFrontID];
  if (!v252)
  {
    sub_1D726207C();
    goto LABEL_169;
  }

  v253 = v252;
  v254 = sub_1D726207C();
  v256 = v255;

  v257 = sub_1D726207C();
  if (!v256)
  {
LABEL_169:

    sub_1D726207C();

    sub_1D726207C();

    sub_1D726207C();

    sub_1D726207C();
LABEL_174:

    goto LABEL_175;
  }

  if (v257 == v254 && v256 == v258)
  {

LABEL_171:

    v260 = "account-store-front-us";
LABEL_172:
    v261 = (v260 - 32) | 0x8000000000000000;
    v262 = 0xD000000000000016;
LABEL_173:
    sub_1D5B860D0(v325, v262, v261);
    goto LABEL_174;
  }

  v259 = sub_1D72646CC();

  if (v259)
  {
    goto LABEL_171;
  }

  if (sub_1D726207C() == v254 && v256 == v286)
  {

LABEL_201:

    v260 = "account-store-front-au";
    goto LABEL_172;
  }

  v287 = sub_1D72646CC();

  if (v287)
  {
    goto LABEL_201;
  }

  if (sub_1D726207C() == v254 && v256 == v288)
  {

LABEL_206:

    v260 = "account-store-front-ca";
    goto LABEL_172;
  }

  v289 = sub_1D72646CC();

  if (v289)
  {
    goto LABEL_206;
  }

  if (sub_1D726207C() == v254 && v256 == v290)
  {

LABEL_211:

    v260 = "account-store-front-uk";
    goto LABEL_172;
  }

  v291 = sub_1D72646CC();

  if (v291)
  {
    goto LABEL_211;
  }

  if (sub_1D726207C() == v254 && v256 == v292)
  {

LABEL_216:
    v262 = 0xD000000000000019;
    v261 = 0x80000001D73EDEC0;
    goto LABEL_173;
  }

  v293 = sub_1D72646CC();

  if (v293)
  {
    goto LABEL_216;
  }

LABEL_175:
  if ([v251 isPrimaryAccountEmailAddress])
  {
    sub_1D5B860D0(v325, 0xD00000000000001DLL, 0x80000001D73EDEA0);
  }

  v325[0] = 0;
  v325[1] = 0xE000000000000000;
  sub_1D7263D4C();

  v325[0] = v118;
  v325[1] = 0x80000001D73EDE80;
  v263 = [v251 primaryLanguageCode];
  sub_1D726207C();

  v264 = sub_1D726210C();
  v266 = v265;

  MEMORY[0x1DA6F9910](v264, v266);

  sub_1D5B860D0(v325, v325[0], v325[1]);

  sub_1D5B886D0(v328);
  v267 = *(v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 24);
  v268 = *(v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 32);
  __swift_project_boxed_opaque_existential_1((v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager), v267);
  v269 = (*(v268 + 8))(v267, v268);
  v270 = sub_1D6C2FFD0(v269);

  v271 = sub_1D5B86020(v270);

  sub_1D5B886D0(v271);
  v272 = [*(v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager) cachedSubscription];
  v273 = [v272 unprotectedSubscriptionState];

  if (v273 > 1)
  {
    v274 = v307;
    if (v273 == 2)
    {
      v277 = "bundle-subscription-expired";
      goto LABEL_187;
    }

    if (v273 == 3)
    {
      v275 = "bundle-subscription-expired";
      v276 = 0xD000000000000022;
      goto LABEL_188;
    }
  }

  else
  {
    v274 = v307;
    if (!v273)
    {
      v275 = "selectors";
      v276 = 0xD000000000000019;
      goto LABEL_188;
    }

    if (v273 == 1)
    {
      v275 = "ion-not-subscribed";
      v276 = 0xD00000000000001ELL;
      goto LABEL_188;
    }
  }

  v277 = "bundle-subscription-unknown";
LABEL_187:
  v275 = (v277 - 32);
  v276 = 0xD00000000000001BLL;
LABEL_188:
  v278 = v308;
  sub_1D5B860D0(v325, v276, v275 | 0x8000000000000000);

  sub_1D6AF250C(v325);
  if (v325[1])
  {
    sub_1D5C39354(v325[0], v325[1]);
    v279 = 0xEE00656E696C6666;
  }

  else
  {
    v279 = 0xED0000656E696C6ELL;
  }

  sub_1D5B860D0(v325, 0x6F2D656369766564, v279);

  if (v278)
  {

    sub_1D5B886D0(v280);
  }

  v281 = *(v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager + 24);
  v282 = *(v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager + 32);
  __swift_project_boxed_opaque_existential_1((v105 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSessionManager), v281);
  (*(v282 + 8))(v281, v282);
  if ((*(v305 + 48))(v274, 1, v306) == 1)
  {
    sub_1D6C36B50(v274, &qword_1EDF33290, type metadata accessor for BundleSession);
  }

  else
  {
    v283 = v295;
    sub_1D6C36D04(v274, v295, type metadata accessor for BundleSession);
    v284 = sub_1D6AB8834();
    sub_1D5B886D0(v284);
    sub_1D6ABA490(v283);
  }

  return v330;
}

id FormatSystemFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FormatSystemFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FormatSystemFactory.createFeedConfiguration(viewController:)(void *a1)
{
  v3 = sub_1D7259D1C();
  v111 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C36CA0(0, &qword_1EDF3C0A0, MEMORY[0x1E69D7128], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v102 - v9;
  v11 = sub_1D725A19C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v115 = sub_1D7259F5C();
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v13);
  *&v110 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = v102 - v18;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;

  result = [a1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = result;
  [result bounds];
  v28 = v27;
  v30 = v29;

  result = [a1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = result;
  v104 = v30;
  v105 = v28;
  v106 = v25;
  v107 = v23;
  v108 = v3;
  v109 = v1;
  v113 = v19;
  [result bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  result = [a1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40 = result;
  [result layoutMargins];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;

  UIEdgeInsetsInsetRect_2(v33, v35, v37, v39, v42, v44, v46, v48);
  v50 = v49;
  result = [a1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v51 = result;
  v52 = [result window];

  if (!v52)
  {
    result = [a1 view];
    if (!result)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v52 = result;
  }

  v103 = v6;
  v112 = v10;
  [v52 bounds];
  v54 = v53;
  v56 = v55;

  v57 = [objc_opt_self() mainScreen];
  [v57 nativeBounds];

  result = [a1 view];
  if (!result)
  {
    goto LABEL_22;
  }

  v58 = result;
  v59 = [result traitCollection];

  result = [a1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v60 = result;
  [result layoutMargins];
  v62 = v61;
  v102[6] = v63;
  v102[5] = v64;

  result = [a1 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v65 = result;
  v102[4] = v62;
  v66 = objc_opt_self();
  v67 = [v65 semanticContentAttribute];

  [v66 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  result = [a1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v68 = result;
  v102[2] = v54;
  v102[3] = v56;
  v102[1] = v50;
  v69 = [result traitCollection];

  v70 = [v69 preferredContentSizeCategory];
  result = [a1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v71 = result;
  [result safeAreaInsets];

  v72 = v112;
  v73 = v113;
  if (qword_1EDF386E8 != -1)
  {
    swift_once();
  }

  sub_1D725972C();

  sub_1D7259E5C();
  (*(v111 + 104))(v103, *MEMORY[0x1E69D7110], v108);
  (*(v114 + 16))(v110, v73, v115);
  v120 = 0u;
  v121 = 0u;
  v122 = 1;
  sub_1D7259BEC();
  v74 = sub_1D7259CFC();
  (*(*(v74 - 8) + 56))(v72, 0, 1, v74);
  LOBYTE(v119[0]) = 26;
  v116 = 0uLL;
  v75 = v109;
  v111 = sub_1D6C30264(v73, v72, v119, &v116);
  v76 = type metadata accessor for FormatLogger();
  inited = swift_initStaticObject();
  v78 = (v75 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager);
  v79 = *(v75 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 24);
  v80 = *(v75 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 32);
  __swift_project_boxed_opaque_existential_1((v75 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager), v79);
  v81 = (*(v80 + 8))(v79, v80);
  v82 = v78[3];
  v83 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v82);
  v84 = (*(v83 + 16))(v82, v83);
  v86 = v78[3];
  v85 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v86);
  (*(v85 + 24))(&v116, v86, v85);
  v87 = v78[3];
  v88 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v87);
  v89 = (*(v88 + 40))(v87, v88);
  v90 = [*(v75 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager) cachedSubscription];
  v110 = v116;
  v92 = v78[3];
  v91 = v78[4];
  __swift_project_boxed_opaque_existential_1(v78, v92);
  (*(v91 + 32))(v119, v92, v91);
  v93 = v119[0];
  v94 = v119[1];
  v117 = v76;
  v118 = &protocol witness table for FormatLogger;
  *&v116 = inited;
  type metadata accessor for FormatSystem();
  v95 = swift_initStackObject();
  v96 = MEMORY[0x1E69E7CC0];
  *(v95 + 64) = v111;
  *(v95 + 72) = v96;
  sub_1D5B7DDE8(&v116, v95 + 80);
  *(v95 + 16) = v81;
  *(v95 + 24) = v84;
  *(v95 + 32) = v110;
  *(v95 + 48) = v89;
  *(v95 + 56) = v90;
  *(v95 + 120) = v93;
  *(v95 + 128) = v94;
  sub_1D6E04BE8();
  v97 = objc_allocWithZone(MEMORY[0x1E69CE168]);
  v98 = sub_1D7262AFC();

  v99 = [v97 initWithSelectors:v98 configuration:0];

  swift_setDeallocating();
  v100 = *(v95 + 24);
  v101 = *(v95 + 56);

  __swift_destroy_boxed_opaque_existential_1(v95 + 80);

  sub_1D6C36B50(v112, &qword_1EDF3C0A0, MEMORY[0x1E69D7128]);
  (*(v114 + 8))(v113, v115);
  return v99;
}

uint64_t sub_1D6C33A98(uint64_t a1, uint64_t (*a2)(uint64_t a1), _BYTE *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v452 = a6;
  v459 = a1;
  v14 = type metadata accessor for FormatOption();
  v434 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v435 = &v434 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v440 = sub_1D725A19C();
  v439 = *(v440 - 8);
  MEMORY[0x1EEE9AC00](v440, v17);
  v438 = &v434 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v461 = type metadata accessor for FormatVersionRequirement(0);
  *&v468 = *(v461 - 8);
  MEMORY[0x1EEE9AC00](v461, v19);
  v451 = &v434 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v442 = &v434 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v450 = &v434 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v449 = &v434 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v448 = &v434 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v447 = &v434 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v446 = &v434 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v445 = &v434 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v434 - v44;
  v46 = MEMORY[0x1E69D7128];
  sub_1D6C36CA0(0, &qword_1EDF3C0A0, MEMORY[0x1E69D7128], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v50 = &v434 - v49;
  v472[3] = a7;
  v472[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v472);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a4, a7);
  LOBYTE(a8) = *a3;
  v52 = *a5;
  v53 = a5[1];
  v54 = sub_1D7259CFC();
  v55 = *(v54 - 8);
  v56 = *(v55 + 16);
  v457 = a2;
  v56(v50, a2, v54);
  (*(v55 + 56))(v50, 0, 1, v54);
  LOBYTE(v469) = a8;
  v57 = v459;
  *&v470 = v52;
  *(&v470 + 1) = v53;

  v443 = v53;

  v444 = sub_1D6C30264(v57, v50, &v469, &v470);
  v58 = v50;
  v59 = v14;
  sub_1D6C36B50(v58, &qword_1EDF3C0A0, v46);
  sub_1D5CDE22C(v470);
  v458 = [objc_opt_self() sharedAccount];
  sub_1D6C36CA0(0, &unk_1EDF199B0, sub_1D5D24660, MEMORY[0x1E69E6F90]);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1D731B2C0;
  v454 = swift_allocBox();
  v62 = v61;
  if (qword_1EDF31EF8 != -1)
  {
    swift_once();
  }

  v63 = sub_1D725BD1C();
  v455 = __swift_project_value_buffer(v63, qword_1EDFFCDC8);
  v64 = *(v63 - 8);
  v462 = *(v64 + 16);
  v65 = v64 + 16;
  v463 = v63;
  v462(v45, v455, v63);
  v466 = v65;
  v465 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E7C();
  v67 = v66;
  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  v69 = MEMORY[0x1E69E7CC0];
  *(v68 + 24) = MEMORY[0x1E69E7CC0];
  *v62 = 0xD000000000000015;
  *(v62 + 1) = 0x80000001D73E3AF0;
  *(v62 + 2) = v68 | 0x3000000000000000;
  *(v62 + 3) = 1;
  v70 = *(v59 + 28);
  v456 = type metadata accessor for FormatVersionRequirement;
  sub_1D6C36D04(v45, &v62[v70], type metadata accessor for FormatVersionRequirement);
  v71 = *(v468 + 56);
  *&v468 = v468 + 56;
  v464 = v71;
  v71(&v62[v70], 0, 1, v461);
  *(v60 + 32) = v454;
  v454 = swift_allocBox();
  v73 = v72;
  v74 = v455;
  v75 = v63;
  v76 = v462;
  v462(v45, v455, v75);
  v77 = v59;
  swift_storeEnumTagMultiPayload();
  v78 = v60;
  v467 = v60;
  sub_1D7259E7C();
  v80 = v79;
  v81 = swift_allocObject();
  *(v81 + 16) = v80;
  *(v81 + 24) = v69;
  *v73 = 0xD000000000000016;
  *(v73 + 1) = 0x80000001D73E3B10;
  *(v73 + 2) = v81 | 0x3000000000000000;
  *(v73 + 3) = 1;
  v82 = *(v59 + 28);
  sub_1D6C36D04(v45, &v73[v82], v456);
  v464(&v73[v82], 0, 1, v461);
  *(v78 + 40) = v454;
  v453 = swift_allocBox();
  v84 = v83;
  v85 = v463;
  v76(v45, v74, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E4C();
  v87 = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = v87;
  *(v88 + 24) = v69;
  v454 = 0xD000000000000013;
  *v84 = 0xD000000000000013;
  *(v84 + 1) = 0x80000001D73E3B30;
  *(v84 + 2) = v88 | 0x3000000000000000;
  *(v84 + 3) = 1;
  v89 = *(v59 + 28);
  v90 = v456;
  sub_1D6C36D04(v45, &v84[v89], v456);
  v91 = v461;
  v92 = v464;
  v464(&v84[v89], 0, 1, v461);
  v467[6] = v453;
  v453 = swift_allocBox();
  v94 = v93;
  v95 = v85;
  v96 = v462;
  v462(v45, v455, v95);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E4C();
  v98 = v97;
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v69;
  *v94 = 0xD000000000000014;
  *(v94 + 1) = 0x80000001D73E3B50;
  v100 = v96;
  *(v94 + 2) = v99 | 0x3000000000000000;
  *(v94 + 3) = 1;
  v101 = *(v77 + 28);
  sub_1D6C36D04(v45, &v94[v101], v90);
  v92(&v94[v101], 0, 1, v91);
  v102 = v467;
  v467[7] = v453;
  v453 = swift_allocBox();
  v104 = v103;
  v105 = v463;
  v100(v45, v455, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259F1C();
  v107 = v106;
  v108 = swift_allocObject();
  *(v108 + 16) = v107;
  *(v108 + 24) = v69;
  strcpy(v104, "layout-scale");
  *(v104 + 13) = 0;
  *(v104 + 14) = -5120;
  *(v104 + 16) = v108 | 0x3000000000000000;
  *(v104 + 24) = 1;
  v109 = *(v77 + 28);
  sub_1D6C36D04(v45, v104 + v109, v456);
  v464((v104 + v109), 0, 1, v91);
  v102[8] = v453;
  v441 = swift_allocBox();
  v111 = v110;
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v456 = __swift_project_value_buffer(v105, qword_1EDFFCD50);
  v100(v45, v456, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v113 = v112;
  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  *(v114 + 24) = v69;
  v455 = 0xD000000000000011;
  *v111 = 0xD000000000000011;
  *(v111 + 1) = 0x80000001D73E3B70;
  *(v111 + 2) = v114 | 0x3000000000000000;
  *(v111 + 3) = 1;
  v115 = *(v77 + 28);
  v453 = type metadata accessor for FormatVersionRequirement;
  v116 = v45;
  sub_1D6C36D04(v45, &v111[v115], type metadata accessor for FormatVersionRequirement);
  v464(&v111[v115], 0, 1, v91);
  v467[9] = v441;
  v437 = swift_allocBox();
  v118 = v117;
  v119 = v456;
  v462(v45, v456, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v121 = v120;
  v122 = swift_allocObject();
  *(v122 + 16) = v121;
  *(v122 + 24) = v69;
  v441 = 0xD000000000000012;
  *v118 = 0xD000000000000012;
  *(v118 + 1) = 0x80000001D73E3B90;
  *(v118 + 2) = v122 | 0x3000000000000000;
  *(v118 + 3) = 1;
  v123 = *(v77 + 28);
  v124 = v453;
  sub_1D6C36D04(v116, &v118[v123], v453);
  v464(&v118[v123], 0, 1, v91);
  v125 = v467;
  v467[10] = v437;
  v126 = v77;
  v437 = swift_allocBox();
  v128 = v127;
  v462(v116, v119, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v130 = v129;
  v131 = swift_allocObject();
  *(v131 + 16) = v130;
  *(v131 + 24) = v69;
  *v128 = 0xD000000000000014;
  *(v128 + 1) = 0x80000001D73E3BB0;
  *(v128 + 2) = v131 | 0x3000000000000000;
  *(v128 + 3) = 1;
  v132 = *(v77 + 28);
  sub_1D6C36D04(v116, &v128[v132], v124);
  v133 = v464;
  v464(&v128[v132], 0, 1, v461);
  v125[11] = v437;
  v437 = swift_allocBox();
  v135 = v134;
  v462(v116, v456, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E8C();
  v137 = v136;
  v138 = swift_allocObject();
  *(v138 + 16) = v137;
  *(v138 + 24) = v69;
  v139 = v454;
  *v135 = v454;
  v135[1] = 0x80000001D73E3BD0;
  v135[2] = v138 | 0x3000000000000000;
  v135[3] = 1;
  v140 = *(v126 + 28);
  v141 = v453;
  v142 = v116;
  sub_1D6C36D04(v116, v135 + v140, v453);
  v143 = v461;
  v133(v135 + v140, 0, 1, v461);
  v467[12] = v437;
  v144 = v126;
  v437 = swift_allocBox();
  v146 = v145;
  v462(v142, v456, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C1C();
  v148 = v147;
  v149 = swift_allocObject();
  *(v149 + 16) = v148;
  *(v149 + 24) = v69;
  *v146 = v139;
  v146[1] = 0x80000001D73E3BF0;
  v150 = v462;
  v146[2] = v149 | 0x3000000000000000;
  v146[3] = 1;
  v151 = *(v144 + 28);
  sub_1D6C36D04(v142, v146 + v151, v141);
  v152 = v464;
  v464(v146 + v151, 0, 1, v143);
  v153 = v467;
  v467[13] = v437;
  v437 = swift_allocBox();
  v155 = v154;
  v156 = v463;
  v150(v142, v456, v463);
  swift_storeEnumTagMultiPayload();
  v157 = swift_allocObject();
  *(v157 + 16) = 0x400921FB54442D18;
  *(v157 + 24) = v69;
  *v155 = 26992;
  v155[1] = 0xE200000000000000;
  v155[2] = v157 | 0x3000000000000000;
  v155[3] = 1;
  v158 = *(v144 + 28);
  sub_1D6C36D04(v142, v155 + v158, v453);
  v159 = v155 + v158;
  v160 = v461;
  v152(v159, 0, 1, v461);
  v153[14] = v437;
  v456 = swift_allocBox();
  v162 = v161;
  v163 = v160;
  if (qword_1EDF31F08 != -1)
  {
    swift_once();
  }

  v453 = __swift_project_value_buffer(v156, qword_1EDFFCDE0);
  v150(v142, v453, v156);
  swift_storeEnumTagMultiPayload();
  v164 = v150;
  sub_1D7259EFC();
  v166 = v165;
  v167 = swift_allocObject();
  *(v167 + 16) = v166;
  *(v167 + 24) = v69;
  *v162 = 0xD000000000000014;
  *(v162 + 1) = 0x80000001D73E3C10;
  *(v162 + 2) = v167 | 0x3000000000000000;
  *(v162 + 3) = 1;
  v168 = *(v144 + 28);
  v436 = type metadata accessor for FormatVersionRequirement;
  sub_1D6C36D04(v142, &v162[v168], type metadata accessor for FormatVersionRequirement);
  v169 = v464;
  v464(&v162[v168], 0, 1, v163);
  v467[15] = v456;
  v456 = swift_allocBox();
  v171 = v170;
  v164(v142, v453, v156);
  swift_storeEnumTagMultiPayload();
  sub_1D7259EFC();
  v173 = v172;
  v174 = swift_allocObject();
  *(v174 + 16) = v173;
  *(v174 + 24) = v69;
  v437 = 0xD000000000000015;
  *v171 = 0xD000000000000015;
  *(v171 + 1) = 0x80000001D73E3C30;
  *(v171 + 2) = v174 | 0x3000000000000000;
  *(v171 + 3) = 1;
  v175 = *(v144 + 28);
  sub_1D6C36D04(v142, &v171[v175], v436);
  v169(&v171[v175], 0, 1, v163);
  v467[16] = v456;
  v176 = swift_allocBox();
  v178 = v177;
  if (qword_1EDF31EE0 != -1)
  {
    swift_once();
  }

  v179 = v463;
  v180 = __swift_project_value_buffer(v463, qword_1EDFFCD80);
  v453 = v180;
  v462(v142, v180, v179);
  swift_storeEnumTagMultiPayload();
  v181 = v438;
  sub_1D7259EDC();
  sub_1D725A18C();
  v183 = v182;
  (*(v439 + 8))(v181, v440);
  v184 = swift_allocObject();
  *(v184 + 16) = v183;
  *(v184 + 24) = v69;
  *v178 = 0xD00000000000001BLL;
  *(v178 + 1) = 0x80000001D73E3C50;
  *(v178 + 2) = v184 | 0x3000000000000000;
  *(v178 + 3) = 1;
  v185 = *(v144 + 28);
  v456 = type metadata accessor for FormatVersionRequirement;
  sub_1D6C36D04(v142, &v178[v185], type metadata accessor for FormatVersionRequirement);
  v464(&v178[v185], 0, 1, v461);
  v467[17] = v176;
  v440 = swift_allocBox();
  v187 = v186;
  v188 = v180;
  v189 = v463;
  v190 = v462;
  v462(v142, v188, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v192 = v191;
  v193 = swift_allocObject();
  *(v193 + 16) = v192;
  *(v193 + 24) = v69;
  *v187 = 0xD000000000000014;
  *(v187 + 1) = 0x80000001D73E3C70;
  *(v187 + 2) = v193 | 0x3000000000000000;
  *(v187 + 3) = 1;
  v194 = *(v144 + 28);
  v195 = v456;
  sub_1D6C36D04(v142, &v187[v194], v456);
  v464(&v187[v194], 0, 1, v461);
  v467[18] = v440;
  v440 = swift_allocBox();
  v197 = v196;
  v190(v142, v453, v189);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v199 = v198;
  v200 = swift_allocObject();
  *(v200 + 16) = v199;
  *(v200 + 24) = v69;
  *v197 = v437;
  v197[1] = 0x80000001D73E3C90;
  v197[2] = v200 | 0x3000000000000000;
  v197[3] = 1;
  v201 = *(v144 + 28);
  sub_1D6C36D04(v142, v197 + v201, v195);
  v202 = v144;
  v203 = v461;
  v204 = v464;
  v464(v197 + v201, 0, 1, v461);
  v467[19] = v440;
  v440 = swift_allocBox();
  v206 = v205;
  v462(v142, v453, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v208 = v207;
  v209 = swift_allocObject();
  *(v209 + 16) = v208;
  *(v209 + 24) = v69;
  *v206 = 0xD000000000000017;
  *(v206 + 1) = 0x80000001D73E3CB0;
  *(v206 + 2) = v209 | 0x3000000000000000;
  *(v206 + 3) = 1;
  v210 = *(v202 + 28);
  sub_1D6C36D04(v142, &v206[v210], v456);
  v204(&v206[v210], 0, 1, v203);
  v211 = v467;
  v467[20] = v440;
  v440 = swift_allocBox();
  v213 = v212;
  v214 = v463;
  v462(v142, v453, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259E9C();
  v216 = v215;
  v217 = swift_allocObject();
  *(v217 + 16) = v216;
  *(v217 + 24) = v69;
  *v213 = 0xD000000000000016;
  *(v213 + 1) = 0x80000001D73E3CD0;
  *(v213 + 2) = v217 | 0x3000000000000000;
  *(v213 + 3) = 1;
  v218 = *(v202 + 28);
  sub_1D6C36D04(v142, &v213[v218], v456);
  v464(&v213[v218], 0, 1, v461);
  v211[21] = v440;
  v460 = v202;
  v453 = swift_allocBox();
  v220 = v219;
  if (qword_1EDF31ED8 != -1)
  {
    swift_once();
  }

  v459 = __swift_project_value_buffer(v214, qword_1EDFFCD68);
  v462(v142, v459, v214);
  swift_storeEnumTagMultiPayload();
  v221 = sub_1D7259CCC();
  v222 = swift_allocObject();
  *(v222 + 16) = v221;
  *(v222 + 24) = v69;
  strcpy(v220, "column-count");
  *(v220 + 13) = 0;
  *(v220 + 14) = -5120;
  *(v220 + 16) = v222 | 0x4000000000000000;
  *(v220 + 24) = 1;
  v223 = v460;
  v224 = *(v460 + 28);
  v456 = type metadata accessor for FormatVersionRequirement;
  sub_1D6C36D04(v142, v220 + v224, type metadata accessor for FormatVersionRequirement);
  v464((v220 + v224), 0, 1, v461);
  v467[22] = v453;
  v453 = swift_allocBox();
  v226 = v225;
  v227 = v459;
  v228 = v462;
  v462(v142, v459, v214);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C0C();
  v230 = v229;
  v231 = swift_allocObject();
  *(v231 + 16) = v230;
  *(v231 + 24) = v69;
  strcpy(v226, "column-width");
  *(v226 + 13) = 0;
  *(v226 + 14) = -5120;
  *(v226 + 16) = v231 | 0x3000000000000000;
  *(v226 + 24) = 1;
  v232 = *(v223 + 28);
  sub_1D6C36D04(v142, v226 + v232, type metadata accessor for FormatVersionRequirement);
  v233 = v461;
  v464((v226 + v232), 0, 1, v461);
  v467[23] = v453;
  v453 = swift_allocBox();
  v235 = v234;
  v236 = v227;
  v237 = v463;
  v228(v142, v236, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C1C();
  v239 = v238;
  v240 = swift_allocObject();
  *(v240 + 16) = v239;
  *(v240 + 24) = v69;
  *v235 = v454;
  v235[1] = 0x80000001D73E3CF0;
  v235[2] = v240 | 0x3000000000000000;
  v235[3] = 1;
  v241 = *(v223 + 28);
  v242 = v456;
  sub_1D6C36D04(v142, v235 + v241, v456);
  v464(v235 + v241, 0, 1, v233);
  v467[24] = v453;
  v440 = swift_allocBox();
  v244 = v243;
  v245 = v459;
  v246 = v237;
  v247 = v462;
  v462(v142, v459, v246);
  swift_storeEnumTagMultiPayload();
  sub_1D7259CDC();
  v249 = v248;
  v250 = swift_allocObject();
  *(v250 + 16) = v249;
  *(v250 + 24) = v69;
  v453 = 0xD000000000000010;
  *v244 = 0xD000000000000010;
  *(v244 + 1) = 0x80000001D73E3D10;
  *(v244 + 2) = v250 | 0x3000000000000000;
  *(v244 + 3) = 1;
  v251 = v460;
  v252 = *(v460 + 28);
  sub_1D6C36D04(v142, &v244[v252], v242);
  v253 = v464;
  v464(&v244[v252], 0, 1, v461);
  v467[25] = v440;
  v439 = swift_allocBox();
  v255 = v254;
  v247(v142, v245, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C4C();
  v257 = v256;
  v258 = swift_allocObject();
  *(v258 + 16) = v257;
  *(v258 + 24) = v69;
  v440 = 0xD000000000000019;
  *v255 = 0xD000000000000019;
  *(v255 + 1) = 0x80000001D73E3D30;
  *(v255 + 2) = v258 | 0x3000000000000000;
  *(v255 + 3) = 1;
  v259 = *(v251 + 28);
  v260 = v456;
  sub_1D6C36D04(v142, &v255[v259], v456);
  v253(&v255[v259], 0, 1, v461);
  v261 = v467;
  v467[26] = v439;
  v439 = swift_allocBox();
  v263 = v262;
  v264 = v463;
  v462(v142, v459, v463);
  swift_storeEnumTagMultiPayload();
  sub_1D7259CEC();
  v266 = v265;
  v267 = swift_allocObject();
  *(v267 + 16) = v266;
  *(v267 + 24) = v69;
  *v263 = v453;
  *(v263 + 1) = 0x80000001D73E3D50;
  *(v263 + 2) = v267 | 0x3000000000000000;
  *(v263 + 3) = 1;
  v268 = v460;
  v269 = *(v460 + 28);
  sub_1D6C36D04(v142, &v263[v269], v260);
  v270 = v464;
  v464(&v263[v269], 0, 1, v461);
  v261[27] = v439;
  v271 = swift_allocBox();
  v273 = v272;
  v462(v142, v459, v264);
  swift_storeEnumTagMultiPayload();
  sub_1D7259C5C();
  v275 = v274;
  v276 = swift_allocObject();
  *(v276 + 16) = v275;
  *(v276 + 24) = v69;
  *v273 = v440;
  v273[1] = 0x80000001D73E3D70;
  v273[2] = v276 | 0x3000000000000000;
  v273[3] = 1;
  v277 = *(v268 + 28);
  v440 = v142;
  sub_1D6C36D04(v142, v273 + v277, v456);
  v270(v273 + v277, 0, 1, v461);
  v467[28] = v271;
  if (qword_1EDF31F40 != -1)
  {
    swift_once();
  }

  v459 = __swift_project_value_buffer(v463, qword_1EDFFCE50);
  (v462)(v445);
  swift_storeEnumTagMultiPayload();
  v278 = [v458 firstName];
  if (v278)
  {
    v279 = v278;
    v280 = sub_1D726207C();
    v282 = v281;
  }

  else
  {
    v280 = 0;
    v282 = 0xE000000000000000;
  }

  v283 = v460;
  v284 = swift_allocBox();
  v286 = v285;
  v287 = swift_allocObject();
  *(v287 + 16) = v280;
  *(v287 + 24) = v282;
  *(v287 + 32) = v69;
  *v286 = v441;
  v286[1] = 0x80000001D73E3D90;
  v286[2] = v287 | 0x5000000000000000;
  v286[3] = 1;
  v288 = *(v283 + 28);
  sub_1D6C36D04(v445, v286 + v288, type metadata accessor for FormatVersionRequirement);
  v464(v286 + v288, 0, 1, v461);
  v467[29] = v284;
  v462(v446, v459, v463);
  swift_storeEnumTagMultiPayload();
  v289 = [v458 middleName];
  if (v289)
  {
    v290 = v289;
    v291 = sub_1D726207C();
    v293 = v292;
  }

  else
  {
    v291 = 0;
    v293 = 0xE000000000000000;
  }

  v294 = v460;
  v295 = swift_allocBox();
  v297 = v296;
  v298 = swift_allocObject();
  *(v298 + 16) = v291;
  *(v298 + 24) = v293;
  *(v298 + 32) = v69;
  *v297 = v454;
  v297[1] = 0x80000001D73E3DB0;
  v297[2] = v298 | 0x5000000000000000;
  v297[3] = 1;
  v299 = *(v294 + 28);
  sub_1D6C36D04(v446, v297 + v299, type metadata accessor for FormatVersionRequirement);
  v464(v297 + v299, 0, 1, v461);
  v467[30] = v295;
  v462(v447, v459, v463);
  swift_storeEnumTagMultiPayload();
  v300 = [v458 lastName];
  if (v300)
  {
    v301 = v300;
    v302 = sub_1D726207C();
    v304 = v303;
  }

  else
  {
    v302 = 0;
    v304 = 0xE000000000000000;
  }

  v305 = v460;
  v306 = swift_allocBox();
  v308 = v307;
  v309 = swift_allocObject();
  *(v309 + 16) = v302;
  *(v309 + 24) = v304;
  *(v309 + 32) = v69;
  *v308 = v455;
  v308[1] = 0x80000001D73E3DD0;
  v308[2] = v309 | 0x5000000000000000;
  v308[3] = 1;
  v310 = *(v305 + 28);
  sub_1D6C36D04(v447, v308 + v310, type metadata accessor for FormatVersionRequirement);
  v464(v308 + v310, 0, 1, v461);
  v467[31] = v306;
  v462(v448, v459, v463);
  swift_storeEnumTagMultiPayload();
  v311 = [v458 fullName];
  if (v311)
  {
    v312 = v311;
    v313 = sub_1D726207C();
    v315 = v314;
  }

  else
  {
    v313 = 0;
    v315 = 0xE000000000000000;
  }

  v316 = v460;
  v317 = swift_allocBox();
  v319 = v318;
  v320 = swift_allocObject();
  *(v320 + 16) = v313;
  *(v320 + 24) = v315;
  *(v320 + 32) = v69;
  *v319 = v455;
  v319[1] = 0x80000001D73E3DF0;
  v319[2] = v320 | 0x5000000000000000;
  v319[3] = 1;
  v321 = *(v316 + 28);
  sub_1D6C36D04(v448, v319 + v321, type metadata accessor for FormatVersionRequirement);
  v464(v319 + v321, 0, 1, v461);
  v467[32] = v317;
  v462(v449, v459, v463);
  swift_storeEnumTagMultiPayload();
  v322 = [v458 username];
  if (v322)
  {
    v323 = v322;
    v324 = sub_1D726207C();
    v326 = v325;
  }

  else
  {
    v324 = 0;
    v326 = 0xE000000000000000;
  }

  v327 = v460;
  v328 = swift_allocBox();
  v330 = v329;
  v331 = swift_allocObject();
  *(v331 + 16) = v324;
  *(v331 + 24) = v326;
  *(v331 + 32) = v69;
  *v330 = v453;
  *(v330 + 1) = 0x80000001D73E3E10;
  *(v330 + 2) = v331 | 0x5000000000000000;
  *(v330 + 3) = 1;
  v332 = *(v327 + 28);
  sub_1D6C36D04(v449, &v330[v332], type metadata accessor for FormatVersionRequirement);
  v464(&v330[v332], 0, 1, v461);
  v467[33] = v328;
  v462(v450, v459, v463);
  swift_storeEnumTagMultiPayload();
  v333 = [v458 formattedUsername];
  if (v333)
  {
    v334 = v333;
    v335 = sub_1D726207C();
    v337 = v336;
  }

  else
  {
    v335 = 0;
    v337 = 0xE000000000000000;
  }

  v338 = v460;
  v339 = swift_allocBox();
  v341 = v340;
  v342 = swift_allocObject();
  *(v342 + 16) = v335;
  *(v342 + 24) = v337;
  *(v342 + 32) = v69;
  *v341 = 0xD00000000000001ALL;
  *(v341 + 1) = 0x80000001D73E3E30;
  *(v341 + 2) = v342 | 0x5000000000000000;
  *(v341 + 3) = 1;
  v343 = *(v338 + 28);
  sub_1D6C36D04(v450, &v341[v343], type metadata accessor for FormatVersionRequirement);
  v464(&v341[v343], 0, 1, v461);
  v467[34] = v339;
  v344 = v442;
  v462(v442, v459, v463);
  swift_storeEnumTagMultiPayload();
  v345 = [v458 personID];
  if (v345)
  {
    v346 = v345;
    v347 = sub_1D726207C();
    v349 = v348;
  }

  else
  {
    v347 = 0;
    v349 = 0xE000000000000000;
  }

  v350 = v460;
  v351 = swift_allocBox();
  v353 = v352;
  v354 = swift_allocObject();
  *(v354 + 16) = v347;
  *(v354 + 24) = v349;
  *(v354 + 32) = v69;
  *v353 = v455;
  v353[1] = 0x80000001D73E3E50;
  v353[2] = v354 | 0x5000000000000000;
  v353[3] = 1;
  v355 = *(v350 + 28);
  sub_1D6C36D04(v344, v353 + v355, type metadata accessor for FormatVersionRequirement);
  v356 = v461;
  (v464)(v353 + v355, 0, 1);
  v467[35] = v351;
  v462(v451, v459, v463);
  swift_storeEnumTagMultiPayload();
  v357 = [v458 normalizedPersonId];
  if (v357)
  {
    v358 = v357;
    v359 = sub_1D726207C();
    v361 = v360;
  }

  else
  {
    v359 = 0;
    v361 = 0xE000000000000000;
  }

  v362 = v460;
  v363 = swift_allocBox();
  v365 = v364;
  v366 = swift_allocObject();
  *(v366 + 16) = v359;
  *(v366 + 24) = v361;
  *(v366 + 32) = v69;
  *v365 = 0xD00000000000001CLL;
  *(v365 + 1) = 0x80000001D73E3E70;
  *(v365 + 2) = v366 | 0x5000000000000000;
  *(v365 + 3) = 1;
  v367 = *(v362 + 28);
  sub_1D6C36D04(v451, &v365[v367], type metadata accessor for FormatVersionRequirement);
  v368 = v356;
  v464(&v365[v367], 0, 1, v356);
  v369 = v467;
  v467[36] = v363;
  v456 = swift_allocBox();
  v371 = v370;
  v372 = v440;
  v462(v440, v459, v463);
  swift_storeEnumTagMultiPayload();
  v373 = [v458 ageCategory];
  v374 = swift_allocObject();
  *(v374 + 16) = v373;
  *(v374 + 24) = v69;
  *v371 = 0xD000000000000014;
  *(v371 + 1) = 0x80000001D73E3E90;
  *(v371 + 2) = v374 | 0x4000000000000000;
  *(v371 + 3) = 1;
  v375 = *(v362 + 28);
  v457 = type metadata accessor for FormatVersionRequirement;
  sub_1D6C36D04(v372, &v371[v375], type metadata accessor for FormatVersionRequirement);
  v376 = v368;
  v377 = v464;
  v464(&v371[v375], 0, 1, v376);
  v369[37] = v456;
  v456 = swift_allocBox();
  v379 = v378;
  v380 = v459;
  v462(v372, v459, v463);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v373) = [v458 isSuspended];
  v381 = swift_allocObject();
  *(v381 + 16) = v373;
  *(v381 + 24) = v69;
  *v379 = 0xD000000000000014;
  v379[1] = 0x80000001D73E3EB0;
  v379[2] = v381;
  v379[3] = 1;
  v382 = *(v362 + 28);
  sub_1D6C36D04(v372, v379 + v382, type metadata accessor for FormatVersionRequirement);
  v383 = v379 + v382;
  v384 = v461;
  v377(v383, 0, 1, v461);
  v467[38] = v456;
  v456 = swift_allocBox();
  v386 = v385;
  v387 = v380;
  v388 = v463;
  v389 = v462;
  v462(v372, v387, v463);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v373) = [v458 isiCloudSuspended];
  v390 = swift_allocObject();
  *(v390 + 16) = v373;
  *(v390 + 24) = v69;
  *v386 = 0xD00000000000001BLL;
  *(v386 + 1) = 0x80000001D73E3ED0;
  *(v386 + 2) = v390;
  *(v386 + 3) = 1;
  v391 = *(v460 + 28);
  sub_1D6C36D04(v372, &v386[v391], v457);
  v392 = v464;
  v464(&v386[v391], 0, 1, v384);
  v467[39] = v456;
  v456 = swift_allocBox();
  v394 = v393;
  v389(v372, v459, v388);
  swift_storeEnumTagMultiPayload();
  v395 = v458;
  LOBYTE(v391) = [v458 isFamilySuspended];
  v396 = swift_allocObject();
  *(v396 + 16) = v391;
  *(v396 + 24) = v69;
  *v394 = 0xD00000000000001BLL;
  *(v394 + 1) = 0x80000001D73E3EF0;
  *(v394 + 2) = v396;
  *(v394 + 3) = 1;
  v397 = *(v460 + 28);
  v398 = v457;
  sub_1D6C36D04(v372, &v394[v397], v457);
  v392(&v394[v397], 0, 1, v461);
  v399 = v467;
  v467[40] = v456;
  v456 = swift_allocBox();
  v401 = v400;
  v389(v372, v459, v463);
  v402 = v460;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v397) = [v395 isFamilyEligible];
  v403 = swift_allocObject();
  *(v403 + 16) = v397;
  *(v403 + 24) = v69;
  *v401 = 0xD00000000000001ALL;
  *(v401 + 1) = 0x80000001D73E3F10;
  *(v401 + 2) = v403;
  *(v401 + 3) = 1;
  v404 = *(v402 + 28);
  sub_1D6C36D04(v372, &v401[v404], v398);
  v464(&v401[v404], 0, 1, v461);
  v399[41] = v456;

  v471 = v399;
  v405 = v443;
  v406 = *(v443 + 16);
  if (v406)
  {
    *&v470 = v69;
    sub_1D5D24610(0, v406, 0);
    v69 = v470;
    v407 = v405 + ((*(v434 + 80) + 32) & ~*(v434 + 80));
    v408 = *(v434 + 72);
    v409 = v435;
    do
    {
      sub_1D5D2477C(v407, v409);
      v410 = swift_allocBox();
      sub_1D6C36D04(v409, v411, type metadata accessor for FormatOption);
      *&v470 = v69;
      v413 = *(v69 + 16);
      v412 = *(v69 + 24);
      if (v413 >= v412 >> 1)
      {
        sub_1D5D24610((v412 > 1), v413 + 1, 1);
        v69 = v470;
      }

      *(v69 + 16) = v413 + 1;
      *(v69 + 8 * v413 + 32) = v410;
      v407 += v408;
      --v406;
    }

    while (v406);
  }

  sub_1D6985C44(v69);
  v414 = v471;
  sub_1D5B68374(v472, &v470);
  v415 = v452;
  v416 = (v452 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager);
  v417 = *(v452 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 24);
  v418 = *(v452 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 32);
  __swift_project_boxed_opaque_existential_1((v452 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager), v417);
  v419 = (*(v418 + 8))(v417, v418);
  v420 = v416[3];
  v421 = v416[4];
  __swift_project_boxed_opaque_existential_1(v416, v420);
  v422 = (*(v421 + 16))(v420, v421);
  v423 = v416[3];
  v424 = v416[4];
  __swift_project_boxed_opaque_existential_1(v416, v423);
  (*(v424 + 24))(&v469, v423, v424);
  v425 = v416[3];
  v426 = v416[4];
  __swift_project_boxed_opaque_existential_1(v416, v425);
  v427 = (*(v426 + 40))(v425, v426);
  v428 = [*(v415 + OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager) cachedSubscription];
  v468 = v469;
  v429 = v416[3];
  v430 = v416[4];
  __swift_project_boxed_opaque_existential_1(v416, v429);
  (*(v430 + 32))(&v469, v429, v430);
  v431 = v469;
  type metadata accessor for FormatSystem();
  v432 = swift_allocObject();
  *(v432 + 64) = v444;
  *(v432 + 72) = v414;
  sub_1D5B7DDE8(&v470, v432 + 80);
  *(v432 + 16) = v419;
  *(v432 + 24) = v422;
  *(v432 + 32) = v468;
  *(v432 + 48) = v427;
  *(v432 + 56) = v428;
  *(v432 + 120) = v431;
  __swift_destroy_boxed_opaque_existential_1(v472);
  return v432;
}

uint64_t sub_1D6C36B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6C36CA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C36BC0(uint64_t a1, uint64_t a2)
{
  sub_1D6C36CA0(0, &qword_1EDF3C0A0, MEMORY[0x1E69D7128], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6C36C54()
{
  result = qword_1EDF1A628;
  if (!qword_1EDF1A628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1A628);
  }

  return result;
}

void sub_1D6C36CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C36D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C36D70()
{
  v1 = 0x79654B6465786966;
  if (*v0 != 1)
  {
    v1 = 0x4B63696D616E7964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79654B61746164;
  }
}

uint64_t sub_1D6C36DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6C38364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C36DF8(uint64_t a1)
{
  v2 = sub_1D6C37FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C36E34(uint64_t a1)
{
  v2 = sub_1D6C37FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedLayoutCacheKey.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D6C380DC(0, &qword_1EDF02950, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C37FE0();
  sub_1D7264B5C();
  v10 = v2[2];
  v11 = *v2;
  v37 = v2[1];
  v38 = v10;
  v12 = v2[2];
  v13 = v2[4];
  v39 = v2[3];
  v40 = v13;
  v14 = *v2;
  v33 = v12;
  v34 = v39;
  v35 = v2[4];
  v36 = v14;
  v31 = v11;
  v32 = v37;
  v30 = 0;
  sub_1D5F97B58(&v36, &v25);
  sub_1D6C38034();
  v15 = v41;
  sub_1D726443C();
  if (v15)
  {
    v28 = v34;
    v29 = v35;
    v26 = v32;
    v27 = v33;
    v25 = v31;
    sub_1D5F97B90(&v25);
  }

  else
  {
    v28 = v34;
    v29 = v35;
    v26 = v32;
    v27 = v33;
    v25 = v31;
    sub_1D5F97B90(&v25);
    v16 = v2[8];
    v22 = v2[7];
    v23 = v16;
    v24 = *(v2 + 18);
    v17 = v2[6];
    v20 = v2[5];
    v21 = v17;
    v19[15] = 1;
    sub_1D6C38088();
    sub_1D726443C();
    type metadata accessor for FeedLayoutCacheKey();
    LOBYTE(v20) = 2;
    type metadata accessor for FeedLayoutCacheDynamicKey();
    sub_1D5BC1248(&qword_1EDF13AC0, type metadata accessor for FeedLayoutCacheDynamicKey);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FeedLayoutCacheKey.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 72);
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v3 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = v3 + 40;
    do
    {

      sub_1D72621EC();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_1D72621EC();
  sub_1D5BE251C(a1, v4);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);
  v12 = *(v1 + 128);
  v13 = *(v1 + 136);
  v14 = *(v1 + 144);
  MEMORY[0x1DA6FC0B0](*(v1 + 80));
  sub_1D5BE7138(v7, v8);
  sub_1D5BE7138(v9, v10);
  if (v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  if (v12 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  MEMORY[0x1DA6FC0E0](*&v16);
  if (v13 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v13;
  }

  MEMORY[0x1DA6FC0E0](*&v17);
  if (v14 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  MEMORY[0x1DA6FC0E0](*&v18);
  v19 = (v1 + *(type metadata accessor for FeedLayoutCacheKey() + 24));
  v20 = *v19;
  v21 = v19[1];
  if (*v19 == 0.0)
  {
    v20 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v20);
  if (v21 == 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v21;
  }

  MEMORY[0x1DA6FC0E0](*&v22);
  sub_1D72621EC();
  v23 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D5BC1248(&qword_1EDF3BFB0, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  v24 = *(v19 + *(v23 + 36));

  return sub_1D5BE71D0(a1, v24);
}

uint64_t FeedLayoutCacheKey.hashValue.getter()
{
  sub_1D7264A0C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 72);
  sub_1D72621EC();
  sub_1D72621EC();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_1D72621EC();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1D72621EC();
  sub_1D5BE251C(v23, v2);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  MEMORY[0x1DA6FC0B0](*(v0 + 80));
  sub_1D5BE7138(v5, v6);
  sub_1D5BE7138(v7, v8);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  if (v11 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v11;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  if (v12 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  MEMORY[0x1DA6FC0E0](*&v16);
  v17 = (v0 + *(type metadata accessor for FeedLayoutCacheKey() + 24));
  v18 = *v17;
  v19 = v17[1];
  if (*v17 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v18);
  if (v19 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = v19;
  }

  MEMORY[0x1DA6FC0E0](*&v20);
  sub_1D72621EC();
  v21 = type metadata accessor for FeedLayoutCacheDynamicKey();
  sub_1D725A19C();
  sub_1D5BC1248(&qword_1EDF3BFB0, MEMORY[0x1E69D7280]);
  sub_1D7261E8C();
  sub_1D7264A2C();
  sub_1D7264A2C();
  sub_1D5BE71D0(v23, *(v17 + *(v21 + 36)));
  return sub_1D7264A5C();
}

uint64_t FeedLayoutCacheKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for FeedLayoutCacheDynamicKey();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C380DC(0, &qword_1EDF03C40, MEMORY[0x1E69E6F48]);
  v27 = v8;
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v24 - v10;
  v12 = type metadata accessor for FeedLayoutCacheKey();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D6C37FE0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v24[0] = v12;
  v24[1] = v4;
  v17 = v26;
  v35 = 0;
  sub_1D6C38140();
  v18 = v27;
  sub_1D726431C();
  v19 = v39;
  *(v15 + 2) = v38;
  *(v15 + 3) = v19;
  *(v15 + 4) = v40;
  v20 = v37;
  *v15 = v36;
  *(v15 + 1) = v20;
  v34 = 1;
  sub_1D6C38194();
  sub_1D726431C();
  v21 = v32;
  *(v15 + 7) = v31;
  *(v15 + 8) = v21;
  *(v15 + 18) = v33;
  v22 = v30;
  *(v15 + 5) = v29;
  *(v15 + 6) = v22;
  v28 = 2;
  sub_1D5BC1248(&qword_1EDF13AB8, type metadata accessor for FeedLayoutCacheDynamicKey);
  sub_1D726431C();
  (*(v17 + 8))(v11, v18);
  sub_1D6C381E8(v7, &v15[*(v24[0] + 24)]);
  sub_1D5C1948C(v15, v25);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1D5BF2EA8(v15);
}

uint64_t sub_1D6C37A40(uint64_t a1, uint64_t a2)
{
  sub_1D7264A5C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    sub_1D7264A0C();
    v5 &= v5 - 1;
    sub_1D72621EC();

    result = sub_1D7264A5C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA6FC0B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C37CC0(uint64_t a1, uint64_t a2)
{
  sub_1D7264A5C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA6FC0B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1D7264A0C();
        sub_1D72621EC();

        result = sub_1D7264A5C();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C37E2C(uint64_t a1, uint64_t a2)
{
  sub_1D7264A5C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    sub_1D7264A0C();
    v5 &= v5 - 1;
    sub_1D72621EC();

    result = sub_1D7264A5C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1DA6FC0B0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D6C37FE0()
{
  result = qword_1EDF14A60;
  if (!qword_1EDF14A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A60);
  }

  return result;
}

unint64_t sub_1D6C38034()
{
  result = qword_1EDF14050;
  if (!qword_1EDF14050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14050);
  }

  return result;
}

unint64_t sub_1D6C38088()
{
  result = qword_1EDF13DD0;
  if (!qword_1EDF13DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DD0);
  }

  return result;
}

void sub_1D6C380DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C37FE0();
    v7 = a3(a1, &type metadata for FeedLayoutCacheKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6C38140()
{
  result = qword_1EDF14048;
  if (!qword_1EDF14048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14048);
  }

  return result;
}

unint64_t sub_1D6C38194()
{
  result = qword_1EDF13DC8;
  if (!qword_1EDF13DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DC8);
  }

  return result;
}

uint64_t sub_1D6C381E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedLayoutCacheDynamicKey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6C38260()
{
  result = qword_1EC893C48;
  if (!qword_1EC893C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C48);
  }

  return result;
}

unint64_t sub_1D6C382B8()
{
  result = qword_1EDF14A50;
  if (!qword_1EDF14A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A50);
  }

  return result;
}

unint64_t sub_1D6C38310()
{
  result = qword_1EDF14A58;
  if (!qword_1EDF14A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14A58);
  }

  return result;
}

uint64_t sub_1D6C38364(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79654B61746164 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79654B6465786966 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B63696D616E7964 && a2 == 0xEA00000000007965)
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

void *sub_1D6C38484(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v90 = a4;
  v91 = a3;
  v93 = a1;
  v7 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v87[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5D54424(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v87[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for FormatContentSlotItemResolution();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v92 = &v87[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v87[-v21];
  v23 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v27 = &v87[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *v4;
  v29 = *v4 >> 60;
  if (v29 > 4)
  {
    if (v29 > 7)
    {
      if (v29 == 8)
      {
        v58 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        if (!v58)
        {
          v94 = 0;
          return sub_1D6E840A8(v93, v91);
        }

        v59 = *(v58 + 16);
        v94 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v60 = sub_1D6E83E74(v93, v59);
        if (!v5)
        {
          goto LABEL_38;
        }

        goto LABEL_32;
      }

      if (v29 == 9)
      {
        return sub_1D6B6214C(v93, v91);
      }

      else if (v28 == 0xA000000000000000)
      {
        v94 = 0xA000000000000000;
        v83 = type metadata accessor for FormatServiceOptions();
        return sub_1D6328DBC(v93, a2 + *(v83 + 40));
      }

      else if (v28 == 0xA000000000000008)
      {
        v94 = 0xA000000000000008;
        return sub_1D6BBDB18(v93, a2, v91, v90);
      }

      else
      {
      }
    }

    else
    {
      if (v29 != 5)
      {
        if (v29 == 6)
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v32 = v91;
          v33 = v91[17];
          sub_1D5FBABE0(v30);

          sub_1D5FA3598(v33, v30, v31, &v94);
          v34 = v94;
          v96 = v94;
          v35 = sub_1D6C38484(v93, a2, v32, v90);
          sub_1D5FBAC60(v30);

          result = sub_1D5FBAC60(v34);
          if (!v5)
          {
            return v35;
          }

          return result;
        }

        v65 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        if (!v65)
        {
          v94 = 0;
          return sub_1D61FDA98(v93, v91);
        }

        v66 = *(v65 + 16);
        v67 = *(v65 + 24);
        v96 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v94 = v66;
        v95 = v67;

        v60 = sub_1D61FD87C(v93, &v94);
        if (!v5)
        {
LABEL_38:
          v68 = v60;

          return v68;
        }

LABEL_32:
      }

      v89 = v5;
      v88 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v47 = v93[2];
      if (v47)
      {
        v48 = *(v16 + 80);
        v49 = *(v16 + 72);
        v91 = ((v48 + 32) & ~v48);
        v50 = v91 + v93;
        v51 = MEMORY[0x1E69E7CC0];
        v93 = v7;
        v52 = v92;
        v90 = v49;
        do
        {
          sub_1D6C3C8E4(v50, v22, type metadata accessor for FormatContentSlotItemResolution);
          sub_1D6C3C8E4(v22, v10, type metadata accessor for FormatContentSlotItemObject.Resolved);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            sub_1D6C3C94C(v10, v14, type metadata accessor for PuzzleStatistic);
            v54 = type metadata accessor for PuzzleStatistic();
            (*(*(v54 - 8) + 56))(v14, 0, 1, v54);
            sub_1D6C3C9D8(v14, sub_1D5D54424);
            sub_1D6C3C94C(v22, v52, type metadata accessor for FormatContentSlotItemResolution);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v94 = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D6997C80(0, v51[2] + 1, 1);
              v52 = v92;
              v51 = v94;
            }

            v57 = v51[2];
            v56 = v51[3];
            if (v57 >= v56 >> 1)
            {
              sub_1D6997C80(v56 > 1, v57 + 1, 1);
              v52 = v92;
              v51 = v94;
            }

            v51[2] = v57 + 1;
            v49 = v90;
            sub_1D6C3C94C(v52, v91 + v51 + v57 * v90, type metadata accessor for FormatContentSlotItemResolution);
          }

          else
          {
            sub_1D6C3C9D8(v22, type metadata accessor for FormatContentSlotItemResolution);
            sub_1D6C3C9D8(v10, type metadata accessor for FormatContentSlotItemObject.Resolved);
            v53 = type metadata accessor for PuzzleStatistic();
            (*(*(v53 - 8) + 56))(v14, 1, 1, v53);
            sub_1D6C3C9D8(v14, sub_1D5D54424);
          }

          v50 += v49;
          --v47;
        }

        while (v47);
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC0];
      }

      v69 = v88;
      if (v88 == 2)
      {
        LOBYTE(v94) = 2;
        v70 = sub_1D693779C(v51);

        return v70;
      }

      else
      {
        v94 = v51;

        v71 = v69 & 1;
        v72 = v89;
        sub_1D6C3A388(&v94, v71);
        if (v72)
        {

          __break(1u);
        }

        else
        {

          return v94;
        }
      }
    }

    return result;
  }

  if (v29 <= 1)
  {
    if (v29)
    {
      v64 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v94 = *v4;

      v46 = sub_1D71E89C0(v93, v64);

      if (v5)
      {
        return result;
      }

      return v46;
    }

    v40 = swift_projectBox();
    sub_1D6C3C8E4(v40, v27, type metadata accessor for FormatSlotItemCountLimit);
    v41 = *(type metadata accessor for FormatServiceOptions() + 40);
    v42 = v93;
    sub_1D6ECB378(v93, a2 + v41);
    if (v5)
    {
      return sub_1D6C3C9D8(v27, type metadata accessor for FormatSlotItemCountLimit);
    }

    v73 = sub_1D6ECADE8(a2 + v41);
    v74 = sub_1D6914308(v73, v42);
    v76 = v75;
    v78 = v77;
    v80 = v79;
    if (v79)
    {
      sub_1D72647AC();
      swift_unknownObjectRetain_n();

      v84 = swift_dynamicCastClass();
      if (!v84)
      {
        swift_unknownObjectRelease();
        v84 = MEMORY[0x1E69E7CC0];
      }

      v85 = *(v84 + 16);

      if (__OFSUB__(v80 >> 1, v78))
      {
        __break(1u);
      }

      else if (v85 == (v80 >> 1) - v78)
      {
        v86 = swift_dynamicCastClass();
        if (!v86)
        {
          swift_unknownObjectRelease();
          v86 = MEMORY[0x1E69E7CC0];
        }

        v82 = v86;
        sub_1D6C3C9D8(v27, type metadata accessor for FormatSlotItemCountLimit);
        swift_unknownObjectRelease();
        return v82;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_1D5EC2C88(v74, v76, v78, v80);
    v82 = v81;
    swift_unknownObjectRelease();
    sub_1D6C3C9D8(v27, type metadata accessor for FormatSlotItemCountLimit);
    return v82;
  }

  if (v29 != 2)
  {
    v37 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    if (v29 == 3)
    {
      v38 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v39 = *(type metadata accessor for FormatServiceOptions() + 40);
      v94 = v37;
      LOBYTE(v95) = v38;
      return FormatSlotExpireContent.expireContent(resolutions:data:)(v93, a2 + v39);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v28, v25);
      *&v87[-32] = v37;
      *&v87[-24] = a2;
      *&v87[-16] = v91;
      v61 = v93;

      sub_1D66B9518(v37);
      sub_1D62ED1F0(sub_1D6C3C9B4, &v87[-48], v61);
      v63 = v62;
      sub_1D66B92B4(v37);
      return v63;
    }
  }

  v43 = *((v28 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v44 = a2 + *(type metadata accessor for FormatServiceOptions() + 40);
  v45 = *(v44 + *(type metadata accessor for FormatTransformData() + 20));
  v94 = v43;
  sub_1D5FBABE0(v43);
  sub_1D6807D3C(&v96);
  if ((sub_1D6184B08(v96, v45) & 1) == 0)
  {
    sub_1D5FBAC60(v43);
  }

  v94 = v43;
  v46 = sub_1D6C38484(v93, a2, v91, v90);
  result = sub_1D5FBAC60(v43);
  if (!v5)
  {
    return v46;
  }

  return result;
}

uint64_t sub_1D6C38EE0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 4)
  {
    if (v3 > 1)
    {
      if (v3 != 2)
      {
        return 0;
      }

      v14 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FBABE0(v14);
      v10 = sub_1D6C38EE0(a1);
      v11 = v14;
      goto LABEL_16;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else if (v3 > 7)
  {
    if (v3 == 8)
    {
      return 1;
    }

    else if (v3 == 9)
    {
      return 3;
    }

    else
    {
      return v2 == 0xA000000000000008;
    }
  }

  else if (v3 == 5)
  {
    return *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != 2;
  }

  else
  {
    if (v3 == 6)
    {
      v4 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v5 = *(v4 + 16);
      v6 = *(v4 + 24);
      v7 = *(a1 + 136);
      sub_1D5FBABE0(v5);

      sub_1D5FA3598(v7, v5, v6, &v14);
      v9 = v14;
      v10 = sub_1D6C38EE0(a1);
      sub_1D5FBAC60(v5);

      v11 = v9;
LABEL_16:
      sub_1D5FBAC60(v11);
      return v10;
    }

    return 0;
  }
}

uint64_t static FormatSlotTransform.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v40 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = v12 >> 60;
  if ((v12 >> 60) > 4)
  {
    if (v14 <= 7)
    {
      if (v14 != 5)
      {
        if (v14 == 6)
        {
          if (v13 >> 60 == 6)
          {
            v15 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v17 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v41[0] = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v41[1] = v15;
            v40[0] = v17;
            v40[1] = v16;
            sub_1D5FBABE0(v13);
            sub_1D5FBABE0(v12);
            sub_1D5FBABE0(v17);

            if (static FormatSlotTransform.== infix(_:_:)(v41, v40))
            {

              v18 = sub_1D634B384(v15, v16);

              sub_1D5FBAC60(v17);

              sub_1D5FBAC60(v12);
              sub_1D5FBAC60(v13);
              if ((v18 & 1) == 0)
              {
                goto LABEL_63;
              }

              goto LABEL_58;
            }

            sub_1D5FBAC60(v17);

LABEL_62:
            sub_1D5FBAC60(v12);
            sub_1D5FBAC60(v13);
LABEL_63:
            v26 = 0;
            return v26 & 1;
          }

LABEL_61:
          sub_1D5FBABE0(v13);
          sub_1D5FBABE0(v12);
          goto LABEL_62;
        }

        if (v13 >> 60 != 7)
        {
          goto LABEL_61;
        }

        v37 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v41[0] = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v40[0] = v37;
        sub_1D5FBABE0(v13);
        sub_1D5FBABE0(v12);
        v28 = _s8NewsFeed20FormatSlotItemFilterO2eeoiySbAC_ACtFZ_0(v41, v40);
        goto LABEL_40;
      }

      if (v13 >> 60 != 5)
      {
        goto LABEL_61;
      }

      v29 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v30 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FBABE0(v13);
      sub_1D5FBABE0(v12);
      sub_1D5FBAC60(v12);
      sub_1D5FBAC60(v13);
      if (v29 == 2)
      {
        if (v30 != 2)
        {
          goto LABEL_63;
        }
      }

      else if (v30 == 2 || ((v30 ^ v29) & 1) != 0)
      {
        goto LABEL_63;
      }

LABEL_58:
      v26 = 1;
      return v26 & 1;
    }

    if (v14 == 8)
    {
      if (v13 >> 60 != 8)
      {
        goto LABEL_61;
      }

      v31 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      if (v31)
      {
        if (!v32)
        {
          goto LABEL_61;
        }

        v33 = sub_1D634CF68(*(v31 + 16), *(v32 + 16));
        sub_1D5FBABE0(v13);
        sub_1D5FBABE0(v12);
        sub_1D5FBAC60(v12);
        sub_1D5FBAC60(v13);
        if ((v33 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_58;
      }

      if (v32)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v14 != 9)
      {
        if (v12 == 0xA000000000000000)
        {
          if (v13 != 0xA000000000000000)
          {
            goto LABEL_61;
          }

          sub_1D5FBAC60(0xA000000000000000);
          v23 = 0xA000000000000000;
        }

        else if (v12 == 0xA000000000000008)
        {
          if (v13 != 0xA000000000000008)
          {
            goto LABEL_61;
          }

          sub_1D5FBAC60(0xA000000000000008);
          v23 = 0xA000000000000008;
        }

        else
        {
          if (v13 != 0xA000000000000010)
          {
            goto LABEL_61;
          }

          sub_1D5FBAC60(0xA000000000000010);
          v23 = 0xA000000000000010;
        }

        goto LABEL_50;
      }

      if (v13 >> 60 != 9)
      {
        goto LABEL_61;
      }
    }

    sub_1D5FBABE0(v13);
    sub_1D5FBABE0(v12);
    sub_1D5FBAC60(v12);
    v23 = v13;
LABEL_50:
    sub_1D5FBAC60(v23);
    v26 = 1;
    return v26 & 1;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      if (v13 >> 60 != 1)
      {
        goto LABEL_61;
      }

      v35 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5FBABE0(v13);
      sub_1D5FBABE0(v12);

      v26 = sub_1D5E205E8(v35, v36);
    }

    else
    {
      if (v13 >> 60)
      {
        goto LABEL_61;
      }

      v24 = swift_projectBox();
      v25 = swift_projectBox();
      sub_1D6C3C8E4(v24, v11, type metadata accessor for FormatSlotItemCountLimit);
      sub_1D6C3C8E4(v25, v7, type metadata accessor for FormatSlotItemCountLimit);
      sub_1D5FBABE0(v13);
      sub_1D5FBABE0(v12);
      v26 = _s8NewsFeed24FormatSlotItemCountLimitO2eeoiySbAC_ACtFZ_0(v11, v7);
      sub_1D6C3C9D8(v7, type metadata accessor for FormatSlotItemCountLimit);
      sub_1D6C3C9D8(v11, type metadata accessor for FormatSlotItemCountLimit);
    }

    goto LABEL_41;
  }

  if (v14 == 2)
  {
    if (v13 >> 60 != 2)
    {
      goto LABEL_61;
    }

    v27 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v41[0] = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v40[0] = v27;
    sub_1D5FBABE0(v13);
    sub_1D5FBABE0(v12);
    v28 = static FormatSlotTransform.== infix(_:_:)(v41, v40);
  }

  else
  {
    if (v14 == 3)
    {
      if (v13 >> 60 != 3)
      {
        goto LABEL_61;
      }

      v19 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v21 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v22 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5FBABE0(v13);
      sub_1D5FBABE0(v12);
      sub_1D5FBAC60(v12);
      sub_1D5FBAC60(v13);
      if (v20)
      {
        if ((v22 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v19 == v21)
        {
          v38 = v22;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_58;
    }

    if (v13 >> 60 != 4)
    {
      goto LABEL_61;
    }

    v34 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v41[0] = *((v12 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v40[0] = v34;
    sub_1D5FBABE0(v13);
    sub_1D5FBABE0(v12);
    v28 = _s8NewsFeed23FormatSlotItemTagFilterO2eeoiySbAC_ACtFZ_0(v41, v40);
  }

LABEL_40:
  v26 = v28;
LABEL_41:
  sub_1D5FBAC60(v12);
  sub_1D5FBAC60(v13);
  return v26 & 1;
}

uint64_t FormatSlotTransform.identifier.getter()
{
  v1 = type metadata accessor for FormatSlotItemCountLimit();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *v0 >> 60;
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        v23 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v60 = 0x2D7963696C6F70;
        v61 = 0xE700000000000000;
        v62 = v23;
        v24 = sub_1D5FBABE0(v23);
        v25 = FormatSlotTransform.identifier.getter(v24);
        MEMORY[0x1DA6F9910](v25);

        sub_1D5FBAC60(v23);
      }

      else
      {
        if (v6 == 3)
        {
          return 0x6F43657269707865;
        }

        v31 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v60 = 0x746C69662D676174;
        v61 = 0xEB000000002D7265;
        v62 = v31;
        v32 = sub_1D66B9518(v31);
        v33 = sub_1D71445D4(v32);
        MEMORY[0x1DA6F9910](v33);

        sub_1D66B92B4(v31);
      }

      return v60;
    }

    if (!v6)
    {
      v20 = swift_projectBox();
      sub_1D6C3C8E4(v20, v4, type metadata accessor for FormatSlotItemCountLimit);
      v60 = 0x2D74696D696CLL;
      v61 = 0xE600000000000000;
      v21 = FormatSlotItemCountLimit.identifier.getter();
      MEMORY[0x1DA6F9910](v21);

      v22 = v60;
      sub_1D6C3C9D8(v4, type metadata accessor for FormatSlotItemCountLimit);
      return v22;
    }

    v34 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v35 = v34[2];
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v37 = sub_1D5E23B58(v34[2], 0);
      v38 = sub_1D5E2A8B4(&v60, v37 + 4, v35, v34);

      sub_1D5B87E38();
      if (v38 != v35)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v39 = v37[2];
      if (v39)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
      v39 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v39)
      {
LABEL_28:
        v60 = v36;
        sub_1D5BFC364(0, v39, 0);
        v40 = 32;
        v41 = v60;
        do
        {
          LOBYTE(v62) = *(v37 + v40);
          v42 = FormatItemTrait.rawValue.getter();
          v60 = v41;
          v45 = *(v41 + 2);
          v44 = *(v41 + 3);
          if (v45 >= v44 >> 1)
          {
            v47 = v42;
            v48 = v43;
            sub_1D5BFC364((v44 > 1), v45 + 1, 1);
            v43 = v48;
            v42 = v47;
            v41 = v60;
          }

          *(v41 + 2) = v45 + 1;
          v46 = &v41[16 * v45];
          *(v46 + 4) = v42;
          *(v46 + 5) = v43;
          ++v40;
          --v39;
        }

        while (v39);

        goto LABEL_46;
      }
    }

    v41 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v60 = v41;

    sub_1D5F81CCC(&v60);

    sub_1D5BBE0A8();
    sub_1D5BB0AB8();
    v54 = sub_1D7261F3C();
    v56 = v55;

    v60 = 0x2D7265746C6966;
    v61 = 0xE700000000000000;
    MEMORY[0x1DA6F9910](v54, v56);
LABEL_51:

    return v60;
  }

  if (v6 <= 7)
  {
    if (v6 == 5)
    {
      v26 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1D7263D4C();

      v60 = 0xD000000000000011;
      v61 = 0x80000001D73EE220;
      if (v26 == 2)
      {
        v27 = 0xE900000000000079;
        v28 = 0x74706D652D6E6F6ELL;
      }

      else
      {
        v62 = 0x2D726564726FLL;
        v63 = 0xE600000000000000;
        v53 = "greatest-to-smallest";
        if ((v26 & 1) == 0)
        {
          v53 = "smallest-to-greatest";
        }

        MEMORY[0x1DA6F9910](0xD000000000000014, (v53 - 32) | 0x8000000000000000);

        v28 = v62;
        v27 = v63;
      }

      MEMORY[0x1DA6F9910](v28, v27);
      goto LABEL_51;
    }

    if (v6 == 6)
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *(v7 + 16);
      if (v9)
      {
        sub_1D5FBABE0(*((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10));
        v60 = MEMORY[0x1E69E7CC0];
        swift_bridgeObjectRetain_n();
        v10 = sub_1D5BFC364(0, v9, 0);
        v11 = 48;
        v12 = v60;
        do
        {
          v62 = *(v7 + v11);
          v10 = FormatSlotTransform.identifier.getter(v10);
          v60 = v12;
          v15 = *(v12 + 2);
          v14 = *(v12 + 3);
          if (v15 >= v14 >> 1)
          {
            v17 = v10;
            v18 = v13;
            sub_1D5BFC364((v14 > 1), v15 + 1, 1);
            v13 = v18;
            v10 = v17;
            v12 = v60;
          }

          *(v12 + 2) = v15 + 1;
          v16 = &v12[16 * v15];
          *(v16 + 4) = v10;
          *(v16 + 5) = v13;
          v11 += 24;
          --v9;
        }

        while (v9);
      }

      else
      {
        sub_1D5FBABE0(*((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10));

        v12 = MEMORY[0x1E69E7CC0];
      }

      v60 = v12;

      sub_1D5F81CCC(&v60);

      sub_1D5BBE0A8();
      sub_1D5BB0AB8();
      v57 = sub_1D7261F3C();
      v59 = v58;

      v60 = 0x726F7463656C6573;
      v61 = 0xE90000000000002DLL;
      MEMORY[0x1DA6F9910](v57, v59);

      sub_1D5FBAC60(v8);
      goto LABEL_51;
    }

    v49 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v60 = 0x2D7265746C6966;
    v61 = 0xE700000000000000;
    if (v49)
    {
      v50 = *(v49 + 16);
      v51 = *(v49 + 24);
      v62 = 0x726F7463656C6573;
      v63 = 0xE90000000000002DLL;

      MEMORY[0x1DA6F9910](v50, v51);

      v30 = v62;
    }

    else
    {
      v30 = 0x746174536E656573;
    }

    goto LABEL_50;
  }

  if (v6 == 8)
  {
    v29 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v60 = 0x2D74726F73;
    v61 = 0xE500000000000000;
    v62 = v29;

    v30 = FormatSlotItemSort.identifier.getter();
LABEL_50:
    MEMORY[0x1DA6F9910](v30);

    goto LABEL_51;
  }

  if (v6 == 9)
  {
    return 0xD000000000000014;
  }

  v52 = 0x6C616E6F73726570;
  if (v5 != 0xA000000000000008)
  {
    v52 = 0x7974706D65;
  }

  if (v5 == 0xA000000000000000)
  {
    return 0x657571696E75;
  }

  else
  {
    return v52;
  }
}

uint64_t FormatSlotTransform.description.getter()
{
  v1 = type metadata accessor for FormatSlotItemCountLimit();
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *v0 >> 60;
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v14 = swift_projectBox();
        sub_1D6C3C8E4(v14, v5, type metadata accessor for FormatSlotItemCountLimit);
        v32 = 0x282074696D696CLL;
        v33 = 0xE700000000000000;
        v15 = FormatSlotItemCountLimit.description.getter();
        MEMORY[0x1DA6F9910](v15);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v16 = v32;
        sub_1D6C3C9D8(v5, type metadata accessor for FormatSlotItemCountLimit);
        return v16;
      }

      v32 = 0x2065726975716572;
      v33 = 0xE900000000000028;
      sub_1D66B93C0();

      v24 = sub_1D7262B1C();
      v26 = v25;

      MEMORY[0x1DA6F9910](v24, v26);
    }

    else
    {
      if (v7 == 2)
      {
        v18 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v32 = 0x28207963696C6F70;
        v33 = 0xE800000000000000;
        v30 = v18;
        v19 = sub_1D5FBABE0(v18);
        v20 = FormatSlotTransform.description.getter(v19);
        MEMORY[0x1DA6F9910](v20);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        sub_1D5FBAC60(v18);
        return v32;
      }

      if (v7 != 3)
      {
        v23 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1D66B9518(v23);
        MEMORY[0x1DA6F9910](0x746C696620676174, 0xEC00000028207265);
        v30 = v23;
        sub_1D7263F9C();
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        sub_1D66B92B4(v23);
        return v32;
      }

      v10 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1D7263D4C();

      v32 = 0xD000000000000010;
      v33 = 0x80000001D73EE2A0;
      if (v11)
      {
        v12 = 0xE500000000000000;
        v13 = 0x73626F6E6BLL;
      }

      else
      {
        v30 = 0;
        v31 = 0xE000000000000000;
        v29[1] = v10;
        sub_1D68B0F3C();
        sub_1D7263F9C();
        v13 = v30;
        v12 = v31;
      }

      MEMORY[0x1DA6F9910](v13, v12);
    }

    goto LABEL_31;
  }

  if (v7 <= 7)
  {
    if (v7 != 5)
    {
      if (v7 == 6)
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v9 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v32 = 0;
        v33 = 0xE000000000000000;
        sub_1D5FBABE0(v8);

        MEMORY[0x1DA6F9910](0x726F7463656C6573, 0xEA00000000002820);
        v30 = v8;
        v31 = v9;
        sub_1D6C3C6D8();
        sub_1D7263F9C();
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        sub_1D5FBAC60(v8);

        return v32;
      }

      v27 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = 0;
      v33 = 0xE000000000000000;

      MEMORY[0x1DA6F9910](0x207265746C6966, 0xE700000000000000);
      v30 = v27;
LABEL_22:
      sub_1D7263F9C();

      return v32;
    }

    v21 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73EE280);
    LOBYTE(v30) = v21;
    sub_1D7263F9C();
LABEL_31:
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v32;
  }

  if (v7 == 8)
  {
    v22 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v32 = 0;
    v33 = 0xE000000000000000;

    MEMORY[0x1DA6F9910](0x2074726F73, 0xE500000000000000);
    v30 = v22;
    goto LABEL_22;
  }

  if (v7 == 9)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    MEMORY[0x1DA6F9910](0x65746164696C6176, 0xE900000000000020, v3);
    sub_1D7263F9C();
    return v32;
  }

  v28 = 0x6C616E6F73726570;
  if (v6 != 0xA000000000000008)
  {
    v28 = 0x7974706D65;
  }

  if (v6 == 0xA000000000000000)
  {
    return 0x657571696E75;
  }

  else
  {
    return v28;
  }
}

void sub_1D6C3A388(void **a1, char a2)
{
  v4 = *(type metadata accessor for FormatContentSlotItemResolution() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D62FFB94(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_1D6C3A440(v7, a2 & 1);
  *a1 = v5;
}

void sub_1D6C3A440(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v5 = sub_1D726449C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FormatContentSlotItemResolution();
        v8 = sub_1D726276C();
        *(v8 + 16) = v7;
      }

      v9 = *(type metadata accessor for FormatContentSlotItemResolution() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_1D6C3AAE0(v10, v11, a1, v6, a2 & 1);
      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1D6C3A578(0, v4, 1, a1, a2 & 1);
  }
}

void sub_1D6C3A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v70 = a5;
  v9 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v9, v10);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v59 - v14;
  v69 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v69, v16);
  v68 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v67 = &v59 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v72 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v74 = &v59 - v26;
  v78 = type metadata accessor for FormatContentSlotItemResolution();
  MEMORY[0x1EEE9AC00](v78, v27);
  v77 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v59 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v37 = &v59 - v36;
  v61 = a2;
  if (a3 != a2)
  {
    v38 = *a4;
    v39 = *(v35 + 72);
    v40 = *a4 + v39 * (a3 - 1);
    v75 = -v39;
    v76 = v38;
    v41 = a1 - a3;
    v60 = v39;
    v42 = v38 + v39 * a3;
    v66 = v9;
    v71 = v15;
LABEL_5:
    v64 = v40;
    v65 = a3;
    v62 = v42;
    v63 = v41;
    while (1)
    {
      sub_1D6C3C8E4(v42, v37, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6C3C8E4(v40, v32, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6C3C8E4(v37, v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        break;
      }

      v43 = v15;
      v44 = v9;
      v45 = v72;
      sub_1D6C3C94C(v43, v72, type metadata accessor for PuzzleStatistic);
      v46 = v45;
      v47 = v74;
      sub_1D6C3C94C(v46, v74, type metadata accessor for PuzzleStatistic);
      v48 = v73;
      sub_1D6C3C8E4(v32, v73, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_1D6C3C9D8(v48, type metadata accessor for FormatContentSlotItemObject.Resolved);
        sub_1D6C3C9D8(v47, type metadata accessor for PuzzleStatistic);
        v9 = v44;
        v15 = v71;
        goto LABEL_12;
      }

      v49 = v68;
      sub_1D6C3C94C(v48, v68, type metadata accessor for PuzzleStatistic);
      v50 = v49;
      v51 = v67;
      sub_1D6C3C94C(v50, v67, type metadata accessor for PuzzleStatistic);
      v52 = *(v69 + 20);
      if (v70)
      {
        v53 = v74;
        v54 = v74 + v52;
        v55 = v51 + v52;
      }

      else
      {
        v54 = v51 + v52;
        v53 = v74;
        v55 = v74 + v52;
      }

      v56 = _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(v54, v55);
      sub_1D6C3C9D8(v51, type metadata accessor for PuzzleStatistic);
      sub_1D6C3C9D8(v53, type metadata accessor for PuzzleStatistic);
      sub_1D6C3C9D8(v32, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6C3C9D8(v37, type metadata accessor for FormatContentSlotItemResolution);
      v9 = v66;
      v15 = v71;
      if (v56)
      {
LABEL_4:
        a3 = v65 + 1;
        v40 = v64 + v60;
        v41 = v63 - 1;
        v42 = v62 + v60;
        if (v65 + 1 == v61)
        {
          return;
        }

        goto LABEL_5;
      }

LABEL_15:
      if (!v76)
      {
        __break(1u);
        return;
      }

      v57 = v77;
      sub_1D6C3C94C(v42, v77, type metadata accessor for FormatContentSlotItemResolution);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D6C3C94C(v57, v40, type metadata accessor for FormatContentSlotItemResolution);
      v40 += v75;
      v42 += v75;
      if (__CFADD__(v41++, 1))
      {
        goto LABEL_4;
      }
    }

    sub_1D6C3C9D8(v15, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_12:
    sub_1D6C3C9D8(v32, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6C3C9D8(v37, type metadata accessor for FormatContentSlotItemResolution);
    goto LABEL_15;
  }
}

void sub_1D6C3AAE0(int64_t *a1, uint64_t a2, int64_t a3, int64_t a4, int a5)
{
  v6 = v5;
  v215 = a5;
  v191 = a1;
  v9 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v186 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v186 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v205 = &v186 - v23;
  v213 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v213, v24);
  v212 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v211 = &v186 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v218 = &v186 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v217 = &v186 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v194 = &v186 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v193 = &v186 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v197 = &v186 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v186 - v46;
  v219 = type metadata accessor for FormatContentSlotItemResolution();
  v206 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v48);
  v198 = &v186 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v222 = &v186 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v223 = &v186 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v224 = &v186 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v186 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v208 = &v186 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v72 = *(a3 + 8);
  v209 = a3;
  if (v72 < 1)
  {
    v75 = MEMORY[0x1E69E7CC0];
LABEL_117:
    a4 = *v191;
    if (!*v191)
    {
      goto LABEL_157;
    }

    v12 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_151;
    }

    v181 = v12;
LABEL_120:
    v225 = v181;
    v12 = *(v181 + 2);
    if (v12 >= 2)
    {
      do
      {
        v182 = *a3;
        if (!*a3)
        {
          goto LABEL_155;
        }

        v183 = *&v181[16 * v12];
        v184 = v181;
        a3 = *&v181[16 * v12 + 24];
        sub_1D6C3BBF4(v182 + *(v206 + 72) * v183, v182 + *(v206 + 72) * *&v181[16 * v12 + 16], v182 + *(v206 + 72) * a3, a4, v215 & 1);
        if (v6)
        {
          break;
        }

        if (a3 < v183)
        {
          goto LABEL_144;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_1D62FF50C(v184);
        }

        if (v12 - 2 >= *(v184 + 2))
        {
          goto LABEL_145;
        }

        v185 = &v184[16 * v12];
        *v185 = v183;
        *(v185 + 1) = a3;
        v225 = v184;
        sub_1D62FF480(v12 - 1);
        v181 = v225;
        v12 = *(v225 + 2);
        a3 = v209;
      }

      while (v12 > 1);
    }

LABEL_128:

    return;
  }

  v73 = v72;
  v187 = &v186 - v70;
  v188 = v71;
  v74 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  v190 = a4;
  v214 = v9;
  v216 = v12;
  v196 = v20;
  v200 = v47;
  v207 = v62;
  while (1)
  {
    v76 = v74;
    v77 = v74 + 1;
    v199 = v75;
    if (v77 >= v73)
    {
      v103 = v77;
    }

    else
    {
      v210 = v73;
      v192 = v6;
      v6 = v9;
      v78 = *a3;
      v79 = *(v206 + 72);
      v80 = v78 + v79 * v77;
      v81 = v187;
      sub_1D6C3C8E4(v80, v187, type metadata accessor for FormatContentSlotItemResolution);
      v204 = v78;
      v82 = v78 + v79 * v76;
      v83 = v188;
      sub_1D6C3C8E4(v82, v188, type metadata accessor for FormatContentSlotItemResolution);
      v84 = v192;
      LODWORD(v221) = sub_1D69384B4(v81, v83, v215 & 1);
      v192 = v84;
      if (v84)
      {
        sub_1D6C3C9D8(v83, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6C3C9D8(v81, type metadata accessor for FormatContentSlotItemResolution);

        return;
      }

      sub_1D6C3C9D8(v83, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6C3C9D8(v81, type metadata accessor for FormatContentSlotItemResolution);
      v189 = v76;
      v85 = v76 + 2;
      v220 = v79;
      v12 = v204 + v79 * (v76 + 2);
      a3 = v209;
      do
      {
        if (v210 == v85)
        {
          v103 = v210;
          goto LABEL_21;
        }

        v88 = v208;
        sub_1D6C3C8E4(v12, v208, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6C3C8E4(v80, v62, type metadata accessor for FormatContentSlotItemResolution);
        v89 = v205;
        sub_1D6C3C8E4(v88, v205, type metadata accessor for FormatContentSlotItemObject.Resolved);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v90 = v62;
          v91 = v197;
          sub_1D6C3C94C(v89, v197, type metadata accessor for PuzzleStatistic);
          v92 = v91;
          v93 = v200;
          sub_1D6C3C94C(v92, v200, type metadata accessor for PuzzleStatistic);
          v94 = v196;
          sub_1D6C3C8E4(v90, v196, type metadata accessor for FormatContentSlotItemObject.Resolved);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v87 = v220;
          if (EnumCaseMultiPayload == 6)
          {
            v96 = v194;
            sub_1D6C3C94C(v94, v194, type metadata accessor for PuzzleStatistic);
            v97 = v96;
            v98 = v193;
            sub_1D6C3C94C(v97, v193, type metadata accessor for PuzzleStatistic);
            v99 = *(v213 + 20);
            if (v215)
            {
              v100 = v200;
              v101 = &v200[v99];
              v102 = v98 + v99;
            }

            else
            {
              v101 = v98 + v99;
              v100 = v200;
              v102 = &v200[v99];
            }

            v86 = _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(v101, v102);
            sub_1D6C3C9D8(v98, type metadata accessor for PuzzleStatistic);
            sub_1D6C3C9D8(v100, type metadata accessor for PuzzleStatistic);
          }

          else
          {
            sub_1D6C3C9D8(v94, type metadata accessor for FormatContentSlotItemObject.Resolved);
            sub_1D6C3C9D8(v93, type metadata accessor for PuzzleStatistic);
            v86 = 0;
          }

          v62 = v207;
          a3 = v209;
        }

        else
        {
          sub_1D6C3C9D8(v89, type metadata accessor for FormatContentSlotItemObject.Resolved);
          v86 = 0;
          v87 = v220;
        }

        sub_1D6C3C9D8(v62, type metadata accessor for FormatContentSlotItemResolution);
        sub_1D6C3C9D8(v208, type metadata accessor for FormatContentSlotItemResolution);
        ++v85;
        v12 += v87;
        v80 += v87;
        v6 = v214;
      }

      while (((v221 ^ v86) & 1) != 0);
      v103 = v85 - 1;
LABEL_21:
      a4 = v190;
      v76 = v189;
      if ((v221 & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v103 < v189)
      {
        goto LABEL_150;
      }

      if (v189 < v103)
      {
        v12 = v220 * (v103 - 1);
        v104 = v103 * v220;
        v210 = v103;
        v105 = v189;
        v106 = v189 * v220;
        v9 = v6;
        v107 = v220;
        do
        {
          if (v105 != --v103)
          {
            v108 = *v209;
            if (!*v209)
            {
              goto LABEL_154;
            }

            sub_1D6C3C94C(v108 + v106, v198, type metadata accessor for FormatContentSlotItemResolution);
            if (v106 < v12 || v108 + v106 >= (v108 + v104))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v106 != v12)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1D6C3C94C(v198, v108 + v12, type metadata accessor for FormatContentSlotItemResolution);
            v9 = v214;
          }

          ++v105;
          v12 -= v107;
          v104 -= v107;
          v106 += v107;
        }

        while (v105 < v103);
        v6 = v192;
        a3 = v209;
        v103 = v210;
        a4 = v190;
        v62 = v207;
        v76 = v189;
      }

      else
      {
LABEL_34:
        v9 = v6;
        v6 = v192;
      }
    }

    v109 = *(a3 + 8);
    if (v103 < v109)
    {
      if (__OFSUB__(v103, v76))
      {
        goto LABEL_147;
      }

      if (v103 - v76 < a4)
      {
        if (__OFADD__(v76, a4))
        {
          goto LABEL_148;
        }

        if (v76 + a4 >= v109)
        {
          a4 = *(a3 + 8);
        }

        else
        {
          a4 += v76;
        }

        if (a4 < v76)
        {
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          v181 = sub_1D62FF50C(v12);
          goto LABEL_120;
        }

        if (v103 != a4)
        {
          break;
        }
      }
    }

    a4 = v103;
    if (v103 < v76)
    {
      goto LABEL_146;
    }

LABEL_46:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v201 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      v75 = v199;
    }

    else
    {
      v75 = sub_1D698BA94(0, *(v199 + 2) + 1, 1, v199);
    }

    v112 = *(v75 + 2);
    v111 = *(v75 + 3);
    v12 = v112 + 1;
    if (v112 >= v111 >> 1)
    {
      v75 = sub_1D698BA94((v111 > 1), v112 + 1, 1, v75);
    }

    *(v75 + 2) = v12;
    v113 = &v75[16 * v112];
    v114 = v201;
    *(v113 + 4) = v76;
    *(v113 + 5) = v114;
    if (!*v191)
    {
      goto LABEL_156;
    }

    if (v112)
    {
      a3 = *v191;
      while (1)
      {
        a4 = v12 - 1;
        if (v12 >= 4)
        {
          break;
        }

        if (v12 == 3)
        {
          v115 = *(v75 + 4);
          v116 = *(v75 + 5);
          v125 = __OFSUB__(v116, v115);
          v117 = v116 - v115;
          v118 = v125;
LABEL_66:
          if (v118)
          {
            goto LABEL_135;
          }

          v131 = &v75[16 * v12];
          v133 = *v131;
          v132 = *(v131 + 1);
          v134 = __OFSUB__(v132, v133);
          v135 = v132 - v133;
          v136 = v134;
          if (v134)
          {
            goto LABEL_138;
          }

          v137 = &v75[16 * a4 + 32];
          v139 = *v137;
          v138 = *(v137 + 1);
          v125 = __OFSUB__(v138, v139);
          v140 = v138 - v139;
          if (v125)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v135, v140))
          {
            goto LABEL_142;
          }

          if (v135 + v140 >= v117)
          {
            if (v117 < v140)
            {
              a4 = v12 - 2;
            }

            goto LABEL_87;
          }

          goto LABEL_80;
        }

        v141 = &v75[16 * v12];
        v143 = *v141;
        v142 = *(v141 + 1);
        v125 = __OFSUB__(v142, v143);
        v135 = v142 - v143;
        v136 = v125;
LABEL_80:
        if (v136)
        {
          goto LABEL_137;
        }

        v144 = &v75[16 * a4];
        v146 = *(v144 + 4);
        v145 = *(v144 + 5);
        v125 = __OFSUB__(v145, v146);
        v147 = v145 - v146;
        if (v125)
        {
          goto LABEL_140;
        }

        if (v147 < v135)
        {
          goto LABEL_3;
        }

LABEL_87:
        v152 = a4 - 1;
        if (a4 - 1 >= v12)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v209)
        {
          goto LABEL_153;
        }

        v153 = v75;
        v12 = *&v75[16 * v152 + 32];
        v154 = *&v75[16 * a4 + 40];
        sub_1D6C3BBF4(*v209 + *(v206 + 72) * v12, *v209 + *(v206 + 72) * *&v75[16 * a4 + 32], *v209 + *(v206 + 72) * v154, a3, v215 & 1);
        if (v6)
        {
          goto LABEL_128;
        }

        if (v154 < v12)
        {
          goto LABEL_131;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v155 = v153;
        }

        else
        {
          v155 = sub_1D62FF50C(v153);
        }

        v62 = v207;
        if (v152 >= *(v155 + 2))
        {
          goto LABEL_132;
        }

        v156 = &v155[16 * v152];
        *(v156 + 4) = v12;
        *(v156 + 5) = v154;
        v225 = v155;
        sub_1D62FF480(a4);
        v75 = v225;
        v12 = *(v225 + 2);
        if (v12 <= 1)
        {
          goto LABEL_3;
        }
      }

      v119 = &v75[16 * v12 + 32];
      v120 = *(v119 - 64);
      v121 = *(v119 - 56);
      v125 = __OFSUB__(v121, v120);
      v122 = v121 - v120;
      if (v125)
      {
        goto LABEL_133;
      }

      v124 = *(v119 - 48);
      v123 = *(v119 - 40);
      v125 = __OFSUB__(v123, v124);
      v117 = v123 - v124;
      v118 = v125;
      if (v125)
      {
        goto LABEL_134;
      }

      v126 = &v75[16 * v12];
      v128 = *v126;
      v127 = *(v126 + 1);
      v125 = __OFSUB__(v127, v128);
      v129 = v127 - v128;
      if (v125)
      {
        goto LABEL_136;
      }

      v125 = __OFADD__(v117, v129);
      v130 = v117 + v129;
      if (v125)
      {
        goto LABEL_139;
      }

      if (v130 >= v122)
      {
        v148 = &v75[16 * a4 + 32];
        v150 = *v148;
        v149 = *(v148 + 1);
        v125 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v125)
        {
          goto LABEL_143;
        }

        if (v117 < v151)
        {
          a4 = v12 - 2;
        }

        goto LABEL_87;
      }

      goto LABEL_66;
    }

LABEL_3:
    a3 = v209;
    v73 = v209[1];
    v74 = v201;
    a4 = v190;
    if (v201 >= v73)
    {
      goto LABEL_117;
    }
  }

  v192 = v6;
  v157 = *a3;
  v158 = *(v206 + 72);
  v12 = *a3 + v158 * (v103 - 1);
  v220 = -v158;
  v189 = v76;
  a3 = v76 - v103;
  v195 = v158;
  v221 = v157;
  v159 = v157 + v103 * v158;
  v160 = v223;
  v201 = a4;
LABEL_99:
  v210 = v103;
  v202 = v159;
  v161 = v159;
  v203 = a3;
  v204 = v12;
  while (1)
  {
    v162 = v16;
    v163 = v9;
    v164 = v224;
    sub_1D6C3C8E4(v161, v224, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6C3C8E4(v12, v160, type metadata accessor for FormatContentSlotItemResolution);
    v165 = v164;
    v9 = v163;
    v16 = v162;
    sub_1D6C3C8E4(v165, v162, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1D6C3C9D8(v162, type metadata accessor for FormatContentSlotItemObject.Resolved);
LABEL_106:
      sub_1D6C3C9D8(v160, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6C3C9D8(v224, type metadata accessor for FormatContentSlotItemResolution);
      goto LABEL_109;
    }

    v166 = v160;
    v167 = v218;
    sub_1D6C3C94C(v162, v218, type metadata accessor for PuzzleStatistic);
    v168 = v167;
    v169 = v217;
    sub_1D6C3C94C(v168, v217, type metadata accessor for PuzzleStatistic);
    v170 = v216;
    sub_1D6C3C8E4(v166, v216, type metadata accessor for FormatContentSlotItemObject.Resolved);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_1D6C3C9D8(v170, type metadata accessor for FormatContentSlotItemObject.Resolved);
      sub_1D6C3C9D8(v169, type metadata accessor for PuzzleStatistic);
      v16 = v162;
      v160 = v223;
      goto LABEL_106;
    }

    v171 = v212;
    sub_1D6C3C94C(v170, v212, type metadata accessor for PuzzleStatistic);
    v172 = v171;
    v173 = v211;
    sub_1D6C3C94C(v172, v211, type metadata accessor for PuzzleStatistic);
    v174 = *(v213 + 20);
    if (v215)
    {
      v175 = v169 + v174;
      v176 = v173 + v174;
    }

    else
    {
      v175 = v173 + v174;
      v176 = v169 + v174;
    }

    v177 = _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(v175, v176);
    v16 = v162;
    sub_1D6C3C9D8(v173, type metadata accessor for PuzzleStatistic);
    sub_1D6C3C9D8(v169, type metadata accessor for PuzzleStatistic);
    v160 = v223;
    sub_1D6C3C9D8(v223, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6C3C9D8(v224, type metadata accessor for FormatContentSlotItemResolution);
    v9 = v214;
    if (v177)
    {
LABEL_98:
      v103 = v210 + 1;
      v12 = v204 + v195;
      a3 = v203 - 1;
      v159 = v202 + v195;
      a4 = v201;
      if (v210 + 1 != v201)
      {
        goto LABEL_99;
      }

      v6 = v192;
      v62 = v207;
      v76 = v189;
      if (v201 < v189)
      {
        goto LABEL_146;
      }

      goto LABEL_46;
    }

LABEL_109:
    if (!v221)
    {
      break;
    }

    v178 = v222;
    sub_1D6C3C94C(v161, v222, type metadata accessor for FormatContentSlotItemResolution);
    swift_arrayInitWithTakeFrontToBack();
    v179 = v178;
    v160 = v223;
    sub_1D6C3C94C(v179, v12, type metadata accessor for FormatContentSlotItemResolution);
    v12 += v220;
    v161 += v220;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_98;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

void sub_1D6C3BBF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v116 = a5;
  v121 = a4;
  v125 = a3;
  v7 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v7, v8);
  v114 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v120 = &v108 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v123 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v124 = &v108 - v18;
  v115 = type metadata accessor for PuzzleStatistic();
  MEMORY[0x1EEE9AC00](v115, v19);
  v112 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v111 = &v108 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v113 = &v108 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v108 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v118 = &v108 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v117 = &v108 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v119 = &v108 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v108 - v42;
  v127 = type metadata accessor for FormatContentSlotItemResolution();
  MEMORY[0x1EEE9AC00](v127, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  v126 = &v108 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v108 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v56 = &v108 - v55;
  v58 = *(v57 + 72);
  if (!v58)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_79;
  }

  v59 = v125 - a2;
  if (v125 - a2 == 0x8000000000000000 && v58 == -1)
  {
    goto LABEL_80;
  }

  v60 = (a2 - a1) / v58;
  v130 = a1;
  v61 = v121;
  v129 = v121;
  v122 = v7;
  if (v60 >= v59 / v58)
  {
    v64 = v59 / v58 * v58;
    v124 = v54;
    if (v121 < a2 || a2 + v64 <= v121)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v121 == a2)
      {
LABEL_47:
        v83 = v61 + v64;
        if (v64 < 1)
        {
          goto LABEL_76;
        }

        v84 = -v58;
        v85 = v61 + v64;
        v86 = v125;
        v123 = v84;
        while (1)
        {
          v109 = v83;
          v87 = a2;
          a2 += v84;
          v118 = a2;
          v119 = v87;
          while (1)
          {
            if (v87 <= a1)
            {
              v130 = v87;
              v128 = v109;
              goto LABEL_77;
            }

            v88 = v30;
            v89 = v86;
            v117 = v83;
            v125 = v85 + v84;
            v90 = v126;
            sub_1D6C3C8E4(v85 + v84, v126, type metadata accessor for FormatContentSlotItemResolution);
            v91 = a2;
            v92 = v124;
            sub_1D6C3C8E4(v91, v124, type metadata accessor for FormatContentSlotItemResolution);
            v93 = v90;
            v94 = v120;
            sub_1D6C3C8E4(v93, v120, type metadata accessor for FormatContentSlotItemObject.Resolved);
            if (swift_getEnumCaseMultiPayload() != 6)
            {
              v105 = type metadata accessor for FormatContentSlotItemObject.Resolved;
              v106 = v94;
LABEL_60:
              sub_1D6C3C9D8(v106, v105);
              v107 = 1;
              a2 = v118;
              v102 = v125;
              goto LABEL_63;
            }

            v95 = v94;
            v96 = v113;
            sub_1D6C3C94C(v95, v113, type metadata accessor for PuzzleStatistic);
            sub_1D6C3C94C(v96, v30, type metadata accessor for PuzzleStatistic);
            v97 = v114;
            sub_1D6C3C8E4(v92, v114, type metadata accessor for FormatContentSlotItemObject.Resolved);
            if (swift_getEnumCaseMultiPayload() != 6)
            {
              sub_1D6C3C9D8(v97, type metadata accessor for FormatContentSlotItemObject.Resolved);
              v105 = type metadata accessor for PuzzleStatistic;
              v106 = v30;
              goto LABEL_60;
            }

            v98 = v97;
            v99 = v112;
            sub_1D6C3C94C(v98, v112, type metadata accessor for PuzzleStatistic);
            v100 = v111;
            sub_1D6C3C94C(v99, v111, type metadata accessor for PuzzleStatistic);
            v101 = *(v115 + 20);
            a2 = v118;
            v102 = v125;
            if (v116)
            {
              v103 = v88 + v101;
              v104 = v100 + v101;
            }

            else
            {
              v103 = v100 + v101;
              v104 = v88 + v101;
            }

            v110 = _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(v103, v104);
            sub_1D6C3C9D8(v100, type metadata accessor for PuzzleStatistic);
            sub_1D6C3C9D8(v88, type metadata accessor for PuzzleStatistic);
            v107 = !v110;
LABEL_63:
            v86 = v89 + v123;
            sub_1D6C3C9D8(v124, type metadata accessor for FormatContentSlotItemResolution);
            sub_1D6C3C9D8(v126, type metadata accessor for FormatContentSlotItemResolution);
            if (v107)
            {
              break;
            }

            v83 = v102;
            if (v89 < v85 || v86 >= v85)
            {
              swift_arrayInitWithTakeFrontToBack();
              v30 = v88;
            }

            else
            {
              v30 = v88;
              if (v89 != v85)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v85 = v102;
            v84 = v123;
            v87 = v119;
            if (v102 <= v121)
            {
              a2 = v119;
              goto LABEL_76;
            }
          }

          if (v89 < v119 || v86 >= v119)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v88;
            v83 = v117;
          }

          else
          {
            v30 = v88;
            v83 = v117;
            if (v89 != v119)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v84 = v123;
          if (v85 <= v121)
          {
LABEL_76:
            v130 = a2;
            v128 = v83;
            goto LABEL_77;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v61 = v121;
    goto LABEL_47;
  }

  v120 = v43;
  v62 = v60 * v58;
  if (v121 < a1 || a1 + v62 <= v121)
  {
    v63 = v7;
    swift_arrayInitWithTakeFrontToBack();
    goto LABEL_16;
  }

  v63 = v7;
  if (v121 != a1)
  {
    swift_arrayInitWithTakeBackToFront();
LABEL_16:
    v61 = v121;
  }

  v126 = v61 + v62;
  v128 = v61 + v62;
  if (v62 >= 1 && a2 < v125)
  {
    while (1)
    {
      v66 = v61;
      sub_1D6C3C8E4(a2, v56, type metadata accessor for FormatContentSlotItemResolution);
      v67 = v66;
      sub_1D6C3C8E4(v66, v51, type metadata accessor for FormatContentSlotItemResolution);
      v68 = v124;
      sub_1D6C3C8E4(v56, v124, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v69 = v63;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        break;
      }

      v70 = v119;
      sub_1D6C3C94C(v68, v119, type metadata accessor for PuzzleStatistic);
      v71 = v70;
      v72 = v120;
      sub_1D6C3C94C(v71, v120, type metadata accessor for PuzzleStatistic);
      v73 = v123;
      sub_1D6C3C8E4(v51, v123, type metadata accessor for FormatContentSlotItemObject.Resolved);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        sub_1D6C3C9D8(v73, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v80 = type metadata accessor for PuzzleStatistic;
        v81 = v72;
        goto LABEL_27;
      }

      v74 = v118;
      sub_1D6C3C94C(v73, v118, type metadata accessor for PuzzleStatistic);
      v75 = v74;
      v76 = v117;
      sub_1D6C3C94C(v75, v117, type metadata accessor for PuzzleStatistic);
      v77 = *(v115 + 20);
      if (v116)
      {
        v78 = v72 + v77;
        v79 = v76 + v77;
      }

      else
      {
        v78 = v76 + v77;
        v79 = v72 + v77;
      }

      v82 = _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(v78, v79);
      sub_1D6C3C9D8(v76, type metadata accessor for PuzzleStatistic);
      sub_1D6C3C9D8(v72, type metadata accessor for PuzzleStatistic);
      sub_1D6C3C9D8(v51, type metadata accessor for FormatContentSlotItemResolution);
      sub_1D6C3C9D8(v56, type metadata accessor for FormatContentSlotItemResolution);
      v69 = v122;
      if (!v82)
      {
        goto LABEL_28;
      }

      if (a1 < v67 || a1 >= v67 + v58)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v67)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v63 = v69;
      v129 = v67 + v58;
      v61 = v67 + v58;
LABEL_34:
      a1 += v58;
      v130 = a1;
      if (v61 >= v126 || a2 >= v125)
      {
        goto LABEL_77;
      }
    }

    v80 = type metadata accessor for FormatContentSlotItemObject.Resolved;
    v81 = v68;
LABEL_27:
    sub_1D6C3C9D8(v81, v80);
    sub_1D6C3C9D8(v51, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D6C3C9D8(v56, type metadata accessor for FormatContentSlotItemResolution);
LABEL_28:
    if (a1 < a2 || a1 >= a2 + v58)
    {
      v63 = v69;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v63 = v69;
      if (a1 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    a2 += v58;
    v61 = v67;
    goto LABEL_34;
  }

LABEL_77:
  sub_1D62FF598(&v130, &v129, &v128);
}

void sub_1D6C3C6D8()
{
  if (!qword_1EC8872F0)
  {
    sub_1D66B9128();
    v0 = type metadata accessor for FormatSelectorValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8872F0);
    }
  }
}

unint64_t sub_1D6C3C734(uint64_t a1)
{
  result = sub_1D66B9128();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C3C75C(void *a1)
{
  a1[1] = sub_1D5B57DEC();
  a1[2] = sub_1D5B56404();
  result = sub_1D6C3C794();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C3C794()
{
  result = qword_1EDF2BFD0;
  if (!qword_1EDF2BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BFD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatSlotTransformO(void *a1)
{
  if (*a1 >> 61 <= 4uLL)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 10;
  }
}

uint64_t sub_1D6C3C808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x76 && *(a1 + 8))
  {
    return (*a1 + 118);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x75)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C3C858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x75)
  {
    *result = a2 - 118;
    if (a3 >= 0x76)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x76)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D6C3C8A8(void *result, uint64_t a2)
{
  if (a2 < 0xA)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 10)) | 0xA000000000000000;
  }

  return result;
}

uint64_t sub_1D6C3C8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C3C94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C3C9D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C3CA58()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C3CB30()
{
  sub_1D72621EC();
}

uint64_t sub_1D6C3CBF4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6C3CCC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE600000000000000;
  v6 = 0x7265746E6563;
  v7 = 0xE900000000000064;
  v8 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v8 = 0x6C61727574616ELL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7468676972;
    v3 = 0xE500000000000000;
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

uint64_t FormatTextAlignment.description.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7265746E6563;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7468676972;
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

unint64_t sub_1D6C3CE08()
{
  result = qword_1EC893C50;
  if (!qword_1EC893C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C50);
  }

  return result;
}

unint64_t sub_1D6C3CE5C(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C3CE8C();
  result = sub_1D5CE776C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C3CE8C()
{
  result = qword_1EC893C58;
  if (!qword_1EC893C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C58);
  }

  return result;
}

unint64_t sub_1D6C3CEE0(uint64_t a1)
{
  result = sub_1D6C3CF08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C3CF08()
{
  result = qword_1EC893C60;
  if (!qword_1EC893C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893C60);
  }

  return result;
}

unint64_t sub_1D6C3CF5C(void *a1)
{
  a1[1] = sub_1D5CAA59C();
  a1[2] = sub_1D665B5FC();
  result = sub_1D6C3CE08();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C3CF94()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7265746E6563;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x6C61727574616ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7468676972;
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

uint64_t FeedTopicHeadlinesCluster.replacing(headlines:titleModification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *v3;
  v8 = *(v3 + 16);
  if (v6 == 255)
  {
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = sub_1D726203C();
    if (v6)
    {
      v10 = [v7 setTitleDisplaySuffixOverride_];
    }

    else
    {
      v10 = [v7 setTitleDisplayPrefixOverride_];
    }

    v7 = v10;
  }

  *a3 = v7;
  a3[1] = a1;
  a3[2] = v8;
}

uint64_t FeedTopicHeadlinesCluster.headlines.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = v1 + 32;
    do
    {
      v4 += 16;
      swift_unknownObjectRetain();
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t FeedTopicHeadlinesCluster.articleIDs.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v3 = v16;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      swift_unknownObjectRetain_n();
      v7 = v5;
      v8 = [v6 articleID];
      v9 = sub_1D726207C();
      v11 = v10;

      swift_unknownObjectRelease_n();
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D5BFC364((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return v3;
}

BOOL FeedTopicHeadlinesCluster.titleHasPrefix.getter()
{
  v1 = [*v0 titleDisplayPrefix];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t FeedTopicHeadlinesCluster.init(tag:scoredHeadlines:minClusterSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t SharingActivityProviderFactory.__allocating_init(sharingActivityItemFactory:activityTypeProvider:issueActivityTypeProvider:recipeActivityTypeProvider:puzzleActivityTypeProvider:puzzleTypeActivityTypeProvider:paidAccessChecker:subscriptionController:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  sub_1D5B63F14(a1, v16 + 16);
  sub_1D5B63F14(a2, v16 + 56);
  sub_1D5B63F14(a3, v16 + 96);
  v17 = *(a4 + 16);
  *(v16 + 136) = *a4;
  *(v16 + 152) = v17;
  *(v16 + 168) = *(a4 + 32);
  sub_1D5B63F14(a5, v16 + 176);
  v18 = *(a6 + 16);
  *(v16 + 216) = *a6;
  *(v16 + 232) = v18;
  *(v16 + 248) = *(a6 + 32);
  *(v16 + 256) = a7;
  *(v16 + 264) = a8;
  return v16;
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:selectedText:feedItemIdentifier:tracker:sourceView:sourceItem:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v90 = a8;
  v91 = a6;
  v92 = a7;
  v88 = a4;
  v89 = a5;
  v83 = a2;
  v84 = a3;
  sub_1D5B54BF0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v86 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v85 = &v82 - v20;
  v93 = sub_1D6C3DEE4(a1);
  v21 = v8[10];
  v22 = v8[11];
  __swift_project_boxed_opaque_existential_1(v8 + 7, v21);
  v23 = (*(v22 + 8))(v21, v22);
  *&v95 = MEMORY[0x1E69E7CC0];
  v24 = *(v23 + 16);
  if (!v24)
  {

    v55 = MEMORY[0x1E69E7CC0];
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      goto LABEL_51;
    }

LABEL_43:
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_52:

    sub_1D725E70C();
    return sub_1D725E6FC();
  }

  v87 = MEMORY[0x1E69E7CC0];
  v25 = 32;
  do
  {
    v32 = *(v23 + v25);
    if (v32 > 5)
    {
      if (*(v23 + v25) <= 7u)
      {
        if (v32 != 6)
        {
          if (!v93)
          {
            goto LABEL_7;
          }

          if ([a1 respondsToSelector_])
          {
            v38 = [a1 parentIssue];
            if (v38)
            {
              v39 = v38;
              if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_role) == 2)
              {
                v41 = v9[5];
                v40 = v9[6];
                __swift_project_boxed_opaque_existential_1(v9 + 2, v41);
                v94 = 0;
                v42 = (*(v40 + 136))(v39, &v94, v91, v92, v41, v40);

                if (!v42)
                {
                  goto LABEL_7;
                }

                goto LABEL_39;
              }
            }
          }

          v34 = v9[5];
          v33 = v9[6];
          __swift_project_boxed_opaque_existential_1(v9 + 2, v34);
          v35 = 7;
          goto LABEL_37;
        }
      }

      else if (v32 - 8 >= 2)
      {
        if (v32 == 10)
        {
          if (!v93)
          {
            goto LABEL_7;
          }

          v34 = v9[5];
          v33 = v9[6];
          __swift_project_boxed_opaque_existential_1(v9 + 2, v34);
          v35 = 10;
LABEL_37:
          v94 = v35;
LABEL_38:
          if (!(*(v33 + 112))(a1, v88, v89, &v94, v91, v92, v90, v34, v33))
          {
            goto LABEL_7;
          }

LABEL_39:
          MEMORY[0x1DA6F9CE0]();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v87 = v95;
          goto LABEL_7;
        }

LABEL_16:
        if (!v93)
        {
          goto LABEL_7;
        }

        v36 = [a1 routeURL];
        if (v36)
        {
          v37 = v86;
          goto LABEL_30;
        }

        v49 = sub_1D72585BC();
        v50 = v86;
        (*(*(v49 - 8) + 56))(v86, 1, 1, v49);
        v44 = MEMORY[0x1E6968FB0];
        v45 = MEMORY[0x1E69E6720];
        v46 = v50;
LABEL_32:
        sub_1D5B6F398(v46, &qword_1EDF45B40, v44, v45, sub_1D5B54BF0);
        v34 = v9[5];
        v33 = v9[6];
        __swift_project_boxed_opaque_existential_1(v9 + 2, v34);
        v94 = v32;
        goto LABEL_38;
      }

LABEL_4:
      v26 = [a1 routeURL];
      if (v26)
      {
        v27 = v26;
        sub_1D72584EC();

        v28 = sub_1D72585BC();
        (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
        v29 = MEMORY[0x1E6968FB0];
        v30 = MEMORY[0x1E69E6720];
        v31 = v17;
        goto LABEL_6;
      }

      v43 = sub_1D72585BC();
      (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
      v44 = MEMORY[0x1E6968FB0];
      v45 = MEMORY[0x1E69E6720];
      v46 = v17;
      goto LABEL_32;
    }

    if (v32 < 3)
    {
      goto LABEL_16;
    }

    if (v32 - 3 < 2)
    {
      goto LABEL_4;
    }

    v36 = [a1 routeURL];
    if (v36)
    {
      v37 = v85;
LABEL_30:
      v47 = v36;
      sub_1D72584EC();

      v48 = sub_1D72585BC();
      (*(*(v48 - 8) + 56))(v37, 0, 1, v48);
      v29 = MEMORY[0x1E6968FB0];
      v30 = MEMORY[0x1E69E6720];
      v31 = v37;
LABEL_6:
      sub_1D5B6F398(v31, &qword_1EDF45B40, v29, v30, sub_1D5B54BF0);
      goto LABEL_7;
    }

    v51 = sub_1D72585BC();
    v52 = v85;
    (*(*(v51 - 8) + 56))(v85, 1, 1, v51);
    sub_1D5B6F398(v52, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D5B54BF0);
    v53 = v9[33];
    v54 = [a1 sourceChannelID];
    LOBYTE(v53) = [v53 isChannelPermanentForTagID_];

    if ((v53 & 1) == 0)
    {
      v34 = v9[5];
      v33 = v9[6];
      __swift_project_boxed_opaque_existential_1(v9 + 2, v34);
      v35 = 5;
      goto LABEL_37;
    }

LABEL_7:
    ++v25;
    --v24;
  }

  while (v24);

  v55 = v87;
  if (!(v87 >> 62))
  {
    goto LABEL_43;
  }

LABEL_51:
  if (!sub_1D7263BFC())
  {
    goto LABEL_52;
  }

LABEL_44:
  if (v93)
  {
    if ([a1 respondsToSelector_])
    {
      v56 = [a1 parentIssue];
      if (v56)
      {
        v57 = v56;
        if (([a1 respondsToSelector_] & 1) != 0 && objc_msgSend(a1, sel_role) == 2)
        {
          v58 = v9[5];
          v59 = v9[6];
          __swift_project_boxed_opaque_existential_1(v9 + 2, v58);
          (*(v59 + 32))(v57, v58, v59);

          goto LABEL_56;
        }
      }
    }

    v61 = v9[5];
    v62 = v9[6];
    __swift_project_boxed_opaque_existential_1(v9 + 2, v61);
    (*(v62 + 8))(a1, v83, v84, v61, v62);
  }

LABEL_56:
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v63 = swift_allocObject();
  v64 = MEMORY[0x1E69CDA70];
  *(v63 + 16) = xmmword_1D7283D60;
  v65 = *v64;
  v66 = *MEMORY[0x1E69CDAF0];
  *(v63 + 32) = v65;
  *(v63 + 40) = v66;
  v67 = *MEMORY[0x1E69CDA80];
  v68 = *MEMORY[0x1E69CDAF8];
  *(v63 + 48) = *MEMORY[0x1E69CDA80];
  *(v63 + 56) = v68;
  v69 = *MEMORY[0x1E69CDAC8];
  v70 = *MEMORY[0x1E69CDAE0];
  v71 = MEMORY[0x1E69CDA90];
  *(v63 + 64) = *MEMORY[0x1E69CDAC8];
  *(v63 + 72) = v70;
  v72 = *v71;
  *(v63 + 80) = *v71;
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v76 = v68;
  v77 = v69;
  v78 = v70;
  v79 = v72;
  *(v63 + 88) = sub_1D726203C();
  *(v63 + 96) = sub_1D726203C();
  v80 = sub_1D725E70C();
  v95 = 0u;
  v96 = 0u;
  v81 = objc_allocWithZone(v80);
  return sub_1D725E6EC();
}

BOOL sub_1D6C3DEE4(void *a1)
{
  v3 = &off_1E84D3000;
  v4 = [a1 sourceChannel];
  if (!v4)
  {
LABEL_9:
    if ([a1 respondsToSelector_])
    {
      v9 = [a1 role];
      if (v9 < 8 && ((0x99u >> v9) & 1) != 0)
      {
        return 0;
      }
    }

    v10 = *(v1 + 256);
    v11 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v12 = [a1 isBundlePaid];
    }

    else
    {
      v12 = 0;
    }

    v13 = [a1 v3[402]];
    if (v13)
    {
      v14 = [v13 identifier];
      swift_unknownObjectRelease();
      v15 = sub_1D726207C();
      v17 = v16;

      if (v11)
      {
LABEL_17:
        v18 = [v10 purchaseProvider];
        if (!v17)
        {
          swift_unknownObjectRelease();
          if (!v12)
          {
            goto LABEL_48;
          }

LABEL_25:
          if (!v17)
          {
            return 0;
          }

          v22 = [objc_msgSend(v10 bundleSubscriptionProvider)];
          swift_unknownObjectRelease();
          if (objc_getAssociatedObject(v22, v22 + 1))
          {
            sub_1D7263AEC();
            swift_unknownObjectRelease();
          }

          else
          {
            v48 = 0u;
            v49 = 0u;
          }

          v50 = v48;
          v51 = v49;
          if (*(&v49 + 1))
          {
            sub_1D5BAFAD8();
            if (swift_dynamicCast())
            {
              v23 = v47;
              v24 = [v47 integerValue];
              if (v24 == -1)
              {

                goto LABEL_67;
              }

              v25 = v24;
LABEL_35:
              if (objc_getAssociatedObject(v22, ~v25))
              {
                sub_1D7263AEC();
                swift_unknownObjectRelease();
              }

              else
              {
                v48 = 0u;
                v49 = 0u;
              }

              v50 = v48;
              v51 = v49;
              if (*(&v49 + 1))
              {
                sub_1D5BAFAD8();
                if (swift_dynamicCast())
                {
                  v32 = v47;
                  v33 = [v32 integerValue];

                  if ((v33 ^ v25))
                  {
LABEL_67:
                    v39 = [objc_msgSend(v10 bundleSubscriptionProvider)];
                    swift_unknownObjectRelease();
                    v40 = [v39 bundleChannelIDs];

                    v41 = sub_1D726203C();
                    LOBYTE(v39) = [v40 containsObject_];

                    return (v39 & 1) != 0;
                  }

LABEL_48:

                  return 0;
                }
              }

              else
              {
                sub_1D5EBD03C(&v50);
              }

              if (v25)
              {
                goto LABEL_67;
              }

              goto LABEL_48;
            }
          }

          else
          {
            sub_1D5EBD03C(&v50);
          }

          v23 = 0;
          v25 = 0;
          goto LABEL_35;
        }

        v19 = [v18 purchasedTagIDs];
        v20 = sub_1D7262B0C();

        LOBYTE(v19) = sub_1D5BE240C(v15, v17, v20);

        swift_unknownObjectRelease();
        if ((v19 & 1) == 0)
        {
          if (!v12)
          {
            goto LABEL_48;
          }

          goto LABEL_25;
        }

LABEL_23:

        return 1;
      }
    }

    else
    {
      v15 = 0;
      v17 = 0;
      if (v11)
      {
        goto LABEL_17;
      }
    }

    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v5 = v4;
  if (([a1 respondsToSelector_] & 1) == 0 || objc_msgSend(a1, sel_role) != 2)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v46 = *(v1 + 256);
  v6 = [v46 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [v5 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_39;
    }
  }

  else
  {
    v8 = [v5 identifier];
  }

  v26 = sub_1D726207C();
  v28 = v27;

  v29 = [v6 purchasedTagIDs];
  v30 = sub_1D7262B0C();

  LOBYTE(v29) = sub_1D5BE240C(v26, v28, v30);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v29)
  {
LABEL_74:
    swift_unknownObjectRelease();
    v3 = &off_1E84D3000;
    goto LABEL_9;
  }

LABEL_39:
  v31 = [objc_msgSend(v46 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v31, v31 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D5EBD03C(&v50);
    goto LABEL_55;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_55:
    v34 = 0;
    v36 = 0;
    goto LABEL_56;
  }

  v34 = v47;
  v35 = [v47 integerValue];
  if (v35 == -1)
  {

LABEL_71:
    v42 = [objc_msgSend(v46 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v43 = [v5 identifier];
    if (!v43)
    {
      sub_1D726207C();
      v43 = sub_1D726203C();
    }

    v44 = [v42 containsTagID_];

    if ((v44 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  v36 = v35;
LABEL_56:
  if (objc_getAssociatedObject(v31, ~v36))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v50 = v48;
  v51 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D5EBD03C(&v50);
LABEL_64:

    if ((v36 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_64;
  }

  v37 = v47;
  v38 = [v37 integerValue];

  if ((v38 ^ v36))
  {
    goto LABEL_71;
  }

LABEL_75:
  v45 = [v5 isSandbox];
  swift_unknownObjectRelease();
  return v45;
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:tracker:sourceView:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(v3 + 256);
  v8 = [a1 isPaid];
  v9 = [v6 isBundlePaid];
  v10 = [objc_msgSend(v6 sourceChannel)];
  swift_unknownObjectRelease();
  v11 = sub_1D726207C();
  v13 = v12;

  if ((v8 & 1) == 0)
  {
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:

    goto LABEL_9;
  }

  v14 = [objc_msgSend(v7 purchaseProvider)];
  v15 = v6;
  v16 = a3;
  v17 = v7;
  v18 = a2;
  v19 = sub_1D7262B0C();

  LOBYTE(v14) = sub_1D5BE240C(v11, v13, v19);
  a2 = v18;
  v7 = v17;
  a3 = v16;
  v6 = v15;

  swift_unknownObjectRelease();
  if (v14)
  {
    goto LABEL_8;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v20 = [objc_msgSend(v7 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v55 = a3;
  if (objc_getAssociatedObject(v20, v20 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  v53 = a2;
  if (!*(&v59 + 1))
  {
    sub_1D5EBD03C(&v60);
    goto LABEL_16;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v43 = 0;
    v45 = 0;
    goto LABEL_17;
  }

  v43 = v57;
  v44 = [v57 integerValue];
  if (v44 == -1)
  {

    goto LABEL_28;
  }

  v45 = v44;
LABEL_17:
  if (objc_getAssociatedObject(v20, ~v45))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60 = v58;
  v61 = v59;
  if (!*(&v59 + 1))
  {
    sub_1D5EBD03C(&v60);
LABEL_25:

    if (v45)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v46 = v57;
  v47 = [v46 integerValue];

  v48 = v47 ^ v45;
  a3 = v55;
  if (v48)
  {
LABEL_28:
    v49 = [objc_msgSend(v7 bundleSubscriptionProvider];
    swift_unknownObjectRelease();
    v50 = [v49 bundleChannelIDs];

    v51 = sub_1D726203C();
    v52 = [v50 containsObject_];

    a2 = v54;
    if ((v52 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_9:
    sub_1D6C3EC80(v6, a2, a3);
    v21 = v56[5];
    v22 = v56[6];
    __swift_project_boxed_opaque_existential_1(v56 + 2, v21);
    (*(v22 + 32))(v6, v21, v22);
    sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69CDA70];
    *(v23 + 16) = xmmword_1D7283D60;
    v25 = *v24;
    v26 = *MEMORY[0x1E69CDAF0];
    *(v23 + 32) = v25;
    *(v23 + 40) = v26;
    v27 = *MEMORY[0x1E69CDA80];
    v28 = *MEMORY[0x1E69CDAF8];
    *(v23 + 48) = *MEMORY[0x1E69CDA80];
    *(v23 + 56) = v28;
    v29 = *MEMORY[0x1E69CDAC8];
    v30 = *MEMORY[0x1E69CDAE0];
    v31 = MEMORY[0x1E69CDA90];
    *(v23 + 64) = *MEMORY[0x1E69CDAC8];
    *(v23 + 72) = v30;
    v32 = *v31;
    *(v23 + 80) = *v31;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v32;
    *(v23 + 88) = sub_1D726203C();
    *(v23 + 96) = sub_1D726203C();
    v40 = sub_1D725E70C();
    v60 = 0u;
    v61 = 0u;
    v41 = objc_allocWithZone(v40);
    return sub_1D725E6EC();
  }

LABEL_26:

LABEL_29:
  sub_1D725E70C();
  return sub_1D725E6FC();
}

{
  sub_1D6C3FF1C(a1, a2, a3);
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  (*(v6 + 72))(a1, v5, v6);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69CDA70];
  *(v7 + 16) = xmmword_1D7283D60;
  v9 = *v8;
  v10 = *MEMORY[0x1E69CDAF0];
  *(v7 + 32) = v9;
  *(v7 + 40) = v10;
  v11 = *MEMORY[0x1E69CDA80];
  v12 = *MEMORY[0x1E69CDAF8];
  *(v7 + 48) = *MEMORY[0x1E69CDA80];
  *(v7 + 56) = v12;
  v13 = *MEMORY[0x1E69CDAC8];
  v14 = *MEMORY[0x1E69CDAE0];
  v15 = MEMORY[0x1E69CDA90];
  *(v7 + 64) = *MEMORY[0x1E69CDAC8];
  *(v7 + 72) = v14;
  v16 = *v15;
  *(v7 + 80) = *v15;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  *(v7 + 88) = sub_1D726203C();
  *(v7 + 96) = sub_1D726203C();
  v24 = objc_allocWithZone(sub_1D725E70C());
  return sub_1D725E6EC();
}

uint64_t sub_1D6C3EC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[15];
  v7 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = (v8 + 32);
    do
    {
      v12 = *v11;
      v13 = v3[5];
      v14 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
      v17 = v12;
      if ((*(v14 + 136))(a1, &v17, a2, a3, v13, v14))
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v9 = v18;
      }

      ++v11;
      --v10;
    }

    while (v10);
  }

  return v9;
}

uint64_t SharingActivityProviderFactory.createActivityProvider(for:shareData:tracker:sourceView:sourceItem:)(id a1, __int128 *a2)
{
  v3 = v2;
  v5 = a2[1];
  v56 = *a2;
  v57 = v5;
  v6 = *(a2 + 4);
  v44 = *(a2 + 40);
  v54 = *(a2 + 41);
  v55 = *(a2 + 57);
  if (v6 != 1 && (v44 & 1) != 0)
  {
    goto LABEL_24;
  }

  v7 = v2[32];
  if (![a1 isPaid])
  {
    goto LABEL_24;
  }

  v8 = [objc_msgSend(v7 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v42 = v6;
  if (objc_getAssociatedObject(v8, v8 + 1))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {
    sub_1D5EBD03C(&v48);
    goto LABEL_12;
  }

  sub_1D5BAFAD8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v9 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = v45;
  v10 = [v45 integerValue];
  if (v10 == -1)
  {

    goto LABEL_24;
  }

  v11 = v10;
LABEL_13:
  if (objc_getAssociatedObject(v8, ~v11))
  {
    sub_1D7263AEC();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (*(&v47 + 1))
  {
    sub_1D5BAFAD8();
    if (swift_dynamicCast())
    {
      v12 = v45;
      v13 = [v12 integerValue];

      v14 = v13 ^ v11;
      v6 = v42;
      if (v14)
      {
        goto LABEL_24;
      }

LABEL_22:
      sub_1D725E70C();
      return sub_1D725E6FC();
    }
  }

  else
  {
    sub_1D5EBD03C(&v48);
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_24:
  v16 = v3[25];
  v17 = v3[26];
  __swift_project_boxed_opaque_existential_1(v3 + 22, v16);
  v18 = (*(v17 + 8))(v16, v17);
  *&v48 = MEMORY[0x1E69E7CC0];
  v19 = *(v18 + 16);
  if (v19)
  {
    v43 = v6;
    do
    {
      v20 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
      if ((*(v20 + 152))(a1))
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
      }

      --v19;
    }

    while (v19);

    v6 = v43;
  }

  else
  {
  }

  v21 = v3[5];
  v22 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
  v48 = v56;
  v49 = v57;
  v50 = v6;
  v51 = v44;
  v52 = v54;
  v53 = v55;
  (*(v22 + 48))(a1, &v48, v21, v22);
  sub_1D5B54BF0(0, &qword_1EC893C68, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69CDA70];
  *(v23 + 16) = xmmword_1D7283D60;
  v25 = *v24;
  v26 = *MEMORY[0x1E69CDAF0];
  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  v27 = *MEMORY[0x1E69CDA80];
  v28 = *MEMORY[0x1E69CDAF8];
  *(v23 + 48) = *MEMORY[0x1E69CDA80];
  *(v23 + 56) = v28;
  v29 = *MEMORY[0x1E69CDAC8];
  v30 = *MEMORY[0x1E69CDAE0];
  v31 = MEMORY[0x1E69CDA90];
  *(v23 + 64) = *MEMORY[0x1E69CDAC8];
  *(v23 + 72) = v30;
  v32 = *v31;
  *(v23 + 80) = *v31;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v32;
  *(v23 + 88) = sub_1D726203C();
  *(v23 + 96) = sub_1D726203C();
  v40 = sub_1D725E70C();
  v48 = 0u;
  v49 = 0u;
  v41 = objc_allocWithZone(v40);
  return sub_1D725E6EC();
}