uint64_t FormatVideoPlayerLive.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v28 - v9;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 8);
  v29 = *v1;
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatVideoPlayerLive, &type metadata for FormatCodingKeys, v21, v19, &type metadata for FormatVideoPlayerLive, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.StarSkyC, v18, v14, v20, &off_1F51F6B18);
  if (v17)
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v22 = sub_1D725BD1C();
    v23 = __swift_project_value_buffer(v22, qword_1EDFFCD00);
    (*(*(v22 - 8) + 16))(v6, v23, v22);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639D668(1, v29, v15, v16 & 1, v6);
    v24 = v6;
  }

  else
  {
    if (qword_1EDF31E98 != -1)
    {
      swift_once();
    }

    v25 = sub_1D725BD1C();
    v26 = __swift_project_value_buffer(v25, qword_1EDFFCD00);
    (*(*(v25 - 8) + 16))(v10, v26, v25);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D639D4D0(0, v29, v15, v16, v10);
    v24 = v10;
  }

  sub_1D5D2CF28(v24, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CF28(v14, sub_1D5D30DC4);
}

uint64_t sub_1D60AF4E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656E696C6E69;
  }

  else
  {
    v3 = 0x676E69646E6962;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656E696C6E69;
  }

  else
  {
    v5 = 0x676E69646E6962;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1D60AF588()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60AF608()
{
  sub_1D72621EC();
}

uint64_t sub_1D60AF674()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60AF6F0@<X0>(char *a1@<X8>)
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

void sub_1D60AF750(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6962;
  if (*v1)
  {
    v2 = 0x656E696C6E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s8NewsFeed21FormatVideoPlayerLiveO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if ((v5 & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      v16 = v3 == v7 && v2 == v6;
      if (v16 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D60AFDB4(v7, v6, v8, 0);
        sub_1D60AFDB4(v3, v2, v4, 0);
        sub_1D60AFDB4(v3, v2, v4, 0);
        sub_1D60AFDB4(v7, v6, v8, 0);
        v17 = sub_1D6341C50(v4, v8);
        sub_1D60AFE14(v3, v2, v4, 0);
        sub_1D60AFE14(v7, v6, v8, 0);
        sub_1D60AFE14(v7, v6, v8, 0);
        sub_1D60AFE14(v3, v2, v4, 0);
        if (v17)
        {
          v10 = 1;
          return v10 & 1;
        }

        goto LABEL_7;
      }

      sub_1D60AFDB4(v3, v2, v4, 0);
      sub_1D60AFDB4(v7, v6, v8, 0);
      sub_1D60AFE14(v3, v2, v4, 0);
      v11 = v7;
      v12 = v6;
      v13 = v8;
      v14 = 0;
LABEL_6:
      sub_1D60AFE14(v11, v12, v13, v14);
LABEL_7:
      v10 = 0;
      return v10 & 1;
    }

LABEL_5:
    sub_1D60AFDB4(*a1, v2, v4, v5);
    sub_1D60AFDB4(v7, v6, v8, v9);
    sub_1D60AFE14(v3, v2, v4, v5);
    v11 = v7;
    v12 = v6;
    v13 = v8;
    v14 = v9;
    goto LABEL_6;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    goto LABEL_5;
  }

  v20[0] = *a1;
  v20[1] = v2;
  v21 = v4 & 1;
  v18[0] = v7;
  v18[1] = v6;
  v19 = v8 & 1;
  sub_1D60AFDB4(v7, v6, v8, 1);
  sub_1D60AFDB4(v3, v2, v4, 1);
  sub_1D60AFDB4(v3, v2, v4, 1);
  sub_1D60AFDB4(v7, v6, v8, 1);
  v10 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(v20, v18);
  sub_1D60AFE14(v3, v2, v4, 1);
  sub_1D60AFE14(v7, v6, v8, 1);
  sub_1D60AFE14(v7, v6, v8, 1);
  sub_1D60AFE14(v3, v2, v4, 1);
  return v10 & 1;
}

unint64_t sub_1D60AFAF4()
{
  result = qword_1EDF29018;
  if (!qword_1EDF29018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29018);
  }

  return result;
}

unint64_t sub_1D60AFB48()
{
  result = qword_1EDF0A818;
  if (!qword_1EDF0A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A818);
  }

  return result;
}

unint64_t sub_1D60AFB9C(void *a1)
{
  a1[1] = sub_1D60AFBD4();
  a1[2] = sub_1D60AFC28();
  result = sub_1D60AFC7C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60AFBD4()
{
  result = qword_1EDF29010;
  if (!qword_1EDF29010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29010);
  }

  return result;
}

unint64_t sub_1D60AFC28()
{
  result = qword_1EDF0DEC0;
  if (!qword_1EDF0DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEC0);
  }

  return result;
}

unint64_t sub_1D60AFC7C()
{
  result = qword_1EC883400;
  if (!qword_1EC883400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883400);
  }

  return result;
}

unint64_t sub_1D60AFD0C()
{
  result = qword_1EC883408;
  if (!qword_1EC883408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883408);
  }

  return result;
}

unint64_t sub_1D60AFD60()
{
  result = qword_1EDF29020;
  if (!qword_1EDF29020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29020);
  }

  return result;
}

uint64_t sub_1D60AFDB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_1D5E04CC4(a1);
  }

  else
  {
  }
}

uint64_t sub_1D60AFE14(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    v4 = a3 & 1;

    return sub_1D5D2F2C4(a1, a2, v4);
  }

  else
  {
  }
}

NewsFeed::PuzzleScoreType_optional __swiftcall PuzzleScoreType.init(string:)(Swift::String string)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v4 = v1;
  v5 = string._countAndFlagsBits == 0x746C7561666564 && string._object == 0xE700000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x74636566726570 && object == 0xE700000000000000)
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

  *v4 = v7;
  return result;
}

uint64_t PuzzleScoreType.description.getter()
{
  if (*v0)
  {
    return 0x74636566726570;
  }

  else
  {
    return 0x746C7561666564;
  }
}

NewsFeed::PuzzleScoreType_optional __swiftcall PuzzleScoreType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D60AFFAC()
{
  result = qword_1EC883410;
  if (!qword_1EC883410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883410);
  }

  return result;
}

void *sub_1D60B0000@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D60B00D0()
{
  if (*v0)
  {
    return 0x74636566726570;
  }

  else
  {
    return 0x746C7561666564;
  }
}

unint64_t sub_1D60B0114()
{
  result = qword_1EC883418;
  if (!qword_1EC883418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883418);
  }

  return result;
}

uint64_t sub_1D60B0168()
{
  if ([v0 validatedCachedSubscription])
  {
    sub_1D60B0354();
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v1);
    sub_1D60B0354();
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

void sub_1D60B0238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D5B7E910;
  *(v9 + 24) = v8;
  v11[4] = sub_1D60B06CC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D5C38428;
  v11[3] = &block_descriptor_19;
  v10 = _Block_copy(v11);

  [a5 refreshBundleSubscriptionWithCachePolicy:1 completion:v10];
  _Block_release(v10);
}

void sub_1D60B0354()
{
  if (!qword_1EDF3B8F8)
  {
    sub_1D5B5A498(255, &qword_1EDF1A958);
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3B8F8);
    }
  }
}

uint64_t sub_1D60B03BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7261ABC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D7261B2C();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF1AA40 != -1)
  {
    swift_once();
  }

  v20[1] = qword_1EDF1AA48;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_1D60B0944;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);

  v17 = a1;
  sub_1D7261AEC();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D5B737A0(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1D5B6D2E8(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60]);
  sub_1D5B63280(&qword_1EDF1B560, &qword_1EDF1B570, v18);
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v21);
}

uint64_t sub_1D60B06D4()
{
  v11 = sub_1D726307C();
  v0 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D726304C();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1D7261B2C();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v10[1] = sub_1D5B5A498(0, &qword_1EDF1AA30);
  sub_1D7261AFC();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D5B737A0(&qword_1EDF1AA50, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1D5B6D2E8(0, &unk_1EDF1AE90, MEMORY[0x1E69E8030]);
  sub_1D5B63280(&qword_1EDF1AE80, &unk_1EDF1AE90, v8);
  sub_1D7263B6C();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v11);
  result = sub_1D72630BC();
  qword_1EDF1AA48 = result;
  return result;
}

uint64_t sub_1D60B097C(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v6)))));
    v12 = v11[1];
    v6 &= v6 - 1;
    *&v35 = *v11;
    *(&v35 + 1) = v12;
    sub_1D5BF4D9C();

    v13 = sub_1D7263ACC();
    if (*(v13 + 16) != 2 || (v32 = v13, , v14 = sub_1D7262ACC(), result = v32, (v15 & 1) != 0))
    {
    }

    else
    {
      if (*(v32 + 16) < 2uLL)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      v30 = v14;

      v16 = sub_1D7262ACC();
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D6991EA4(0, *(v31 + 16) + 1, 1, v31);
          v31 = result;
        }

        v19 = v30;
        v21 = *(v31 + 16);
        v20 = *(v31 + 24);
        if (v21 >= v20 >> 1)
        {
          result = sub_1D6991EA4((v20 > 1), v21 + 1, 1, v31);
          v31 = result;
          v19 = v30;
        }

        *(v31 + 16) = v21 + 1;
        v22 = v31 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v16;
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  v23 = *(v31 + 16);
  if (v23)
  {
    sub_1D7263ECC();
    v24 = 32;
    do
    {
      v25 = v2[5];
      v26 = v2[6];
      v34 = *(v31 + v24);
      __swift_project_boxed_opaque_existential_1(v2 + 2, v25);
      v35 = v34;
      (*(v26 + 8))(&v35, v25, v26);
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v24 += 16;
      --v23;
    }

    while (v23);
  }

  else
  {
  }

  v27 = sub_1D725B92C();
  type metadata accessor for FeedWeather(0);
  sub_1D725BEFC();

  v28 = sub_1D725B92C();
  sub_1D60B1214(0, &qword_1EDF053B0, MEMORY[0x1E69D6430], MEMORY[0x1E69E62F8]);
  v29 = sub_1D725BA8C();

  return v29;
}

uint64_t sub_1D60B0D3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D60B0D94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D60B0D94(uint64_t a1)
{
  v43 = sub_1D725ABEC();
  v2 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60B1214(0, &unk_1EDF17860, type metadata accessor for FeedWeather, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v41 = &v33 - v7;
  v40 = type metadata accessor for FeedWeather(0);
  v8 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  v39 = sub_1D725A9BC();
  v20 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v21);
  v38 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D5C8A65C(0, v23, 0);
    v24 = v46;
    v25 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = *(v8 + 72);
    v34 = (v2 + 16);
    v35 = v26;
    v33 = v20 + 32;
    v36 = v20;
    v37 = v11;
    do
    {
      sub_1D60B1278(v25, v19);
      sub_1D60B1278(v19, v15);
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](44, 0xE100000000000000);
      sub_1D7262ABC();
      sub_1D60B1278(v15, v11);
      if (qword_1EDF17CC0 != -1)
      {
        swift_once();
      }

      v27 = v43;
      v28 = __swift_project_value_buffer(v43, qword_1EDF17CC8);
      (*v34)(v42, v28, v27);
      sub_1D725BF4C();
      sub_1D60B12DC(v15);
      v29 = v38;
      sub_1D725A9AC();
      sub_1D60B12DC(v19);
      v46 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D5C8A65C(v30 > 1, v31 + 1, 1);
        v24 = v46;
      }

      *(v24 + 16) = v31 + 1;
      (*(v36 + 32))(v24 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, v29, v39);
      v25 += v35;
      --v23;
      v11 = v37;
    }

    while (v23);
  }

  return v24;
}

void sub_1D60B1214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D60B1278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedWeather(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60B12DC(uint64_t a1)
{
  v2 = type metadata accessor for FeedWeather(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D60B1338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a4;
  v53 = a2;
  v54 = a3;
  v55 = a5;
  v6 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D72585BC();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v48 = &v45 - v16;
  v56 = a1;
  sub_1D60B2914(a1, v9, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v9;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v20 = *(v19 + 48);
    v58 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 1);
    v21 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v22 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v23 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 40);
    v25 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v24 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 56);
    v27 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v26 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 72);
    v28 = *(v18 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v46 = v20;
    v47 = v22;

    v50 = v21;

    v49 = v23;
    sub_1D60B297C(v23, v25, v24, v27, v26, v28);

    sub_1D5EB9994();
    v30 = v29;
    v31 = *(*(v29 - 8) + 8);
    v32 = v9 + v46;
    v33 = v25;
    v34 = v58;
    v31(v32, v30);
  }

  else
  {

    v34 = *(v18 + 49);
    v35 = *(v18 + 64);
    v36 = *(v18 + 88);
    v37 = *(v18 + 96);
    v38 = *(v18 + 104);
    v27 = *(v18 + 112);
    v26 = *(v18 + 120);
    v28 = *(v18 + 128);
    v47 = *(v18 + 80);

    v50 = v35;

    v49 = v36;
    v39 = v36;
    v33 = v37;
    v24 = v38;
    sub_1D60B297C(v39, v33, v38, v27, v26, v28);
  }

  sub_1D60B29F8(v49, v33, v24, v27, v26, v28);
  v59 = v34;
  sub_1D722B410(v13);
  v40 = v48;
  sub_1D725849C();
  v41 = *(v51 + 8);
  v42 = v13;
  v43 = v52;
  v41(v42, v52);
  sub_1D6B7A1C0(v56, v57, MEMORY[0x1E69E7CC0], v55);
  return (v41)(v40, v43);
}

BOOL static FormatURL.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v40 - v11;
  v13 = *a1;
  v14 = *a2;
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 == 2)
    {
      if (v14 >> 62 == 2)
      {
        v20 = v13 & 0x3FFFFFFFFFFFFFFFLL;
        v21 = *(v20 + 40);
        v22 = *(v20 + 32);
        v23 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v24 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v43 = *(v20 + 16);
        v44 = v22;
        v45 = v21;
        v40 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v41 = v23;
        v42 = v24;

        v19 = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v43, &v40);

        return v19;
      }
    }

    else if (v14 >> 62 == 3)
    {
      v32 = v13 & 0x3FFFFFFFFFFFFFFFLL;
      v33 = *(v32 + 24);
      v34 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      *&v43 = *(v32 + 16);
      *&v40 = v36;

      v37 = static FormatURL.== infix(_:_:)(&v43, &v40);

      if ((v37 & 1) == 0)
      {

        goto LABEL_24;
      }

      v38 = sub_1D635B3E4(v33, v35);

      if (v38)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v15)
  {
    if (v14 >> 62 != 1)
    {
      return 0;
    }

    v25 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v27 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v28 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v29 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v30 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v31 = v25 == v28 && v26 == v29;
    return (v31 || (sub_1D72646CC() & 1) != 0) && (sub_1D633A250(v27, v30) & 1) != 0;
  }

  if (v14 >> 62)
  {
    return 0;
  }

  v16 = v10;
  v17 = swift_projectBox();
  v18 = swift_projectBox();
  sub_1D60B2914(v17, v12, type metadata accessor for FormatAbsoluteURL);
  sub_1D60B2914(v18, v7, type metadata accessor for FormatAbsoluteURL);

  if ((sub_1D72584CC() & 1) == 0 || (sub_1D633A250(*&v12[*(v16 + 20)], *&v7[*(v16 + 20)]) & 1) == 0)
  {
    sub_1D60B28B4(v7, type metadata accessor for FormatAbsoluteURL);
    sub_1D60B28B4(v12, type metadata accessor for FormatAbsoluteURL);

LABEL_24:

    return 0;
  }

  sub_1D60B28B4(v7, type metadata accessor for FormatAbsoluteURL);
  sub_1D60B28B4(v12, type metadata accessor for FormatAbsoluteURL);

  return 1;
}

uint64_t sub_1D60B19B8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 2)
    {
      v4 = 0;
    }

    else
    {
      v5 = a3;
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      v4 = sub_1D60B19B8(a1, v6, v7);

      if (v3)
      {
        return v6;
      }

      a3 = v5;
    }
  }

  else
  {
    v4 = 1;
  }

  v53 = *(a3 + 16);
  if (!v53)
  {
    return v4;
  }

  v9 = 0;
  v52 = a3 + 32;
  while (1)
  {
    v10 = (v52 + 112 * v9);
    *&v61[10] = *(v10 + 90);
    v11 = v10[5];
    v60 = v10[4];
    *v61 = v11;
    v12 = v10[1];
    v56 = *v10;
    v57 = v12;
    v13 = v10[3];
    v58 = v10[2];
    v59 = v13;
    v14 = v56;
    v15 = *&v61[24];
    v16 = (*&v61[24] >> 12) & 3;
    if (!v16)
    {
      break;
    }

    v17 = v60;
    v62 = *(&v59 + 1);
    if (v16 == 1)
    {
      if (v13 >> 14)
      {
        if (v13 >> 14 == 1)
        {
          sub_1D5C3C480();
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D7273AE0;
          *(inited + 32) = v14;
          sub_1D60B2AC8(&v56, v55);

          v19 = sub_1D5BFAC38(inited);
          swift_setDeallocating();
          sub_1D5BFB68C(inited + 32);
          v20 = v15 >> 14;
          if (!(v15 >> 14))
          {
            goto LABEL_37;
          }
        }

        else
        {
          v36 = *(&v60 + 1);
          v37 = *v61;
          v38 = *&v61[8];
          v49 = *&v61[16];
          sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
          sub_1D5E1DA6C(v62, v17, v36, v37, v38, v49, v15 & 0xCFFF);
          v19 = 0;
          v20 = v15 >> 14;
          if (!(v15 >> 14))
          {
LABEL_37:
            v6 = 1;
            if (v19)
            {
              goto LABEL_42;
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        v33 = *(&v60 + 1);
        v34 = *v61;
        v35 = *&v61[16];
        v48 = *&v61[8];
        sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
        sub_1D5E1DA6C(v62, v17, v33, v34, v48, v35, v15 & 0xCFFF);
        v19 = 1;
        v20 = v15 >> 14;
        if (!(v15 >> 14))
        {
          goto LABEL_37;
        }
      }

      if (v20 == 1)
      {
        sub_1D5C3C480();
        v21 = swift_initStackObject();
        *(v21 + 16) = xmmword_1D7273AE0;
        *(v21 + 32) = v62;
        *(v21 + 40) = v17;

        v6 = sub_1D5BFAC38(v21);
        swift_setDeallocating();
        sub_1D5BFB68C(v21 + 32);
        if (v19)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v6 = 0;
        if (v19)
        {
LABEL_42:
          if (v19 == 1)
          {
            goto LABEL_49;
          }

          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v13 >> 14)
      {
        if (v13 >> 14 == 1)
        {
          sub_1D5C3C480();
          v30 = swift_initStackObject();
          *(v30 + 16) = xmmword_1D7273AE0;
          *(v30 + 32) = v14;
          sub_1D60B2AC8(&v56, v55);

          v19 = sub_1D5BFAC38(v30);
          swift_setDeallocating();
          sub_1D5BFB68C(v30 + 32);
          v31 = v15 >> 14;
          if (!(v15 >> 14))
          {
            goto LABEL_47;
          }
        }

        else
        {
          v42 = *(&v60 + 1);
          v43 = *v61;
          v44 = *&v61[8];
          v51 = *&v61[16];
          sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
          sub_1D5E1DA6C(v62, v17, v42, v43, v44, v51, v15 & 0xCFFF);
          v19 = 0;
          v31 = v15 >> 14;
          if (!(v15 >> 14))
          {
LABEL_47:
            v6 = 1;
            if (v19)
            {
              goto LABEL_48;
            }

            goto LABEL_54;
          }
        }
      }

      else
      {
        v39 = *(&v60 + 1);
        v40 = *v61;
        v41 = *&v61[8];
        v50 = *&v61[16];
        sub_1D5E1DA6C(v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v13);
        sub_1D5E1DA6C(v62, v17, v39, v40, v41, v50, v15 & 0xCFFF);
        v19 = 1;
        v31 = v15 >> 14;
        if (!(v15 >> 14))
        {
          goto LABEL_47;
        }
      }

      if (v31 == 1)
      {
        sub_1D5C3C480();
        v32 = swift_initStackObject();
        *(v32 + 16) = xmmword_1D7273AE0;
        *(v32 + 32) = v62;
        *(v32 + 40) = v17;

        v6 = sub_1D5BFAC38(v32);
        swift_setDeallocating();
        sub_1D5BFB68C(v32 + 32);
        if (v19)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v6 = 0;
        if (v19)
        {
LABEL_48:
          if (v19 == 1)
          {
LABEL_49:
            sub_1D60B2A74(&v56);
            if (v6 == 1)
            {
              goto LABEL_10;
            }

            goto LABEL_61;
          }

LABEL_43:
          if (v6 >= 2)
          {
            v19 = sub_1D5D6021C(v6, v19);
          }

          sub_1D60B2A74(&v56);
LABEL_60:
          v6 = v19;
          goto LABEL_61;
        }
      }
    }

LABEL_54:
    sub_1D60B2A74(&v56);
    if (v6 == 1)
    {
      goto LABEL_55;
    }

LABEL_61:
    if (v4 < 2)
    {
      goto LABEL_11;
    }

    if (v6)
    {
      v6 = sub_1D5D6021C(v6, v4);
      goto LABEL_11;
    }

LABEL_10:
    v6 = v4;
LABEL_11:
    ++v9;
    v4 = v6;
    if (v9 == v53)
    {
      return v6;
    }
  }

  if (!(v13 >> 14))
  {
    goto LABEL_10;
  }

  if (v13 >> 14 != 1)
  {
LABEL_55:
    v19 = 0;
    goto LABEL_60;
  }

  v54 = v56;
  sub_1D60B2B24();
  v19 = sub_1D7263CDC();
  v22 = v19 + 56;

  v23 = v54;
  sub_1D7264A0C();

  sub_1D72621EC();
  result = sub_1D7264A5C();
  v25 = ~(-1 << *(v19 + 32));
  for (i = result & v25; ; i = (i + 1) & v25)
  {
    v27 = *(v22 + 8 * (i >> 6));
    if (((1 << i) & v27) == 0)
    {
      break;
    }

    v28 = (*(v19 + 48) + 16 * i);
    if (*v28 != v23 || v28[1] != *(&v23 + 1))
    {
      result = sub_1D72646CC();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_59;
  }

  *(v22 + 8 * (i >> 6)) = (1 << i) | v27;
  *(*(v19 + 48) + 16 * i) = v23;
  v45 = *(v19 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (!v46)
  {
    *(v19 + 16) = v47;
LABEL_59:
    sub_1D5BFB68C(&v54);
    goto LABEL_60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D60B1FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v91 = a2;
  v92 = a1;
  sub_1D60077D8();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v88 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v87 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v87 - v13;
  v15 = sub_1D72585BC();
  v89 = *(v15 - 8);
  v90 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v87 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v87 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *v3;
  v36 = *v3 >> 62;
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v48 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v51 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v52 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v52 - 8) + 56))(v10, 1, 1, v52);
      sub_1D5D27950(v48, v49, v50, v51);
      v53 = v93;
      sub_1D6D4E524(v92, v48, v49, v50, v51, v22);
      if (v53)
      {
        sub_1D60B28B4(v10, sub_1D60077D8);
        return sub_1D5D28C84(v48, v49, v50, v51);
      }

      sub_1D5D28C84(v48, v49, v50, v51);
      sub_1D5C4E168();
      v68 = v67;
      v69 = swift_allocBox();
      v71 = v70;
      (*(v89 + 32))(v70, v22, v90);
      *(v71 + *(v68 + 36)) = MEMORY[0x1E69E7CC0];
      v41 = v91;
      *v91 = v69 | 0x6000000000000000;
      v41[1] = 0;
      v38 = type metadata accessor for FormatOptionsNodeStatementResult();
      v72 = v41 + *(v38 + 24);
      v73 = v10;
    }

    else
    {
      v60 = v35 & 0x3FFFFFFFFFFFFFFFLL;
      v61 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v62 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v63 = type metadata accessor for FormatVersionRequirement(0);
      v64 = v88;
      (*(*(v63 - 8) + 56))(v88, 1, 1, v63);

      v65 = v92;
      v66 = v93;
      sub_1D6D53964(v92, v61, v62, v18);
      if (v66)
      {
        sub_1D60B28B4(v64, sub_1D60077D8);
      }

      sub_1D5C4E168();
      v80 = v79;
      v81 = swift_allocBox();
      v83 = v82;
      (*(v89 + 32))(v82, v18, v90);
      *(v83 + *(v80 + 36)) = MEMORY[0x1E69E7CC0];
      v84 = *(v60 + 16);
      v85 = *(v60 + 24);

      v86 = sub_1D60B19B8(v65, v84, v85);

      v41 = v91;
      *v91 = v81 | 0x6000000000000000;
      v41[1] = v86;
      v38 = type metadata accessor for FormatOptionsNodeStatementResult();
      v72 = v41 + *(v38 + 24);
      v73 = v88;
    }

    goto LABEL_14;
  }

  if (v36)
  {
    v56 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v55 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v57 = *((v35 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v58 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v58 - 8) + 56))(v14, 1, 1, v58);

    v59 = v93;
    sub_1D60B1338(v92, v56, v55, v57, v26);
    v41 = v91;
    if (v59)
    {
      sub_1D60B28B4(v14, sub_1D60077D8);
    }

    sub_1D5C4E168();
    v75 = v74;
    v76 = swift_allocBox();
    v78 = v77;
    (*(v89 + 32))(v77, v26, v90);
    *(v78 + *(v75 + 36)) = MEMORY[0x1E69E7CC0];
    *v41 = v76 | 0x6000000000000000;
    v41[1] = 1;
    v38 = type metadata accessor for FormatOptionsNodeStatementResult();
    v72 = v41 + *(v38 + 24);
    v73 = v14;
LABEL_14:
    sub_1D5EA3AFC(v73, v72);
    return (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
  }

  v37 = swift_projectBox();
  sub_1D60B2914(v37, v34, type metadata accessor for FormatAbsoluteURL);
  v38 = type metadata accessor for FormatOptionsNodeStatementResult();
  v39 = *(v38 + 24);
  v40 = type metadata accessor for FormatVersionRequirement(0);
  v41 = v91;
  (*(*(v40 - 8) + 56))(v91 + v39, 1, 1, v40);
  v42 = MEMORY[0x1E69E7CC0];
  sub_1D6B7A1C0(v92, *&v34[*(v31 + 20)], MEMORY[0x1E69E7CC0], v30);
  sub_1D5C4E168();
  v44 = v43;
  v45 = swift_allocBox();
  v47 = v46;
  (*(v89 + 32))(v46, v30, v90);
  *(v47 + *(v44 + 36)) = v42;
  sub_1D60B28B4(v34, type metadata accessor for FormatAbsoluteURL);
  *v41 = v45 | 0x6000000000000000;
  v41[1] = 1;
  return (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
}

unint64_t sub_1D60B2748(uint64_t a1)
{
  result = sub_1D60B2770();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60B2770()
{
  result = qword_1EC883420;
  if (!qword_1EC883420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883420);
  }

  return result;
}

unint64_t sub_1D60B27C4(void *a1)
{
  a1[1] = sub_1D5CA2FA0();
  a1[2] = sub_1D60B27FC();
  result = sub_1D60B2850();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60B27FC()
{
  result = qword_1EDF05930;
  if (!qword_1EDF05930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05930);
  }

  return result;
}

unint64_t sub_1D60B2850()
{
  result = qword_1EC883428;
  if (!qword_1EC883428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883428);
  }

  return result;
}

uint64_t sub_1D60B28B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60B2914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D60B297C(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (result)
  {
    v7 = a2;

    v8 = a6;
  }

  return result;
}

void sub_1D60B29F8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
  }
}

void sub_1D60B2B24()
{
  if (!qword_1EDF1A590)
  {
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A590);
    }
  }
}

uint64_t SharingRecipeURLActivityItemSource.init(recipe:linkPresentationSource:externalRecipeFactory:featureAvailability:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1D5B54524(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  *&v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    sub_1D726207C();
    v15 = sub_1D726203C();
  }

  v16 = [a1 articles];
  sub_1D5B5D6A0();
  v17 = sub_1D726267C();

  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA6FB460](0, v17);
    goto LABEL_8;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v17 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v20 = [v19 identifier];
    swift_unknownObjectRelease();
    if (v20)
    {
LABEL_13:
      v21 = [objc_opt_self() nss:v15 NewsURLForRecipeID:v20 articleID:?];

      sub_1D72584EC();
      v22 = sub_1D72585BC();
      (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
      sub_1D5EB8540(v14, &v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url]);
      *&v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_linkPresentationSource] = a2;
      *&v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_recipe] = a1;
      sub_1D5C3AE10(a3, &v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_externalRecipeFactory], &unk_1EDF25860, qword_1EDF25870);
      sub_1D5C3AE10(a4, &v5[OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_featureAvailability], qword_1EDF27890, &unk_1EDF3F6D0);
      v26.receiver = v5;
      v26.super_class = ObjectType;
      v23 = objc_msgSendSuper2(&v26, sel_init);
      sub_1D5BFB774(a4, qword_1EDF27890, &unk_1EDF3F6D0);
      sub_1D5BFB774(a3, &unk_1EDF25860, qword_1EDF25870);
      return v23;
    }

    sub_1D726207C();
    v20 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id SharingRecipeURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingRecipeURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingRecipeURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54524(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v11 - v5;
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url, v11 - v5);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5B6EF08(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(v11, a1);
  }

  return result;
}

uint64_t SharingRecipeURLActivityItemSource.activityViewController(_:itemForActivityType:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5B54524(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39[-1] - v12;
  sub_1D5C3AE10(v2 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_featureAvailability, v39, qword_1EDF27890, &unk_1EDF3F6D0);
  v14 = v40;
  if (v40)
  {
    v15 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v16 = (*(v15 + 232))(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v39);
    if (a1)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  sub_1D5BFB774(v39, qword_1EDF27890, &unk_1EDF3F6D0);
  v16 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v17 = sub_1D726207C();
  v19 = v18;
  if (v17 == sub_1D726207C() && v19 == v20)
  {

    goto LABEL_23;
  }

  v22 = sub_1D72646CC();

  if (v22)
  {
LABEL_23:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v24 = sub_1D726203C();
  v25 = sub_1D726207C();
  v27 = v26;
  if (v25 == sub_1D726207C() && v27 == v28)
  {

    goto LABEL_18;
  }

  v34 = sub_1D72646CC();

  if ((v34 & 1) == 0)
  {
LABEL_13:
    sub_1D5EB84C0(v3 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url, v9);
    v29 = sub_1D72585BC();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v9, 1, v29) != 1)
    {
      *(a2 + 24) = v29;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      return (*(v30 + 32))(boxed_opaque_existential_1, v9, v29);
    }

    v31 = MEMORY[0x1E6968FB0];
    v32 = v9;
    goto LABEL_22;
  }

LABEL_18:
  if (v16)
  {
    sub_1D60B36A8();
  }

  sub_1D5EB84C0(v3 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_url, v13);
  v35 = sub_1D72585BC();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v13, 1, v35) == 1)
  {
    v31 = MEMORY[0x1E6968FB0];
    v32 = v13;
LABEL_22:
    result = sub_1D5B6EF08(v32, &qword_1EDF45B40, v31);
    goto LABEL_23;
  }

  *(a2 + 24) = v35;
  v37 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(v36 + 32))(v37, v13, v35);
}

void sub_1D60B36A8()
{
  sub_1D5B54524(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v12 - v3;
  sub_1D5C3AE10(v0 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_externalRecipeFactory, &v12, &unk_1EDF25860, qword_1EDF25870);
  if (v13)
  {
    sub_1D5B63F14(&v12, v14);
    v5 = sub_1D726294C();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    sub_1D5B68374(v14, &v12);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    sub_1D5B63F14(&v12, (v6 + 4));
    v6[9] = v0;
    v7 = v0;
    sub_1D6BD1334(0, 0, v4, &unk_1D7298838, v6);

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    sub_1D5BFB774(&v12, &unk_1EDF25860, qword_1EDF25870);
    if (qword_1EC87DC68 != -1)
    {
      swift_once();
    }

    v8 = sub_1D725C42C();
    __swift_project_value_buffer(v8, qword_1EC9BADC0);
    v9 = sub_1D725C3FC();
    v10 = sub_1D7262EBC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D5B42000, v9, v10, "ExternalRecipe Factory is nil in SharingRecipeURLActivityItemSource", v11, 2u);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }
  }
}

LPLinkMetadata_optional __swiftcall SharingRecipeURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D60B3B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D725772C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_1D72576EC();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D60B3C78, 0, 0);
}

uint64_t sub_1D60B3C78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = *(v2 + OBJC_IVAR____TtC8NewsFeed34SharingRecipeURLActivityItemSource_recipe);
  v0[10] = v5;
  v9 = (*(v4 + 8) + **(v4 + 8));
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D60B3DC0;
  v7 = v0[9];

  return v9(v7, v5, v3, v4);
}

uint64_t sub_1D60B3DC0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D60B4054;
  }

  else
  {
    v2 = sub_1D60B3ED4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60B3ED4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v11 = v0[7];
  sub_1D725771C();
  sub_1D725770C();
  (*(v5 + 8))(v4, v6);
  v7 = [v2 identifier];
  sub_1D726207C();

  v8 = [v2 title];
  sub_1D726207C();

  sub_1D72576FC();

  (*(v3 + 8))(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D60B4054()
{
  if (qword_1EC87DC68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EC9BADC0);
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D5B42000, v4, v5, "Failed to convert FCRecipe to ExternalRecipe in SharingRecipeURLActivityItemSource with error: %@", v8, 0xCu);
    sub_1D5B6EF08(v9, &qword_1EDF04360, sub_1D5F1574C);
    MEMORY[0x1DA6FD500](v9, -1, -1);
    MEMORY[0x1DA6FD500](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t type metadata accessor for SharingRecipeURLActivityItemSource()
{
  result = qword_1EC883460;
  if (!qword_1EC883460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D60B426C()
{
  sub_1D5B54524(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D60B4368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D60B3B5C(a1, v4, v5, (v1 + 4), v6);
}

NewsFeed::FeedBundleSessionState_optional __swiftcall FeedBundleSessionState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedBundleSessionState.rawValue.getter()
{
  v1 = 0x64657269707865;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_1D60B44DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64657269707865;
  if (v2 != 1)
  {
    v4 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x657669746361;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64657269707865;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657669746361;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

unint64_t sub_1D60B45E0()
{
  result = qword_1EDF37108;
  if (!qword_1EDF37108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37108);
  }

  return result;
}

uint64_t sub_1D60B4634()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D60B46D4()
{
  sub_1D72621EC();
}

uint64_t sub_1D60B4760()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D60B4808(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64657269707865;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657669746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D60B4924()
{
  result = qword_1EC883470;
  if (!qword_1EC883470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883470);
  }

  return result;
}

uint64_t FeedLayoutContextFactory.__allocating_init(fontBookFactory:colorPaletteProvider:layoutAttributesFactoryProvider:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D5B63F14(a1, v6 + 56);
  sub_1D5B63F14(a2, v6 + 16);
  *(v6 + 96) = a3;
  return v6;
}

uint64_t FeedLayoutContextFactory.init(fontBookFactory:colorPaletteProvider:layoutAttributesFactoryProvider:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_1D5B63F14(a1, v3 + 56);
  sub_1D5B63F14(a2, v3 + 16);
  *(v3 + 96) = a3;
  return v3;
}

uint64_t sub_1D60B4A24(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D5D4BDE0(a1, a2);
  v4 = *(v2 + 96);
  type metadata accessor for FeedLayoutContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  return v5;
}

uint64_t FeedLayoutContextFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return v0;
}

uint64_t FeedLayoutContextFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D60B4B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1448) = v3;
  *(v4 + 1440) = a3;
  *(v4 + 1432) = a1;
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v4 + 1456) = swift_task_alloc();
  v7 = sub_1D72585BC();
  *(v4 + 1464) = v7;
  *(v4 + 1472) = *(v7 - 8);
  *(v4 + 1480) = swift_task_alloc();
  *(v4 + 1488) = type metadata accessor for DebugFormatWorkspaceKind();
  *(v4 + 1496) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v6);
  *(v4 + 1504) = swift_task_alloc();
  v8 = *(a2 + 144);
  *(v4 + 1008) = *(a2 + 128);
  *(v4 + 1024) = v8;
  *(v4 + 1040) = *(a2 + 160);
  *(v4 + 1055) = *(a2 + 175);
  v9 = *(a2 + 80);
  *(v4 + 944) = *(a2 + 64);
  *(v4 + 960) = v9;
  v10 = *(a2 + 112);
  *(v4 + 976) = *(a2 + 96);
  *(v4 + 992) = v10;
  v11 = *(a2 + 16);
  *(v4 + 880) = *a2;
  *(v4 + 896) = v11;
  v12 = *(a2 + 48);
  *(v4 + 912) = *(a2 + 32);
  *(v4 + 928) = v12;
  sub_1D726290C();
  *(v4 + 1512) = sub_1D72628FC();
  v14 = sub_1D726285C();
  *(v4 + 1520) = v14;
  *(v4 + 1528) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D60B4D7C, v14, v13);
}

uint64_t sub_1D60B4D7C()
{
  sub_1D60CBBE8(*(v0 + 1432), *(v0 + 1496), type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_5;
  }

  v2 = (v0 + 880);
  if (EnumCaseMultiPayload >= 2)
  {

    sub_1D725B31C();

    v10 = *(v0 + 608);
    v9 = *(v0 + 624);
    v11 = *(v0 + 592);
    *(v0 + 392) = v10;
    *(v0 + 408) = v9;
    v12 = *(v0 + 624);
    *(v0 + 424) = *(v0 + 640);
    v14 = *(v0 + 544);
    v13 = *(v0 + 560);
    v15 = *(v0 + 528);
    *(v0 + 328) = v14;
    *(v0 + 344) = v13;
    v16 = *(v0 + 560);
    v18 = *(v0 + 576);
    v17 = *(v0 + 592);
    *(v0 + 360) = v18;
    *(v0 + 376) = v17;
    v20 = *(v0 + 480);
    v19 = *(v0 + 496);
    v21 = *(v0 + 464);
    *(v0 + 264) = v20;
    *(v0 + 280) = v19;
    v22 = *(v0 + 496);
    v24 = *(v0 + 512);
    v23 = *(v0 + 528);
    *(v0 + 296) = v24;
    *(v0 + 312) = v23;
    v25 = *(v0 + 464);
    v26 = *(v0 + 448);
    *(v0 + 232) = v26;
    *(v0 + 248) = v25;
    *(v0 + 176) = v10;
    *(v0 + 192) = v12;
    *(v0 + 208) = *(v0 + 640);
    *(v0 + 112) = v14;
    *(v0 + 128) = v16;
    *(v0 + 144) = v18;
    *(v0 + 160) = v11;
    *(v0 + 48) = v20;
    *(v0 + 64) = v22;
    *(v0 + 80) = v24;
    *(v0 + 96) = v15;
    *(v0 + 440) = *(v0 + 656);
    *(v0 + 224) = *(v0 + 656);
    *(v0 + 16) = v26;
    *(v0 + 32) = v21;
    if (sub_1D5DEA380(v0 + 16) != 1)
    {
      v27 = *(v0 + 192);
      *(v0 + 824) = *(v0 + 176);
      *(v0 + 840) = v27;
      *(v0 + 856) = *(v0 + 208);
      v28 = *(v0 + 128);
      *(v0 + 760) = *(v0 + 112);
      *(v0 + 776) = v28;
      v29 = *(v0 + 160);
      *(v0 + 792) = *(v0 + 144);
      *(v0 + 808) = v29;
      v30 = *(v0 + 64);
      *(v0 + 696) = *(v0 + 48);
      *(v0 + 712) = v30;
      v31 = *(v0 + 96);
      *(v0 + 728) = *(v0 + 80);
      *(v0 + 744) = v31;
      v32 = *(v0 + 32);
      *(v0 + 664) = *(v0 + 16);
      *(v0 + 680) = v32;
      v33 = *(v0 + 1024);
      *(v0 + 1376) = *(v0 + 1008);
      *(v0 + 1392) = v33;
      *(v0 + 1408) = *(v0 + 1040);
      v34 = *(v0 + 960);
      *(v0 + 1312) = *(v0 + 944);
      *(v0 + 1328) = v34;
      v35 = *(v0 + 992);
      *(v0 + 1344) = *(v0 + 976);
      *(v0 + 1360) = v35;
      v36 = *(v0 + 896);
      *(v0 + 1248) = *v2;
      *(v0 + 1264) = v36;
      v37 = *(v0 + 928);
      *(v0 + 1280) = *(v0 + 912);
      *(v0 + 872) = *(v0 + 224);
      *(v0 + 1423) = *(v0 + 1055);
      *(v0 + 1296) = v37;
      v38 = swift_task_alloc();
      *(v0 + 1536) = v38;
      *v38 = v0;
      v38[1] = sub_1D60B51BC;
      v39 = *(v0 + 1440);

      return sub_1D60BA6F0(v39, v0 + 664, v0 + 1248, 0);
    }

LABEL_5:

    goto LABEL_6;
  }

  v3 = *(v0 + 1472);
  v4 = *(v0 + 1464);
  v5 = *(v0 + 1456);
  sub_1D6033350(*(v0 + 1496), *(v0 + 1504));
  sub_1D6A9DC44(v5);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    v6 = *(v0 + 1456);
    sub_1D60CB820(*(v0 + 1504), &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D60CB820(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
LABEL_6:

    v7 = *(v0 + 8);

    return v7();
  }

  (*(*(v0 + 1472) + 32))(*(v0 + 1480), *(v0 + 1456), *(v0 + 1464));
  v40 = *(v0 + 1024);
  *(v0 + 1192) = *(v0 + 1008);
  *(v0 + 1208) = v40;
  *(v0 + 1224) = *(v0 + 1040);
  *(v0 + 1239) = *(v0 + 1055);
  v41 = *(v0 + 960);
  *(v0 + 1128) = *(v0 + 944);
  *(v0 + 1144) = v41;
  v42 = *(v0 + 992);
  *(v0 + 1160) = *(v0 + 976);
  *(v0 + 1176) = v42;
  v43 = *(v0 + 896);
  *(v0 + 1064) = *v2;
  *(v0 + 1080) = v43;
  v44 = *(v0 + 928);
  *(v0 + 1096) = *(v0 + 912);
  *(v0 + 1112) = v44;
  v45 = swift_task_alloc();
  *(v0 + 1552) = v45;
  *v45 = v0;
  v45[1] = sub_1D60B5388;
  v46 = *(v0 + 1504);
  v47 = *(v0 + 1480);

  return sub_1D60B9658(v47, v0 + 1064, v46);
}

uint64_t sub_1D60B51BC()
{
  v2 = *v1;
  *(*v1 + 1544) = v0;

  v3 = *(v2 + 1528);
  v4 = *(v2 + 1520);
  if (v0)
  {
    v5 = sub_1D60B55C0;
  }

  else
  {
    v5 = sub_1D60B52D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D60B52D8()
{

  sub_1D60CB8FC(v0 + 232, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D60B5388()
{
  v2 = *v1;
  (*v1)[195] = v0;

  if (v0)
  {
    sub_1D60CB820(v2[188], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v3 = v2[191];
    v4 = v2[190];
    v5 = sub_1D60B5670;
  }

  else
  {
    v6 = v2[188];

    sub_1D60CB820(v6, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v3 = v2[191];
    v4 = v2[190];
    v5 = sub_1D60B5504;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D60B5504()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D60B55C0()
{

  sub_1D60CB8FC(v0 + 232, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D60B5670()
{
  v1 = v0[185];
  v2 = v0[184];
  v3 = v0[183];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D60B572C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D725867C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D5B952E4(v6, v10);
}

uint64_t sub_1D60B57F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72583CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:14 inDomains:1];

  v17 = sub_1D726267C();
  if (*(v17 + 16))
  {
    (*(v21 + 16))(v10, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v7);

    v22 = 0xD000000000000013;
    v23 = 0x80000001D73C92A0;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
    sub_1D5BF4D9C();
    sub_1D725859C();
    (*(v3 + 8))(v6, v2);
    (*(v21 + 8))(v10, v7);
    (*(v21 + 32))(a1, v14, v7);
    return (*(v21 + 56))(a1, 0, 1, v7);
  }

  else
  {

    v19 = *(v21 + 56);

    return v19(a1, 1, 1, v7);
  }
}

uint64_t sub_1D60B5B1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23[-v8];
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60CB96C(a1, v9, &qword_1EDF45B40, v4, v5, sub_1D5B54578);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1D60CB820(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *a2 = 0;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1D7263D4C();

    v24 = 0xD000000000000029;
    v25 = 0x80000001D73C9220;
    v16 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v16);

    v17 = v24;
    v18 = v25;
    if (qword_1EC87D498 != -1)
    {
      v22 = v24;
      swift_once();
      v17 = v22;
    }

    sub_1D5F5EBA0(2, 0, 0, v17, v18);

    v19 = sub_1D72585DC();
    v21 = v20;
    type metadata accessor for FormatJSONDecoder();
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F5111598);
    sub_1D60CBD70();
    sub_1D725A69C();
    (*(v11 + 8))(v14, v10);

    return sub_1D5B952F8(v19, v21);
  }

  return result;
}

void sub_1D60B5EC4(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x1E6968FB0];
  v5 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28 - v8;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB96C(a1, v9, &qword_1EDF45B40, v4, v5, sub_1D5B54578);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D60CB820(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D60CB770(v29);
    v21 = v29[11];
    a2[10] = v29[10];
    a2[11] = v21;
    a2[12] = v29[12];
    v22 = v29[7];
    a2[6] = v29[6];
    a2[7] = v22;
    v23 = v29[9];
    a2[8] = v29[8];
    a2[9] = v23;
    v24 = v29[3];
    a2[2] = v29[2];
    a2[3] = v24;
    v25 = v29[5];
    a2[4] = v29[4];
    a2[5] = v25;
    v26 = v29[1];
    *a2 = v29[0];
    a2[1] = v26;
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();

    *&v29[0] = 0xD000000000000029;
    *(&v29[0] + 1) = 0x80000001D73C9220;
    v15 = sub_1D72583DC();
    MEMORY[0x1DA6F9910](v15);

    v17 = *(&v29[0] + 1);
    v16 = *&v29[0];
    if (qword_1EC87D498 != -1)
    {
      v27 = *&v29[0];
      swift_once();
      v16 = v27;
    }

    sub_1D5F5EBA0(2, 0, 0, v16, v17);

    v18 = sub_1D72585DC();
    v20 = v19;
    type metadata accessor for FormatJSONDecoder();
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F51115C0);
    sub_1D60CBD1C();
    sub_1D725A69C();
    (*(v11 + 8))(v14, v10);

    sub_1D5B952F8(v18, v20);
    nullsub_1();
  }
}

uint64_t sub_1D60B62F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D72583CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  v15 = [objc_opt_self() defaultManager];
  v16 = [v15 URLsForDirectory:14 inDomains:1];

  v17 = sub_1D726267C();
  if (*(v17 + 16))
  {
    (*(v21 + 16))(v10, v17 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v7);

    v22 = 0xD000000000000022;
    v23 = 0x80000001D73C9270;
    (*(v3 + 104))(v6, *MEMORY[0x1E6968F68], v2);
    sub_1D5BF4D9C();
    sub_1D725859C();
    (*(v3 + 8))(v6, v2);
    (*(v21 + 8))(v10, v7);
    (*(v21 + 32))(a1, v14, v7);
    return (*(v21 + 56))(a1, 0, 1, v7);
  }

  else
  {

    v19 = *(v21 + 56);

    return v19(a1, 1, 1, v7);
  }
}

uint64_t sub_1D60B6620(uint64_t a1, uint64_t *a2)
{
  v65 = a1;
  v3 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DebugFormatWorkspace();
  MEMORY[0x1EEE9AC00](v7, v8);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v65 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v23 = &v65 - v21;
  v24 = *a2;
  v25 = *(*a2 + 16);
  v74 = v22;
  v76 = v25;
  v70 = v20;
  if (!v25)
  {
    v27 = MEMORY[0x1E69E7CC8];
LABEL_16:
    v46 = v65;
    swift_beginAccess();
    *(v46 + 104) = v27;

    v49 = 0;
    v71 = MEMORY[0x1E69E7CC8];
    v73 = v3;
    while (1)
    {
      v72 = v49;
      v52 = *(&unk_1F51115E8 + v49 + 32);
      if (v76)
      {
        break;
      }

LABEL_39:
      MEMORY[0x1EEE9AC00](v47, v48);
      *(&v65 - 16) = v52;
      v62 = sub_1D72626CC();

      if (*(v62 + 16))
      {
        v50 = v71;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = v50;
        v47 = sub_1D6D796B0(v62, v52, isUniquelyReferenced_nonNull_native);
        v71 = v77;
      }

      else
      {
      }

      v49 = v72 + 1;
      if (v72 == 3)
      {
        v63 = v65;
        swift_beginAccess();
        *(v63 + 112) = v71;
      }
    }

    v53 = 0;
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v74;
    while (1)
    {
      if (v53 >= *(v24 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v57 = *(v55 + 72);
      sub_1D60CBBE8(v24 + v56 + v57 * v53, v13, type metadata accessor for DebugFormatWorkspace);
      sub_1D60CBBE8(v13, v6, type metadata accessor for DebugFormatWorkspaceKind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1D60CBC50(v6, type metadata accessor for DebugFormatWorkspaceKind);
          if (v52 == 1)
          {
LABEL_34:
            sub_1D60CBDE4(v13, v75, type metadata accessor for DebugFormatWorkspace);
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v77 = v54;
            if ((v59 & 1) == 0)
            {
              sub_1D6998988(0, *(v54 + 16) + 1, 1);
              v54 = v77;
            }

            v61 = *(v54 + 16);
            v60 = *(v54 + 24);
            if (v61 >= v60 >> 1)
            {
              sub_1D6998988(v60 > 1, v61 + 1, 1);
              v54 = v77;
            }

            *(v54 + 16) = v61 + 1;
            v47 = sub_1D60CBDE4(v75, v54 + v56 + v61 * v57, type metadata accessor for DebugFormatWorkspace);
            v55 = v74;
            goto LABEL_22;
          }
        }

        else
        {
          sub_1D60CBC50(v6, type metadata accessor for DebugFormatWorkspaceKind);
          if (v52 == 2)
          {
            goto LABEL_34;
          }
        }
      }

      else if ((EnumCaseMultiPayload - 2) >= 2)
      {
        if (v52 == 3)
        {
          goto LABEL_34;
        }
      }

      else if (!v52)
      {
        goto LABEL_34;
      }

      v47 = sub_1D60CBC50(v13, type metadata accessor for DebugFormatWorkspace);
LABEL_22:
      if (v76 == ++v53)
      {
        goto LABEL_39;
      }
    }
  }

  v26 = 0;
  v69 = &v23[*(v20 + 20)];
  v68 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v27 = MEMORY[0x1E69E7CC8];
  v28 = v22;
  v66 = &v65 - v21;
  v67 = v17;
  while (1)
  {
    if (v26 >= *(v24 + 16))
    {
      goto LABEL_43;
    }

    v29 = *(v28 + 72);
    v71 = v26;
    v73 = v29;
    sub_1D60CBBE8(v68 + v29 * v26, v23, type metadata accessor for DebugFormatWorkspace);
    v31 = *v69;
    v30 = v69[1];
    sub_1D60CBBE8(v23, v17, type metadata accessor for DebugFormatWorkspace);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v27;
    v72 = v31;
    v34 = sub_1D5B69D90(v31, v30);
    v35 = v27[2];
    v36 = (v33 & 1) == 0;
    v37 = v35 + v36;
    if (__OFADD__(v35, v36))
    {
      break;
    }

    v38 = v33;
    if (v27[3] >= v37)
    {
      if ((v32 & 1) == 0)
      {
        sub_1D6D81B30();
      }
    }

    else
    {
      sub_1D6D6C880(v37, v32);
      v39 = sub_1D5B69D90(v72, v30);
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_46;
      }

      v34 = v39;
    }

    v28 = v74;
    v27 = v78;
    if (v38)
    {
      v17 = v67;
      sub_1D60CBCB8(v67, v78[7] + v34 * v73);
    }

    else
    {
      v78[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v27[6] + 16 * v34);
      v42 = v73;
      *v41 = v72;
      v41[1] = v30;
      v17 = v67;
      sub_1D60CBDE4(v67, v27[7] + v34 * v42, type metadata accessor for DebugFormatWorkspace);
      v43 = v27[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_45;
      }

      v27[2] = v45;
    }

    v26 = v71 + 1;
    v23 = v66;
    sub_1D60CBC50(v66, type metadata accessor for DebugFormatWorkspace);
    if (v76 == v26)
    {
      goto LABEL_16;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D60B6CB8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 2u)
  {
  }

  else
  {
    type metadata accessor for DebugFormatWorkspace();

    return sub_1D72626EC();
  }
}

uint64_t sub_1D60B6D3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DebugFormatWorkspace() + 20);
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D60B6D88(uint64_t *a1)
{
  v2 = MEMORY[0x1E6968FB0];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9 - v5;
  v7 = *a1;
  sub_1D60B57F4(&v9 - v5);
  sub_1D60B6E54(v7, v6);
  return sub_1D60CB820(v6, &qword_1EDF45B40, v2);
}

uint64_t sub_1D60B6E54(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1D7261ABC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D7261B2C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v6);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v32 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v18 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v32 - v21;
  sub_1D60CB96C(a2, v13, &qword_1EDF45B40, v8, v9, sub_1D5B54578);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1D60CB820(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  v24 = *(v15 + 32);
  v24(v22, v13, v14);
  if (qword_1EC87D508 != -1)
  {
    swift_once();
  }

  v32[1] = qword_1EC883478;
  (*(v15 + 16))(v18, v22, v14);
  v25 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v33;
  v24((v26 + v25), v18, v14);
  aBlock[4] = sub_1D60CBB30;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_13;
  v27 = _Block_copy(aBlock);

  v28 = v34;
  sub_1D7261AEC();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D5B737E8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v29 = MEMORY[0x1E69E7F60];
  sub_1D5B54578(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D60CBA78(&qword_1EDF1B560, &qword_1EDF1B570, v29);
  v30 = v36;
  v31 = v39;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v28, v30, v27);
  _Block_release(v27);
  (*(v38 + 8))(v30, v31);
  (*(v35 + 8))(v28, v37);
  (*(v15 + 8))(v22, v14);
}

uint64_t sub_1D60B7398(__int128 *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1D7261ABC();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D7261B2C();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v49 - v12;
  v14 = sub_1D72585BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - v20;
  v22 = v8;
  v24 = v23;
  sub_1D60CB96C(v56, v13, &qword_1EDF45B40, v22, v9, sub_1D5B54578);
  if ((*(v15 + 48))(v13, 1, v24) == 1)
  {
    return sub_1D60CB820(v13, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  v26 = *(v15 + 32);
  v26(v21, v13, v24);
  if (qword_1EC87D508 != -1)
  {
    swift_once();
  }

  v56 = qword_1EC883478;
  v27 = a1[11];
  v69 = a1[10];
  v70 = v27;
  v71 = a1[12];
  v28 = a1[7];
  v65 = a1[6];
  v66 = v28;
  v29 = a1[9];
  v67 = a1[8];
  v68 = v29;
  v30 = a1[3];
  v61 = a1[2];
  v62 = v30;
  v31 = a1[5];
  v63 = a1[4];
  v64 = v31;
  v32 = a1[1];
  v59 = *a1;
  v60 = v32;
  (*(v15 + 16))(&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v24);
  v33 = *(v15 + 80);
  v49 = v21;
  v34 = v24;
  v35 = (v33 + 224) & ~v33;
  v36 = swift_allocObject();
  v37 = v70;
  *(v36 + 11) = v69;
  *(v36 + 12) = v37;
  *(v36 + 13) = v71;
  v38 = v66;
  *(v36 + 7) = v65;
  *(v36 + 8) = v38;
  v39 = v68;
  *(v36 + 9) = v67;
  *(v36 + 10) = v39;
  v40 = v62;
  *(v36 + 3) = v61;
  *(v36 + 4) = v40;
  v41 = v64;
  *(v36 + 5) = v63;
  *(v36 + 6) = v41;
  v42 = v60;
  *(v36 + 1) = v59;
  *(v36 + 2) = v42;
  v43 = v34;
  v26(&v36[v35], &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v34);
  v58[4] = sub_1D60CB9E0;
  v58[5] = v36;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 1107296256;
  v58[2] = sub_1D5B6B06C;
  v58[3] = &block_descriptor_20;
  v44 = _Block_copy(v58);
  sub_1D60CB8A0(a1, v57);
  v45 = v50;
  sub_1D7261AEC();
  v57[0] = MEMORY[0x1E69E7CC0];
  sub_1D5B737E8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60]);
  v46 = MEMORY[0x1E69E7F60];
  sub_1D5B54578(0, &qword_1EDF1B570, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D60CBA78(&qword_1EDF1B560, &qword_1EDF1B570, v46);
  v47 = v52;
  v48 = v55;
  sub_1D7263B6C();
  MEMORY[0x1DA6FA730](0, v45, v47, v44);
  _Block_release(v44);
  (*(v54 + 8))(v47, v48);
  (*(v51 + 8))(v45, v53);
  (*(v15 + 8))(v49, v43);
}

uint64_t sub_1D60B795C(__int128 *a1)
{
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19[-v4];
  v6 = a1[9];
  v7 = a1[11];
  v32 = a1[10];
  v33 = v7;
  v8 = a1[11];
  v34 = a1[12];
  v9 = a1[5];
  v10 = a1[7];
  v28 = a1[6];
  v29 = v10;
  v11 = a1[7];
  v12 = a1[9];
  v30 = a1[8];
  v31 = v12;
  v13 = a1[1];
  v14 = a1[3];
  v24 = a1[2];
  v25 = v14;
  v15 = a1[3];
  v16 = a1[5];
  v26 = a1[4];
  v27 = v16;
  v17 = a1[1];
  v22 = *a1;
  v23 = v17;
  v45 = v32;
  v46 = v8;
  v47 = a1[12];
  v41 = v28;
  v42 = v11;
  v43 = v30;
  v44 = v6;
  v37 = v24;
  v38 = v15;
  v39 = v26;
  v40 = v9;
  v35 = v22;
  v36 = v13;
  if (sub_1D5DEA380(&v35) == 1)
  {
    sub_1D60B62F8(v5);
    sub_1D60B7B60(v5);
  }

  else
  {
    v21[10] = v45;
    v21[11] = v46;
    v21[12] = v47;
    v21[6] = v41;
    v21[7] = v42;
    v21[8] = v43;
    v21[9] = v44;
    v21[2] = v37;
    v21[3] = v38;
    v21[4] = v39;
    v21[5] = v40;
    v21[0] = v35;
    v21[1] = v36;
    v20[10] = v32;
    v20[11] = v33;
    v20[12] = v34;
    v20[6] = v28;
    v20[7] = v29;
    v20[8] = v30;
    v20[9] = v31;
    v20[2] = v24;
    v20[3] = v25;
    v20[4] = v26;
    v20[5] = v27;
    v20[0] = v22;
    v20[1] = v23;
    sub_1D60CB8A0(v20, v19);
    sub_1D60B62F8(v5);
    sub_1D60B7398(v21, v5);
    sub_1D60CB8FC(&v22, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  }

  return sub_1D60CB820(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
}

uint64_t sub_1D60B7B60(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6968FB0];
  v3 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20[-v6];
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60CB96C(a1, v7, &qword_1EDF45B40, v2, v3, sub_1D5B54578);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D60CB820(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1D725844C();
  v21[0] = 0;
  v16 = [v14 removeItemAtURL:v15 error:v21];

  if (v16)
  {
    v17 = v21[0];
  }

  else
  {
    v18 = v21[0];
    v19 = sub_1D725829C();

    swift_willThrow();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1D60B7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 432) = a4;
  *(v5 + 440) = v4;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  type metadata accessor for FeedContext();
  *(v5 + 448) = swift_task_alloc();
  v7 = type metadata accessor for DebugFormatWorkspace();
  *(v5 + 456) = v7;
  *(v5 + 464) = *(v7 - 8);
  *(v5 + 472) = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v5 + 480) = swift_task_alloc();
  v9 = sub_1D72585BC();
  *(v5 + 488) = v9;
  *(v5 + 496) = *(v9 - 8);
  *(v5 + 504) = swift_task_alloc();
  *(v5 + 512) = type metadata accessor for DebugFormatWorkspaceKind();
  *(v5 + 520) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8);
  *(v5 + 528) = swift_task_alloc();
  v10 = *(a3 + 144);
  *(v5 + 144) = *(a3 + 128);
  *(v5 + 160) = v10;
  *(v5 + 176) = *(a3 + 160);
  *(v5 + 191) = *(a3 + 175);
  v11 = *(a3 + 80);
  *(v5 + 80) = *(a3 + 64);
  *(v5 + 96) = v11;
  v12 = *(a3 + 112);
  *(v5 + 112) = *(a3 + 96);
  *(v5 + 128) = v12;
  v13 = *(a3 + 16);
  *(v5 + 16) = *a3;
  *(v5 + 32) = v13;
  v14 = *(a3 + 48);
  *(v5 + 48) = *(a3 + 32);
  *(v5 + 64) = v14;
  sub_1D726290C();
  *(v5 + 536) = sub_1D72628FC();
  v16 = sub_1D726285C();
  *(v5 + 544) = v16;
  *(v5 + 552) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D60B80A4, v16, v15);
}

uint64_t sub_1D60B80A4()
{
  v39 = v0;
  sub_1D60CBBE8(*(v0 + 424), *(v0 + 520), type metadata accessor for DebugFormatWorkspaceKind);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    v8 = *(v0 + 456);
    v9 = *(v0 + 464);
    v10 = *(v0 + 416);

    (*(v9 + 56))(v10, 1, 1, v8);
    goto LABEL_5;
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 496);
  v3 = *(v0 + 480);
  sub_1D6033350(*(v0 + 520), *(v0 + 528));
  sub_1D6A9DC44(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 480);
    v5 = *(v0 + 456);
    v6 = *(v0 + 464);
    v7 = *(v0 + 416);
    sub_1D60CB820(*(v0 + 528), &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D60CB820(v4, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    (*(v6 + 56))(v7, 1, 1, v5);
LABEL_5:

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 464);
  v36 = *(v0 + 472);
  v14 = *(v0 + 440);
  v15 = *(v0 + 448);
  v17 = *(v0 + 424);
  v16 = *(v0 + 432);
  (*(*(v0 + 496) + 32))(*(v0 + 504), *(v0 + 480), *(v0 + 488));
  v18 = *(v0 + 160);
  v37[8] = *(v0 + 144);
  v37[9] = v18;
  v38[0] = *(v0 + 176);
  *(v38 + 15) = *(v0 + 191);
  v19 = *(v0 + 96);
  v37[4] = *(v0 + 80);
  v37[5] = v19;
  v20 = *(v0 + 128);
  v37[6] = *(v0 + 112);
  v37[7] = v20;
  v21 = *(v0 + 32);
  v37[0] = *(v0 + 16);
  v37[1] = v21;
  v22 = *(v0 + 64);
  v37[2] = *(v0 + 48);
  v37[3] = v22;
  v23 = *(*(*(v14 + 120) + 96) + 32);
  ObjectType = swift_getObjectType();
  FeedContextFactoryType.createFeedContext()(ObjectType, v23);
  sub_1D60B8884(v16, v17, v37, v15, v36);
  sub_1D60CBC50(v15, type metadata accessor for FeedContext);
  sub_1D5B54578(0, &unk_1EC8850B0, type metadata accessor for DebugFormatWorkspace, MEMORY[0x1E69E6F90]);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7273AE0;
  sub_1D60CBBE8(v36, v26 + v25, type metadata accessor for DebugFormatWorkspace);

  v27 = sub_1D725B30C();
  sub_1D6986DE4(v26);
  v27(v0 + 384, 0);

  v28 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v28;
  *(v0 + 360) = *(v0 + 176);
  v29 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v29;
  v30 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v30;
  v31 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v31;
  v32 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 375) = *(v0 + 191);
  *(v0 + 248) = v32;
  v33 = swift_task_alloc();
  *(v0 + 560) = v33;
  *v33 = v0;
  v33[1] = sub_1D60B84E8;
  v34 = *(v0 + 528);
  v35 = *(v0 + 504);

  return sub_1D60B9658(v35, v0 + 200, v34);
}

uint64_t sub_1D60B84E8()
{
  v2 = *v1;
  (*v1)[71] = v0;

  if (v0)
  {
    sub_1D60CB820(v2[66], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v3 = v2[69];
    v4 = v2[68];
    v5 = sub_1D60B878C;
  }

  else
  {
    v6 = v2[66];

    sub_1D60CB820(v6, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v3 = v2[69];
    v4 = v2[68];
    v5 = sub_1D60B8664;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D60B8664()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v7 = v0[52];

  (*(v2 + 8))(v1, v3);
  sub_1D60CBDE4(v4, v7, type metadata accessor for DebugFormatWorkspace);
  (*(v5 + 56))(v7, 0, 1, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D60B878C()
{
  v2 = v0[62];
  v1 = v0[63];
  v3 = v0[61];
  v4 = v0[59];

  sub_1D60CBC50(v4, type metadata accessor for DebugFormatWorkspace);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D60B8884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v123 = a4;
  v124 = a5;
  v125 = a2;
  v143 = a1;
  v135 = sub_1D725A93C();
  MEMORY[0x1EEE9AC00](v135, v6);
  v134 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatWorkspaceGroup();
  v138 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v133 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v132 = &v122 - v13;
  v14 = type metadata accessor for DebugFormatWorkspaceGroup();
  v130 = *(v14 - 8);
  v131 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v122 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3[9];
  v173 = a3[8];
  v174 = v21;
  *v175 = a3[10];
  *&v175[15] = *(a3 + 175);
  v22 = a3[5];
  v169 = a3[4];
  v170 = v22;
  v23 = a3[7];
  v171 = a3[6];
  v172 = v23;
  v24 = a3[1];
  v165 = *a3;
  v166 = v24;
  v25 = a3[3];
  v167 = a3[2];
  v168 = v25;
  v26 = *(&v25 + 1);
  v176[0] = *(&v25 + 1);
  v27 = MEMORY[0x1E69E7CC0];
  v164 = MEMORY[0x1E69E7CC0];
  v28 = *(*(&v25 + 1) + 16);
  v142 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;
  result = sub_1D60CF4D8(v176, v163, &qword_1EC883538, sub_1D60CEDD4, sub_1D60CEEE4);
  if (v28)
  {
    v30 = 0;
    v31 = v26 + 40;
    v139 = v28;
    v127 = v28 - 1;
    v136 = MEMORY[0x1E69E7CC0];
    v137 = v26 + 40;
    v128 = v17;
    v129 = v20;
    v140 = v26;
    while (1)
    {
      v32 = (v31 + 16 * v30);
      v33 = v30;
      while (1)
      {
        if (v33 >= *(v26 + 16))
        {
          __break(1u);
          return result;
        }

        v34 = *v32;
        v141 = *(v32 - 1);
        v35 = v34;
        swift_bridgeObjectRetain_n();

        sub_1D725B31C();

        memcpy(v163, v162, sizeof(v163));
        v36 = *&v163[6];

        sub_1D60CEF18(v163);

        if (*(v36 + 16))
        {
          break;
        }

        result = swift_bridgeObjectRelease_n();
LABEL_5:
        v26 = v140;
        ++v33;
        v32 += 2;
        if (v139 == v33)
        {
          v20 = v129;
          goto LABEL_16;
        }
      }

      sub_1D5B69D90(v141, v35);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        break;
      }

      MEMORY[0x1DA6F9CE0](v39);
      v26 = v140;
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      v30 = v33 + 1;
      result = sub_1D726278C();
      v136 = v164;
      v20 = v129;
      v31 = v137;
      if (v127 == v33)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_5;
  }

  v136 = v27;
LABEL_16:
  sub_1D60CEF6C(v176);
  v40 = swift_allocObject();
  sub_1D5F588A0(&v146);
  v41 = v159;
  *(v40 + 208) = v158;
  *(v40 + 224) = v41;
  *(v40 + 240) = v160;
  *(v40 + 256) = v161;
  v42 = v155;
  *(v40 + 144) = v154;
  *(v40 + 160) = v42;
  v43 = v157;
  *(v40 + 176) = v156;
  *(v40 + 192) = v43;
  v44 = v151;
  *(v40 + 80) = v150;
  *(v40 + 96) = v44;
  v45 = v153;
  *(v40 + 112) = v152;
  *(v40 + 128) = v45;
  v46 = v147;
  *(v40 + 16) = v146;
  *(v40 + 32) = v46;
  v47 = v149;
  *(v40 + 48) = v148;
  *(v40 + 64) = v47;
  v137 = v40;
  sub_1D60CBBE8(v125, v20, type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    sub_1D60CBC50(v20, type metadata accessor for DebugFormatWorkspaceKind);
  }

  else if ((EnumCaseMultiPayload - 2) < 2)
  {
    v49 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key;
    v50 = *(v143 + *(type metadata accessor for DebugGroupLayoutKey() + 24) + v49 + 64);
    if (*(v50 + 16) && (v51 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v52 & 1) != 0) && (sub_1D5B68374(*(v50 + 56) + 40 * v51, v162), sub_1D5B49474(0, qword_1EDF431A0), swift_dynamicCast()))
    {
      nullsub_1();
    }

    else
    {
      v163[12] = v158;
      v163[13] = v159;
      v163[14] = v160;
      *&v163[15] = v161;
      v163[8] = v154;
      v163[9] = v155;
      v163[10] = v156;
      v163[11] = v157;
      v163[4] = v150;
      v163[5] = v151;
      v163[6] = v152;
      v163[7] = v153;
      v163[0] = v146;
      v163[1] = v147;
      v163[2] = v148;
      v163[3] = v149;
    }

    v53 = v137;
    v54 = *(v137 + 224);
    v162[12] = *(v137 + 208);
    v162[13] = v54;
    v162[14] = *(v137 + 240);
    *&v162[15] = *(v137 + 256);
    v55 = *(v137 + 160);
    v162[8] = *(v137 + 144);
    v162[9] = v55;
    v56 = *(v137 + 192);
    v162[10] = *(v137 + 176);
    v162[11] = v56;
    v57 = *(v137 + 96);
    v162[4] = *(v137 + 80);
    v162[5] = v57;
    v58 = *(v137 + 128);
    v162[6] = *(v137 + 112);
    v162[7] = v58;
    v59 = *(v137 + 32);
    v162[0] = *(v137 + 16);
    v162[1] = v59;
    v60 = *(v137 + 64);
    v162[2] = *(v137 + 48);
    v162[3] = v60;
    v61 = v163[13];
    *(v137 + 208) = v163[12];
    *(v53 + 224) = v61;
    *(v53 + 240) = v163[14];
    *(v53 + 256) = *&v163[15];
    v62 = v163[9];
    *(v53 + 144) = v163[8];
    *(v53 + 160) = v62;
    v63 = v163[11];
    *(v53 + 176) = v163[10];
    *(v53 + 192) = v63;
    v64 = v163[5];
    *(v53 + 80) = v163[4];
    *(v53 + 96) = v64;
    v65 = v163[7];
    *(v53 + 112) = v163[6];
    *(v53 + 128) = v65;
    v66 = v163[1];
    *(v53 + 16) = v163[0];
    *(v53 + 32) = v66;
    v67 = v163[3];
    *(v53 + 48) = v163[2];
    *(v53 + 64) = v67;
    sub_1D60CB8FC(v162, qword_1EDF34BC0, &type metadata for FeedPaywall);
  }

  v68 = v169;
  v69 = *(v169 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  if (v69)
  {
    v145 = MEMORY[0x1E69E7CC0];
    sub_1D69989D8(0, v69, 0);
    v141 = 0;
    v71 = v145;
    v72 = *(v138 + 80);
    v73 = v68 + ((v72 + 32) & ~v72);
    v129 = v72;
    v127 = *(v138 + 9);
    v128 = (v72 + 211) & ~v72;
    v126 = (v126 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = v122;
    do
    {
      v139 = v69;
      v140 = v71;
      v75 = v132;
      v138 = type metadata accessor for FormatWorkspaceGroup;
      sub_1D60CBBE8(v73, v132, type metadata accessor for FormatWorkspaceGroup);
      v76 = swift_allocObject();
      swift_weakInit();
      v77 = swift_allocObject();
      swift_weakInit();
      v78 = v133;
      sub_1D60CBBE8(v75, v133, type metadata accessor for FormatWorkspaceGroup);
      v79 = v126;
      v80 = swift_allocObject();
      *(v80 + 16) = v76;
      *(v80 + 24) = v77;
      v81 = v174;
      *(v80 + 160) = v173;
      *(v80 + 176) = v81;
      *(v80 + 192) = *v175;
      *(v80 + 207) = *&v175[15];
      v82 = v170;
      *(v80 + 96) = v169;
      *(v80 + 112) = v82;
      v83 = v172;
      *(v80 + 128) = v171;
      *(v80 + 144) = v83;
      v84 = v166;
      *(v80 + 32) = v165;
      *(v80 + 48) = v84;
      v85 = v168;
      *(v80 + 64) = v167;
      *(v80 + 80) = v85;
      sub_1D60CBDE4(v78, v80 + v128, type metadata accessor for FormatWorkspaceGroup);
      *(v80 + v79) = v137;
      *&v162[0] = v70;
      sub_1D5ECF1C0(&v165, v163);
      sub_1D5B737E8(&qword_1EDF3BDB0, MEMORY[0x1E69D6420]);
      v86 = MEMORY[0x1E69D6420];
      sub_1D5B54578(0, &qword_1EDF1B5B0, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
      sub_1D60CBA78(&qword_1EDF1B5A0, &qword_1EDF1B5B0, v86);

      sub_1D7263B6C();
      sub_1D60CF0B0();
      swift_allocObject();
      v87 = sub_1D725B7AC();

      sub_1D725B31C();

      memcpy(v163, v162, sizeof(v163));
      memcpy(v144, v162, sizeof(v144));
      v88 = sub_1D71689D8();
      v89 = sub_1D60CEF18(v163);
      MEMORY[0x1EEE9AC00](v89, v90);
      *(&v122 - 2) = v75;
      v91 = v141;
      v92 = sub_1D5E3EA18(sub_1D60CF124, (&v122 - 4), v88);
      v141 = v91;

      sub_1D60CBBE8(v75, v74, v138);
      v93 = sub_1D60C8730(v92, v87, v136);
      v94 = v131;
      *(v74 + *(v131 + 20)) = v92;
      *(v74 + *(v94 + 24)) = v87;
      *(v74 + *(v94 + 28)) = v93;
      v95 = v75;
      v71 = v140;
      sub_1D60CBC50(v95, type metadata accessor for FormatWorkspaceGroup);
      v145 = v71;
      v97 = *(v71 + 16);
      v96 = *(v71 + 24);
      if (v97 >= v96 >> 1)
      {
        sub_1D69989D8(v96 > 1, v97 + 1, 1);
        v74 = v122;
        v71 = v145;
      }

      *(v71 + 16) = v97 + 1;
      sub_1D60CBDE4(v74, v71 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v97, type metadata accessor for DebugFormatWorkspaceGroup);
      v73 += v127;
      v69 = v139 - 1;
      v70 = MEMORY[0x1E69E7CC0];
    }

    while (v139 != 1);
  }

  else
  {
    v71 = MEMORY[0x1E69E7CC0];
  }

  v98 = v124;
  sub_1D60CBBE8(v125, v124, type metadata accessor for DebugFormatWorkspaceKind);
  v99 = type metadata accessor for DebugFormatWorkspace();
  sub_1D60CBBE8(v123, v98 + v99[6], type metadata accessor for FeedContext);
  v100 = v137;
  swift_beginAccess();
  v101 = *(v100 + 224);
  v163[12] = *(v100 + 208);
  v163[13] = v101;
  v163[14] = *(v100 + 240);
  *&v163[15] = *(v100 + 256);
  v102 = *(v100 + 160);
  v163[8] = *(v100 + 144);
  v163[9] = v102;
  v103 = *(v100 + 192);
  v163[10] = *(v100 + 176);
  v163[11] = v103;
  v104 = *(v100 + 96);
  v163[4] = *(v100 + 80);
  v163[5] = v104;
  v105 = *(v100 + 128);
  v163[6] = *(v100 + 112);
  v163[7] = v105;
  v106 = *(v100 + 32);
  v163[0] = *(v100 + 16);
  v163[1] = v106;
  v107 = *(v100 + 64);
  v163[2] = *(v100 + 48);
  v163[3] = v107;
  sub_1D5ECF1C0(&v165, v162);
  sub_1D60CB96C(v163, v162, qword_1EDF34BC0, &type metadata for FeedPaywall, MEMORY[0x1E69E6720], sub_1D60CFD84);

  v108 = v98 + v99[5];
  v109 = v172;
  *(v108 + 96) = v171;
  *(v108 + 112) = v109;
  v110 = v170;
  *(v108 + 64) = v169;
  *(v108 + 80) = v110;
  *(v108 + 175) = *&v175[15];
  v111 = *v175;
  *(v108 + 144) = v174;
  *(v108 + 160) = v111;
  *(v108 + 128) = v173;
  v112 = v166;
  *v108 = v165;
  *(v108 + 16) = v112;
  v113 = v168;
  *(v108 + 32) = v167;
  *(v108 + 48) = v113;
  v114 = v98 + v99[7];
  v115 = v163[13];
  *(v114 + 192) = v163[12];
  *(v114 + 208) = v115;
  *(v114 + 224) = v163[14];
  *(v114 + 240) = *&v163[15];
  v116 = v163[9];
  *(v114 + 128) = v163[8];
  *(v114 + 144) = v116;
  v117 = v163[11];
  *(v114 + 160) = v163[10];
  *(v114 + 176) = v117;
  v118 = v163[5];
  *(v114 + 64) = v163[4];
  *(v114 + 80) = v118;
  v119 = v163[7];
  *(v114 + 96) = v163[6];
  *(v114 + 112) = v119;
  v120 = v163[1];
  *v114 = v163[0];
  *(v114 + 16) = v120;
  v121 = v163[3];
  *(v114 + 32) = v163[2];
  *(v114 + 48) = v121;
  *(v98 + v99[8]) = v136;
  *(v98 + v99[9]) = v71;
  return result;
}

uint64_t sub_1D60B9658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 416) = a3;
  *(v4 + 424) = v3;
  *(v4 + 400) = a1;
  *(v4 + 408) = a2;
  v6 = sub_1D72577EC();
  *(v4 + 432) = v6;
  *(v4 + 440) = *(v6 - 8);
  *(v4 + 448) = swift_task_alloc();
  v7 = sub_1D7257C7C();
  *(v4 + 456) = v7;
  *(v4 + 464) = *(v7 - 8);
  *(v4 + 472) = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v4 + 480) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8);
  *(v4 + 488) = swift_task_alloc();
  v9 = type metadata accessor for DebugFormatCacheFile();
  *(v4 + 496) = v9;
  *(v4 + 504) = *(v9 - 8);
  *(v4 + 512) = swift_task_alloc();
  v10 = sub_1D72585BC();
  *(v4 + 520) = v10;
  *(v4 + 528) = *(v10 - 8);
  *(v4 + 536) = swift_task_alloc();
  *(v4 + 544) = swift_task_alloc();
  sub_1D5B54578(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = type metadata accessor for FormatFile();
  *(v4 + 568) = swift_task_alloc();
  v11 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v11;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 191) = *(a2 + 175);
  v12 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v12;
  v13 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v13;
  v14 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v14;
  v15 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D60B99A8, 0, 0);
}

uint64_t sub_1D60B99A8()
{
  v1 = v0[71];
  v2 = v0[51];
  v3 = v2[7];
  v5 = v2[4];
  v4 = v2[5];
  *(v1 + 96) = v2[6];
  *(v1 + 112) = v3;
  *(v1 + 64) = v5;
  *(v1 + 80) = v4;
  v7 = v2[9];
  v6 = v2[10];
  v8 = v2[8];
  *(v1 + 175) = *(v2 + 175);
  *(v1 + 144) = v7;
  *(v1 + 160) = v6;
  *(v1 + 128) = v8;
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[3];
  *(v1 + 32) = v2[2];
  *(v1 + 48) = v11;
  *v1 = v9;
  *(v1 + 16) = v10;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D5ECF1C0((v0 + 2), (v0 + 25));
  sub_1D6BCED58(&unk_1F50FBE20);
  sub_1D5B737E8(&qword_1EC8857F0, type metadata accessor for FormatFile);
  v12 = sub_1D72578BC();
  v0[72] = v12;
  v0[73] = v13;
  v52 = v12;
  v53 = v13;
  v14 = v0[68];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[63];
  v18 = v0[61];
  v50 = v0[62];
  v51 = v0[58];
  v19 = v0[52];

  sub_1D725849C();
  sub_1D7257BCC();
  v20 = *(v15 + 8);
  v0[74] = v20;
  v0[75] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v14, v16);
  sub_1D60CB96C(v19, v18, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D5B54578);
  v21 = (*(v17 + 48))(v18, 1, v50);
  v22 = (v51 + 48);
  if (v21 == 1)
  {
    sub_1D60CB820(v0[61], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v23 = *v22;
  }

  else
  {
    v24 = v0[69];
    v25 = v0[57];
    sub_1D60CBDE4(v0[61], v0[64], type metadata accessor for DebugFormatCacheFile);
    v23 = *v22;
    if (!(*v22)(v24, 1, v25))
    {
      sub_1D5B54578(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
      sub_1D7257B5C();
      *(swift_allocObject() + 16) = xmmword_1D7273AE0;
      sub_1D7257B2C();
      sub_1D7257B7C();
    }

    sub_1D60CBC50(v0[64], type metadata accessor for DebugFormatCacheFile);
  }

  v26 = v0[69];
  v27 = v0[57];
  v28 = v23(v26, 1, v27);
  v29 = v0[66];
  v30 = v0[65];
  v31 = v0[60];
  if (v28)
  {
    (*(v29 + 56))(v0[60], 1, 1, v0[65]);
LABEL_9:
    v34 = v0[71];
    v35 = v0[69];
    sub_1D60CB820(v0[60], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D60CEC74();
    v36 = swift_allocError();
    *v37 = 1;
    swift_willThrow();
    sub_1D5B952F8(v52, v53);
    sub_1D60CBC50(v34, type metadata accessor for FormatFile);
    sub_1D60CB820(v35, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    v38 = v36;
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    sub_1D5F5EBA0(v36, 0, 0, 0xD000000000000024, 0x80000001D73C9320);

    swift_willThrow();

    v39 = v0[1];

    return v39();
  }

  v33 = v0[58];
  v32 = v0[59];
  (*(v33 + 16))(v32, v26, v27);
  sub_1D7257BDC();
  (*(v33 + 8))(v32, v27);
  if ((*(v29 + 48))(v31, 1, v30) == 1)
  {
    goto LABEL_9;
  }

  v41 = v0[68];
  v42 = v0[67];
  v43 = v0[66];
  v44 = v0[65];
  v45 = v0[56];
  v46 = v0[53];
  (*(v43 + 32))(v42, v0[60], v44);
  (*(v43 + 16))(v41, v42, v44);
  sub_1D72577AC();
  sub_1D725774C();
  sub_1D72577DC();
  sub_1D5E3E824(v52, v53);
  sub_1D72577CC();
  v47 = *(v46 + 128);
  v48 = swift_task_alloc();
  *(v48 + 16) = v45;
  *(v48 + 24) = v47;
  sub_1D60CFD84(0, &qword_1EC883518, &type metadata for DebugFormatWorkspaceResponse, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0[76] = sub_1D725BBAC();

  v49 = swift_task_alloc();
  v0[77] = v49;
  *v49 = v0;
  v49[1] = sub_1D60BA1C4;

  return MEMORY[0x1EEE44EE0](v0 + 48);
}

uint64_t sub_1D60BA1C4()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_1D60BA4F8;
  }

  else
  {
    v2 = sub_1D60BA2F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60BA2F8()
{
  v1 = v0[49];
  v15 = v0[48];
  v2 = qword_1EC87D498;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[69];
  v7 = v0[67];
  v8 = v0[65];
  v9 = v0[55];
  v13 = v0[74];
  v14 = v0[56];
  v12 = v0[54];
  sub_1D5F5EBA0(2, 0, 0, v15, v1);

  sub_1D5B952F8(v4, v3);
  v13(v7, v8);
  sub_1D60CBC50(v5, type metadata accessor for FormatFile);
  (*(v9 + 8))(v14, v12);
  sub_1D60CB820(v6, &unk_1EDF43B50, MEMORY[0x1E69681B8]);

  v10 = v0[1];

  return v10(v15, v1);
}

uint64_t sub_1D60BA4F8()
{
  v1 = v0[74];
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[67];
  v5 = v0[65];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  sub_1D5B952F8(v0[72], v0[73]);
  v1(v4, v5);
  sub_1D60CBC50(v2, type metadata accessor for FormatFile);
  (*(v7 + 8))(v6, v8);
  sub_1D60CB820(v3, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
  v9 = v0[78];
  v10 = v9;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  sub_1D5F5EBA0(v9, 0, 0, 0xD000000000000024, 0x80000001D73C9320);

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D60BA6F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 6064) = v4;
  *(v5 + 4027) = a4;
  *(v5 + 6056) = a3;
  *(v5 + 6048) = a1;
  *(v5 + 6072) = type metadata accessor for DebugFormatBindingRequest();
  *(v5 + 6080) = swift_task_alloc();
  *(v5 + 6088) = type metadata accessor for FormatContentSubgroup();
  *(v5 + 6096) = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  *(v5 + 6104) = v8;
  *(v5 + 6112) = *(v8 - 8);
  *(v5 + 6120) = swift_task_alloc();
  *(v5 + 6128) = swift_task_alloc();
  *(v5 + 6136) = swift_task_alloc();
  v9 = type metadata accessor for FormatWorkspaceGroup();
  *(v5 + 6144) = v9;
  *(v5 + 6152) = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *(a2 + 176);
  *(v5 + 2304) = *(a2 + 160);
  *(v5 + 2320) = v11;
  *(v5 + 2336) = *(a2 + 192);
  v12 = *(a2 + 112);
  *(v5 + 2240) = *(a2 + 96);
  *(v5 + 2256) = v12;
  v13 = *(a2 + 144);
  *(v5 + 2272) = *(a2 + 128);
  *(v5 + 2288) = v13;
  v14 = *(a2 + 48);
  *(v5 + 2176) = *(a2 + 32);
  *(v5 + 2192) = v14;
  v15 = *(a2 + 80);
  *(v5 + 2208) = *(a2 + 64);
  *(v5 + 2224) = v15;
  v16 = *(a2 + 16);
  *(v5 + 2144) = *a2;
  *(v5 + 2160) = v16;
  v17 = *(a3 + 144);
  *(v5 + 5632) = *(a3 + 128);
  *(v5 + 5648) = v17;
  *(v5 + 5664) = *(a3 + 160);
  v18 = *(a3 + 80);
  *(v5 + 5568) = *(a3 + 64);
  *(v5 + 5584) = v18;
  v19 = *(a3 + 112);
  *(v5 + 5600) = *(a3 + 96);
  *(v5 + 5616) = v19;
  v20 = *(a3 + 16);
  *(v5 + 5504) = *a3;
  *(v5 + 5520) = v20;
  v21 = *(a3 + 48);
  *(v5 + 5536) = *(a3 + 32);
  *(v5 + 6160) = v10;
  *(v5 + 2352) = *(a2 + 208);
  *(v5 + 5679) = *(a3 + 175);
  *(v5 + 5552) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1D60BA94C, 0, 0);
}

uint64_t sub_1D60BA94C()
{
  v202 = v0;
  v1 = *(v0 + 4027);
  v2 = *(v0 + 6056);
  *(v0 + 6168) = *(v0 + 5504);
  *(v0 + 6176) = *(v0 + 5512);
  v3 = *(v2 + 32);
  *(v0 + 6008) = *(v2 + 16);
  *(v0 + 6024) = v3;
  v189 = (v0 + 6008);
  v190 = (v0 + 3835);
  v4 = *(v2 + 52);
  *(v0 + 3835) = *(v2 + 49);
  *(v0 + 3838) = v4;
  v5 = *(v0 + 5560);
  v7 = *(v2 + 112);
  v6 = *(v2 + 128);
  v8 = *(v2 + 160);
  *(v0 + 5880) = *(v2 + 144);
  *(v0 + 5896) = v8;
  *(v0 + 5848) = v7;
  *(v0 + 5864) = v6;
  v9 = *(v2 + 64);
  v10 = *(v2 + 96);
  *(v0 + 5816) = *(v2 + 80);
  *(v0 + 5832) = v10;
  v188 = (v0 + 5800);
  *(v0 + 5800) = v9;
  v178 = *(v0 + 5681);
  v180 = *(v0 + 5680);
  v176 = *(v0 + 5682);
  sub_1D5ECF1C0(v0 + 5504, v0 + 4952);

  v11 = *(v0 + 2176);
  *(v0 + 5912) = *(v0 + 2160);
  *(v0 + 5928) = v11;
  v183 = (v0 + 5912);
  v184 = (v0 + 5688);
  *(v0 + 5944) = *(v0 + 2192);
  *(v0 + 5960) = *(v0 + 2208);
  v12 = *(v0 + 2216);
  *(v0 + 6184) = v12;
  v13 = *(v0 + 2272);
  v14 = *(v0 + 2304);
  *(v0 + 5752) = *(v0 + 2288);
  *(v0 + 5768) = v14;
  *(v0 + 5784) = *(v0 + 2320);
  v15 = *(v0 + 2240);
  *(v0 + 5688) = *(v0 + 2224);
  *(v0 + 5704) = v15;
  *(v0 + 5720) = *(v0 + 2256);
  *(v0 + 5736) = v13;
  v16 = *(v0 + 2336);
  *(v0 + 6336) = v16;
  v17 = *(v0 + 2337);
  v185 = v0 + 6320;
  v186 = (v0 + 4096);
  *(v0 + 6328) = v17;
  v18 = *(v0 + 2338);
  *(v0 + 3842) = v18;
  *(v0 + 6320) = *(v0 + 2339);
  *(v0 + 6324) = *(v0 + 2343);
  v19 = *(v0 + 2344);
  *(v0 + 6192) = *(v0 + 2352);

  sub_1D5F2B0D8(v0 + 2144, v0 + 3008);

  v20 = MEMORY[0x1E69E7CC0];
  v199 = v0;
  if (v1)
  {

    v21 = v16 & 1;
    v22 = v17 & 1;
    v23 = v18 & 1;
    v20 = v19;
    goto LABEL_18;
  }

  v24 = *(v0 + 5560);
  *&v200[0] = MEMORY[0x1E69E7CC0];
  v25 = *(v24 + 16);

  if (!v25)
  {
    goto LABEL_17;
  }

  v27 = 0;
  v191 = -v25;
  v193 = v24;
  v28 = v24 + 40;
  v173 = v24 + 40;
  do
  {
    v174 = v20;
    v29 = (v28 + 16 * v27++);
    while (1)
    {
      if ((v27 - 1) >= *(v24 + 16))
      {
LABEL_44:
        __break(1u);
        return result;
      }

      v30 = *v29;
      v197 = *(v29 - 1);
      swift_bridgeObjectRetain_n();

      sub_1D725B31C();

      memcpy((v199 + 16), (v199 + 352), 0x150uLL);
      v31 = *(v199 + 112);

      sub_1D60CEF18(v199 + 16);

      if (*(v31 + 16))
      {
        break;
      }

      swift_bridgeObjectRelease_n();
LABEL_7:

      v24 = v193;
      ++v27;
      v29 += 2;
      if (v191 + v27 == 1)
      {
        v20 = v174;
        goto LABEL_17;
      }
    }

    sub_1D5B69D90(v197, v30);
    v33 = v32;

    if ((v33 & 1) == 0)
    {

      goto LABEL_7;
    }

    MEMORY[0x1DA6F9CE0](v34);
    v24 = v193;
    if (*((*&v200[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v200[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    result = sub_1D726278C();
    v20 = *&v200[0];
    v28 = v173;
  }

  while (v191 + v27);
LABEL_17:

  v0 = v199;

  v12 = v5;
  v22 = v178;
  v21 = v180;
  v23 = v176;
LABEL_18:
  *(v0 + 6208) = v20;
  *(v0 + 4030) = v23;
  *(v0 + 6200) = v12;
  *(v0 + 4029) = v21;
  *(v0 + 4028) = v22;
  v35 = *(v0 + 2352);
  *(v0 + 6216) = v35;
  *(v0 + 6040) = v35;
  sub_1D5B54578(0, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup, MEMORY[0x1E69E62F8]);
  sub_1D60CBA78(&qword_1EC883590, &qword_1EC8803D8, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D5B737E8(&qword_1EC883598, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  result = sub_1D72623BC();
  *(v0 + 6224) = result;
  v36 = *(v0 + 5568);
  *(v0 + 6232) = v36;
  v37 = *(v36 + 16);
  *(v0 + 6240) = v37;
  if (!v37)
  {
LABEL_29:

    v65 = v189[1];
    *(v0 + 3672) = *v189;
    *(v0 + 3688) = v65;
    v66 = v188[5];
    *(v0 + 3784) = v188[4];
    *(v0 + 3800) = v66;
    *(v0 + 3816) = v188[6];
    v67 = v188[1];
    *(v0 + 3720) = *v188;
    *(v0 + 3736) = v67;
    v68 = v188[3];
    *(v0 + 3752) = v188[2];
    *(v0 + 3768) = v68;
    v69 = v183[1];
    *(v0 + 4064) = v183[2];
    v70 = *v183;
    *(v0 + 4048) = v69;
    *(v0 + 4032) = v70;
    v71 = v184[2];
    *(v0 + 4144) = v184[3];
    v72 = v184[5];
    *(v0 + 4160) = v184[4];
    v73 = *(v0 + 6208);
    v175 = *(v0 + 6200);
    v74 = *(v0 + 4029);
    v179 = v74;
    v182 = *(v0 + 4030);
    v75 = *(v0 + 4028);
    v177 = v75;
    v76 = *(v0 + 6184);
    v77 = *(v0 + 6176);
    v170 = *(v0 + 6168);
    strcpy((v0 + 3656), "builtin:editor");
    *(v0 + 3705) = *v190;
    *(v0 + 3671) = -18;
    *(v0 + 3704) = 0;
    *(v0 + 3708) = *(v190 + 3);
    *(v0 + 3712) = v175;
    *(v0 + 3832) = v74;
    *(v0 + 3833) = v75;
    *(v0 + 3834) = v182;
    *(v0 + 4080) = *(v183 + 6);
    *(v0 + 4088) = v76;
    *(v0 + 4176) = v72;
    *(v0 + 4192) = v184[6];
    *(v0 + 4128) = v71;
    v78 = *v184;
    *(v0 + 4112) = v184[1];
    *(v0 + 4096) = v78;
    v186[112] = v186[2240];
    v186[113] = v186[2232];
    v186[114] = *(v0 + 3842);
    sub_1D5ECF1C0(v0 + 3656, v0 + 4216);
    sub_1D5ECF21C(v0 + 4032);
    v79 = *(v0 + 3672);
    *v183 = *(v0 + 3656);
    v183[1] = v79;
    v81 = *(v0 + 3656);
    v80 = *(v0 + 3672);
    v183[2] = *(v0 + 3688);
    v82 = *(v0 + 3768);
    v84 = *(v0 + 3784);
    v83 = *(v0 + 3800);
    v184[4] = v84;
    v184[5] = v83;
    v85 = *(v0 + 3800);
    v184[6] = *(v0 + 3816);
    v86 = *(v0 + 3736);
    *v184 = *(v0 + 3720);
    v184[1] = v86;
    v87 = *(v0 + 3768);
    v89 = *(v0 + 3720);
    v88 = *(v0 + 3736);
    v90 = *(v0 + 3752);
    v184[2] = v90;
    v184[3] = v87;
    v91 = *(v0 + 3688);
    *(v0 + 3256) = v80;
    *(v0 + 3272) = v91;
    *(v0 + 3240) = v81;
    *(v0 + 3304) = v89;
    *(v0 + 3320) = v88;
    v92 = *(v0 + 3816);
    *(v0 + 3384) = v85;
    *(v0 + 3400) = v92;
    *(v183 + 6) = *(v0 + 3704);
    v93 = *(v0 + 3712);
    v94 = *(v0 + 3832);
    v187 = v94;
    v95 = *(v0 + 3834);
    v171 = v95;
    v172 = *(v0 + 3833);
    *(v0 + 3224) = v170;
    *(v0 + 3232) = v77;
    *(v0 + 3288) = *(v0 + 3704);
    *(v0 + 3296) = v93;
    *(v0 + 3352) = v82;
    *(v0 + 3368) = v84;
    *(v0 + 3336) = v90;
    *(v0 + 3416) = v94;
    *(v0 + 3417) = v172;
    *(v0 + 3418) = v95;
    *(v0 + 3419) = *v185;
    *(v0 + 3423) = *(v185 + 4);
    *(v0 + 3424) = v73;
    v96 = MEMORY[0x1E69E7CC0];
    *(v0 + 3432) = MEMORY[0x1E69E7CC0];
    *(v0 + 3648) = v96;
    v97 = *(v0 + 3384);
    *(v0 + 3616) = *(v0 + 3400);
    *(v0 + 3600) = v97;
    v98 = *(v0 + 3352);
    *(v0 + 3584) = *(v0 + 3368);
    *(v0 + 3568) = v98;
    v99 = *(v0 + 3320);
    *(v0 + 3552) = *(v0 + 3336);
    *(v0 + 3536) = v99;
    v100 = *(v0 + 3288);
    *(v0 + 3520) = *(v0 + 3304);
    *(v0 + 3504) = v100;
    v101 = *(v0 + 3256);
    *(v0 + 3488) = *(v0 + 3272);
    *(v0 + 3472) = v101;
    v102 = *(v0 + 3224);
    *(v0 + 3456) = *(v0 + 3240);
    *(v0 + 3440) = v102;
    *(v0 + 3632) = *(v0 + 3416);
    nullsub_1();
    v103 = *(v0 + 3616);
    v200[10] = *(v0 + 3600);
    v200[11] = v103;
    v200[12] = *(v0 + 3632);
    v201 = *(v0 + 3648);
    v104 = *(v0 + 3552);
    v200[6] = *(v0 + 3536);
    v200[7] = v104;
    v105 = *(v0 + 3584);
    v200[8] = *(v0 + 3568);
    v200[9] = v105;
    v106 = *(v0 + 3488);
    v200[2] = *(v0 + 3472);
    v200[3] = v106;
    v107 = *(v0 + 3520);
    v200[4] = *(v0 + 3504);
    v200[5] = v107;
    v108 = *(v0 + 3456);
    v200[0] = *(v0 + 3440);
    v200[1] = v108;
    sub_1D5F2B0D8(v0 + 3224, v0 + 2792);
    sub_1D6AA103C(v200);
    *(v0 + 2736) = *(v0 + 3600);
    *(v0 + 2752) = *(v0 + 3616);
    *(v0 + 2768) = *(v0 + 3632);
    *(v0 + 2784) = *(v0 + 3648);
    *(v0 + 2672) = *(v0 + 3536);
    *(v0 + 2688) = *(v0 + 3552);
    *(v0 + 2704) = *(v0 + 3568);
    *(v0 + 2720) = *(v0 + 3584);
    *(v0 + 2608) = *(v0 + 3472);
    *(v0 + 2624) = *(v0 + 3488);
    *(v0 + 2640) = *(v0 + 3504);
    *(v0 + 2656) = *(v0 + 3520);
    *(v0 + 2576) = *(v0 + 3440);
    *(v0 + 2592) = *(v0 + 3456);

    sub_1D725B32C();

    sub_1D6AA1610();
    *(v0 + 1928) = v170;
    *(v0 + 1936) = v77;
    v109 = v183[1];
    *(v0 + 1944) = *v183;
    *(v0 + 1960) = v109;
    *(v0 + 1976) = v183[2];
    *(v0 + 1992) = *(v183 + 6);
    *(v0 + 2000) = v93;
    v110 = v184[5];
    *(v0 + 2072) = v184[4];
    *(v0 + 2088) = v110;
    *(v0 + 2104) = v184[6];
    v111 = v184[1];
    *(v0 + 2008) = *v184;
    *(v0 + 2024) = v111;
    v112 = v184[3];
    *(v0 + 2040) = v184[2];
    *(v0 + 2056) = v112;
    *(v0 + 2120) = v187;
    *(v0 + 2121) = v172;
    *(v0 + 2122) = v171;
    *(v0 + 2127) = *(v185 + 4);
    *(v0 + 2123) = *v185;
    *(v0 + 2128) = v73;
    *(v0 + 2136) = MEMORY[0x1E69E7CC0];
    sub_1D5F2B134(v0 + 1928);
    strcpy((v0 + 3848), "builtin:editor");
    *(v0 + 3863) = -18;
    v113 = v189[1];
    *(v0 + 3864) = *v189;
    *(v0 + 3880) = v113;
    *(v0 + 3896) = 0;
    *(v0 + 3897) = *v190;
    *(v0 + 3900) = *(v190 + 3);
    *(v0 + 3904) = v175;
    v114 = v188[1];
    *(v0 + 3912) = *v188;
    *(v0 + 3928) = v114;
    v115 = v188[2];
    v116 = v188[3];
    v117 = v188[6];
    *(v0 + 3992) = v188[5];
    *(v0 + 4008) = v117;
    v118 = v188[4];
    *(v0 + 3960) = v116;
    *(v0 + 3976) = v118;
    *(v0 + 3944) = v115;
    *(v0 + 4024) = v179;
    *(v0 + 4025) = v177;
    *(v0 + 4026) = v182;
    sub_1D5ECF21C(v0 + 3848);

    v119 = *(v0 + 8);

    return v119();
  }

  v38 = 0;
  v39 = v0 + 1184;
  v40 = v0 + 1432;
  v41 = (v0 + 1680);
  *(v0 + 6248) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__weather;
  *(v0 + 3844) = *(*(v0 + 6152) + 80);
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 6264) = v42;
    *(v0 + 6256) = v38;
    v43 = *(v0 + 6232);
    if (v38 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v44 = *(v0 + 6224);
    sub_1D60CBBE8(v43 + ((*(v0 + 3844) + 32) & ~*(v0 + 3844)) + *(*(v0 + 6152) + 72) * v38, *(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    if (*(v44 + 16))
    {
      v45 = sub_1D5B69D90(**(v0 + 6160), *(*(v0 + 6160) + 8));
      if (v46)
      {
        break;
      }
    }

    result = sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    v38 = *(v0 + 6256) + 1;
    if (v38 == *(v0 + 6240))
    {
      goto LABEL_29;
    }
  }

  v192 = v0 + 688;
  v181 = v0 + 936;
  v198 = v0 + 4400;
  v47 = *(v0 + 6224);
  v196 = *(v0 + 6216);
  v195 = *(v0 + 4030);
  v48 = *(v199 + 6200);
  v194 = *(v199 + 4029);
  v49 = *(v199 + 4028);
  v50 = *(v199 + 6160);
  v51 = *(v199 + 6136);
  v52 = *(v199 + 6128);
  v53 = *(v47 + 56);
  v54 = *(*(v199 + 6112) + 72);
  *(v199 + 6272) = v54;
  sub_1D60CBBE8(v53 + v54 * v45, v52, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CBDE4(v52, v51, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CF454(v50, v51);
  strcpy((v199 + 4400), "builtin:editor");
  *(v199 + 4415) = -18;
  v55 = v189[1];
  *(v199 + 4416) = *v189;
  *(v199 + 4432) = v55;
  v186[352] = 0;
  *(v199 + 4449) = *v190;
  *(v199 + 4452) = *(v190 + 3);
  *(v199 + 4456) = v48;
  v56 = v188[1];
  *(v199 + 4464) = *v188;
  *(v199 + 4480) = v56;
  v57 = v188[3];
  *(v199 + 4496) = v188[2];
  v58 = v188[4];
  v59 = v188[5];
  *(v199 + 4560) = v188[6];
  *(v199 + 4544) = v59;
  *(v199 + 4528) = v58;
  *(v199 + 4512) = v57;
  v186[480] = v194;
  v186[481] = v49;
  v186[482] = v195;
  if (!*(v196 + 16))
  {
    v40 = v192;
    sub_1D5F588A0(v192);
    v62 = v198;
    sub_1D5ECF1C0(v198, v199 + 5320);
    goto LABEL_35;
  }

  v60 = *(*(v199 + 6112) + 80);
  v61 = *(*(*(v199 + 6216) + ((v60 + 32) & ~v60) + *(*(v199 + 6104) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
  v62 = v198;
  if (!*(v61 + 16))
  {
    sub_1D5ECF1C0(v198, v199 + 5136);

    goto LABEL_32;
  }

  sub_1D5ECF1C0(v198, v199 + 4584);

  v63 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61);
  if ((v64 & 1) == 0)
  {
LABEL_32:
    sub_1D5F588A0(v39);
    v120 = *(v39 + 208);
    *(v40 + 192) = *(v39 + 192);
    *(v40 + 208) = v120;
    *(v40 + 224) = *(v39 + 224);
    *(v40 + 240) = *(v39 + 240);
    v121 = *(v39 + 144);
    *(v40 + 128) = *(v39 + 128);
    *(v40 + 144) = v121;
    v122 = *(v39 + 176);
    *(v40 + 160) = *(v39 + 160);
    *(v40 + 176) = v122;
    v123 = *(v39 + 80);
    *(v40 + 64) = *(v39 + 64);
    *(v40 + 80) = v123;
    v124 = *(v39 + 112);
    *(v40 + 96) = *(v39 + 96);
    *(v40 + 112) = v124;
    v125 = *(v39 + 16);
    *v40 = *v39;
    *(v40 + 16) = v125;
    v126 = *(v39 + 32);
    v127 = *(v39 + 48);
    goto LABEL_33;
  }

  sub_1D5B68374(*(v61 + 56) + 40 * v63, v199 + 5968);
  sub_1D5B49474(0, qword_1EDF431A0);
  if (swift_dynamicCast())
  {
    nullsub_1();
    goto LABEL_34;
  }

  sub_1D5F588A0(v181);
  v164 = *(v181 + 208);
  *(v40 + 192) = *(v181 + 192);
  *(v40 + 208) = v164;
  *(v40 + 224) = *(v181 + 224);
  *(v40 + 240) = *(v181 + 240);
  v165 = *(v181 + 144);
  *(v40 + 128) = *(v181 + 128);
  *(v40 + 144) = v165;
  v166 = *(v181 + 176);
  *(v40 + 160) = *(v181 + 160);
  *(v40 + 176) = v166;
  v167 = *(v181 + 80);
  *(v40 + 64) = *(v181 + 64);
  *(v40 + 80) = v167;
  v168 = *(v181 + 112);
  *(v40 + 96) = *(v181 + 96);
  *(v40 + 112) = v168;
  v169 = *(v181 + 16);
  *v40 = *v181;
  *(v40 + 16) = v169;
  v126 = *(v181 + 32);
  v127 = *(v181 + 48);
LABEL_33:
  *(v40 + 32) = v126;
  *(v40 + 48) = v127;
LABEL_34:

LABEL_35:
  v128 = *(v40 + 208);
  v41[12] = *(v40 + 192);
  v41[13] = v128;
  v41[14] = *(v40 + 224);
  *(v41 + 30) = *(v40 + 240);
  v129 = *(v40 + 144);
  v41[8] = *(v40 + 128);
  v41[9] = v129;
  v130 = *(v40 + 176);
  v41[10] = *(v40 + 160);
  v41[11] = v130;
  v131 = *(v40 + 80);
  v41[4] = *(v40 + 64);
  v41[5] = v131;
  v132 = *(v40 + 112);
  v41[6] = *(v40 + 96);
  v41[7] = v132;
  v133 = *(v40 + 16);
  *v41 = *v40;
  v41[1] = v133;
  v134 = *(v40 + 48);
  v41[2] = *(v40 + 32);
  v41[3] = v134;
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(&unk_1F50FBDD0);
  sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
  *(v199 + 6280) = sub_1D72578BC();
  *(v199 + 6288) = v135;

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(&unk_1F50FBDF8);
  sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
  sub_1D725A69C();
  v136 = *(v199 + 6096);
  v137 = *(v199 + 6080);
  v138 = *(v199 + 6072);

  sub_1D60CBBE8(v136, v137 + v138[5], type metadata accessor for FormatContentSubgroup);

  sub_1D725972C();

  v139 = *(v199 + 3843);
  v140 = *v62;
  v141 = *(v62 + 16);
  v142 = *(v62 + 48);
  *(v137 + 32) = *(v62 + 32);
  *(v137 + 48) = v142;
  *v137 = v140;
  *(v137 + 16) = v141;
  v143 = *(v62 + 64);
  v144 = *(v62 + 80);
  v145 = *(v62 + 112);
  *(v137 + 96) = *(v62 + 96);
  *(v137 + 112) = v145;
  *(v137 + 64) = v143;
  *(v137 + 80) = v144;
  v146 = *(v62 + 128);
  v147 = *(v62 + 144);
  v148 = *(v62 + 160);
  *(v137 + 175) = *(v62 + 175);
  *(v137 + 144) = v147;
  *(v137 + 160) = v148;
  *(v137 + 128) = v146;
  *(v137 + v138[6]) = v139;
  v149 = v137 + v138[7];
  v150 = *v41;
  v151 = v41[1];
  v152 = v41[3];
  *(v149 + 32) = v41[2];
  *(v149 + 48) = v152;
  *v149 = v150;
  *(v149 + 16) = v151;
  v153 = v41[4];
  v154 = v41[5];
  v155 = v41[7];
  *(v149 + 96) = v41[6];
  *(v149 + 112) = v155;
  *(v149 + 64) = v153;
  *(v149 + 80) = v154;
  v156 = v41[8];
  v157 = v41[9];
  v158 = v41[11];
  *(v149 + 160) = v41[10];
  *(v149 + 176) = v158;
  *(v149 + 128) = v156;
  *(v149 + 144) = v157;
  v159 = v41[12];
  v160 = v41[13];
  v161 = v41[14];
  *(v149 + 240) = *(v41 + 30);
  *(v149 + 208) = v160;
  *(v149 + 224) = v161;
  *(v149 + 192) = v159;
  v162 = swift_task_alloc();
  *(v199 + 6296) = v162;
  *v162 = v199;
  v162[1] = sub_1D60BBD24;
  v163 = *(v199 + 6080);

  return sub_1D7107ACC(v163);
}

uint64_t sub_1D60BBD24(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 6304) = v1;

  if (v1)
  {

    v5 = sub_1D60BCE84;
  }

  else
  {
    *(v4 + 6312) = a1;
    v5 = sub_1D60BBE54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D60BBE54()
{
  v179 = v0;
  v1 = *(v0 + 6312);
  v2 = 5688;
  v3 = 5800;
  v4 = *(v0 + 6136);
  v5 = *(v0 + 6120);
  v6 = *(v0 + 6104);
  v7 = *(v0 + 6096);
  v8 = *(v0 + 6080);
  sub_1D5B952F8(*(v0 + 6280), *(v0 + 6288));
  sub_1D60CBC50(v8, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v7, type metadata accessor for FormatContentSubgroup);
  v9 = *(v6 + 20);

  *(v4 + v9) = v1;
  sub_1D60CBBE8(v4, v5, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + 6264);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    v11 = sub_1D699164C(0, v11[2] + 1, 1, v11);
  }

  v12 = (v0 + v2);
  v13 = (v0 + v3);
  v176 = (v0 + 6008);
  v15 = v11[2];
  v14 = v11[3];
  v172 = (v0 + 5912);
  v173 = (v0 + 6320);
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1D699164C(v14 > 1, v15 + 1, 1, v11);
  }

  v175 = (v0 + 3835);
  v16 = *(v0 + 6272);
  v17 = *(v0 + 6136);
  v18 = *(v0 + 6120);
  v19 = *(v0 + 6112);
  sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
  v11[2] = v15 + 1;
  sub_1D60CBDE4(v18, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + v16 * v15, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CBC50(v17, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  v20 = *(v0 + 6256) + 1;
  if (v20 == *(v0 + 6240))
  {
LABEL_5:

    v21 = *(v0 + 6024);
    *(v0 + 3672) = *v176;
    *(v0 + 3688) = v21;
    v22 = v13[5];
    *(v0 + 3784) = v13[4];
    *(v0 + 3800) = v22;
    *(v0 + 3816) = v13[6];
    v23 = v13[1];
    *(v0 + 3720) = *v13;
    *(v0 + 3736) = v23;
    v24 = v13[3];
    *(v0 + 3752) = v13[2];
    *(v0 + 3768) = v24;
    v25 = *(v0 + 5928);
    *(v0 + 4064) = *(v0 + 5944);
    v26 = *v172;
    *(v0 + 4048) = v25;
    *(v0 + 4032) = v26;
    v27 = v12[2];
    *(v0 + 4144) = v12[3];
    v28 = v12[5];
    *(v0 + 4160) = v12[4];
    v29 = *(v0 + 6208);
    v158 = *(v0 + 6200);
    v30 = *(v0 + 4029);
    v162 = v30;
    v165 = *(v0 + 4030);
    v31 = *(v0 + 4028);
    v159 = v31;
    v32 = *(v0 + 6184);
    v33 = *(v0 + 6176);
    v154 = *(v0 + 6168);
    strcpy((v0 + 3656), "builtin:editor");
    *(v0 + 3705) = *v175;
    *(v0 + 3671) = -18;
    *(v0 + 3704) = 0;
    *(v0 + 3708) = *(v0 + 3838);
    *(v0 + 3712) = v158;
    *(v0 + 3832) = v30;
    *(v0 + 3833) = v31;
    *(v0 + 3834) = v165;
    *(v0 + 4080) = *(v0 + 5960);
    *(v0 + 4088) = v32;
    *(v0 + 4176) = v28;
    *(v0 + 4192) = v12[6];
    *(v0 + 4128) = v27;
    v34 = *v12;
    *(v0 + 4112) = v12[1];
    *(v0 + 4096) = v34;
    *(v0 + 4208) = *(v0 + 6336);
    *(v0 + 4209) = *(v0 + 6328);
    *(v0 + 4210) = *(v0 + 3842);
    sub_1D5ECF1C0(v0 + 3656, v0 + 4216);
    sub_1D5ECF21C(v0 + 4032);
    v35 = *(v0 + 3672);
    *v172 = *(v0 + 3656);
    *(v0 + 5928) = v35;
    v37 = *(v0 + 3656);
    v36 = *(v0 + 3672);
    *(v0 + 5944) = *(v0 + 3688);
    v38 = *(v0 + 3768);
    v40 = *(v0 + 3784);
    v39 = *(v0 + 3800);
    v12[4] = v40;
    v12[5] = v39;
    v41 = *(v0 + 3800);
    v12[6] = *(v0 + 3816);
    v42 = *(v0 + 3736);
    *v12 = *(v0 + 3720);
    v12[1] = v42;
    v43 = *(v0 + 3768);
    v45 = *(v0 + 3720);
    v44 = *(v0 + 3736);
    v46 = *(v0 + 3752);
    v12[2] = v46;
    v12[3] = v43;
    v47 = *(v0 + 3688);
    *(v0 + 3256) = v36;
    *(v0 + 3272) = v47;
    *(v0 + 3240) = v37;
    *(v0 + 3304) = v45;
    *(v0 + 3320) = v44;
    v48 = *(v0 + 3816);
    *(v0 + 3384) = v41;
    *(v0 + 3400) = v48;
    *(v0 + 5960) = *(v0 + 3704);
    v155 = *(v0 + 3712);
    v49 = *(v0 + 3832);
    v174 = v49;
    v50 = *(v0 + 3834);
    v156 = v50;
    v157 = *(v0 + 3833);
    *(v0 + 3224) = v154;
    *(v0 + 3232) = v33;
    *(v0 + 3288) = *(v0 + 3704);
    *(v0 + 3296) = v155;
    *(v0 + 3352) = v38;
    *(v0 + 3368) = v40;
    *(v0 + 3336) = v46;
    *(v0 + 3416) = v49;
    *(v0 + 3417) = v157;
    *(v0 + 3418) = v50;
    *(v0 + 3419) = *v173;
    *(v0 + 3423) = *(v0 + 6324);
    *(v0 + 3424) = v29;
    *(v0 + 3432) = v11;
    *(v0 + 3648) = v11;
    v51 = *(v0 + 3384);
    *(v0 + 3616) = *(v0 + 3400);
    *(v0 + 3600) = v51;
    v52 = *(v0 + 3352);
    *(v0 + 3584) = *(v0 + 3368);
    *(v0 + 3568) = v52;
    v53 = *(v0 + 3320);
    *(v0 + 3552) = *(v0 + 3336);
    *(v0 + 3536) = v53;
    v54 = *(v0 + 3288);
    *(v0 + 3520) = *(v0 + 3304);
    *(v0 + 3504) = v54;
    v55 = *(v0 + 3256);
    *(v0 + 3488) = *(v0 + 3272);
    *(v0 + 3472) = v55;
    v56 = *(v0 + 3224);
    *(v0 + 3456) = *(v0 + 3240);
    *(v0 + 3440) = v56;
    *(v0 + 3632) = *(v0 + 3416);
    nullsub_1();
    v57 = *(v0 + 3616);
    v177[10] = *(v0 + 3600);
    v177[11] = v57;
    v177[12] = *(v0 + 3632);
    v178 = *(v0 + 3648);
    v58 = *(v0 + 3552);
    v177[6] = *(v0 + 3536);
    v177[7] = v58;
    v59 = *(v0 + 3584);
    v177[8] = *(v0 + 3568);
    v177[9] = v59;
    v60 = *(v0 + 3488);
    v177[2] = *(v0 + 3472);
    v177[3] = v60;
    v61 = *(v0 + 3520);
    v177[4] = *(v0 + 3504);
    v177[5] = v61;
    v62 = *(v0 + 3456);
    v177[0] = *(v0 + 3440);
    v177[1] = v62;
    sub_1D5F2B0D8(v0 + 3224, v0 + 2792);
    sub_1D6AA103C(v177);
    *(v0 + 2736) = *(v0 + 3600);
    *(v0 + 2752) = *(v0 + 3616);
    *(v0 + 2768) = *(v0 + 3632);
    *(v0 + 2784) = *(v0 + 3648);
    *(v0 + 2672) = *(v0 + 3536);
    *(v0 + 2688) = *(v0 + 3552);
    *(v0 + 2704) = *(v0 + 3568);
    *(v0 + 2720) = *(v0 + 3584);
    *(v0 + 2608) = *(v0 + 3472);
    *(v0 + 2624) = *(v0 + 3488);
    *(v0 + 2640) = *(v0 + 3504);
    *(v0 + 2656) = *(v0 + 3520);
    *(v0 + 2576) = *(v0 + 3440);
    *(v0 + 2592) = *(v0 + 3456);

    sub_1D725B32C();

    sub_1D6AA1610();
    *(v0 + 1928) = v154;
    *(v0 + 1936) = v33;
    v63 = *(v0 + 5928);
    *(v0 + 1944) = *v172;
    *(v0 + 1960) = v63;
    *(v0 + 1976) = *(v0 + 5944);
    *(v0 + 1992) = *(v0 + 5960);
    *(v0 + 2000) = v155;
    v64 = v12[5];
    *(v0 + 2072) = v12[4];
    *(v0 + 2088) = v64;
    *(v0 + 2104) = v12[6];
    v65 = v12[1];
    *(v0 + 2008) = *v12;
    *(v0 + 2024) = v65;
    v66 = v12[3];
    *(v0 + 2040) = v12[2];
    *(v0 + 2056) = v66;
    *(v0 + 2120) = v174;
    *(v0 + 2121) = v157;
    *(v0 + 2122) = v156;
    *(v0 + 2127) = *(v0 + 6324);
    *(v0 + 2123) = *v173;
    *(v0 + 2128) = v29;
    *(v0 + 2136) = v11;
    sub_1D5F2B134(v0 + 1928);
    strcpy((v0 + 3848), "builtin:editor");
    *(v0 + 3863) = -18;
    v67 = *(v0 + 6024);
    *(v0 + 3864) = *v176;
    *(v0 + 3880) = v67;
    *(v0 + 3896) = 0;
    *(v0 + 3897) = *v175;
    *(v0 + 3900) = *(v0 + 3838);
    *(v0 + 3904) = v158;
    v68 = v13[1];
    *(v0 + 3912) = *v13;
    *(v0 + 3928) = v68;
    v69 = v13[2];
    v70 = v13[3];
    v71 = v13[6];
    *(v0 + 3992) = v13[5];
    *(v0 + 4008) = v71;
    v72 = v13[4];
    *(v0 + 3960) = v70;
    *(v0 + 3976) = v72;
    *(v0 + 3944) = v69;
    *(v0 + 4024) = v162;
    *(v0 + 4025) = v159;
    *(v0 + 4026) = v165;
    sub_1D5ECF21C(v0 + 3848);

    v73 = *(v0 + 8);
LABEL_6:

    return v73();
  }

  v75 = v0 + 1184;
  v2 = v0 + 1432;
  v76 = *(v0 + 6304);
  v3 = v0 + 1680;
  while (1)
  {
    *(v0 + 6264) = v11;
    *(v0 + 6256) = v20;
    v77 = *(v0 + 6232);
    if (v20 >= *(v77 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v78 = *(v0 + 6224);
    sub_1D60CBBE8(v77 + ((*(v0 + 3844) + 32) & ~*(v0 + 3844)) + *(*(v0 + 6152) + 72) * v20, *(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    if (*(v78 + 16))
    {
      v79 = sub_1D5B69D90(**(v0 + 6160), *(*(v0 + 6160) + 8));
      if (v80)
      {
        break;
      }
    }

    sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    v20 = *(v0 + 6256) + 1;
    if (v20 == *(v0 + 6240))
    {
      goto LABEL_5;
    }
  }

  v171 = (v0 + 4400);
  v170 = *(v0 + 6216);
  v160 = *(v0 + 6200);
  v166 = *(v0 + 4029);
  v168 = *(v0 + 4030);
  v163 = *(v0 + 4028);
  v81 = *(v0 + 6160);
  v82 = *(v0 + 6136);
  v83 = *(v0 + 6128);
  v84 = *(*(v0 + 6224) + 56);
  v85 = *(*(v0 + 6112) + 72);
  *(v0 + 6272) = v85;
  sub_1D60CBBE8(v84 + v85 * v79, v83, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CBDE4(v83, v82, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60CF454(v81, v82);
  strcpy((v0 + 4400), "builtin:editor");
  *(v0 + 4415) = -18;
  v86 = *(v0 + 6024);
  *(v0 + 4416) = *v176;
  *(v0 + 4432) = v86;
  *(v0 + 4448) = 0;
  *(v0 + 4449) = *v175;
  *(v0 + 4452) = *(v0 + 3838);
  *(v0 + 4456) = v160;
  v87 = v13[1];
  *(v0 + 4464) = *v13;
  *(v0 + 4480) = v87;
  v88 = v13[3];
  *(v0 + 4496) = v13[2];
  v89 = v13[4];
  v90 = v13[5];
  *(v0 + 4560) = v13[6];
  *(v0 + 4544) = v90;
  *(v0 + 4528) = v89;
  *(v0 + 4512) = v88;
  *(v0 + 4576) = v166;
  *(v0 + 4577) = v163;
  *(v0 + 4578) = v168;
  if (*(v170 + 16))
  {
    v91 = *(*(v0 + 6112) + 80);
    v92 = *(*(*(v0 + 6216) + ((v91 + 32) & ~v91) + *(*(v0 + 6104) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v93 = v0 + 1680;
    if (*(v92 + 16))
    {
      sub_1D5ECF1C0(v171, v0 + 4584);

      v94 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61);
      if (v95)
      {
        sub_1D5B68374(*(v92 + 56) + 40 * v94, v0 + 5968);
        sub_1D5B49474(0, qword_1EDF431A0);
        if (swift_dynamicCast())
        {
          nullsub_1();
LABEL_23:

          goto LABEL_24;
        }

        v75 = v0 + 936;
      }
    }

    else
    {
      sub_1D5ECF1C0(v171, v0 + 5136);
    }

    sub_1D5F588A0(v75);
    v96 = *(v75 + 208);
    *(v0 + 1624) = *(v75 + 192);
    *(v0 + 1640) = v96;
    *(v0 + 1656) = *(v75 + 224);
    *(v0 + 1672) = *(v75 + 240);
    v97 = *(v75 + 144);
    *(v0 + 1560) = *(v75 + 128);
    *(v0 + 1576) = v97;
    v98 = *(v75 + 176);
    *(v0 + 1592) = *(v75 + 160);
    *(v0 + 1608) = v98;
    v99 = *(v75 + 80);
    *(v0 + 1496) = *(v75 + 64);
    *(v0 + 1512) = v99;
    v100 = *(v75 + 112);
    *(v0 + 1528) = *(v75 + 96);
    *(v0 + 1544) = v100;
    v101 = *(v75 + 16);
    *v2 = *v75;
    *(v0 + 1448) = v101;
    v102 = *(v75 + 48);
    *(v0 + 1464) = *(v75 + 32);
    *(v0 + 1480) = v102;
    goto LABEL_23;
  }

  v2 = v0 + 688;
  sub_1D5F588A0(v0 + 688);
  sub_1D5ECF1C0(v171, v0 + 5320);
  v93 = v0 + 1680;
LABEL_24:
  v103 = *(v2 + 208);
  *(v93 + 192) = *(v2 + 192);
  *(v93 + 208) = v103;
  *(v93 + 224) = *(v2 + 224);
  *(v93 + 240) = *(v2 + 240);
  v104 = *(v2 + 144);
  *(v93 + 128) = *(v2 + 128);
  *(v93 + 144) = v104;
  v105 = *(v2 + 176);
  *(v93 + 160) = *(v2 + 160);
  *(v93 + 176) = v105;
  v106 = *(v2 + 80);
  *(v93 + 64) = *(v2 + 64);
  *(v93 + 80) = v106;
  v107 = *(v2 + 112);
  *(v93 + 96) = *(v2 + 96);
  *(v93 + 112) = v107;
  v108 = *(v2 + 16);
  *v93 = *v2;
  *(v93 + 16) = v108;
  v109 = *(v2 + 48);
  *(v93 + 32) = *(v2 + 32);
  *(v93 + 48) = v109;
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(&unk_1F50FBDD0);
  sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
  *(v0 + 6280) = sub_1D72578BC();
  *(v0 + 6288) = v110;
  if (v76)
  {

    sub_1D60CB8FC(v93, qword_1EDF34BC0, &type metadata for FeedPaywall);
    sub_1D5ECF21C(v171);

    v111 = *(v0 + 6208);
    v161 = *(v0 + 6200);
    v167 = *(v0 + 4029);
    v169 = *(v0 + 4030);
    v164 = *(v0 + 4028);
    v112 = *(v0 + 6192);
    v113 = *(v0 + 6184);
    v114 = *(v0 + 6176);
    v115 = *(v0 + 6168);
    v116 = *(v0 + 6136);
    sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
    sub_1D60CBC50(v116, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    *(v0 + 2360) = v115;
    *(v0 + 2368) = v114;
    v117 = *(v0 + 5928);
    *(v0 + 2376) = *v172;
    *(v0 + 2392) = v117;
    *(v0 + 2408) = *(v0 + 5944);
    *(v0 + 2424) = *(v0 + 5960);
    *(v0 + 2432) = v113;
    v118 = v12[5];
    *(v0 + 2504) = v12[4];
    *(v0 + 2520) = v118;
    *(v0 + 2536) = v12[6];
    v119 = v12[1];
    *(v0 + 2440) = *v12;
    *(v0 + 2456) = v119;
    v120 = v12[3];
    *(v0 + 2472) = v12[2];
    *(v0 + 2488) = v120;
    *(v0 + 2552) = *(v0 + 6336);
    *(v0 + 2553) = *(v0 + 6328);
    *(v0 + 2554) = *(v0 + 3842);
    *(v0 + 2555) = *v173;
    *(v0 + 2559) = *(v0 + 6324);
    *(v0 + 2560) = v111;
    *(v0 + 2568) = v112;
    sub_1D5F2B134(v0 + 2360);
    strcpy((v0 + 4768), "builtin:editor");
    *(v0 + 4783) = -18;
    v121 = *(v0 + 6024);
    *(v0 + 4784) = *v176;
    *(v0 + 4800) = v121;
    *(v0 + 4816) = 0;
    *(v0 + 4817) = *v175;
    *(v0 + 4820) = *(v0 + 3838);
    *(v0 + 4824) = v161;
    v122 = v13[1];
    *(v0 + 4832) = *v13;
    *(v0 + 4848) = v122;
    v123 = v13[3];
    *(v0 + 4864) = v13[2];
    v124 = v13[4];
    v125 = v13[5];
    *(v0 + 4928) = v13[6];
    *(v0 + 4912) = v125;
    *(v0 + 4896) = v124;
    *(v0 + 4880) = v123;
    *(v0 + 4944) = v167;
    *(v0 + 4945) = v164;
    *(v0 + 4946) = v169;
    sub_1D5ECF21C(v0 + 4768);

    v73 = *(v0 + 8);
    goto LABEL_6;
  }

  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(&unk_1F50FBDF8);
  sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
  sub_1D725A69C();
  v126 = *(v0 + 6096);
  v127 = *(v0 + 6080);
  v128 = *(v0 + 6072);

  sub_1D60CBBE8(v126, v127 + v128[5], type metadata accessor for FormatContentSubgroup);

  sub_1D725972C();

  v129 = *(v0 + 3843);
  v130 = *v171;
  v131 = *(v0 + 4416);
  v132 = *(v0 + 4448);
  *(v127 + 32) = *(v0 + 4432);
  *(v127 + 48) = v132;
  *v127 = v130;
  *(v127 + 16) = v131;
  v133 = *(v0 + 4464);
  v134 = *(v0 + 4480);
  v135 = *(v0 + 4512);
  *(v127 + 96) = *(v0 + 4496);
  *(v127 + 112) = v135;
  *(v127 + 64) = v133;
  *(v127 + 80) = v134;
  v136 = *(v0 + 4528);
  v137 = *(v0 + 4544);
  v138 = *(v0 + 4560);
  *(v127 + 175) = *(v0 + 4575);
  *(v127 + 144) = v137;
  *(v127 + 160) = v138;
  *(v127 + 128) = v136;
  *(v127 + v128[6]) = v129;
  v139 = v127 + v128[7];
  v140 = *(v0 + 1680);
  v141 = *(v0 + 1696);
  v142 = *(v0 + 1728);
  *(v139 + 32) = *(v0 + 1712);
  *(v139 + 48) = v142;
  *v139 = v140;
  *(v139 + 16) = v141;
  v143 = *(v0 + 1744);
  v144 = *(v0 + 1760);
  v145 = *(v0 + 1792);
  *(v139 + 96) = *(v0 + 1776);
  *(v139 + 112) = v145;
  *(v139 + 64) = v143;
  *(v139 + 80) = v144;
  v146 = *(v0 + 1808);
  v147 = *(v0 + 1824);
  v148 = *(v0 + 1856);
  *(v139 + 160) = *(v0 + 1840);
  *(v139 + 176) = v148;
  *(v139 + 128) = v146;
  *(v139 + 144) = v147;
  v149 = *(v0 + 1872);
  v150 = *(v0 + 1888);
  v151 = *(v0 + 1904);
  *(v139 + 240) = *(v0 + 1920);
  *(v139 + 208) = v150;
  *(v139 + 224) = v151;
  *(v139 + 192) = v149;
  v152 = swift_task_alloc();
  *(v0 + 6296) = v152;
  *v152 = v0;
  v152[1] = sub_1D60BBD24;
  v153 = *(v0 + 6080);

  return sub_1D7107ACC(v153);
}

uint64_t sub_1D60BCE84()
{
  v1 = *(v0 + 6096);
  v2 = *(v0 + 6080);
  sub_1D5B952F8(*(v0 + 6280), *(v0 + 6288));
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v1, type metadata accessor for FormatContentSubgroup);

  v19 = *(v0 + 6208);
  v20 = *(v0 + 6200);
  v22 = *(v0 + 4029);
  v23 = *(v0 + 4030);
  v21 = *(v0 + 4028);
  v18 = *(v0 + 6192);
  v3 = *(v0 + 6184);
  v4 = *(v0 + 6176);
  v5 = *(v0 + 6168);
  v6 = *(v0 + 6136);
  sub_1D60CBC50(*(v0 + 6160), type metadata accessor for FormatWorkspaceGroup);
  sub_1D60CBC50(v6, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  *(v0 + 2360) = v5;
  *(v0 + 2368) = v4;
  v7 = *(v0 + 5928);
  *(v0 + 2376) = *(v0 + 5912);
  *(v0 + 2392) = v7;
  *(v0 + 2408) = *(v0 + 5944);
  *(v0 + 2424) = *(v0 + 5960);
  *(v0 + 2432) = v3;
  v8 = *(v0 + 5768);
  *(v0 + 2504) = *(v0 + 5752);
  *(v0 + 2520) = v8;
  *(v0 + 2536) = *(v0 + 5784);
  v9 = *(v0 + 5704);
  *(v0 + 2440) = *(v0 + 5688);
  *(v0 + 2456) = v9;
  v10 = *(v0 + 5736);
  *(v0 + 2472) = *(v0 + 5720);
  *(v0 + 2488) = v10;
  *(v0 + 2552) = *(v0 + 6336);
  *(v0 + 2553) = *(v0 + 6328);
  *(v0 + 2554) = *(v0 + 3842);
  *(v0 + 2555) = *(v0 + 6320);
  *(v0 + 2559) = *(v0 + 6324);
  *(v0 + 2560) = v19;
  *(v0 + 2568) = v18;
  sub_1D5F2B134(v0 + 2360);
  strcpy((v0 + 4768), "builtin:editor");
  *(v0 + 4783) = -18;
  v11 = *(v0 + 6024);
  *(v0 + 4784) = *(v0 + 6008);
  *(v0 + 4800) = v11;
  *(v0 + 4816) = 0;
  *(v0 + 4817) = *(v0 + 3835);
  *(v0 + 4820) = *(v0 + 3838);
  *(v0 + 4824) = v20;
  v12 = *(v0 + 5816);
  *(v0 + 4832) = *(v0 + 5800);
  *(v0 + 4848) = v12;
  v13 = *(v0 + 5848);
  *(v0 + 4864) = *(v0 + 5832);
  v14 = *(v0 + 5864);
  v15 = *(v0 + 5880);
  *(v0 + 4928) = *(v0 + 5896);
  *(v0 + 4912) = v15;
  *(v0 + 4896) = v14;
  *(v0 + 4880) = v13;
  *(v0 + 4944) = v22;
  *(v0 + 4945) = v21;
  *(v0 + 4946) = v23;
  sub_1D5ECF21C(v0 + 4768);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D60BD194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1272) = v3;
  *(v4 + 1264) = a3;
  *(v4 + 1256) = a1;
  sub_1D60CB67C(0);
  *(v4 + 1280) = swift_task_alloc();
  *(v4 + 1288) = swift_task_alloc();
  *(v4 + 1296) = swift_task_alloc();
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  *(v4 + 1304) = swift_task_alloc();
  v7 = sub_1D72585BC();
  *(v4 + 1312) = v7;
  *(v4 + 1320) = *(v7 - 8);
  *(v4 + 1328) = swift_task_alloc();
  v8 = type metadata accessor for DebugFormatWorkspace();
  *(v4 + 1336) = v8;
  *(v4 + 1344) = *(v8 - 8);
  *(v4 + 1352) = swift_task_alloc();
  *(v4 + 1360) = swift_task_alloc();
  *(v4 + 1368) = swift_task_alloc();
  *(v4 + 1376) = swift_task_alloc();
  *(v4 + 1384) = swift_task_alloc();
  *(v4 + 1392) = type metadata accessor for DebugFormatWorkspaceKind();
  *(v4 + 1400) = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v6);
  *(v4 + 1408) = swift_task_alloc();
  v9 = *(a2 + 8);
  *(v4 + 1416) = *a2;
  *(v4 + 1424) = v9;
  v10 = *(a2 + 160);
  *(v4 + 1176) = *(a2 + 144);
  *(v4 + 1192) = v10;
  *(v4 + 1207) = *(a2 + 175);
  v11 = *(a2 + 96);
  *(v4 + 1112) = *(a2 + 80);
  *(v4 + 1128) = v11;
  v12 = *(a2 + 128);
  *(v4 + 1144) = *(a2 + 112);
  *(v4 + 1160) = v12;
  v13 = *(a2 + 32);
  *(v4 + 1048) = *(a2 + 16);
  *(v4 + 1064) = v13;
  v14 = *(a2 + 64);
  *(v4 + 1080) = *(a2 + 48);
  *(v4 + 1096) = v14;
  sub_1D726290C();
  *(v4 + 1432) = sub_1D72628FC();
  v16 = sub_1D726285C();
  *(v4 + 1440) = v16;
  *(v4 + 1448) = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D60BD48C, v16, v15);
}

uint64_t sub_1D60BD48C()
{
  v76 = v0;
  sub_1D60CBBE8(*(v0 + 1256), *(v0 + 1400), type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload >= 2)
  {

    sub_1D60CB770((v0 + 448));
    v6 = *(v0 + 624);
    *(v0 + 816) = *(v0 + 608);
    *(v0 + 832) = v6;
    *(v0 + 848) = *(v0 + 640);
    v7 = *(v0 + 560);
    *(v0 + 752) = *(v0 + 544);
    *(v0 + 768) = v7;
    v8 = *(v0 + 592);
    *(v0 + 784) = *(v0 + 576);
    *(v0 + 800) = v8;
    v9 = *(v0 + 496);
    *(v0 + 688) = *(v0 + 480);
    *(v0 + 704) = v9;
    v10 = *(v0 + 528);
    *(v0 + 720) = *(v0 + 512);
    *(v0 + 736) = v10;
    v11 = *(v0 + 464);
    *(v0 + 656) = *(v0 + 448);
    *(v0 + 672) = v11;

    sub_1D725B32C();

    sub_1D60CF378(v0 + 16);
    v12 = *(v0 + 192);
    v74[10] = *(v0 + 176);
    v74[11] = v12;
    v74[12] = *(v0 + 208);
    v75 = *(v0 + 224);
    v13 = *(v0 + 128);
    v74[6] = *(v0 + 112);
    v74[7] = v13;
    v14 = *(v0 + 160);
    v74[8] = *(v0 + 144);
    v74[9] = v14;
    v15 = *(v0 + 64);
    v74[2] = *(v0 + 48);
    v74[3] = v15;
    v16 = *(v0 + 96);
    v74[4] = *(v0 + 80);
    v74[5] = v16;
    v17 = *(v0 + 32);
    v74[0] = *(v0 + 16);
    v74[1] = v17;
    sub_1D6AA103C(v74);
    v18 = *(v0 + 192);
    *(v0 + 392) = *(v0 + 176);
    *(v0 + 408) = v18;
    *(v0 + 424) = *(v0 + 208);
    v19 = *(v0 + 128);
    *(v0 + 328) = *(v0 + 112);
    *(v0 + 344) = v19;
    v20 = *(v0 + 160);
    *(v0 + 360) = *(v0 + 144);
    *(v0 + 376) = v20;
    v21 = *(v0 + 64);
    *(v0 + 264) = *(v0 + 48);
    *(v0 + 280) = v21;
    v22 = *(v0 + 96);
    *(v0 + 296) = *(v0 + 80);
    *(v0 + 312) = v22;
    v23 = *(v0 + 32);
    *(v0 + 232) = *(v0 + 16);
    *(v0 + 440) = *(v0 + 224);
    *(v0 + 248) = v23;

    sub_1D725B32C();

    sub_1D6AA1610();

    sub_1D725B31C();

    v25 = *(v0 + 1240);
    v73 = *(v25 + 16);
    if (v73)
    {
      v26 = 0;
      v27 = *(v0 + 1344);
      v72 = *(v0 + 1336);
      v28 = MEMORY[0x1E69E7CC0];
      while (v26 < *(v25 + 16))
      {
        v29 = *(v0 + 1424);
        v30 = *(v0 + 1416);
        v31 = *(v0 + 1384);
        v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v33 = *(v27 + 72);
        sub_1D60CBBE8(v25 + v32 + v33 * v26, v31, type metadata accessor for DebugFormatWorkspace);
        v34 = (v31 + *(v72 + 20));
        v35 = *v34 == v30 && v34[1] == v29;
        if (v35 || (sub_1D72646CC() & 1) != 0)
        {
          result = sub_1D60CBC50(*(v0 + 1384), type metadata accessor for DebugFormatWorkspace);
        }

        else
        {
          sub_1D60CBDE4(*(v0 + 1384), *(v0 + 1376), type metadata accessor for DebugFormatWorkspace);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v74[0] = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6998988(0, *(v28 + 16) + 1, 1);
            v28 = *&v74[0];
          }

          v38 = *(v28 + 16);
          v37 = *(v28 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1D6998988(v37 > 1, v38 + 1, 1);
            v28 = *&v74[0];
          }

          v39 = *(v0 + 1376);
          *(v28 + 16) = v38 + 1;
          result = sub_1D60CBDE4(v39, v28 + v32 + v38 * v33, type metadata accessor for DebugFormatWorkspace);
        }

        if (v73 == ++v26)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      return result;
    }

    v28 = MEMORY[0x1E69E7CC0];
LABEL_25:

    *(v0 + 1248) = v28;

    sub_1D725B32C();
LABEL_26:

LABEL_27:
    v50 = *(v0 + 1344);
    v51 = *(v0 + 1336);
    v52 = *(v0 + 1296);

    sub_1D725B31C();

    if ((*(v50 + 48))(v52, 1, v51))
    {
      v53 = (v0 + 1296);
    }

    else
    {
      v54 = *(v0 + 1424);
      v55 = *(v0 + 1416);
      v56 = *(v0 + 1352);
      v57 = *(v0 + 1336);
      v58 = *(v0 + 1296);
      sub_1D60CBBE8(v58, v56, type metadata accessor for DebugFormatWorkspace);
      sub_1D60CBC50(v58, sub_1D60CB67C);
      v59 = (v56 + *(v57 + 20));
      v60 = *v59;
      v61 = v59[1];

      sub_1D60CBC50(v56, type metadata accessor for DebugFormatWorkspace);
      if (v60 == v55 && v61 == v54)
      {
      }

      else
      {
        v63 = sub_1D72646CC();

        if ((v63 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      sub_1D725B31C();

      v64 = *(v0 + 1216);
      if (*(v64 + 16))
      {
        v65 = *(*(v0 + 1344) + 80);
        sub_1D60CBBE8(v64 + ((v65 + 32) & ~v65), *(v0 + 1288), type metadata accessor for DebugFormatWorkspace);
        v66 = 0;
      }

      else
      {
        v66 = 1;
      }

      v67 = *(v0 + 1344);
      v68 = *(v0 + 1336);
      v53 = (v0 + 1288);
      v69 = *(v0 + 1288);
      v70 = *(v0 + 1280);

      (*(v67 + 56))(v69, v66, 1, v68);
      sub_1D60CBBE8(v69, v70, sub_1D60CB67C);

      sub_1D725B32C();
    }

    sub_1D60CBC50(*v53, sub_1D60CB67C);
LABEL_41:

    v71 = *(v0 + 8);

    return v71();
  }

  v2 = *(v0 + 1320);
  v3 = *(v0 + 1312);
  v4 = *(v0 + 1304);
  sub_1D6033350(*(v0 + 1400), *(v0 + 1408));
  sub_1D6A9DC44(v4);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v5 = *(v0 + 1304);
    sub_1D60CB820(*(v0 + 1408), &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);

    sub_1D60CB820(v5, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    goto LABEL_27;
  }

  v40 = *(v0 + 1424);
  v41 = *(v0 + 1416);
  (*(*(v0 + 1320) + 32))(*(v0 + 1328), *(v0 + 1304), *(v0 + 1312));
  *(v0 + 864) = v41;
  *(v0 + 872) = v40;
  v42 = *(v0 + 1192);
  *(v0 + 1008) = *(v0 + 1176);
  *(v0 + 1024) = v42;
  *(v0 + 1039) = *(v0 + 1207);
  v43 = *(v0 + 1128);
  *(v0 + 944) = *(v0 + 1112);
  *(v0 + 960) = v43;
  v44 = *(v0 + 1160);
  *(v0 + 976) = *(v0 + 1144);
  *(v0 + 992) = v44;
  v45 = *(v0 + 1064);
  *(v0 + 880) = *(v0 + 1048);
  *(v0 + 896) = v45;
  v46 = *(v0 + 1096);
  *(v0 + 912) = *(v0 + 1080);
  *(v0 + 928) = v46;
  v47 = swift_task_alloc();
  *(v0 + 1456) = v47;
  *v47 = v0;
  v47[1] = sub_1D60BDC98;
  v48 = *(v0 + 1408);
  v49 = *(v0 + 1328);

  return sub_1D60BE45C(v49, (v0 + 864), v48);
}

uint64_t sub_1D60BDC98()
{
  v2 = *v1;
  v3 = *(*v1 + 1408);
  *(*v1 + 1464) = v0;

  sub_1D60CB820(v3, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
  v4 = *(v2 + 1448);
  v5 = *(v2 + 1440);
  if (v0)
  {
    v6 = sub_1D60BE31C;
  }

  else
  {
    v6 = sub_1D60BDDF4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D60BDDF4()
{

  sub_1D725B31C();

  v2 = v0[153];
  v41 = *(v2 + 16);
  if (!v41)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v16 = v0[166];
    v17 = v0[165];
    v18 = v0[164];

    v0[154] = v5;

    sub_1D725B32C();

    (*(v17 + 8))(v16, v18);
    v19 = v0[168];
    v20 = v0[167];
    v21 = v0[162];

    sub_1D725B31C();

    if ((*(v19 + 48))(v21, 1, v20))
    {
      v22 = v0 + 162;
    }

    else
    {
      v23 = v0[178];
      v24 = v0[177];
      v25 = v0[169];
      v26 = v0[167];
      v27 = v0[162];
      sub_1D60CBBE8(v27, v25, type metadata accessor for DebugFormatWorkspace);
      sub_1D60CBC50(v27, sub_1D60CB67C);
      v28 = (v25 + *(v26 + 20));
      v29 = *v28;
      v30 = v28[1];

      sub_1D60CBC50(v25, type metadata accessor for DebugFormatWorkspace);
      if (v29 == v24 && v30 == v23)
      {
      }

      else
      {
        v31 = sub_1D72646CC();

        if ((v31 & 1) == 0)
        {
LABEL_28:

          v39 = v0[1];

          return v39();
        }
      }

      sub_1D725B31C();

      v32 = v0[152];
      if (*(v32 + 16))
      {
        v33 = *(v0[168] + 80);
        sub_1D60CBBE8(v32 + ((v33 + 32) & ~v33), v0[161], type metadata accessor for DebugFormatWorkspace);
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = v0[168];
      v36 = v0[167];
      v22 = v0 + 161;
      v37 = v0[161];
      v38 = v0[160];

      (*(v35 + 56))(v37, v34, 1, v36);
      sub_1D60CBBE8(v37, v38, sub_1D60CB67C);

      sub_1D725B32C();
    }

    sub_1D60CBC50(*v22, sub_1D60CB67C);
    goto LABEL_28;
  }

  v3 = 0;
  v4 = v0[168];
  v40 = v0[167];
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v2 + 16))
  {
    v6 = v0[178];
    v7 = v0[177];
    v8 = v0[171];
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = *(v4 + 72);
    sub_1D60CBBE8(v2 + v9 + v10 * v3, v8, type metadata accessor for DebugFormatWorkspace);
    v11 = (v8 + *(v40 + 20));
    v12 = *v11 == v7 && v11[1] == v6;
    if (v12 || (sub_1D72646CC() & 1) != 0)
    {
      result = sub_1D60CBC50(v0[171], type metadata accessor for DebugFormatWorkspace);
    }

    else
    {
      sub_1D60CBDE4(v0[171], v0[170], type metadata accessor for DebugFormatWorkspace);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D6998988(0, *(v5 + 16) + 1, 1);
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D6998988(v13 > 1, v14 + 1, 1);
      }

      v15 = v0[170];
      *(v5 + 16) = v14 + 1;
      result = sub_1D60CBDE4(v15, v5 + v9 + v14 * v10, type metadata accessor for DebugFormatWorkspace);
    }

    if (v41 == ++v3)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D60BE31C()
{
  v1 = v0[166];
  v2 = v0[165];
  v3 = v0[164];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D60BE45C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = sub_1D72577EC();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = sub_1D7257C7C();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v8 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4[11] = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, v8);
  v4[12] = swift_task_alloc();
  v9 = type metadata accessor for DebugFormatCacheFile();
  v4[13] = v9;
  v4[14] = *(v9 - 8);
  v4[15] = swift_task_alloc();
  v10 = sub_1D72585BC();
  v4[16] = v10;
  v4[17] = *(v10 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  sub_1D5B54578(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v8);
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  v4[21] = v11;
  v4[22] = v12;
  v4[23] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D60BE758, 0, 0);
}

uint64_t sub_1D60BE758()
{
  v1 = v0[20];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
  v34 = v0[13];
  v35 = v0[9];
  v33 = v0[3];
  sub_1D725849C();
  sub_1D725849C();
  v7 = *(v3 + 8);
  v0[24] = v7;
  v0[25] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  sub_1D7257BCC();
  v7(v1, v4);
  sub_1D60CB96C(v33, v6, &qword_1EC890010, type metadata accessor for DebugFormatCacheFile, MEMORY[0x1E69E6720], sub_1D5B54578);
  v8 = (*(v5 + 48))(v6, 1, v34);
  v9 = (v35 + 48);
  if (v8 == 1)
  {
    sub_1D60CB820(v0[12], &qword_1EC890010, type metadata accessor for DebugFormatCacheFile);
    v10 = *v9;
  }

  else
  {
    v11 = v0[21];
    v12 = v0[8];
    sub_1D60CBDE4(v0[12], v0[15], type metadata accessor for DebugFormatCacheFile);
    v10 = *v9;
    if (!(*v9)(v11, 1, v12))
    {
      sub_1D5B54578(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
      sub_1D7257B5C();
      *(swift_allocObject() + 16) = xmmword_1D7273AE0;
      sub_1D7257B2C();
      sub_1D7257B7C();
    }

    sub_1D60CBC50(v0[15], type metadata accessor for DebugFormatCacheFile);
  }

  v13 = v0[21];
  v14 = v0[8];
  v15 = v10(v13, 1, v14);
  v16 = v0[16];
  v17 = v0[17];
  v18 = v0[11];
  if (v15)
  {
    (*(v17 + 56))(v0[11], 1, 1, v0[16]);
LABEL_9:
    sub_1D60CB820(v0[11], &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D60CEC74();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();
    sub_1D60CB820(v0[21], &unk_1EDF43B50, MEMORY[0x1E69681B8]);

    v22 = v0[1];

    return v22();
  }

  v20 = v0[9];
  v19 = v0[10];
  (*(v20 + 16))(v19, v13, v14);
  sub_1D7257BDC();
  (*(v20 + 8))(v19, v14);
  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    goto LABEL_9;
  }

  v24 = v0[20];
  v26 = v0[17];
  v25 = v0[18];
  v27 = v0[16];
  v28 = v0[7];
  v29 = v0[4];
  (*(v26 + 32))(v25, v0[11], v27);
  (*(v26 + 16))(v24, v25, v27);
  sub_1D72577AC();
  sub_1D725774C();
  v30 = *(v29 + 128);
  v31 = swift_task_alloc();
  *(v31 + 16) = v30;
  *(v31 + 24) = v28;
  sub_1D60CFD84(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v0[26] = sub_1D725BBAC();

  v32 = swift_task_alloc();
  v0[27] = v32;
  *v32 = v0;
  v32[1] = sub_1D60BED6C;

  return MEMORY[0x1EEE44EE0](v32);
}

uint64_t sub_1D60BED6C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1D60BEFC8;
  }

  else
  {
    v2 = sub_1D60BEE9C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D60BEE9C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  (*(v0 + 192))(*(v0 + 144), *(v0 + 128));
  (*(v2 + 8))(v3, v4);
  sub_1D60CB820(v1, &unk_1EDF43B50, MEMORY[0x1E69681B8]);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D60BEFC8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  (*(v0 + 192))(*(v0 + 144), *(v0 + 128));
  (*(v2 + 8))(v1, v3);
  sub_1D60CB820(*(v0 + 168), &unk_1EDF43B50, MEMORY[0x1E69681B8]);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D60BF100(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = type metadata accessor for DebugFormatWorkspaceReference();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D725B31C();

  v8 = v35;
  v9 = *(v35 + 16);
  if (v9)
  {
    v32 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v9, 0);
    v10 = v35;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1D60CBBE8(v11, v7, type metadata accessor for DebugFormatWorkspaceReference);
      v13 = *(v7 + 2);
      v14 = *(v7 + 3);

      sub_1D60CBC50(v7, type metadata accessor for DebugFormatWorkspaceReference);
      v35 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D5BFC364((v15 > 1), v16 + 1, 1);
        v10 = v35;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v11 += v12;
      --v9;
    }

    while (v9);

    a2 = v32;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v18 = sub_1D5B86020(v10);

  if (*(v18 + 16))
  {
    v19 = v18 + 56;

    v20 = 1;
    v21 = a2;
    v22 = v33;
    while (1)
    {

      sub_1D7264A0C();
      sub_1D72621EC();
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v18 + 32);
      v25 = v23 & ~v24;
      if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
LABEL_22:

        goto LABEL_24;
      }

      v26 = ~v24;
      while (1)
      {
        v27 = (*(v18 + 48) + 16 * v25);
        v28 = *v27 == v22 && v27[1] == v21;
        if (v28 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      swift_bridgeObjectRelease_n();
      v35 = v33;
      v36 = a2;

      MEMORY[0x1DA6F9910](32, 0xE100000000000000);
      v34 = v20;
      v29 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v29);

      if (__OFADD__(v20++, 1))
      {
        break;
      }

      v22 = v35;
      v21 = v36;
      if (!*(v18 + 16))
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {

    v22 = v33;
LABEL_24:

    return v22;
  }

  return result;
}

uint64_t sub_1D60BF454(uint64_t a1, uint64_t a2)
{
  v3[551] = v2;
  v3[550] = a2;
  v3[549] = a1;
  sub_1D60CB67C(0);
  v3[552] = swift_task_alloc();
  v3[553] = swift_task_alloc();
  v3[554] = swift_task_alloc();
  v3[555] = type metadata accessor for DebugFormatBindingRequest();
  v3[556] = swift_task_alloc();
  v3[557] = type metadata accessor for FormatContentSubgroup();
  v3[558] = swift_task_alloc();
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v3[559] = v4;
  v3[560] = *(v4 - 8);
  v3[561] = swift_task_alloc();
  sub_1D60CF280();
  v3[562] = swift_task_alloc();
  v3[563] = type metadata accessor for FormatWorkspaceGroup();
  v3[564] = swift_task_alloc();
  v3[565] = swift_task_alloc();
  sub_1D5B54578(0, &qword_1EC883570, sub_1D60CF310, MEMORY[0x1E69E6720]);
  v3[566] = swift_task_alloc();
  sub_1D726290C();
  v3[567] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v3[568] = v6;
  v3[569] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D60BF6BC, v6, v5);
}

uint64_t sub_1D60BF6BC()
{
  v135 = v0;

  sub_1D725B31C();

  *(v0 + 3376) = *(v0 + 3584);
  *(v0 + 3392) = *(v0 + 3600);
  *(v0 + 3408) = *(v0 + 3616);
  *(v0 + 3424) = *(v0 + 3632);
  *(v0 + 3312) = *(v0 + 3520);
  *(v0 + 3328) = *(v0 + 3536);
  *(v0 + 3344) = *(v0 + 3552);
  *(v0 + 3360) = *(v0 + 3568);
  *(v0 + 3248) = *(v0 + 3456);
  *(v0 + 3264) = *(v0 + 3472);
  *(v0 + 3280) = *(v0 + 3488);
  *(v0 + 3296) = *(v0 + 3504);
  *(v0 + 3232) = *(v0 + 3440);
  *(v0 + 3168) = *(v0 + 3584);
  *(v0 + 3184) = *(v0 + 3600);
  *(v0 + 3200) = *(v0 + 3616);
  *(v0 + 3216) = *(v0 + 3632);
  *(v0 + 3104) = *(v0 + 3520);
  *(v0 + 3120) = *(v0 + 3536);
  *(v0 + 3136) = *(v0 + 3552);
  *(v0 + 3152) = *(v0 + 3568);
  *(v0 + 3040) = *(v0 + 3456);
  *(v0 + 3056) = *(v0 + 3472);
  *(v0 + 3072) = *(v0 + 3488);
  *(v0 + 3088) = *(v0 + 3504);
  *(v0 + 3024) = *(v0 + 3440);
  if (sub_1D5DEA380(v0 + 3024) == 1)
  {
    v1 = *(v0 + 4392);

    sub_1D60CF378(v0 + 1944);
    v2 = *(v0 + 1960);
    *v1 = *(v0 + 1944);
    *(v1 + 16) = v2;
    v3 = *(v0 + 1976);
    v4 = *(v0 + 1992);
    v5 = *(v0 + 2024);
    *(v1 + 64) = *(v0 + 2008);
    *(v1 + 80) = v5;
    *(v1 + 32) = v3;
    *(v1 + 48) = v4;
    v6 = *(v0 + 2040);
    v7 = *(v0 + 2056);
    v8 = *(v0 + 2088);
    *(v1 + 128) = *(v0 + 2072);
    *(v1 + 144) = v8;
    *(v1 + 96) = v6;
    *(v1 + 112) = v7;
    v9 = *(v0 + 2104);
    v10 = *(v0 + 2120);
    v11 = *(v0 + 2136);
    *(v1 + 208) = *(v0 + 2152);
    *(v1 + 176) = v10;
    *(v1 + 192) = v11;
    *(v1 + 160) = v9;
    goto LABEL_58;
  }

  v12 = *(v0 + 4528);
  v13 = *(v0 + 3224);
  *(v0 + 4304) = *(v0 + 3104);
  *(v0 + 4312) = 0;
  *(v0 + 4320) = v13;
  *(v0 + 4328) = 0;
  *(v0 + 4336) = 0;
  *(v0 + 4560) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;
  *(v0 + 4568) = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__weather;

  sub_1D60C1E5C(v12);
  sub_1D60CF310();
  v15 = v14;
  v132 = v0;
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) != 1)
  {
    *(v0 + 4584) = MEMORY[0x1E69E7CC0];
    *(v0 + 4576) = 0;
    v25 = *(v0 + 4528);
    v26 = (v25 + *(v15 + 48));
    v28 = *v26;
    v27 = v26[1];
    v130 = v26[2];
    v133 = v26[3];
    sub_1D60CBDE4(v25, *(v0 + 4520), type metadata accessor for FormatWorkspaceGroup);

    sub_1D725B31C();

    memcpy((v0 + 688), (v0 + 1024), 0x150uLL);
    memcpy((v0 + 1360), (v0 + 1024), 0x150uLL);
    v29 = sub_1D71689D8();
    sub_1D60CEF18(v0 + 688);
    if (v29 >> 62)
    {
      goto LABEL_54;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_9;
    }

LABEL_55:
    v105 = v0 + 2808;

    v106 = v0;
    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v107 = *(v0 + 4520);
    v108 = *(v0 + 4392);
    sub_1D5F5EBA0(0, 0, 0, 0xD000000000000039, 0x80000001D73C93D0);
    sub_1D60CB8FC(v106 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
    sub_1D60CBC50(v107, type metadata accessor for FormatWorkspaceGroup);
    sub_1D60CF378(v105);
    v109 = *(v105 + 16);
    *v108 = *v105;
    *(v108 + 16) = v109;
    v110 = *(v105 + 32);
    v111 = *(v105 + 48);
    v112 = *(v105 + 80);
    *(v108 + 64) = *(v105 + 64);
    *(v108 + 80) = v112;
    *(v108 + 32) = v110;
    *(v108 + 48) = v111;
    v113 = *(v105 + 96);
    v114 = *(v105 + 112);
    v115 = *(v105 + 144);
    *(v108 + 128) = *(v105 + 128);
    *(v108 + 144) = v115;
    *(v108 + 96) = v113;
    *(v108 + 112) = v114;
    v116 = *(v105 + 160);
    v117 = *(v105 + 176);
    v118 = *(v105 + 192);
    *(v108 + 208) = *(v105 + 208);
    *(v108 + 176) = v117;
    *(v108 + 192) = v118;
    *(v108 + 160) = v116;
    v0 = v106;
    goto LABEL_58;
  }

  v16 = *(v0 + 4408);

  swift_beginAccess();
  v17 = *(v16 + 104);
  v125 = (v0 + 3220);
  if (*(v17 + 16))
  {
    v18 = sub_1D5B69D90(*(v0 + 3040), *(v0 + 3048));
    v19 = *(v0 + 4432);
    if (v20)
    {
      v21 = v18;
      v22 = *(v17 + 56);
      v23 = type metadata accessor for DebugFormatWorkspace();
      v24 = *(v23 - 8);
      sub_1D60CBBE8(v22 + *(v24 + 72) * v21, v19, type metadata accessor for DebugFormatWorkspace);
      (*(v24 + 56))(v19, 0, 1, v23);
    }

    else
    {
      v48 = type metadata accessor for DebugFormatWorkspace();
      (*(*(v48 - 8) + 56))(v19, 1, 1, v48);
    }
  }

  else
  {
    v46 = *(v0 + 4432);
    v47 = type metadata accessor for DebugFormatWorkspace();
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  }

  v49 = *(v0 + 4432);
  v50 = *(v0 + 4424);
  v51 = *(v0 + 4416);
  swift_endAccess();
  sub_1D60CBBE8(v49, v50, sub_1D60CB67C);
  sub_1D60CBBE8(v50, v51, sub_1D60CB67C);

  sub_1D725B32C();

  sub_1D60CBC50(v50, sub_1D60CB67C);
  v123 = *(v0 + 3024);
  v52 = *(v0 + 3032);
  v28 = *(v0 + 3096);
  v53 = MEMORY[0x1E69E7CC0];
  v134 = MEMORY[0x1E69E7CC0];
  v29 = *(v28 + 16);
  v124 = v0 + 3040;
  sub_1D5ECF1C0(v0 + 3040, v0 + 3648);
  v122 = v52;

  if (!v29)
  {
    v127 = v53;
    goto LABEL_41;
  }

  v54 = 0;
  v129 = -v29;
  v55 = v28 + 40;
  v127 = MEMORY[0x1E69E7CC0];
  v130 = v28;
  v121 = v28 + 40;
  while (2)
  {
    v27 = (v55 + 16 * v54++);
    while (1)
    {
      if ((v54 - 1) >= *(v28 + 16))
      {
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v30 = sub_1D7263BFC();
          if (!v30)
          {
            goto LABEL_55;
          }

LABEL_9:
          v31 = 0;
          v128 = v0 + 2376;
          while (1)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x1DA6FB460](v31, v29);
            }

            else
            {
              if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_53;
              }

              v32 = *(v29 + 8 * v31 + 32);
            }

            *(v0 + 4592) = v32;
            v33 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            v34 = *(v32 + 16);
            v35 = *(v34 + 16) == v28 && *(v34 + 24) == v27;
            if (v35 || (sub_1D72646CC() & 1) != 0)
            {

              v36 = *(v32 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
              v37 = v132;
              swift_beginAccess();
              v38 = *(v36 + 16);
              v39 = *(v38 + 16);

              if (v39)
              {
                v40 = sub_1D5B69D90(v130, v133);
                v131 = *(v132 + 4496);
                if (v41)
                {
                  v42 = v40;
                  v126 = *(v38 + 56);
                  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
                  v44 = v43;
                  v45 = *(v43 - 8);
                  sub_1D5C5DC00(v126 + *(v45 + 72) * v42, v131);

                  (*(v45 + 56))(v131, 0, 1, v44);
                  v37 = v132;
                }

                else
                {

                  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
                  v44 = v80;
                  (*(*(v80 - 8) + 56))(v131, 1, 1, v80);
                }
              }

              else
              {
                v78 = *(v132 + 4496);

                sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
                v44 = v79;
                (*(*(v79 - 8) + 56))(v78, 1, 1, v79);
              }

              v81 = v37;
              v82 = *(v37 + 4496);

              sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
              if ((*(*(v44 - 8) + 48))(v82, 1, v44) == 1)
              {
                v83 = *(v81 + 4496);

                sub_1D60CBC50(v83, sub_1D60CF280);

                if (qword_1EC87D498 != -1)
                {
                  swift_once();
                }

                v84 = *(v81 + 4520);
                v85 = *(v81 + 4392);
                sub_1D5F5EBA0(0, 0, 0, 0xD00000000000003FLL, 0x80000001D73C9350);

                sub_1D60CB8FC(v81 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
                sub_1D60CBC50(v84, type metadata accessor for FormatWorkspaceGroup);
                sub_1D60CF378(v128);
                v86 = *(v128 + 16);
                *v85 = *v128;
                *(v85 + 16) = v86;
                v87 = *(v128 + 32);
                v88 = *(v128 + 48);
                v89 = *(v128 + 80);
                *(v85 + 64) = *(v128 + 64);
                *(v85 + 80) = v89;
                *(v85 + 32) = v87;
                *(v85 + 48) = v88;
                v90 = *(v128 + 96);
                v91 = *(v128 + 112);
                v92 = *(v128 + 144);
                *(v85 + 128) = *(v128 + 128);
                *(v85 + 144) = v92;
                *(v85 + 96) = v90;
                *(v85 + 112) = v91;
                v93 = *(v128 + 160);
                v94 = *(v128 + 176);
                v95 = *(v128 + 192);
                *(v85 + 208) = *(v128 + 208);
                *(v85 + 176) = v94;
                *(v85 + 192) = v95;
                *(v85 + 160) = v93;
                v0 = v81;
                goto LABEL_58;
              }

              v96 = *(v81 + 4520);
              v97 = *(v81 + 4512);
              v98 = *(v81 + 4496);
              *(v81 + 4016) = *v98;
              v99 = v98[3];
              v100 = v98[4];
              v101 = v98[2];
              *(v81 + 4032) = v98[1];
              *(v81 + 4080) = v100;
              *(v81 + 4064) = v99;
              *(v81 + 4048) = v101;
              v102 = v98[7];
              v103 = v98[8];
              v104 = v98[6];
              *(v81 + 4096) = v98[5];
              *(v81 + 4144) = v103;
              *(v81 + 4128) = v102;
              *(v81 + 4112) = v104;
              sub_1D5D65D5C(v81 + 4016, v81 + 4160);
              sub_1D5C5E444(v98);
              sub_1D60CBBE8(v96, v97, type metadata accessor for FormatWorkspaceGroup);
              sub_1D5F588A0(v81 + 1696);
              sub_1D5ECF1C0(v81 + 3040, v81 + 3832);

              return MEMORY[0x1EEE6DFA0](sub_1D60C06B4, 0, 0);
            }

            ++v31;
            v0 = v132;
            if (v33 == v30)
            {
              goto LABEL_55;
            }
          }
        }
      }

      v0 = *v27;
      v133 = *(v27 - 1);
      swift_bridgeObjectRetain_n();

      sub_1D725B31C();

      memcpy((v132 + 16), (v132 + 352), 0x150uLL);
      v29 = *(v132 + 112);

      sub_1D60CEF18(v132 + 16);

      if (*(v29 + 16))
      {
        break;
      }

      swift_bridgeObjectRelease_n();
LABEL_31:

      ++v54;
      v28 = v130;
      v27 += 2;
      if (v129 + v54 == 1)
      {
        goto LABEL_41;
      }
    }

    sub_1D5B69D90(v133, v0);
    v57 = v56;

    if ((v57 & 1) == 0)
    {

      goto LABEL_31;
    }

    MEMORY[0x1DA6F9CE0](v58);
    if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    v0 = v129 + v54;
    v29 = &v134;
    sub_1D726278C();
    v127 = v134;
    v28 = v130;
    v55 = v121;
    if (v129 + v54)
    {
      continue;
    }

    break;
  }

LABEL_41:
  v0 = v132;
  v59 = *(v132 + 4432);
  v60 = *(v132 + 4392);

  v61 = *(v132 + 3219);
  v62 = *v125;
  sub_1D60CBC50(v59, sub_1D60CB67C);
  sub_1D60CB8FC(v132 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  v63 = *(v124 + 144);
  *(v132 + 2304) = *(v124 + 128);
  *(v132 + 2320) = v63;
  *(v132 + 2336) = *(v124 + 160);
  v64 = *(v124 + 80);
  *(v132 + 2240) = *(v124 + 64);
  *(v132 + 2256) = v64;
  v65 = *(v124 + 112);
  *(v132 + 2272) = *(v124 + 96);
  *(v132 + 2288) = v65;
  v66 = *(v124 + 16);
  *(v132 + 2176) = *v124;
  *(v132 + 2192) = v66;
  v67 = *(v124 + 48);
  *(v132 + 2208) = *(v124 + 32);
  *(v132 + 2351) = *(v124 + 175);
  *(v132 + 2224) = v67;
  *(v132 + 2160) = v123;
  *(v132 + 2168) = v122;
  *(v132 + 2355) = v61;
  *(v132 + 2356) = v62;
  *(v132 + 2360) = v127;
  *(v132 + 2368) = MEMORY[0x1E69E7CC0];
  nullsub_1();
  v68 = *(v132 + 2176);
  *v60 = *(v132 + 2160);
  *(v60 + 16) = v68;
  v69 = *(v132 + 2192);
  v70 = *(v132 + 2208);
  v71 = *(v132 + 2240);
  *(v60 + 64) = *(v132 + 2224);
  *(v60 + 80) = v71;
  *(v60 + 32) = v69;
  *(v60 + 48) = v70;
  v72 = *(v132 + 2256);
  v73 = *(v132 + 2272);
  v74 = *(v132 + 2304);
  *(v60 + 128) = *(v132 + 2288);
  *(v60 + 144) = v74;
  *(v60 + 96) = v72;
  *(v60 + 112) = v73;
  v75 = *(v132 + 2320);
  v76 = *(v132 + 2336);
  v77 = *(v132 + 2352);
  *(v60 + 208) = *(v132 + 2368);
  *(v60 + 176) = v76;
  *(v60 + 192) = v77;
  *(v60 + 160) = v75;
LABEL_58:

  v119 = *(v0 + 8);

  return v119();
}

uint64_t sub_1D60C06B4()
{
  v1 = *(v0 + 4576);
  type metadata accessor for FormatJSONEncoder();
  swift_allocObject();
  sub_1D6BCED58(&unk_1F5111610);
  sub_1D5B737E8(&unk_1EDF0E2F0, type metadata accessor for FormatContentSubgroup);
  *(v0 + 4600) = sub_1D72578BC();
  *(v0 + 4608) = v2;
  if (v1)
  {
    v3 = *(v0 + 4512);

    sub_1D5ECF21C(v0 + 3040);
    sub_1D5D68304(v0 + 4016);
    sub_1D60CBC50(v3, type metadata accessor for FormatWorkspaceGroup);

    *(v0 + 4640) = v1;

    v4 = *(v0 + 4552);
    v5 = *(v0 + 4544);

    return MEMORY[0x1EEE6DFA0](sub_1D60C1C40, v5, v4);
  }

  else
  {

    type metadata accessor for FormatJSONDecoder();
    swift_allocObject();
    sub_1D5B7BACC(&unk_1F5111638);
    sub_1D5B737E8(&qword_1EDF3FDC0, type metadata accessor for FormatContentSubgroup);
    sub_1D725A69C();
    v6 = *(v0 + 4464);
    v7 = *(v0 + 4448);
    v8 = *(v0 + 4440);

    sub_1D60CBBE8(v6, v7 + v8[5], type metadata accessor for FormatContentSubgroup);

    sub_1D725972C();

    v9 = *(v0 + 3827);
    v10 = *(v0 + 3040);
    v11 = *(v0 + 3056);
    v12 = *(v0 + 3088);
    *(v7 + 32) = *(v0 + 3072);
    *(v7 + 48) = v12;
    *v7 = v10;
    *(v7 + 16) = v11;
    v13 = *(v0 + 3104);
    v14 = *(v0 + 3120);
    v15 = *(v0 + 3152);
    *(v7 + 96) = *(v0 + 3136);
    *(v7 + 112) = v15;
    *(v7 + 64) = v13;
    *(v7 + 80) = v14;
    v16 = *(v0 + 3168);
    v17 = *(v0 + 3184);
    v18 = *(v0 + 3200);
    *(v7 + 175) = *(v0 + 3215);
    *(v7 + 144) = v17;
    *(v7 + 160) = v18;
    *(v7 + 128) = v16;
    *(v7 + v8[6]) = v9;
    v19 = v7 + v8[7];
    v20 = *(v0 + 1696);
    v21 = *(v0 + 1712);
    v22 = *(v0 + 1744);
    *(v19 + 32) = *(v0 + 1728);
    *(v19 + 48) = v22;
    *v19 = v20;
    *(v19 + 16) = v21;
    v23 = *(v0 + 1760);
    v24 = *(v0 + 1776);
    v25 = *(v0 + 1808);
    *(v19 + 96) = *(v0 + 1792);
    *(v19 + 112) = v25;
    *(v19 + 64) = v23;
    *(v19 + 80) = v24;
    v26 = *(v0 + 1824);
    v27 = *(v0 + 1840);
    v28 = *(v0 + 1872);
    *(v19 + 160) = *(v0 + 1856);
    *(v19 + 176) = v28;
    *(v19 + 128) = v26;
    *(v19 + 144) = v27;
    v29 = *(v0 + 1888);
    v30 = *(v0 + 1904);
    v31 = *(v0 + 1920);
    *(v19 + 240) = *(v0 + 1936);
    *(v19 + 208) = v30;
    *(v19 + 224) = v31;
    *(v19 + 192) = v29;
    v32 = swift_task_alloc();
    *(v0 + 4616) = v32;
    *v32 = v0;
    v32[1] = sub_1D60C0A84;
    v33 = *(v0 + 4448);

    return sub_1D7107ACC(v33);
  }
}

uint64_t sub_1D60C0A84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 4624) = v1;

  if (v1)
  {

    sub_1D5D68304(v4 + 4016);
    v5 = sub_1D60C1B5C;
  }

  else
  {
    *(v4 + 4632) = a1;
    v5 = sub_1D60C0BC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D60C0BC0()
{
  v1 = v0[558];
  v2 = v0[556];
  sub_1D5B952F8(v0[575], v0[576]);
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v1, type metadata accessor for FormatContentSubgroup);
  v3 = v0[569];
  v4 = v0[568];

  return MEMORY[0x1EEE6DFA0](sub_1D60C0C6C, v4, v3);
}

uint64_t sub_1D60C0C6C()
{
  v1 = v0;
  v2 = *(v0 + 4632);
  v3 = *(v0 + 4592);
  v4 = *(v0 + 4488);
  v5 = *(v0 + 4472);
  sub_1D60CBDE4(v1[564], v1[561], type metadata accessor for FormatWorkspaceGroup);
  *(v4 + v5[5]) = v2;
  *(v4 + v5[6]) = v3;
  v6 = (v4 + v5[7]);
  v7 = *(v0 + 4144);
  v8 = *(v0 + 4128);
  v9 = *(v0 + 4112);
  v6[5] = *(v0 + 4096);
  v6[6] = v9;
  v6[7] = v8;
  v6[8] = v7;
  v10 = *(v0 + 4080);
  v11 = *(v0 + 4064);
  v12 = *(v0 + 4048);
  v6[1] = *(v0 + 4032);
  v6[2] = v12;
  v6[3] = v11;
  v6[4] = v10;
  *v6 = *(v0 + 4016);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v0 + 4584);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_2:
  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v120 = sub_1D699164C(v15 > 1, v16 + 1, 1, v14);
  }

  else
  {
    v120 = v14;
  }

  v17 = v1[566];
  v18 = v1[561];
  v19 = v1[560];
  sub_1D60CBC50(v1[565], type metadata accessor for FormatWorkspaceGroup);
  *(v120 + 16) = v16 + 1;
  sub_1D60CBDE4(v18, v120 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, type metadata accessor for DebugFormatEditorWorkspaceGroup);
  sub_1D60C1E5C(v17);
  sub_1D60CF310();
  v21 = v20;
  v126 = v1;
  if ((*(*(v20 - 8) + 48))(v17, 1, v20) == 1)
  {
    v22 = v1[551];

    swift_beginAccess();
    v23 = *(v22 + 104);
    if (*(v23 + 16))
    {
      v24 = sub_1D5B69D90(v1[380], v1[381]);
      v25 = v1[554];
      if (v26)
      {
        v27 = v24;
        v28 = *(v23 + 56);
        v29 = type metadata accessor for DebugFormatWorkspace();
        v30 = *(v29 - 8);
        sub_1D60CBBE8(v28 + *(v30 + 72) * v27, v25, type metadata accessor for DebugFormatWorkspace);
        (*(v30 + 56))(v25, 0, 1, v29);
      }

      else
      {
        v55 = type metadata accessor for DebugFormatWorkspace();
        (*(*(v55 - 8) + 56))(v25, 1, 1, v55);
      }
    }

    else
    {
      v53 = v1[554];
      v54 = type metadata accessor for DebugFormatWorkspace();
      (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    }

    v56 = v1[554];
    v57 = v1[553];
    v58 = v1[552];
    swift_endAccess();
    sub_1D60CBBE8(v56, v57, sub_1D60CB67C);
    sub_1D60CBBE8(v57, v58, sub_1D60CB67C);

    sub_1D725B32C();

    sub_1D60CBC50(v57, sub_1D60CB67C);
    v116 = v1[378];
    v59 = v1[379];
    v60 = v1[387];
    v61 = MEMORY[0x1E69E7CC0];
    v129 = MEMORY[0x1E69E7CC0];
    v62 = *(v60 + 16);
    v118 = v1 + 380;
    sub_1D5ECF1C0((v1 + 380), (v1 + 456));
    v115 = v59;

    if (!v62)
    {
      v119 = v61;
      goto LABEL_44;
    }

    v63 = 0;
    v122 = -v62;
    v64 = v60 + 40;
    v119 = MEMORY[0x1E69E7CC0];
    v125 = v60;
    v114 = v60 + 40;
    while (1)
    {
      v1 = (v64 + 16 * v63++);
      while (1)
      {
        if ((v63 - 1) >= *(v60 + 16))
        {
          __break(1u);
          goto LABEL_55;
        }

        v65 = *v1;
        v128 = *(v1 - 1);
        swift_bridgeObjectRetain_n();

        sub_1D725B31C();

        memcpy(v126 + 2, v126 + 44, 0x150uLL);
        v66 = v126[14];

        sub_1D60CEF18((v126 + 2));

        if (*(v66 + 16))
        {
          break;
        }

        swift_bridgeObjectRelease_n();
LABEL_33:

        v60 = v125;
        ++v63;
        v1 += 2;
        if (v122 + v63 == 1)
        {
          v1 = v126;
          goto LABEL_44;
        }
      }

      sub_1D5B69D90(v128, v65);
      v68 = v67;

      if ((v68 & 1) == 0)
      {
        break;
      }

      MEMORY[0x1DA6F9CE0](v69);
      v60 = v125;
      if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v119 = v129;
      v1 = v126;
      v64 = v114;
      if (!(v122 + v63))
      {
LABEL_44:
        v70 = v1[554];
        v71 = v1[549];

        v72 = *(v1 + 3219);
        v73 = *(v1 + 3220);
        sub_1D60CBC50(v70, sub_1D60CB67C);
        sub_1D60CB8FC((v1 + 404), &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
        v74 = *(v118 + 9);
        *(v1 + 144) = *(v118 + 8);
        *(v1 + 145) = v74;
        *(v1 + 146) = *(v118 + 10);
        v75 = *(v118 + 5);
        *(v1 + 140) = *(v118 + 4);
        *(v1 + 141) = v75;
        v76 = *(v118 + 7);
        *(v1 + 142) = *(v118 + 6);
        *(v1 + 143) = v76;
        v77 = *(v118 + 1);
        *(v1 + 136) = *v118;
        *(v1 + 137) = v77;
        v78 = *(v118 + 3);
        *(v1 + 138) = *(v118 + 2);
        *(v1 + 2351) = *(v118 + 175);
        *(v1 + 139) = v78;
        v1[270] = v116;
        v1[271] = v115;
        *(v1 + 2355) = v72;
        *(v1 + 2356) = v73;
        v1[295] = v119;
        v1[296] = v120;
        nullsub_1();
        v79 = *(v1 + 136);
        *v71 = *(v1 + 135);
        *(v71 + 16) = v79;
        v80 = *(v1 + 137);
        v81 = *(v1 + 138);
        v82 = *(v1 + 140);
        *(v71 + 64) = *(v1 + 139);
        *(v71 + 80) = v82;
        *(v71 + 32) = v80;
        *(v71 + 48) = v81;
        v83 = *(v1 + 141);
        v84 = *(v1 + 142);
        v85 = *(v1 + 144);
        *(v71 + 128) = *(v1 + 143);
        *(v71 + 144) = v85;
        *(v71 + 96) = v83;
        *(v71 + 112) = v84;
        v86 = *(v1 + 145);
        v87 = *(v1 + 146);
        v88 = *(v1 + 147);
        v89 = v1[296];
        goto LABEL_64;
      }
    }

    goto LABEL_33;
  }

  v31 = v1[578];
  v1[573] = v120;
  v1[572] = v31;
  v32 = v1[566];
  v33 = (v32 + *(v21 + 48));
  v35 = *v33;
  v34 = v33[1];
  v36 = v33[2];
  v127 = v33[3];
  sub_1D60CBDE4(v32, v1[565], type metadata accessor for FormatWorkspaceGroup);

  sub_1D725B31C();

  memcpy(v1 + 86, v1 + 128, 0x150uLL);
  memcpy(v1 + 170, v1 + 128, 0x150uLL);
  v37 = sub_1D71689D8();
  sub_1D60CEF18((v1 + 86));
  v123 = v36;
  if (v37 >> 62)
  {
    v38 = sub_1D7263BFC();
    if (!v38)
    {
LABEL_60:
      v40 = (v1 + 351);

      if (qword_1EC87D498 != -1)
      {
        swift_once();
      }

      v95 = v1[565];
      v71 = v1[549];
      sub_1D5F5EBA0(0, 0, 0, 0xD000000000000039, 0x80000001D73C93D0);
LABEL_63:
      sub_1D60CB8FC((v1 + 404), &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
      sub_1D60CBC50(v95, type metadata accessor for FormatWorkspaceGroup);
      sub_1D60CF378(v40);
      v105 = *(v40 + 16);
      *v71 = *v40;
      *(v71 + 16) = v105;
      v106 = *(v40 + 32);
      v107 = *(v40 + 48);
      v108 = *(v40 + 80);
      *(v71 + 64) = *(v40 + 64);
      *(v71 + 80) = v108;
      *(v71 + 32) = v106;
      *(v71 + 48) = v107;
      v109 = *(v40 + 96);
      v110 = *(v40 + 112);
      v111 = *(v40 + 144);
      *(v71 + 128) = *(v40 + 128);
      *(v71 + 144) = v111;
      *(v71 + 96) = v109;
      *(v71 + 112) = v110;
      v86 = *(v40 + 160);
      v87 = *(v40 + 176);
      v88 = *(v40 + 192);
      v89 = *(v40 + 208);
LABEL_64:
      *(v71 + 208) = v89;
      *(v71 + 176) = v87;
      *(v71 + 192) = v88;
      *(v71 + 160) = v86;

      v112 = v1[1];

      return v112();
    }
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v38)
    {
      goto LABEL_60;
    }
  }

  v39 = 0;
  v40 = (v1 + 297);
  v121 = v1 + 502;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1DA6FB460](v39, v37);
    }

    else
    {
      if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v41 = *(v37 + 8 * v39 + 32);
    }

    v1[574] = v41;
    v1 = (v39 + 1);
    if (__OFADD__(v39, 1))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      v14 = sub_1D699164C(0, v14[2] + 1, 1, v14);
      goto LABEL_2;
    }

    v42 = *(v41 + 16);
    v43 = *(v42 + 16) == v35 && *(v42 + 24) == v34;
    if (v43 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    ++v39;
    v43 = v1 == v38;
    v1 = v126;
    if (v43)
    {
      goto LABEL_60;
    }
  }

  v44 = *(v41 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
  v1 = v126;
  swift_beginAccess();
  v45 = *(v44 + 16);
  v46 = *(v45 + 16);

  if (v46)
  {
    v47 = sub_1D5B69D90(v123, v127);
    v124 = v126[562];
    if (v48)
    {
      v49 = v47;
      v117 = *(v45 + 56);
      sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v51 = v50;
      v52 = *(v50 - 8);
      sub_1D5C5DC00(v117 + *(v52 + 72) * v49, v124);

      (*(v52 + 56))(v124, 0, 1, v51);
      v1 = v126;
    }

    else
    {

      sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      v51 = v92;
      (*(*(v92 - 8) + 56))(v124, 1, 1, v92);
    }
  }

  else
  {
    v90 = v126[562];

    sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
    v51 = v91;
    (*(*(v91 - 8) + 56))(v90, 1, 1, v91);
  }

  v93 = v1[562];

  sub_1D5C5DC9C(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
  if ((*(*(v51 - 8) + 48))(v93, 1, v51) == 1)
  {
    v94 = v1[562];

    sub_1D60CBC50(v94, sub_1D60CF280);

    if (qword_1EC87D498 != -1)
    {
      swift_once();
    }

    v95 = v1[565];
    v71 = v1[549];
    sub_1D5F5EBA0(0, 0, 0, 0xD00000000000003FLL, 0x80000001D73C9350);

    goto LABEL_63;
  }

  v96 = v1[565];
  v97 = v1[564];
  v98 = v1[562];
  *v121 = *v98;
  v99 = v98[4];
  v101 = v98[1];
  v100 = v98[2];
  v121[3] = v98[3];
  v121[4] = v99;
  v121[1] = v101;
  v121[2] = v100;
  v102 = v98[8];
  v104 = v98[5];
  v103 = v98[6];
  v121[7] = v98[7];
  v121[8] = v102;
  v121[5] = v104;
  v121[6] = v103;
  sub_1D5D65D5C(v121, (v1 + 520));
  sub_1D5C5E444(v98);
  sub_1D60CBBE8(v96, v97, type metadata accessor for FormatWorkspaceGroup);
  sub_1D5F588A0((v1 + 212));
  sub_1D5ECF1C0((v1 + 380), (v1 + 479));

  return MEMORY[0x1EEE6DFA0](sub_1D60C06B4, 0, 0);
}

uint64_t sub_1D60C1B5C()
{
  v1 = v0[564];
  v2 = v0[558];
  v3 = v0[556];
  sub_1D5B952F8(v0[575], v0[576]);
  sub_1D60CBC50(v3, type metadata accessor for DebugFormatBindingRequest);
  sub_1D60CBC50(v2, type metadata accessor for FormatContentSubgroup);
  sub_1D60CBC50(v1, type metadata accessor for FormatWorkspaceGroup);
  v0[580] = v0[578];

  v4 = v0[569];
  v5 = v0[568];

  return MEMORY[0x1EEE6DFA0](sub_1D60C1C40, v5, v4);
}

uint64_t sub_1D60C1C40()
{
  v1 = *(v0 + 4640);

  v2 = v1;
  if (qword_1EC87D498 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 4640);
  v4 = *(v0 + 4520);
  v5 = *(v0 + 4392);
  sub_1D5F5EBA0(v1, 0, 0, 0xD000000000000033, 0x80000001D73C9390);

  sub_1D60CB8FC(v0 + 3232, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);

  sub_1D60CBC50(v4, type metadata accessor for FormatWorkspaceGroup);
  sub_1D60CF378(v0 + 2592);
  v6 = *(v0 + 2608);
  *v5 = *(v0 + 2592);
  *(v5 + 16) = v6;
  v7 = *(v0 + 2624);
  v8 = *(v0 + 2640);
  v9 = *(v0 + 2672);
  *(v5 + 64) = *(v0 + 2656);
  *(v5 + 80) = v9;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  v10 = *(v0 + 2688);
  v11 = *(v0 + 2704);
  v12 = *(v0 + 2736);
  *(v5 + 128) = *(v0 + 2720);
  *(v5 + 144) = v12;
  *(v5 + 96) = v10;
  *(v5 + 112) = v11;
  v13 = *(v0 + 2752);
  v14 = *(v0 + 2768);
  v15 = *(v0 + 2784);
  *(v5 + 208) = *(v0 + 2800);
  *(v5 + 176) = v14;
  *(v5 + 192) = v15;
  *(v5 + 160) = v13;

  v16 = *(v0 + 8);

  return v16();
}

void sub_1D60C1E5C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatWorkspaceGroup() - 8;
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(*v1 + 16);
    if (v10 != v11)
    {
      if (v10 >= v11)
      {
        __break(1u);
      }

      else
      {
        v12 = *v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10;
        *(v1 + 8) = v10 + 1;
        sub_1D60CBBE8(v12, v7, type metadata accessor for FormatWorkspaceGroup);
        v13 = *(v1 + 16);
        v14 = *(v1 + 24);
        v15 = *(v13 + 16);
        if (v14 == v15)
        {
          sub_1D60CBC50(v7, type metadata accessor for FormatWorkspaceGroup);
          goto LABEL_9;
        }

        if (v14 < v15)
        {
          v17 = (v13 + 32 * v14);
          v19 = v17[6];
          v18 = v17[7];
          v21 = v17[4];
          v20 = v17[5];
          *(v1 + 24) = v14 + 1;
          sub_1D60CF310();
          v23 = v22;
          v24 = (a1 + *(v22 + 48));
          sub_1D60CBDE4(v7, a1, type metadata accessor for FormatWorkspaceGroup);
          *v24 = v21;
          v24[1] = v20;
          v24[2] = v19;
          v24[3] = v18;
          (*(*(v23 - 8) + 56))(a1, 0, 1, v23);

          return;
        }
      }

      __break(1u);
      return;
    }

LABEL_9:
    *(v1 + 32) = 1;
    sub_1D60CF310();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return;
  }

  sub_1D60CF310();
  v9 = *(*(v8 - 8) + 56);

  v9(a1, 1, 1, v8);
}

uint64_t sub_1D60C20E8(uint64_t a1, char a2)
{
  *(v3 + 7264) = v2;
  *(v3 + 3363) = a2;
  *(v3 + 7256) = a1;
  v4 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  *(v3 + 7272) = v4;
  *(v3 + 7280) = *(v4 - 8);
  *(v3 + 7288) = swift_task_alloc();
  sub_1D60CB67C(0);
  *(v3 + 7296) = swift_task_alloc();
  *(v3 + 7304) = swift_task_alloc();
  *(v3 + 7312) = swift_task_alloc();
  *(v3 + 7320) = swift_task_alloc();
  sub_1D60CF3A0();
  *(v3 + 7328) = v5;
  *(v3 + 7336) = swift_task_alloc();
  *(v3 + 7344) = type metadata accessor for DebugFormatWorkspaceKind();
  *(v3 + 7352) = swift_task_alloc();
  v6 = type metadata accessor for DebugFormatWorkspace();
  *(v3 + 7360) = v6;
  *(v3 + 7368) = *(v6 - 8);
  *(v3 + 7376) = swift_task_alloc();
  *(v3 + 7384) = swift_task_alloc();
  *(v3 + 7392) = swift_task_alloc();
  *(v3 + 7400) = swift_task_alloc();
  *(v3 + 7408) = swift_task_alloc();
  type metadata accessor for FeedContext();
  *(v3 + 7416) = swift_task_alloc();
  sub_1D726290C();
  *(v3 + 7424) = sub_1D72628FC();
  v8 = sub_1D726285C();
  *(v3 + 7432) = v8;
  *(v3 + 7440) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D60C2350, v8, v7);
}

uint64_t sub_1D60C2350()
{
  v365 = v0;
  v1 = v0 + 3184;
  v2 = v0 + 4840;
  v3 = v0 + 5944;
  v4 = v0 + 6312;
  v5 = v0 + 6680;
  v6 = *(v0 + 7416);
  v7 = *(*(*(*(v0 + 7264) + 120) + 96) + 32);
  ObjectType = swift_getObjectType();
  v9 = v7;
  v10 = v0;
  FeedContextFactoryType.createFeedContext()(ObjectType, v9);
  v11 = MEMORY[0x1E69E7CC0];
  *(v0 + 7216) = MEMORY[0x1E69E7CC0];
  sub_1D60C49D4(v6, v0 + 4840);
  v12 = *(v0 + 4984);
  *(v0 + 3312) = *(v0 + 4968);
  *(v0 + 3328) = v12;
  *(v0 + 3344) = *(v0 + 5000);
  v13 = *(v0 + 4920);
  *(v0 + 3248) = *(v0 + 4904);
  *(v0 + 3264) = v13;
  v14 = *(v0 + 4952);
  *(v0 + 3280) = *(v0 + 4936);
  *(v0 + 3296) = v14;
  v15 = *(v0 + 4856);
  *(v0 + 3184) = *(v0 + 4840);
  *(v0 + 3200) = v15;
  v16 = *(v0 + 4888);
  *(v0 + 3216) = *(v0 + 4872);
  *(v0 + 3359) = *(v0 + 5015);
  *(v0 + 3232) = v16;
  v17 = v11;
  v339 = v0;
  if (sub_1D5DEA380(v0 + 3184) != 1)
  {
    v18 = *(v0 + 7416);
    v19 = v10[926];
    v20 = v10[919];
    v21 = v10[907];
    swift_storeEnumTagMultiPayload();
    v22 = *(v1 + 144);
    v362 = *(v1 + 128);
    v363 = v22;
    v364[0] = *(v1 + 160);
    *(v364 + 15) = *(v1 + 175);
    v23 = *(v1 + 80);
    v358 = *(v1 + 64);
    v359 = v23;
    v24 = *(v1 + 112);
    v360 = *(v1 + 96);
    v361 = v24;
    v25 = *(v1 + 16);
    v354 = *v1;
    v355 = v25;
    v26 = *(v1 + 48);
    v356 = *(v1 + 32);
    v357 = v26;
    sub_1D60B8884(v21, v20, &v354, v18, v19);
    sub_1D60CBC50(v20, type metadata accessor for DebugFormatWorkspaceKind);
    v17 = sub_1D6991FC0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v28 = *(v17 + 16);
    v27 = *(v17 + 24);
    v29 = (v28 + 1);
    if (v28 >= v27 >> 1)
    {
LABEL_86:
      v17 = sub_1D6991FC0(v27 > 1, v29, 1, v17);
    }

    v10 = v339;
    v30 = *(v339 + 7408);
    v31 = *(v339 + 7368);
    sub_1D60CB8FC(v2, &qword_1EC883588, &type metadata for FormatWorkspace);
    *(v17 + 16) = v29;
    sub_1D60CBDE4(v30, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, type metadata accessor for DebugFormatWorkspace);
    *(v339 + 7216) = v17;
  }

  v32 = v10[908];
  v28 = v32 + 136;
  v33 = *(v32 + 152);
  v34 = *(v32 + 184);
  v35 = *(v32 + 136);
  *(v5 + 32) = *(v32 + 168);
  *(v5 + 48) = v34;
  *v5 = v35;
  *(v5 + 16) = v33;
  v36 = *(v32 + 216);
  v37 = *(v32 + 248);
  v38 = *(v32 + 200);
  *(v5 + 96) = *(v32 + 232);
  *(v5 + 112) = v37;
  *(v5 + 64) = v38;
  *(v5 + 80) = v36;
  v40 = *(v32 + 280);
  v39 = *(v32 + 296);
  v41 = *(v32 + 264);
  *(v5 + 175) = *(v32 + 311);
  *(v5 + 144) = v40;
  *(v5 + 160) = v39;
  *(v5 + 128) = v41;
  if (sub_1D5DEA380(v5) == 1)
  {
    sub_1D60C4E8C(0xD000000000000016, 0x80000001D73C9410, v10[907] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_key, 0x6F72472064656546, 0xEA00000000007075, v10[927], &v354);
    v42 = *v28;
    v43 = *(v28 + 16);
    v44 = *(v28 + 48);
    *(v10 + 408) = *(v28 + 32);
    *(v10 + 409) = v44;
    *(v10 + 406) = v42;
    *(v10 + 407) = v43;
    v45 = *(v28 + 64);
    v46 = *(v28 + 80);
    v47 = *(v28 + 112);
    *(v10 + 412) = *(v28 + 96);
    *(v10 + 413) = v47;
    *(v10 + 410) = v45;
    *(v10 + 411) = v46;
    v48 = *(v28 + 128);
    v49 = *(v28 + 144);
    v50 = *(v28 + 160);
    *(v10 + 6671) = *(v28 + 175);
    *(v10 + 415) = v49;
    *(v10 + 416) = v50;
    *(v10 + 414) = v48;
    v51 = v363;
    *(v28 + 128) = v362;
    *(v28 + 144) = v51;
    *(v28 + 160) = v364[0];
    *(v28 + 175) = *(v364 + 15);
    v52 = v359;
    *(v28 + 64) = v358;
    *(v28 + 80) = v52;
    v53 = v361;
    *(v28 + 96) = v360;
    *(v28 + 112) = v53;
    v54 = v355;
    *v28 = v354;
    *(v28 + 16) = v54;
    v55 = v357;
    *(v28 + 32) = v356;
    *(v28 + 48) = v55;
    sub_1D60CB8FC((v10 + 812), &qword_1EC883588, &type metadata for FormatWorkspace);
  }

  v2 = 7216;
  v56 = *v28;
  v57 = *(v28 + 16);
  v58 = *(v28 + 48);
  *(v3 + 32) = *(v28 + 32);
  *(v3 + 48) = v58;
  *v3 = v56;
  *(v3 + 16) = v57;
  v59 = *(v28 + 64);
  v60 = *(v28 + 80);
  v61 = *(v28 + 112);
  *(v3 + 96) = *(v28 + 96);
  *(v3 + 112) = v61;
  *(v3 + 64) = v59;
  *(v3 + 80) = v60;
  v62 = *(v28 + 128);
  v63 = *(v28 + 144);
  v64 = *(v28 + 160);
  *(v3 + 175) = *(v28 + 175);
  *(v3 + 144) = v63;
  *(v3 + 160) = v64;
  *(v3 + 128) = v62;
  v65 = *v28;
  v66 = *(v28 + 16);
  v67 = *(v28 + 48);
  *(v4 + 32) = *(v28 + 32);
  *(v4 + 48) = v67;
  *v4 = v65;
  *(v4 + 16) = v66;
  v68 = *(v28 + 64);
  v69 = *(v28 + 80);
  v70 = *(v28 + 112);
  *(v4 + 96) = *(v28 + 96);
  *(v4 + 112) = v70;
  *(v4 + 64) = v68;
  *(v4 + 80) = v69;
  v71 = *(v28 + 128);
  v72 = *(v28 + 144);
  v73 = *(v28 + 160);
  *(v4 + 175) = *(v28 + 175);
  *(v4 + 144) = v72;
  *(v4 + 160) = v73;
  *(v4 + 128) = v71;
  if (sub_1D5DEA380(v4) != 1)
  {
    v74 = v10;
    v75 = (v10 + 444);
    v76 = v74[927];
    v77 = v74[925];
    v78 = v74[919];
    v79 = v74[907];
    swift_storeEnumTagMultiPayload();
    v80 = *(v4 + 144);
    v362 = *(v4 + 128);
    v363 = v80;
    v364[0] = *(v4 + 160);
    *(v364 + 15) = *(v4 + 175);
    v81 = *(v4 + 80);
    v358 = *(v4 + 64);
    v359 = v81;
    v82 = *(v4 + 112);
    v360 = *(v4 + 96);
    v361 = v82;
    v83 = *(v4 + 16);
    v354 = *v4;
    v355 = v83;
    v84 = *(v4 + 48);
    v356 = *(v4 + 32);
    v357 = v84;
    v85 = *(v3 + 144);
    *(v75 + 128) = *(v3 + 128);
    *(v75 + 144) = v85;
    *(v75 + 160) = *(v3 + 160);
    *(v75 + 175) = *(v3 + 175);
    v86 = *(v3 + 80);
    *(v75 + 64) = *(v3 + 64);
    *(v75 + 80) = v86;
    v87 = *(v3 + 112);
    *(v75 + 96) = *(v3 + 96);
    *(v75 + 112) = v87;
    v88 = *(v3 + 16);
    *v75 = *v3;
    *(v75 + 16) = v88;
    v89 = *(v3 + 48);
    *(v75 + 32) = *(v3 + 32);
    *(v75 + 48) = v89;
    sub_1D5ECF1C0(v75, (v74 + 858));
    sub_1D60B8884(v79, v78, &v354, v76, v77);
    sub_1D60CBC50(v78, type metadata accessor for DebugFormatWorkspaceKind);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1D6991FC0(0, *(v17 + 16) + 1, 1, v17);
    }

    v28 = *(v17 + 16);
    v90 = *(v17 + 24);
    v10 = v339;
    v2 = 7216;
    if (v28 >= v90 >> 1)
    {
      v17 = sub_1D6991FC0(v90 > 1, v28 + 1, 1, v17);
    }

    v91 = *(v339 + 7400);
    v92 = *(v339 + 7368);
    sub_1D60CB8FC(v3, &qword_1EC883588, &type metadata for FormatWorkspace);
    *(v17 + 16) = v28 + 1;
    sub_1D60CBDE4(v91, v17 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v28, type metadata accessor for DebugFormatWorkspace);
    *(v339 + 7216) = v17;
  }

  v93 = v10[908];
  v29 = *(v93 + 320);
  if (v29)
  {
LABEL_41:
    v138 = v10[927];
    v139 = v10[907];
    v140 = swift_task_alloc();
    v140[2] = v93;
    v140[3] = v139;
    v140[4] = v138;

    v141 = sub_1D5ECB5F8(sub_1D60CF430, v140, v29);

    sub_1D6986DE4(v141);
    goto LABEL_42;
  }

  v326 = v10[908];
  v5 = *(v10[907] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_feedKeys);
  v94 = *(v5 + 16);
  if (!v94)
  {
    v96 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v95 = 0;
  v3 = (v10 + 559);
  v4 = (v10 + 582);
  v17 = (v10 + 720);
  v333 = v10[916];
  v96 = MEMORY[0x1E69E7CC0];
  v332 = *(v5 + 16);
  v325 = v94 - 1;
  v335 = *(v10[907] + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_feedKeys);
  do
  {
    v328 = v96;
    v97 = v95;
    while (1)
    {
      v27 = *(v5 + 16);
      if (v97 >= v27)
      {
        __break(1u);
        goto LABEL_86;
      }

      v98 = v10[917];
      v99 = (type metadata accessor for DebugGroupLayoutKey() - 8);
      v100 = v5 + ((*(*v99 + 80) + 32) & ~*(*v99 + 80)) + *(*v99 + 72) * v97;
      v101 = v98 + *(v333 + 48);
      *v98 = v97;
      sub_1D60CBBE8(v100, v101, type metadata accessor for DebugGroupLayoutKey);
      v337 = v101;
      v28 = v101 + v99[8];
      v102 = *(v28 + 32);
      v2 = *(v28 + 40);
      v29 = __swift_project_boxed_opaque_existential_1((v28 + 8), v102);
      (*(v2 + 64))(v102, v2);
      v103 = v10[884];
      if (!v103)
      {
        sub_1D60CBC50((v10 + 881), sub_1D5D6013C);
LABEL_22:
        sub_1D60CB7FC(v17);
        goto LABEL_28;
      }

      v104 = v10[885];
      v29 = __swift_project_boxed_opaque_existential_1(v10 + 881, v10[884]);
      v2 = (*(v104 + 40))(v103, v104);
      __swift_destroy_boxed_opaque_existential_1((v10 + 881));
      if (!v2)
      {
        goto LABEL_22;
      }

      *&v354 = 0;
      *(&v354 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      *&v354 = 0xD000000000000016;
      *(&v354 + 1) = 0x80000001D73C9430;
      v10[903] = v97;
      v105 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v105);

      v106 = *(&v354 + 1);
      v331 = v354;
      v107 = sub_1D6A2F628();
      v109 = v10;
      if (v108)
      {
        v110 = v107;
        v29 = v108;
      }

      else
      {
        v329 = v2;
        v112 = *(v28 + 32);
        v111 = *(v28 + 40);
        __swift_project_boxed_opaque_existential_1((v28 + 8), v112);
        v28 = 7128;
        (*(v111 + 64))(v112, v111);
        v113 = v109[894];
        if (v113)
        {
          v114 = v109[895];
          __swift_project_boxed_opaque_existential_1(v109 + 891, v109[894]);
          v110 = (*(v114 + 16))(v113, v114);
          v29 = v115;
          __swift_destroy_boxed_opaque_existential_1((v109 + 891));
        }

        else
        {
          sub_1D60CBC50((v109 + 891), sub_1D5D6013C);
          *&v354 = 0x6F72472064656546;
          *(&v354 + 1) = 0xEB00000000207075;
          v109[904] = v97;
          v116 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v116);

          v29 = *(&v354 + 1);
          v110 = v354;
        }

        v2 = v329;
      }

      sub_1D60C4E8C(v331, v106, v337, v110, v29, v109[927], v17);

      v10 = v109;
LABEL_28:
      sub_1D60CBC50(v10[917], sub_1D60CF3A0);
      v117 = *(v17 + 144);
      *(v4 + 128) = *(v17 + 128);
      *(v4 + 144) = v117;
      *(v4 + 160) = *(v17 + 160);
      *(v4 + 175) = *(v17 + 175);
      v118 = *(v17 + 80);
      *(v4 + 64) = *(v17 + 64);
      *(v4 + 80) = v118;
      v119 = *(v17 + 112);
      *(v4 + 96) = *(v17 + 96);
      *(v4 + 112) = v119;
      v120 = *(v17 + 16);
      *v4 = *v17;
      *(v4 + 16) = v120;
      v121 = *(v17 + 48);
      *(v4 + 32) = *(v17 + 32);
      *(v4 + 48) = v121;
      v5 = v335;
      if (sub_1D5DEA380(v4) != 1)
      {
        break;
      }

      ++v97;
      v122 = *(v17 + 144);
      *(v3 + 128) = *(v17 + 128);
      *(v3 + 144) = v122;
      *(v3 + 160) = *(v17 + 160);
      *(v3 + 175) = *(v17 + 175);
      v123 = *(v17 + 80);
      *(v3 + 64) = *(v17 + 64);
      *(v3 + 80) = v123;
      v124 = *(v17 + 112);
      *(v3 + 96) = *(v17 + 96);
      *(v3 + 112) = v124;
      v125 = *(v17 + 16);
      *v3 = *v17;
      *(v3 + 16) = v125;
      v126 = *(v17 + 48);
      *(v3 + 32) = *(v17 + 32);
      *(v3 + 48) = v126;
      sub_1D60CB8FC(v3, &qword_1EC883588, &type metadata for FormatWorkspace);
      if (v332 == v97)
      {
        v96 = v328;
        goto LABEL_39;
      }
    }

    v350 = *(v17 + 128);
    v351 = *(v17 + 144);
    *v352 = *(v17 + 160);
    *&v352[15] = *(v17 + 175);
    v346 = *(v17 + 64);
    v347 = *(v17 + 80);
    v348 = *(v17 + 96);
    v349 = *(v17 + 112);
    v340 = *v17;
    v342 = *(v17 + 16);
    v344 = *(v17 + 32);
    v345 = *(v17 + 48);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v96 = v328;
    }

    else
    {
      v96 = sub_1D6991FF4(0, *(v328 + 2) + 1, 1, v328);
    }

    v28 = *(v96 + 2);
    v127 = *(v96 + 3);
    v29 = (v28 + 1);
    if (v28 >= v127 >> 1)
    {
      v96 = sub_1D6991FF4((v127 > 1), v28 + 1, 1, v96);
    }

    v95 = v97 + 1;
    v356 = v344;
    v357 = v345;
    v360 = v348;
    v361 = v349;
    v358 = v346;
    v359 = v347;
    *(v364 + 15) = *&v352[15];
    v363 = v351;
    v364[0] = *v352;
    v362 = v350;
    v354 = v340;
    v355 = v342;
    *(v96 + 2) = v29;
    v128 = &v96[184 * v28];
    v129 = v354;
    v130 = v355;
    v131 = v357;
    *(v128 + 4) = v356;
    *(v128 + 5) = v131;
    *(v128 + 2) = v129;
    *(v128 + 3) = v130;
    v132 = v358;
    v133 = v359;
    v134 = v361;
    *(v128 + 8) = v360;
    *(v128 + 9) = v134;
    *(v128 + 6) = v132;
    *(v128 + 7) = v133;
    v135 = v362;
    v136 = v363;
    v137 = v364[0];
    *(v128 + 207) = *(v364 + 15);
    *(v128 + 11) = v136;
    *(v128 + 12) = v137;
    *(v128 + 10) = v135;
  }

  while (v325 != v97);
LABEL_39:
  *(v326 + 320) = v96;

  v29 = *(v326 + 320);
  if (v29)
  {
    v93 = v10[908];
    goto LABEL_41;
  }

LABEL_42:
  v334 = v10 + 1452;
  v142 = v10[927];
  v143 = v10[921];
  v144 = v10[920];
  v145 = v10[915];
  v146 = v10[908];
  v147 = *(v339 + 7256);

  sub_1D725B31C();

  v148 = *(v339 + 7240);
  v149 = swift_task_alloc();
  v149[2] = v146;
  v149[3] = v147;
  v150 = v339;
  v149[4] = v142;
  v151 = sub_1D5ECB8BC(sub_1D60CF40C, v149, v148);

  sub_1D6986DE4(v151);
  v152 = *(v339 + 7216);
  *(v339 + 7448) = v152;
  *(v339 + 7248) = v152;

  sub_1D725B32C();

  sub_1D725B31C();

  if ((*(v143 + 48))(v145, 1, v144) == 1)
  {
    sub_1D60CBC50(*(v339 + 7320), sub_1D60CB67C);
    if (*(v152 + 16))
    {
      v153 = *(*(v339 + 7368) + 80);
      sub_1D60CBBE8(v152 + ((v153 + 32) & ~v153), *(v339 + 7296), type metadata accessor for DebugFormatWorkspace);
      v154 = 0;
    }

    else
    {
      v154 = 1;
    }

    v169 = *(v339 + 7304);
    v165 = *(v339 + 7296);
    (*(*(v339 + 7368) + 56))(v165, v154, 1, *(v339 + 7360));
    sub_1D60CBBE8(v165, v169, sub_1D60CB67C);

    sub_1D725B32C();

    v168 = sub_1D60CB67C;
  }

  else
  {
    v155 = *(v339 + 7392);
    v156 = *(v339 + 7360);
    v157 = *(v339 + 7264);
    sub_1D60CBDE4(*(v339 + 7320), v155, type metadata accessor for DebugFormatWorkspace);
    v158 = (v155 + *(v156 + 20));
    v160 = *v158;
    v159 = v158[1];
    swift_beginAccess();
    v161 = *(v157 + 104);
    if (*(v161 + 16) && (v162 = sub_1D5B69D90(v160, v159), (v163 & 1) != 0))
    {
      sub_1D60CBBE8(*(v161 + 56) + *(*(v339 + 7368) + 72) * v162, *(v339 + 7312), type metadata accessor for DebugFormatWorkspace);
      v164 = 0;
    }

    else
    {
      v164 = 1;
    }

    v165 = *(v339 + 7392);
    v166 = *(v339 + 7312);
    v167 = *(v339 + 7304);
    (*(*(v339 + 7368) + 56))(v166, v164, 1, *(v339 + 7360));
    swift_endAccess();
    sub_1D60CBBE8(v166, v167, sub_1D60CB67C);

    sub_1D725B32C();

    sub_1D60CBC50(v166, sub_1D60CB67C);
    v168 = type metadata accessor for DebugFormatWorkspace;
  }

  sub_1D60CBC50(v165, v168);
  if (v334[1911] != 1 || (, sub_1D725B31C(), , v171 = *(v339 + 1848), v170 = *(v339 + 1864), v172 = *(v339 + 1832), *(v339 + 2064) = v171, *(v339 + 2080) = v170, v173 = *(v339 + 1864), *(v339 + 2096) = *(v339 + 1880), v175 = *(v339 + 1784), v174 = *(v339 + 1800), v176 = *(v339 + 1768), *(v339 + 2000) = v175, *(v339 + 2016) = v174, v177 = *(v339 + 1800), v179 = *(v339 + 1816), v178 = *(v339 + 1832), *(v339 + 2032) = v179, *(v339 + 2048) = v178, v181 = *(v339 + 1720), v180 = *(v339 + 1736), v182 = *(v339 + 1704), *(v339 + 1936) = v181, *(v339 + 1952) = v180, v183 = *(v339 + 1736), v185 = *(v339 + 1752), v184 = *(v339 + 1768), *(v339 + 1968) = v185, *(v339 + 1984) = v184, v186 = *(v339 + 1704), v187 = *(v339 + 1688), *(v339 + 1904) = v187, *(v339 + 1920) = v186, *(v339 + 2280) = v171, *(v339 + 2296) = v173, *(v339 + 2312) = *(v339 + 1880), *(v339 + 2216) = v175, *(v339 + 2232) = v177, *(v339 + 2248) = v179, *(v339 + 2264) = v172, *(v339 + 2152) = v181, *(v339 + 2168) = v183, *(v339 + 2184) = v185, *(v339 + 2200) = v176, *(v339 + 2112) = *(v339 + 1896), *(v339 + 2328) = *(v339 + 1896), *(v339 + 2120) = v187, *(v339 + 2136) = v182, sub_1D5DEA380(v339 + 2120) == 1))
  {

    goto LABEL_55;
  }

  v214 = *(v339 + 7264);
  swift_beginAccess();
  v215 = *(v214 + 104);
  if (!*(v215 + 16) || (v216 = sub_1D5B69D90(*(v339 + 2120), *(v339 + 2128)), (v217 & 1) == 0))
  {
    swift_endAccess();

    sub_1D60CB8FC(v339 + 1904, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
LABEL_55:
    v188 = v339 + 2552;

    sub_1D725B31C();

    v190 = *(v339 + 2496);
    v189 = *(v339 + 2512);
    v191 = *(v339 + 2480);
    *(v339 + 2712) = v190;
    *(v339 + 2728) = v189;
    v192 = *(v339 + 2512);
    *(v339 + 2744) = *(v339 + 2528);
    v194 = *(v339 + 2432);
    v193 = *(v339 + 2448);
    v195 = *(v339 + 2416);
    *(v339 + 2648) = v194;
    *(v339 + 2664) = v193;
    v196 = *(v339 + 2448);
    v198 = *(v339 + 2464);
    v197 = *(v339 + 2480);
    *(v339 + 2680) = v198;
    *(v339 + 2696) = v197;
    v200 = *(v339 + 2368);
    v199 = *(v339 + 2384);
    v201 = *(v339 + 2352);
    *(v339 + 2584) = v200;
    *(v339 + 2600) = v199;
    v202 = *(v339 + 2384);
    v204 = *(v339 + 2400);
    v203 = *(v339 + 2416);
    *(v339 + 2616) = v204;
    *(v339 + 2632) = v203;
    v205 = *(v339 + 2352);
    v206 = *(v339 + 2336);
    *(v339 + 2552) = v206;
    *(v339 + 2568) = v205;
    *(v339 + 1416) = v190;
    *(v339 + 1432) = v192;
    *(v339 + 1448) = *(v339 + 2528);
    *(v339 + 1352) = v194;
    *(v339 + 1368) = v196;
    *(v339 + 1384) = v198;
    *(v339 + 1400) = v191;
    *(v339 + 1288) = v200;
    *(v339 + 1304) = v202;
    *(v339 + 1320) = v204;
    *(v339 + 1336) = v195;
    *(v339 + 2760) = *(v339 + 2544);
    *(v339 + 1464) = *(v339 + 2544);
    *(v339 + 1256) = v206;
    *(v339 + 1272) = v201;
    if (sub_1D5DEA380(v339 + 1256) == 1)
    {
      goto LABEL_77;
    }

    v207 = *(v339 + 1464);
    if (!*(v207 + 16))
    {
LABEL_69:
      v341 = *(v339 + 1288);
      v343 = *(v339 + 1304);
      v276 = *(v339 + 1433);
      v360 = *(v339 + 1417);
      v361 = v276;
      LOWORD(v362) = *(v339 + 1449);
      v277 = *(v339 + 1369);
      v356 = *(v339 + 1353);
      v357 = v277;
      v278 = *(v339 + 1401);
      v358 = *(v339 + 1385);
      v359 = v278;
      v279 = *(v339 + 1337);
      v354 = *(v339 + 1321);
      v355 = v279;
      sub_1D5ECF1C0(v339 + 1272, v339 + 5208);

      v330 = *(v339 + 1256);
      v280 = *(v339 + 1264);
      strcpy((v339 + 5024), "builtin:editor");
      *(v339 + 5039) = -18;
      *(v339 + 5040) = v341;
      *(v339 + 5056) = v343;
      v334[3620] = 0;
      v281 = v357;
      *(v339 + 5105) = v356;
      *(v339 + 5121) = v281;
      *(v339 + 5201) = v362;
      v282 = v361;
      *(v339 + 5169) = v360;
      *(v339 + 5185) = v282;
      v283 = v359;
      *(v339 + 5137) = v358;
      *(v339 + 5153) = v283;
      v284 = v355;
      *(v339 + 5073) = v354;
      *(v339 + 5089) = v284;
      v285 = *(v207 + 16);
      if (v285)
      {
        v286 = *(v339 + 7280);
        v338 = *(v339 + 7272);
        v327 = v280;

        sub_1D5ECF1C0(v339 + 5024, v339 + 5392);
        v353 = MEMORY[0x1E69E7CC0];
        sub_1D6998A98(0, v285, 0);
        v287 = v353;
        v288 = v207 + ((*(v286 + 80) + 32) & ~*(v286 + 80));
        v336 = *(v286 + 72);
        do
        {
          v289 = *(v150 + 7288);
          sub_1D60CBBE8(v288, v289, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v290 = *(v338 + 28);
          v291 = *(*(v289 + *(v338 + 24)) + 16);
          v292 = *(v291 + 16);
          v293 = *(v291 + 24);
          v294 = *(v289 + v290);
          v295 = *(v289 + v290 + 8);

          sub_1D60CBC50(v289, type metadata accessor for DebugFormatEditorWorkspaceGroup);
          v297 = *(v353 + 16);
          v296 = *(v353 + 24);
          if (v297 >= v296 >> 1)
          {
            sub_1D6998A98((v296 > 1), v297 + 1, 1);
          }

          *(v353 + 16) = v297 + 1;
          v298 = (v353 + 32 * v297);
          v298[4] = v292;
          v298[5] = v293;
          v298[6] = v294;
          v298[7] = v295;
          v288 += v336;
          --v285;
          v150 = v339;
        }

        while (v285);

        v299 = v339 + 5024;
        v188 = v339 + 2552;
        v300 = v327;
      }

      else
      {
        v299 = v339 + 5024;
        v300 = v280;

        sub_1D5ECF1C0(v339 + 5024, v339 + 6128);

        v287 = MEMORY[0x1E69E7CC0];
      }

      v301 = *(v299 + 144);
      *(v150 + 3120) = *(v299 + 128);
      *(v150 + 3136) = v301;
      *(v150 + 3152) = *(v299 + 160);
      v302 = *(v299 + 80);
      *(v150 + 3056) = *(v299 + 64);
      *(v150 + 3072) = v302;
      v303 = *(v299 + 112);
      *(v150 + 3088) = *(v299 + 96);
      *(v150 + 3104) = v303;
      v304 = *(v299 + 16);
      *(v150 + 2992) = *v299;
      *(v150 + 3008) = v304;
      v305 = *(v299 + 48);
      *(v150 + 3024) = *(v299 + 32);
      v306 = *(v150 + 1451);
      v307 = *v334;
      *(v150 + 3167) = *(v299 + 175);
      *(v150 + 3040) = v305;
      *(v150 + 2976) = v330;
      *(v150 + 2984) = v300;
      *(v150 + 3171) = v306;
      *(v150 + 3172) = v307;
      *(v150 + 3176) = v287;
      nullsub_1();
      v308 = *(v339 + 3152);
      *(v339 + 2928) = *(v339 + 3136);
      *(v339 + 2944) = v308;
      *(v339 + 2960) = *(v339 + 3168);
      v309 = *(v339 + 3088);
      *(v339 + 2864) = *(v339 + 3072);
      *(v339 + 2880) = v309;
      v310 = *(v339 + 3120);
      *(v339 + 2896) = *(v339 + 3104);
      *(v339 + 2912) = v310;
      v311 = *(v339 + 3024);
      *(v339 + 2800) = *(v339 + 3008);
      *(v339 + 2816) = v311;
      v312 = *(v339 + 3056);
      *(v339 + 2832) = *(v339 + 3040);
      *(v339 + 2848) = v312;
      v313 = *(v339 + 2992);
      *(v339 + 2768) = *(v339 + 2976);
      *(v339 + 2784) = v313;

      sub_1D725B32C();
      sub_1D60CB8FC(v188, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

      strcpy((v150 + 5576), "builtin:editor");
      *(v150 + 5591) = -18;
      *(v150 + 5592) = v341;
      *(v150 + 5608) = v343;
      *(v150 + 5624) = 0;
      v314 = v361;
      *(v150 + 5721) = v360;
      *(v150 + 5737) = v314;
      *(v150 + 5753) = v362;
      v315 = v357;
      *(v150 + 5657) = v356;
      *(v150 + 5673) = v315;
      v316 = v359;
      *(v150 + 5689) = v358;
      *(v150 + 5705) = v316;
      v317 = v355;
      *(v150 + 5625) = v354;
      *(v150 + 5641) = v317;
      sub_1D5ECF21C(v150 + 5576);
      goto LABEL_81;
    }

    v208 = (v339 + 1008);
    v209 = *(*(v339 + 7280) + 80);
    v210 = *(*(v207 + ((v209 + 32) & ~v209) + *(*(v339 + 7272) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v211 = *(v210 + 16);

    if (v211 && (v212 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v213 & 1) != 0))
    {
      sub_1D5B68374(*(v210 + 56) + 40 * v212, v339 + 7088);
      sub_1D5B49474(0, qword_1EDF431A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
LABEL_68:

        v255 = *(v339 + 1200);
        v256 = *(v339 + 1216);
        v257 = *(v339 + 1184);
        *(v339 + 456) = v255;
        *(v339 + 472) = v256;
        v258 = *(v339 + 1216);
        *(v339 + 488) = *(v339 + 1232);
        v260 = *(v339 + 1136);
        v259 = *(v339 + 1152);
        v261 = *(v339 + 1120);
        *(v339 + 392) = v260;
        *(v339 + 408) = v259;
        v262 = *(v339 + 1152);
        v264 = *(v339 + 1168);
        v263 = *(v339 + 1184);
        *(v339 + 424) = v264;
        *(v339 + 440) = v263;
        v266 = *(v339 + 1072);
        v265 = *(v339 + 1088);
        v267 = *(v339 + 1056);
        *(v339 + 328) = v266;
        *(v339 + 344) = v265;
        v268 = *(v339 + 1088);
        v270 = *(v339 + 1104);
        v269 = *(v339 + 1120);
        *(v339 + 360) = v270;
        *(v339 + 376) = v269;
        v271 = *(v339 + 1024);
        *(v339 + 264) = *v208;
        *(v339 + 280) = v271;
        v272 = *(v339 + 1056);
        v274 = *v208;
        v273 = *(v339 + 1024);
        v275 = *(v339 + 1040);
        *(v339 + 296) = v275;
        *(v339 + 312) = v272;
        *(v339 + 704) = v255;
        *(v339 + 720) = v258;
        *(v339 + 736) = *(v339 + 1232);
        *(v339 + 640) = v260;
        *(v339 + 656) = v262;
        *(v339 + 672) = v264;
        *(v339 + 688) = v257;
        *(v339 + 576) = v266;
        *(v339 + 592) = v268;
        *(v339 + 608) = v270;
        *(v339 + 624) = v261;
        *(v339 + 512) = v274;
        *(v339 + 528) = v273;
        *(v339 + 504) = *(v339 + 1248);
        *(v339 + 752) = *(v339 + 1248);
        *(v339 + 544) = v275;
        *(v339 + 560) = v267;
        if (sub_1D5DEA380(v339 + 512) == 1)
        {
          goto LABEL_69;
        }

        sub_1D60CB8FC(v339 + 2552, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        sub_1D60CB8FC(v339 + 264, qword_1EDF34BC0, &type metadata for FeedPaywall);
LABEL_77:

LABEL_81:
        sub_1D60CBC50(*(v150 + 7416), type metadata accessor for FeedContext);

        v318 = *(v150 + 8);

        return v318();
      }

      sub_1D5F588A0(v339 + 16);
      v319 = *(v339 + 224);
      *(v339 + 1200) = *(v339 + 208);
      *(v339 + 1216) = v319;
      *(v339 + 1232) = *(v339 + 240);
      *(v339 + 1248) = *(v339 + 256);
      v320 = *(v339 + 160);
      *(v339 + 1136) = *(v339 + 144);
      *(v339 + 1152) = v320;
      v321 = *(v339 + 192);
      *(v339 + 1168) = *(v339 + 176);
      *(v339 + 1184) = v321;
      v322 = *(v339 + 96);
      *(v339 + 1072) = *(v339 + 80);
      *(v339 + 1088) = v322;
      v323 = *(v339 + 128);
      *(v339 + 1104) = *(v339 + 112);
      *(v339 + 1120) = v323;
      v324 = *(v339 + 32);
      *v208 = *(v339 + 16);
      *(v339 + 1024) = v324;
      v253 = *(v339 + 48);
      v254 = *(v339 + 64);
    }

    else
    {
      sub_1D5F588A0(v339 + 760);
      v247 = *(v339 + 968);
      *(v339 + 1200) = *(v339 + 952);
      *(v339 + 1216) = v247;
      *(v339 + 1232) = *(v339 + 984);
      *(v339 + 1248) = *(v339 + 1000);
      v248 = *(v339 + 904);
      *(v339 + 1136) = *(v339 + 888);
      *(v339 + 1152) = v248;
      v249 = *(v339 + 936);
      *(v339 + 1168) = *(v339 + 920);
      *(v339 + 1184) = v249;
      v250 = *(v339 + 840);
      *(v339 + 1072) = *(v339 + 824);
      *(v339 + 1088) = v250;
      v251 = *(v339 + 872);
      *(v339 + 1104) = *(v339 + 856);
      *(v339 + 1120) = v251;
      v252 = *(v339 + 776);
      *v208 = *(v339 + 760);
      *(v339 + 1024) = v252;
      v253 = *(v339 + 792);
      v254 = *(v339 + 808);
    }

    *(v339 + 1040) = v253;
    *(v339 + 1056) = v254;
    goto LABEL_68;
  }

  v218 = *(v339 + 7384);
  v219 = *(v339 + 7376);
  v220 = *(v339 + 7360);
  sub_1D60CBBE8(*(v215 + 56) + *(*(v339 + 7368) + 72) * v216, v219, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CBDE4(v219, v218, type metadata accessor for DebugFormatWorkspace);
  swift_endAccess();
  v221 = *(v339 + 2184);
  *(v339 + 1552) = *(v339 + 2200);
  *(v339 + 1536) = v221;
  v222 = *(v339 + 2152);
  *(v339 + 1520) = *(v339 + 2168);
  *(v339 + 1504) = v222;
  v223 = *(v339 + 2248);
  *(v339 + 1616) = *(v339 + 2264);
  *(v339 + 1600) = v223;
  v224 = *(v339 + 2216);
  *(v339 + 1584) = *(v339 + 2232);
  *(v339 + 1568) = v224;
  *(v339 + 1680) = *(v339 + 2328);
  v225 = *(v339 + 2296);
  *(v339 + 1664) = *(v339 + 2312);
  v226 = *(v339 + 2280);
  *(v339 + 1648) = v225;
  *(v339 + 1632) = v226;
  v227 = *(v339 + 2136);
  *(v339 + 1472) = *(v339 + 2120);
  *(v339 + 1488) = v227;
  v228 = v218 + *(v220 + 20);
  v229 = *v228;
  v230 = *(v228 + 16);
  v231 = *(v228 + 48);
  *(v339 + 3400) = *(v228 + 32);
  *(v339 + 3416) = v231;
  *(v339 + 3368) = v229;
  *(v339 + 3384) = v230;
  v232 = *(v228 + 64);
  v233 = *(v228 + 80);
  v234 = *(v228 + 112);
  *(v339 + 3464) = *(v228 + 96);
  *(v339 + 3480) = v234;
  *(v339 + 3432) = v232;
  *(v339 + 3448) = v233;
  v235 = *(v228 + 128);
  v236 = *(v228 + 144);
  v237 = *(v228 + 160);
  *(v339 + 3543) = *(v228 + 175);
  *(v339 + 3512) = v236;
  *(v339 + 3528) = v237;
  *(v339 + 3496) = v235;
  v238 = *(v339 + 3400);
  *(v339 + 4336) = *(v339 + 3416);
  *(v339 + 4320) = v238;
  v239 = *(v339 + 3368);
  *(v339 + 4304) = *(v339 + 3384);
  *(v339 + 4288) = v239;
  v240 = *(v339 + 3464);
  *(v339 + 4400) = *(v339 + 3480);
  *(v339 + 4384) = v240;
  v241 = *(v339 + 3432);
  *(v339 + 4368) = *(v339 + 3448);
  *(v339 + 4352) = v241;
  *(v339 + 4463) = *(v339 + 3543);
  v242 = *(v339 + 3512);
  *(v339 + 4448) = *(v339 + 3528);
  v243 = *(v339 + 3496);
  *(v339 + 4432) = v242;
  *(v339 + 4416) = v243;
  sub_1D5ECF1C0(v339 + 3368, v339 + 4104);
  v244 = swift_task_alloc();
  *(v339 + 7456) = v244;
  *v244 = v339;
  v244[1] = sub_1D60C3DE0;
  v245 = *(v339 + 7256);

  return sub_1D60BA6F0(v245, v339 + 1472, v339 + 4288, 1);
}

uint64_t sub_1D60C3DE0()
{
  v2 = *v1;
  v3 = *v1 + 4288;
  *(*v1 + 7464) = v0;

  if (v0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 48);
    v6 = *(v3 + 16);
    *(v2 + 3920) = *v3;
    *(v2 + 3968) = v5;
    *(v2 + 3952) = v4;
    *(v2 + 3936) = v6;
    v7 = *(v3 + 96);
    v8 = *(v3 + 112);
    v9 = *(v3 + 80);
    *(v2 + 3984) = *(v3 + 64);
    *(v2 + 4032) = v8;
    *(v2 + 4016) = v7;
    *(v2 + 4000) = v9;
    v11 = *(v3 + 144);
    v10 = *(v3 + 160);
    v12 = *(v3 + 175);
    *(v2 + 4048) = *(v3 + 128);
    *(v2 + 4095) = v12;
    *(v2 + 4080) = v10;
    *(v2 + 4064) = v11;
    sub_1D5ECF21C(v2 + 3920);

    v13 = *(v2 + 7440);
    v14 = *(v2 + 7432);
    v15 = sub_1D60C485C;
  }

  else
  {
    v16 = *v3;
    v17 = *(v3 + 16);
    v18 = *(v3 + 48);
    *(v2 + 3768) = *(v3 + 32);
    *(v2 + 3784) = v18;
    *(v2 + 3736) = v16;
    *(v2 + 3752) = v17;
    v19 = *(v3 + 64);
    v20 = *(v3 + 80);
    v21 = *(v3 + 112);
    *(v2 + 3832) = *(v3 + 96);
    *(v2 + 3848) = v21;
    *(v2 + 3800) = v19;
    *(v2 + 3816) = v20;
    v22 = *(v3 + 128);
    v23 = *(v3 + 144);
    v24 = *(v3 + 160);
    *(v2 + 3911) = *(v3 + 175);
    *(v2 + 3880) = v23;
    *(v2 + 3896) = v24;
    *(v2 + 3864) = v22;
    sub_1D5ECF21C(v2 + 3736);
    v13 = *(v2 + 7440);
    v14 = *(v2 + 7432);
    v15 = sub_1D60C3FAC;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, v13);
}

uint64_t sub_1D60C3FAC()
{
  v1 = v0 + 2552;
  v2 = *(v0 + 7384);

  sub_1D60CB8FC(v0 + 1904, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D60CBC50(v2, type metadata accessor for DebugFormatWorkspace);

  sub_1D725B31C();

  v3 = *(v0 + 2512);
  *(v0 + 2712) = *(v0 + 2496);
  *(v0 + 2728) = v3;
  *(v0 + 2744) = *(v0 + 2528);
  *(v0 + 2760) = *(v0 + 2544);
  v4 = *(v0 + 2448);
  *(v0 + 2648) = *(v0 + 2432);
  *(v0 + 2664) = v4;
  v5 = *(v0 + 2480);
  *(v0 + 2680) = *(v0 + 2464);
  *(v0 + 2696) = v5;
  v6 = *(v0 + 2384);
  *(v0 + 2584) = *(v0 + 2368);
  *(v0 + 2600) = v6;
  v7 = *(v0 + 2416);
  *(v0 + 2616) = *(v0 + 2400);
  *(v0 + 2632) = v7;
  v8 = *(v0 + 2352);
  *(v0 + 2552) = *(v0 + 2336);
  *(v0 + 2568) = v8;
  v9 = *(v0 + 2512);
  *(v0 + 1416) = *(v0 + 2496);
  *(v0 + 1432) = v9;
  *(v0 + 1448) = *(v0 + 2528);
  *(v0 + 1464) = *(v0 + 2544);
  v10 = *(v0 + 2448);
  *(v0 + 1352) = *(v0 + 2432);
  *(v0 + 1368) = v10;
  v11 = *(v0 + 2480);
  *(v0 + 1384) = *(v0 + 2464);
  *(v0 + 1400) = v11;
  v12 = *(v0 + 2384);
  *(v0 + 1288) = *(v0 + 2368);
  *(v0 + 1304) = v12;
  v13 = *(v0 + 2416);
  *(v0 + 1320) = *(v0 + 2400);
  *(v0 + 1336) = v13;
  v14 = *(v0 + 2352);
  *(v0 + 1256) = *(v0 + 2336);
  *(v0 + 1272) = v14;
  if (sub_1D5DEA380(v0 + 1256) == 1)
  {
    goto LABEL_17;
  }

  v15 = *(v0 + 1464);
  if (*(v15 + 16))
  {
    v16 = (v0 + 1008);
    v17 = *(*(v0 + 7280) + 80);
    v18 = *(*(v15 + ((v17 + 32) & ~v17) + *(*(v0 + 7272) + 20)) + OBJC_IVAR____TtC8NewsFeed24DebugFormatBindingResult_bindings + 64);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v21 & 1) != 0))
    {
      sub_1D5B68374(*(v18 + 56) + 40 * v20, v0 + 7088);
      sub_1D5B49474(0, qword_1EDF431A0);
      if (swift_dynamicCast())
      {
        nullsub_1();
LABEL_9:

        v30 = *(v0 + 1200);
        v31 = *(v0 + 1216);
        v32 = *(v0 + 1184);
        *(v0 + 456) = v30;
        *(v0 + 472) = v31;
        v33 = *(v0 + 1216);
        *(v0 + 488) = *(v0 + 1232);
        v35 = *(v0 + 1136);
        v34 = *(v0 + 1152);
        v36 = *(v0 + 1120);
        *(v0 + 392) = v35;
        *(v0 + 408) = v34;
        v37 = *(v0 + 1152);
        v39 = *(v0 + 1168);
        v38 = *(v0 + 1184);
        *(v0 + 424) = v39;
        *(v0 + 440) = v38;
        v41 = *(v0 + 1072);
        v40 = *(v0 + 1088);
        v42 = *(v0 + 1056);
        *(v0 + 328) = v41;
        *(v0 + 344) = v40;
        v43 = *(v0 + 1088);
        v45 = *(v0 + 1104);
        v44 = *(v0 + 1120);
        *(v0 + 360) = v45;
        *(v0 + 376) = v44;
        v46 = *(v0 + 1024);
        *(v0 + 264) = *v16;
        *(v0 + 280) = v46;
        v47 = *(v0 + 1056);
        v49 = *v16;
        v48 = *(v0 + 1024);
        v50 = *(v0 + 1040);
        *(v0 + 296) = v50;
        *(v0 + 312) = v47;
        *(v0 + 704) = v30;
        *(v0 + 720) = v33;
        *(v0 + 736) = *(v0 + 1232);
        *(v0 + 640) = v35;
        *(v0 + 656) = v37;
        *(v0 + 672) = v39;
        *(v0 + 688) = v32;
        *(v0 + 576) = v41;
        *(v0 + 592) = v43;
        *(v0 + 608) = v45;
        *(v0 + 624) = v36;
        *(v0 + 512) = v49;
        *(v0 + 528) = v48;
        *(v0 + 504) = *(v0 + 1248);
        *(v0 + 752) = *(v0 + 1248);
        *(v0 + 544) = v50;
        *(v0 + 560) = v42;
        if (sub_1D5DEA380(v0 + 512) == 1)
        {
          goto LABEL_10;
        }

        sub_1D60CB8FC(v0 + 2552, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        sub_1D60CB8FC(v0 + 264, qword_1EDF34BC0, &type metadata for FeedPaywall);
LABEL_17:

        goto LABEL_20;
      }

      sub_1D5F588A0(v0 + 16);
      v83 = *(v0 + 224);
      *(v0 + 1200) = *(v0 + 208);
      *(v0 + 1216) = v83;
      *(v0 + 1232) = *(v0 + 240);
      *(v0 + 1248) = *(v0 + 256);
      v84 = *(v0 + 160);
      *(v0 + 1136) = *(v0 + 144);
      *(v0 + 1152) = v84;
      v85 = *(v0 + 192);
      *(v0 + 1168) = *(v0 + 176);
      *(v0 + 1184) = v85;
      v86 = *(v0 + 96);
      *(v0 + 1072) = *(v0 + 80);
      *(v0 + 1088) = v86;
      v87 = *(v0 + 128);
      *(v0 + 1104) = *(v0 + 112);
      *(v0 + 1120) = v87;
      v88 = *(v0 + 32);
      *v16 = *(v0 + 16);
      *(v0 + 1024) = v88;
      v28 = *(v0 + 48);
      v29 = *(v0 + 64);
    }

    else
    {
      sub_1D5F588A0(v0 + 760);
      v22 = *(v0 + 968);
      *(v0 + 1200) = *(v0 + 952);
      *(v0 + 1216) = v22;
      *(v0 + 1232) = *(v0 + 984);
      *(v0 + 1248) = *(v0 + 1000);
      v23 = *(v0 + 904);
      *(v0 + 1136) = *(v0 + 888);
      *(v0 + 1152) = v23;
      v24 = *(v0 + 936);
      *(v0 + 1168) = *(v0 + 920);
      *(v0 + 1184) = v24;
      v25 = *(v0 + 840);
      *(v0 + 1072) = *(v0 + 824);
      *(v0 + 1088) = v25;
      v26 = *(v0 + 872);
      *(v0 + 1104) = *(v0 + 856);
      *(v0 + 1120) = v26;
      v27 = *(v0 + 776);
      *v16 = *(v0 + 760);
      *(v0 + 1024) = v27;
      v28 = *(v0 + 792);
      v29 = *(v0 + 808);
    }

    *(v0 + 1040) = v28;
    *(v0 + 1056) = v29;
    goto LABEL_9;
  }

LABEL_10:
  v94 = (v0 + 2976);
  v95 = (v0 + 2768);
  v51 = v0 + 5024;
  v99 = *(v0 + 1288);
  v100 = *(v0 + 1304);
  v107 = *(v0 + 1417);
  v108 = *(v0 + 1433);
  v109 = *(v0 + 1449);
  v103 = *(v0 + 1353);
  v104 = *(v0 + 1369);
  v105 = *(v0 + 1385);
  v106 = *(v0 + 1401);
  v101 = *(v0 + 1321);
  v102 = *(v0 + 1337);
  sub_1D5ECF1C0(v0 + 1272, v0 + 5208);

  v92 = *(v0 + 1256);
  v93 = (v0 + 1452);
  v52 = *(v0 + 1264);
  strcpy((v0 + 5024), "builtin:editor");
  *(v0 + 5039) = -18;
  *(v0 + 5040) = v99;
  *(v0 + 5056) = v100;
  *(v0 + 5072) = 0;
  *(v0 + 5105) = v103;
  *(v0 + 5121) = v104;
  *(v0 + 5201) = v109;
  *(v0 + 5169) = v107;
  *(v0 + 5185) = v108;
  *(v0 + 5137) = v105;
  *(v0 + 5153) = v106;
  *(v0 + 5073) = v101;
  *(v0 + 5089) = v102;
  v53 = *(v15 + 16);
  if (v53)
  {
    v91 = v0 + 2552;
    v54 = *(v0 + 7280);
    v97 = *(v0 + 7272);
    v89 = v52;

    v90 = v0 + 5024;
    sub_1D5ECF1C0(v0 + 5024, v0 + 5392);
    v110 = MEMORY[0x1E69E7CC0];
    sub_1D6998A98(0, v53, 0);
    v55 = v110;
    v56 = v15 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v96 = *(v54 + 72);
    v98 = v0;
    do
    {
      v57 = *(v0 + 7288);
      sub_1D60CBBE8(v56, v57, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v58 = *(v97 + 28);
      v59 = *(*(v57 + *(v97 + 24)) + 16);
      v60 = *(v59 + 16);
      v61 = *(v59 + 24);
      v62 = *(v57 + v58);
      v63 = *(v57 + v58 + 8);

      sub_1D60CBC50(v57, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v65 = *(v110 + 16);
      v64 = *(v110 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D6998A98((v64 > 1), v65 + 1, 1);
      }

      *(v110 + 16) = v65 + 1;
      v66 = (v110 + 32 * v65);
      v66[4] = v60;
      v66[5] = v61;
      v66[6] = v62;
      v66[7] = v63;
      v56 += v96;
      --v53;
      v0 = v98;
    }

    while (v53);

    v51 = v90;
    v1 = v91;
    v67 = v89;
  }

  else
  {
    v67 = v52;

    sub_1D5ECF1C0(v0 + 5024, v0 + 6128);

    v55 = MEMORY[0x1E69E7CC0];
  }

  v68 = *(v51 + 144);
  *(v0 + 3120) = *(v51 + 128);
  *(v0 + 3136) = v68;
  *(v0 + 3152) = *(v51 + 160);
  v69 = *(v51 + 80);
  *(v0 + 3056) = *(v51 + 64);
  *(v0 + 3072) = v69;
  v70 = *(v51 + 112);
  *(v0 + 3088) = *(v51 + 96);
  *(v0 + 3104) = v70;
  v71 = *(v51 + 16);
  *(v0 + 2992) = *v51;
  *(v0 + 3008) = v71;
  v72 = *(v51 + 48);
  *(v0 + 3024) = *(v51 + 32);
  v73 = *(v0 + 1451);
  v74 = *v93;
  *(v0 + 3167) = *(v51 + 175);
  *(v0 + 3040) = v72;
  *(v0 + 2976) = v92;
  *(v0 + 2984) = v67;
  *(v0 + 3171) = v73;
  *(v0 + 3172) = v74;
  *(v0 + 3176) = v55;
  nullsub_1();
  v75 = v94[11];
  v95[10] = v94[10];
  v95[11] = v75;
  v95[12] = v94[12];
  v76 = v94[7];
  v95[6] = v94[6];
  v95[7] = v76;
  v77 = v94[9];
  v95[8] = v94[8];
  v95[9] = v77;
  v78 = v94[3];
  v95[2] = v94[2];
  v95[3] = v78;
  v79 = v94[5];
  v95[4] = v94[4];
  v95[5] = v79;
  v80 = v94[1];
  *v95 = *v94;
  v95[1] = v80;

  sub_1D725B32C();
  sub_1D60CB8FC(v1, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  strcpy((v0 + 5576), "builtin:editor");
  *(v0 + 5591) = -18;
  *(v0 + 5592) = v99;
  *(v0 + 5608) = v100;
  *(v0 + 5624) = 0;
  *(v0 + 5721) = v107;
  *(v0 + 5737) = v108;
  *(v0 + 5753) = v109;
  *(v0 + 5657) = v103;
  *(v0 + 5673) = v104;
  *(v0 + 5689) = v105;
  *(v0 + 5705) = v106;
  *(v0 + 5625) = v101;
  *(v0 + 5641) = v102;
  sub_1D5ECF21C(v0 + 5576);
LABEL_20:
  sub_1D60CBC50(*(v0 + 7416), type metadata accessor for FeedContext);

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_1D60C485C()
{
  v1 = v0[927];
  v2 = v0[923];

  sub_1D60CBC50(v2, type metadata accessor for DebugFormatWorkspace);
  sub_1D60CB8FC((v0 + 238), qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
  sub_1D60CBC50(v1, type metadata accessor for FeedContext);

  v3 = v0[1];

  return v3();
}

void sub_1D60C49D4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  sub_1D725B31C();

  v66[10] = *v51;
  v66[11] = *&v51[16];
  v66[12] = v52;
  v66[6] = *&v50[16];
  v66[7] = *&v50[32];
  v66[8] = *&v50[48];
  v66[9] = *&v50[64];
  v66[2] = v47;
  v66[3] = v48;
  v66[4] = v49;
  v66[5] = *v50;
  v66[0] = v45;
  v66[1] = v46;
  *&v74[64] = *v51;
  v75 = *&v51[16];
  v76 = v52;
  *v74 = *&v50[16];
  *&v74[16] = *&v50[32];
  *&v74[32] = *&v50[48];
  *&v74[48] = *&v50[64];
  v70 = v47;
  v71 = v48;
  v72 = v49;
  v73 = *v50;
  v67 = v53;
  v77 = v53;
  v68 = v45;
  v69 = v46;
  v4 = sub_1D5DEA380(&v68);
  if (v4 == 1)
  {
    sub_1D60CB7FC(&v54);
    v6 = v63;
    *(a2 + 128) = v62;
    *(a2 + 144) = v6;
    *(a2 + 160) = v64[0];
    *(a2 + 175) = *(v64 + 15);
    v7 = v59;
    *(a2 + 64) = v58;
    *(a2 + 80) = v7;
    v8 = v61;
    *(a2 + 96) = v60;
    *(a2 + 112) = v8;
    v9 = v55;
    *a2 = v54;
    *(a2 + 16) = v9;
    v10 = v57;
    *(a2 + 32) = v56;
    *(a2 + 48) = v10;
    return;
  }

  v64[0] = *&v74[64];
  v64[1] = v75;
  v64[2] = v76;
  v11 = *(&v76 + 1);
  v65 = v77;
  v60 = *v74;
  v61 = *&v74[16];
  v62 = *&v74[32];
  v63 = *&v74[48];
  v56 = v70;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v54 = v68;
  v55 = v69;
  if (*(&v76 + 1) >> 62)
  {
    v36 = *(&v76 + 1);
    v4 = sub_1D7263BFC();
    v11 = v36;
    v12 = v4;
  }

  else
  {
    v12 = *((*(&v76 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x1E69E7CC0];
  v43 = a2;
  if (!v12)
  {
    goto LABEL_15;
  }

  v14 = v11;
  *&v45 = MEMORY[0x1E69E7CC0];
  sub_1D6998A78(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v42 = a1;
    v15 = 0;
    v13 = v45;
    v5 = v14;
    v44 = v14 & 0xC000000000000001;
    v16 = v14;
    v17 = v12;
    do
    {
      if (v44)
      {
        v18 = MEMORY[0x1DA6FB460](v15, v5);
      }

      else
      {
        v18 = *(v5 + 8 * v15 + 32);
      }

      v19 = *(v18 + 16);
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);

      *&v45 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        v4 = sub_1D6998A78((v22 > 1), v23 + 1, 1);
        v13 = v45;
      }

      ++v15;
      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v5 = v16;
    }

    while (v17 != v15);
    a1 = v42;
LABEL_15:
    v44 = 0x80000001D73C9450;
    v25 = v77;
    MEMORY[0x1EEE9AC00](v4, v5);
    v37[2] = &v54;
    v37[3] = a1;

    v42 = sub_1D5ECB1CC(sub_1D60CF4B8, v37, v25);

    v26 = *(&v73 + 1);
    v27 = *v74;
    v28 = *&v74[72];
    v29 = v75;

    v40 = *&v74[24];
    v41 = *&v74[8];

    v38 = *&v74[56];
    v39 = *&v74[40];

    sub_1D60CB8FC(v66, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    strcpy(&v45, "builtin:editor");
    HIBYTE(v45) = -18;
    *&v46 = 0xD000000000000010;
    *(&v46 + 1) = v44;
    v47 = 0uLL;
    LOBYTE(v48) = 0;
    *(&v48 + 1) = v13;
    *&v49 = v42;
    *(&v49 + 1) = v26;
    *v50 = v27;
    *&v50[8] = v41;
    *&v50[24] = v40;
    *&v50[56] = v38;
    *&v50[40] = v39;
    *&v50[72] = v28;
    *v51 = v29;
    *&v51[16] = v76;
    v51[18] = BYTE2(v76);
    nullsub_1();
    v30 = *&v50[64];
    v31 = v43;
    *(v43 + 128) = *&v50[48];
    *(v31 + 144) = v30;
    *(v31 + 160) = *v51;
    *(v31 + 175) = *&v51[15];
    v32 = *v50;
    *(v31 + 64) = v49;
    *(v31 + 80) = v32;
    v33 = *&v50[32];
    *(v31 + 96) = *&v50[16];
    *(v31 + 112) = v33;
    v34 = v46;
    *v31 = v45;
    *(v31 + 16) = v34;
    v35 = v48;
    *(v31 + 32) = v47;
    *(v31 + 48) = v35;
    return;
  }

  __break(1u);
}

void sub_1D60C4E8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v133 = a6;
  *&v131 = a4;
  *(&v131 + 1) = a5;
  v130 = a1;
  v10 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v126 = v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for GroupLayoutBindingContext();
  MEMORY[0x1EEE9AC00](v129, v13);
  v125 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FormatContentSubgroup();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v124 = (v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_1D725895C();
  v122 = *(v18 - 8);
  v123 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v121 = v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E6720];
  sub_1D5B54578(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (v114 - v28);
  sub_1D5B54578(0, qword_1EDF42030, type metadata accessor for FeedHeadline, v21);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v33 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v120 = v114 - v36;
  v128 = type metadata accessor for DebugGroupLayoutKey();
  v37 = (a3 + *(v128 + 24));
  v38 = v37[4];
  v39 = v37[5];
  v132 = v37;
  __swift_project_boxed_opaque_existential_1(v37 + 1, v38);
  (*(v39 + 64))(&v146, v38, v39);
  v40 = *(&v147 + 1);
  if (!*(&v147 + 1))
  {
    sub_1D60CBC50(&v146, sub_1D5D6013C);
    goto LABEL_5;
  }

  v41 = v148;
  __swift_project_boxed_opaque_existential_1(&v146, *(&v147 + 1));
  v42 = (*(v41 + 40))(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(&v146);
  if (!v42)
  {
LABEL_5:
    sub_1D60CB7FC(&v146);
    v48 = v154;
    *(a7 + 128) = v153[1];
    *(a7 + 144) = v48;
    *(a7 + 160) = v155[0];
    *(a7 + 175) = *(v155 + 15);
    v49 = v151;
    *(a7 + 64) = v150;
    *(a7 + 80) = v49;
    v50 = v153[0];
    *(a7 + 96) = v152;
    *(a7 + 112) = v50;
    v51 = v147;
    *a7 = v146;
    *(a7 + 16) = v51;
    v52 = v149;
    *(a7 + 32) = v148;
    *(a7 + 48) = v52;
    return;
  }

  v114[4] = v33;
  v114[5] = v25;
  v116 = a3;
  v117 = a2;
  v43 = v42 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content;
  v118 = type metadata accessor for FormatContent.Resolved();
  v119 = v43;
  v44 = v42;
  v45 = *(v43 + *(v118 + 36));
  MEMORY[0x1EEE9AC00](v118, v46);
  v114[-2] = v133;

  v47 = sub_1D5ECB3CC(sub_1D60CBDC4, &v114[-4], v45);
  v127 = v44;
  v126 = v47;

  v53 = *(v44 + 96);
  if (v53 >> 62)
  {
    v54 = sub_1D7263BFC();
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v54)
  {
    v124 = v29;
    v115 = a7;
    *&v146 = MEMORY[0x1E69E7CC0];
    sub_1D6998A78(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      __break(1u);
      return;
    }

    v55 = 0;
    v56 = v146;
    do
    {
      v57 = v56;
      if ((v53 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x1DA6FB460](v55, v53);
      }

      else
      {
        v58 = *(v53 + 8 * v55 + 32);
      }

      v60 = *(v58 + 16);
      v59 = *(v58 + 24);

      v56 = v57;
      *&v146 = v57;
      v61 = *(v57 + 2);
      v62 = *(v56 + 3);
      if (v61 >= v62 >> 1)
      {
        sub_1D6998A78((v62 > 1), v61 + 1, 1);
        v56 = v146;
      }

      ++v55;
      *(v56 + 2) = v61 + 1;
      v63 = &v56[16 * v61];
      *(v63 + 4) = v60;
      *(v63 + 5) = v59;
    }

    while (v54 != v55);
    v125 = v56;
    a7 = v115;
    v29 = v124;
  }

  else
  {
    v125 = MEMORY[0x1E69E7CC0];
  }

  v64 = v116 + *(v128 + 28);
  v65 = *(v64 + *(type metadata accessor for GroupLayoutContext() + 44));
  v66 = v132[8];
  if (*(v66 + 16) && (v67 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v68 & 1) != 0))
  {
    sub_1D5B68374(*(v66 + 56) + 40 * v67, &v146);
    sub_1D5B49474(0, qword_1EDF431A0);
    if (swift_dynamicCast())
    {
      v69 = v138;
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 0;
  }

  v70 = sub_1D713A4FC(v69);
  LOBYTE(v146) = v65;
  v71 = FeedKind.rawValue.getter();
  v123 = v72;
  v124 = v71;
  if (!*(v66 + 16) || (v73 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v74 & 1) == 0))
  {
    v76 = v120;
LABEL_31:
    v121 = 0;
    v122 = 0;
    goto LABEL_32;
  }

  sub_1D5B68374(*(v66 + 56) + 40 * v73, &v146);
  sub_1D5B49474(0, qword_1EDF431A0);
  v75 = swift_dynamicCast();
  v76 = v120;
  if ((v75 & 1) == 0)
  {
    goto LABEL_31;
  }

  v77 = v138;
  if (!v138)
  {
    goto LABEL_31;
  }

  v78 = *(&v138 + 1);
  v79 = swift_unknownObjectRetain();
  sub_1D5F587AC(v79, v78);
  v80 = [v77 identifier];
  v81 = sub_1D726207C();
  v121 = v82;
  v122 = v81;
  swift_unknownObjectRelease();

  v76 = v120;
LABEL_32:
  sub_1D678EE20(v66, v76);
  v83 = type metadata accessor for FeedHeadline(0);
  if ((*(*(v83 - 8) + 48))(v76, 1, v83) == 1)
  {
    sub_1D60CB820(v76, qword_1EDF42030, type metadata accessor for FeedHeadline);
    v120 = 0;
    v116 = 0;
  }

  else
  {
    v84 = *(v76 + 40);
    swift_unknownObjectRetain();
    sub_1D60CBC50(v76, type metadata accessor for FeedHeadline);
    v85 = [v84 identifier];
    v120 = sub_1D726207C();
    v116 = v86;
    swift_unknownObjectRelease();
  }

  v87 = *(v66 + 16);
  v128 = v70;
  if (v87 && (v88 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v89 & 1) != 0))
  {
    sub_1D5B68374(*(v66 + 56) + 40 * v88, v136);
    sub_1D5B49474(0, qword_1EDF431A0);
    if (swift_dynamicCast())
    {
      nullsub_1();
    }

    else
    {
      sub_1D5D62850(&v146);
      v144 = v152;
      v145[0] = v153[0];
      *(v145 + 9) = *(v153 + 9);
      v140 = v148;
      v141 = v149;
      v142 = v150;
      v143 = v151;
      v138 = v146;
      v139 = v147;
    }
  }

  else
  {
    sub_1D5D62850(&v138);
  }

  v90 = a7;
  v134[6] = v144;
  v135[0] = v145[0];
  *(v135 + 9) = *(v145 + 9);
  v134[2] = v140;
  v134[3] = v141;
  v134[4] = v142;
  v134[5] = v143;
  v134[0] = v138;
  v134[1] = v139;
  v136[6] = v144;
  v137[0] = v145[0];
  *(v137 + 9) = *(v145 + 9);
  v136[2] = v140;
  v136[3] = v141;
  v136[4] = v142;
  v136[5] = v143;
  v136[0] = v138;
  v136[1] = v139;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v136) == 1)
  {
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v93 = *&v136[0];
    sub_1D60CB8FC(v134, &qword_1EDF34E30, &type metadata for FeedIssue);
    v94 = v93;
    v95 = [v94 identifier];
    v91 = sub_1D726207C();
    v92 = v96;
  }

  sub_1D678EE54(v66, v29);
  v97 = type metadata accessor for FeedRecipe();
  if ((*(*(v97 - 8) + 48))(v29, 1, v97) == 1)
  {
    sub_1D60CB820(v29, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v100 = v29[7];
    sub_1D60CBC50(v29, type metadata accessor for FeedRecipe);
    v101 = v100;
    v102 = [v101 identifier];
    v98 = sub_1D726207C();
    v99 = v103;
  }

  v104 = *(v119 + *(v118 + 44));

  v106 = sub_1D70E15E8(v105);

  v107 = *v132;
  v108 = *(v132 + *(v129 + 64));
  *&v146 = v130;
  *(&v146 + 1) = v117;
  v147 = v131;
  v148 = 0uLL;
  LOBYTE(v149) = 1;
  *(&v149 + 1) = v125;
  *&v150 = v126;
  *(&v150 + 1) = v124;
  *&v151 = v123;
  *(&v151 + 1) = v128;
  *&v152 = v122;
  *(&v152 + 1) = v121;
  *&v153[0] = v120;
  *(&v153[0] + 1) = v116;
  *&v153[1] = v91;
  *(&v153[1] + 1) = v92;
  *&v154 = v98;
  *(&v154 + 1) = v99;
  *&v155[0] = v104;
  *(&v155[0] + 1) = v106;
  LOBYTE(v155[1]) = v107;
  *(&v155[1] + 1) = v108;
  nullsub_1();
  v109 = v154;
  *(v90 + 128) = v153[1];
  *(v90 + 144) = v109;
  *(v90 + 160) = v155[0];
  *(v90 + 175) = *(v155 + 15);
  v110 = v151;
  *(v90 + 64) = v150;
  *(v90 + 80) = v110;
  v111 = v153[0];
  *(v90 + 96) = v152;
  *(v90 + 112) = v111;
  v112 = v147;
  *v90 = v146;
  *(v90 + 16) = v112;
  v113 = v149;
  *(v90 + 32) = v148;
  *(v90 + 48) = v113;
}