unint64_t sub_1D615AABC()
{
  result = qword_1EC8846A8;
  if (!qword_1EC8846A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846A8);
  }

  return result;
}

unint64_t sub_1D615AB10(uint64_t a1)
{
  *(a1 + 8) = sub_1D61581C8();
  result = sub_1D615821C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D615AB40(void *a1)
{
  a1[1] = sub_1D61581C8();
  a1[2] = sub_1D615821C();
  result = sub_1D615AB78();
  a1[3] = result;
  return result;
}

unint64_t sub_1D615AB78()
{
  result = qword_1EC8846B0;
  if (!qword_1EC8846B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846B0);
  }

  return result;
}

unint64_t sub_1D615AC44()
{
  result = qword_1EC8846B8;
  if (!qword_1EC8846B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846B8);
  }

  return result;
}

unint64_t sub_1D615AC9C()
{
  result = qword_1EDF29A58;
  if (!qword_1EDF29A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A58);
  }

  return result;
}

unint64_t sub_1D615ACF4()
{
  result = qword_1EDF29A60;
  if (!qword_1EDF29A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A60);
  }

  return result;
}

uint64_t sub_1D615AD48()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_1D615AD94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D615ADFC()
{
  result = qword_1EDF29A10;
  if (!qword_1EDF29A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29A10);
  }

  return result;
}

size_t sub_1D615AE50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FormatOption();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v47 = (v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v43 - v8;
  sub_1D5EA74B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF032C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  sub_1D61582C4(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v46 = *(v11 + 72);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7273AE0;
  v45 = v16;
  v18 = (v17 + v16);
  v43[0] = a2;
  if (a2)
  {
    v19 = *(a2 + 40);
    v44 = *(a2 + 32);
    v20 = v19;

    v21 = sub_1D615A288();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 64) = 0x2800000000000000;
    v23 = sub_1D601118C;
  }

  else
  {
    v23 = sub_1D70DD9D8;
    v22 = 0;
    v44 = 0;
    v20 = 0xE000000000000000;
  }

  v24 = type metadata accessor for FormatInspectionItem(0);
  v25 = &v18[*(v24 + 24)];
  *v25 = v23;
  v25[1] = v22;
  v26 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  *v18 = v44;
  *(v18 + 1) = v20;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v27 = &v18[*(v24 + 28)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  v28 = *(v24 - 8);
  v44 = *(v28 + 56);
  v43[1] = v28 + 56;
  v44(v18, 0, 1, v24);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v17, v49);
  swift_setDeallocating();
  sub_1D5D288C4(v18, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(inited + 64) = &off_1F518B2C0;
  v29 = swift_allocObject();
  *(inited + 32) = v29;
  *(v29 + 48) = v50;
  v30 = v49[1];
  *(v29 + 16) = v49[0];
  *(v29 + 32) = v30;
  if (!v43[0] || (v31 = *(v43[0] + 56)) == 0)
  {
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (!v32)
  {
LABEL_14:
    sub_1D6795150(0x756C61562D79654BLL, 0xEA00000000007365, 0, 0, v33, v51);

    *(inited + 96) = &type metadata for FormatInspectionGroup;
    *(inited + 104) = &off_1F518B2C0;
    v40 = swift_allocObject();
    *(inited + 72) = v40;
    *(v40 + 48) = v52;
    v41 = v51[1];
    *(v40 + 16) = v51[0];
    *(v40 + 32) = v41;
    v42 = sub_1D7073500(inited);
    swift_setDeallocating();
    sub_1D5B67740(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    return v42;
  }

  v43[0] = inited;
  *&v51[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D69972A4(0, v32, 0);
  v35 = 0;
  v33 = *&v51[0];
  v36 = v31 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
  while (v35 < *(v31 + 16))
  {
    sub_1D5D2477C(v36 + *(v48 + 72) * v35, v9);
    v37 = v47;
    sub_1D5D2477C(v9, v47);
    sub_1D68B1FA4(v37, v14);
    v44(v14, 0, 1, v24);
    sub_1D5D288C4(v9, type metadata accessor for FormatOption);
    *&v51[0] = v33;
    v39 = *(v33 + 16);
    v38 = *(v33 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1D69972A4(v38 > 1, v39 + 1, 1);
      v33 = *&v51[0];
    }

    ++v35;
    *(v33 + 16) = v39 + 1;
    result = sub_1D5E4F52C(v14, v33 + v45 + v39 * v46);
    if (v32 == v35)
    {
      inited = v43[0];
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D615B4A8@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *v2;
  v6 = *v2 >> 62;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = v5 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      sub_1D5EB1500(v8);

      sub_1D5F9EB60(v8, v9, &v17);
      v10 = v17;
      sub_1D615B4A8(v3);
      sub_1D5EB15C4(v8);

      return sub_1D5EB15C4(v10);
    }

    else if (v5 == 0x8000000000000000)
    {
      *a2 = 0x8000000000000000;
    }

    else
    {
      *a2 = 0x8000000000000008;
    }
  }

  else
  {
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    v13 = swift_allocObject();

    v14 = sub_1D6E8DD40(v12, v11);
    v16 = v15;

    *(v13 + 16) = v14;
    *(v13 + 24) = v16;
    *a2 = v13;
  }

  return result;
}

BOOL static FormatVisibility.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 62 == 1)
      {
        v5 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v14[0] = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v14[1] = v5;
        v13[0] = v7;
        v13[1] = v6;
        sub_1D5EB1500(v3);
        sub_1D5EB1500(v2);
        sub_1D5EB1500(v7);

        if (static FormatVisibility.== infix(_:_:)(v14, v13))
        {

          v8 = sub_1D63554CC(v5, v6);

          sub_1D5EB15C4(v7);

          sub_1D5EB15C4(v2);
          sub_1D5EB15C4(v3);
          return (v8 & 1) != 0;
        }

        sub_1D5EB15C4(v7);

LABEL_19:
        sub_1D5EB15C4(v2);
        sub_1D5EB15C4(v3);
        return 0;
      }

LABEL_18:
      sub_1D5EB1500(*a2);
      sub_1D5EB1500(v2);
      goto LABEL_19;
    }

    if (v2 == 0x8000000000000000)
    {
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_18;
      }

      sub_1D5EB15C4(0x8000000000000000);
      v12 = 0x8000000000000000;
    }

    else
    {
      if (v3 != 0x8000000000000008)
      {
        goto LABEL_18;
      }

      sub_1D5EB15C4(0x8000000000000008);
      v12 = 0x8000000000000008;
    }
  }

  else
  {
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    if (*(v2 + 16) != *(v3 + 16) || *(v2 + 24) != *(v3 + 24))
    {
      v10 = sub_1D72646CC();
      sub_1D5EB1500(v3);
      sub_1D5EB1500(v2);
      sub_1D5EB15C4(v2);
      sub_1D5EB15C4(v3);
      return v10 & 1;
    }

    sub_1D5EB1500(v3);
    sub_1D5EB1500(v2);
    sub_1D5EB15C4(v2);
    v12 = v3;
  }

  sub_1D5EB15C4(v12);
  return 1;
}

uint64_t FormatVisibility.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    v10 = 0x3A74697265686E69;
    sub_1D5BF4D9C();
    v4 = sub_1D72639FC();
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = (v4 + 16 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
    }

    else
    {
      v8 = 0;
      v7 = 0xE000000000000000;
    }

    MEMORY[0x1DA6F9910](v8, v7);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v3 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = 0;
    sub_1D5EB1500(v3);

    MEMORY[0x1DA6F9910](0x726F7463656C6573, 0xE90000000000003ALL);
    sub_1D615B98C();
    sub_1D7263F9C();
    sub_1D5EB15C4(v3);
LABEL_12:

    return v10;
  }

  if (v1 == 0x8000000000000000)
  {
    return 0x7465736E75;
  }

  else
  {
    return 0x6E6564646968;
  }
}

void sub_1D615B98C()
{
  if (!qword_1EDF0F900)
  {
    sub_1D615B9E8();
    v0 = type metadata accessor for FormatSelectorValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0F900);
    }
  }
}

unint64_t sub_1D615B9E8()
{
  result = qword_1EDF11070;
  if (!qword_1EDF11070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11070);
  }

  return result;
}

unint64_t sub_1D615BA3C(uint64_t a1)
{
  result = sub_1D615B9E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615BA64(void *a1)
{
  a1[1] = sub_1D5DF6A0C();
  a1[2] = sub_1D5DF6A60();
  result = sub_1D615BA9C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D615BA9C()
{
  result = qword_1EDF11078;
  if (!qword_1EDF11078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11078);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatVisibilityO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *sub_1D615BB10(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

id FCColor.formatColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  [v1 red];
  v5 = v4 * 255.0;
  [v1 green];
  v7 = v6 * 255.0;
  [v1 blue];
  v9 = v8 * 255.0;
  result = [v1 alpha];
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  *(v3 + 32) = v9;
  *(v3 + 40) = v11;
  *(v3 + 48) = 0;
  *a1 = v3 | 0x6000000000000000;
  return result;
}

id FCColor.ne_dynamicColor(darkStyleColor:)(void *a1)
{
  [v1 red];
  v4 = v3;
  [v1 green];
  v6 = v5;
  [v1 blue];
  v8 = v7;
  [v1 alpha];
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v4 green:v6 blue:v8 alpha:v9];
  if (a1)
  {
    v11 = result;
    v12 = a1;
    [v12 red];
    v14 = v13;
    [v12 green];
    v16 = v15;
    [v12 blue];
    v18 = v17;
    [v12 alpha];
    v20 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v14 green:v16 blue:v18 alpha:v19];
    v21 = [objc_opt_self() ts:v11 dynamicColor:v20 withDarkStyleVariant:?];

    return v21;
  }

  return result;
}

id sub_1D615BD70(void *a1)
{
  v1 = a1;
  v2 = FCColor.ne_color.getter();

  return v2;
}

uint64_t FCColor.ne_color.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = (v1 + 16);
  v6[4] = sub_1D615BF64;
  v6[5] = v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D615BF6C;
  v6[3] = &block_descriptor_28;
  v3 = _Block_copy(v6);

  [v0 readDeconstructedRepresentationWithAcccessor_];
  _Block_release(v3);
  result = swift_beginAccess();
  if (*v2)
  {
    v5 = *v2;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D615BED0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:a2 green:a3 blue:a4 alpha:a5];
  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

uint64_t sub_1D615BF6C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v9(v10, a2, a3, a4, a5);
}

uint64_t type metadata accessor for DebugFormatUploadHiddenEntry()
{
  result = qword_1EC8846C0;
  if (!qword_1EC8846C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D615C054()
{
  result = type metadata accessor for FormatPackageInventory();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DebugFormatUploadHiddenReason();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatIssueCoverNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatIssueCoverNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatIssueCoverNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatIssueCoverNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatIssueCoverNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatIssueCoverNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D615EBB8(v9, v8, sub_1D615C3A4);
}

void sub_1D615C3A4()
{
  if (!qword_1EDF33718)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33718);
    }
  }
}

uint64_t FormatIssueCoverNodeStyle.traits.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t FormatIssueCoverNodeStyle.__allocating_init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:ignoresSmartInvertColors:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a8;
  v20 = a8[1];
  LOBYTE(a8) = *(a8 + 16);
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = a7;
  *(v17 + 72) = v19;
  *(v17 + 80) = v20;
  *(v17 + 88) = a8;
  v21 = *(a9 + 48);
  *(v17 + 128) = *(a9 + 32);
  *(v17 + 144) = v21;
  *(v17 + 160) = *(a9 + 64);
  *(v17 + 176) = *(a9 + 80);
  v22 = *(a9 + 16);
  *(v17 + 96) = *a9;
  *(v17 + 112) = v22;
  *(v17 + 177) = a10;
  swift_beginAccess();
  *(v17 + 184) = a11;
  return v17;
}

uint64_t FormatIssueCoverNodeStyle.init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:ignoresSmartInvertColors:traits:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, char a10, uint64_t a11)
{
  v16 = *a6;
  v18 = *a8;
  v17 = a8[1];
  v19 = *(a8 + 16);
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  *(v11 + 48) = a5;
  *(v11 + 56) = v16;
  *(v11 + 64) = a7;
  *(v11 + 72) = v18;
  *(v11 + 80) = v17;
  *(v11 + 88) = v19;
  v20 = *(a9 + 48);
  *(v11 + 128) = *(a9 + 32);
  *(v11 + 144) = v20;
  *(v11 + 160) = *(a9 + 64);
  *(v11 + 176) = *(a9 + 80);
  v21 = *(a9 + 16);
  *(v11 + 96) = *a9;
  *(v11 + 112) = v21;
  *(v11 + 177) = a10;
  swift_beginAccess();
  *(v11 + 184) = a11;
  return v11;
}

uint64_t sub_1D615C6B8(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v8 = v2[6];
  swift_beginAccess();
  v218 = a1;
  v9 = *(a1 + 48);
  v251 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_102;
  }

  v213 = v2;
  v215 = v6;
  v217 = v4;
  sub_1D615EA3C();
  v216 = v5;

  v214 = v7;

  sub_1D7261DAC();
  v231 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 16);
  v13 = v8;
  v220 = v9;
  if (!v12)
  {
    goto LABEL_20;
  }

  v14 = 0;
  v15 = (v8 + 32);
  v16 = v12 - 1;
  while (1)
  {
    v17 = v15[1];
    v262 = *v15;
    v263 = v17;
    v18 = v15[2];
    v19 = v15[3];
    v20 = v15[5];
    v266 = v15[4];
    v267 = v20;
    v264 = v18;
    v265 = v19;
    v21 = v15[6];
    v22 = v15[7];
    v23 = v15[8];
    v271 = *(v15 + 18);
    v269 = v22;
    v270 = v23;
    v268 = v21;
    v24 = v262;
    sub_1D615EAA0(&v262, &v252);
    sub_1D615EAA0(&v262, &v252);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v233 = v251;
    v26 = sub_1D6D8CB60(v24, *(&v24 + 1));
    v28 = v251[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v32 = v27;
    if (v251[3] < v31)
    {
      sub_1D6D6D9A8(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D6D8CB60(v24, *(&v24 + 1));
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_103;
      }

LABEL_9:
      if (v32)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v50 = v26;
    sub_1D6D82278();
    v26 = v50;
    if (v32)
    {
LABEL_10:
      v34 = v233;
      v35 = *(v233 + 56) + 152 * v26;
      v36 = *(v35 + 16);
      v252 = *v35;
      v253 = v36;
      v37 = *(v35 + 80);
      v39 = *(v35 + 32);
      v38 = *(v35 + 48);
      v256 = *(v35 + 64);
      v257 = v37;
      v254 = v39;
      v255 = v38;
      v41 = *(v35 + 112);
      v40 = *(v35 + 128);
      v42 = *(v35 + 96);
      v261 = *(v35 + 144);
      v259 = v41;
      v260 = v40;
      v258 = v42;
      v43 = v263;
      *v35 = v262;
      *(v35 + 16) = v43;
      v44 = v264;
      v45 = v265;
      v46 = v267;
      *(v35 + 64) = v266;
      *(v35 + 80) = v46;
      *(v35 + 32) = v44;
      *(v35 + 48) = v45;
      v47 = v268;
      v48 = v269;
      v49 = v270;
      *(v35 + 144) = v271;
      *(v35 + 112) = v48;
      *(v35 + 128) = v49;
      *(v35 + 96) = v47;
      sub_1D615EAD8(&v252);
      goto LABEL_14;
    }

LABEL_12:
    v34 = v233;
    *(v233 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    *(v34[6] + 16 * v26) = v24;
    v51 = v34[7] + 152 * v26;
    v52 = v271;
    v54 = v269;
    v53 = v270;
    *(v51 + 96) = v268;
    *(v51 + 112) = v54;
    *(v51 + 128) = v53;
    *(v51 + 144) = v52;
    v56 = v266;
    v55 = v267;
    v57 = v265;
    *(v51 + 32) = v264;
    *(v51 + 48) = v57;
    *(v51 + 64) = v56;
    *(v51 + 80) = v55;
    v58 = v263;
    *v51 = v262;
    *(v51 + 16) = v58;
    v59 = v34[2];
    v30 = __OFADD__(v59, 1);
    v60 = v59 + 1;
    if (v30)
    {
      goto LABEL_98;
    }

    v34[2] = v60;

LABEL_14:
    v251 = v34;

    sub_1D615EAD8(&v262);
    v62 = *(v231 + 2);
    v61 = *(v231 + 3);
    if (v62 >= v61 >> 1)
    {
      v231 = sub_1D698F4BC((v61 > 1), v62 + 1, 1, v231);
    }

    *(v231 + 2) = v62 + 1;
    *&v231[16 * v62 + 32] = v24;
    if (v16 == v14)
    {
      break;
    }

    ++v14;
    v15 = (v15 + 152);
    if (v14 >= *(v13 + 16))
    {
      goto LABEL_94;
    }
  }

  v9 = v220;
LABEL_20:
  v63 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v64 = *(v9 + 16);
  if (!v64)
  {
    goto LABEL_64;
  }

  v65 = 0;
  v66 = v64 - 1;
  v67 = 32;
  v219 = v64 - 1;
  while (2)
  {
    v68 = *(v9 + v67 + 16);
    v262 = *(v9 + v67);
    v263 = v68;
    v69 = *(v9 + v67 + 32);
    v70 = *(v9 + v67 + 48);
    v71 = *(v9 + v67 + 80);
    v266 = *(v9 + v67 + 64);
    v267 = v71;
    v264 = v69;
    v265 = v70;
    v72 = *(v9 + v67 + 96);
    v73 = *(v9 + v67 + 112);
    v74 = *(v9 + v67 + 128);
    v271 = *(v9 + v67 + 144);
    v269 = v73;
    v270 = v74;
    v268 = v72;
    v75 = v262;
    v76 = v251;
    if (!v251[2])
    {
      sub_1D615EAA0(&v262, &v252);
LABEL_41:
      sub_1D615EAA0(&v262, &v252);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v233 = v76;
      v107 = sub_1D6D8CB60(v75, *(&v75 + 1));
      v109 = v76[2];
      v110 = (v108 & 1) == 0;
      v30 = __OFADD__(v109, v110);
      v111 = v109 + v110;
      if (v30)
      {
        goto LABEL_97;
      }

      v112 = v108;
      if (v76[3] >= v111)
      {
        if ((v106 & 1) == 0)
        {
          v143 = v107;
          sub_1D6D82278();
          v107 = v143;
          if (v112)
          {
            goto LABEL_47;
          }

          goto LABEL_52;
        }
      }

      else
      {
        sub_1D6D6D9A8(v111, v106);
        v107 = sub_1D6D8CB60(v75, *(&v75 + 1));
        if ((v112 & 1) != (v113 & 1))
        {
          goto LABEL_103;
        }
      }

      if (v112)
      {
LABEL_47:
        v114 = v233;
        v115 = *(v233 + 56) + 152 * v107;
        v116 = *(v115 + 16);
        v252 = *v115;
        v253 = v116;
        v117 = *(v115 + 80);
        v119 = *(v115 + 32);
        v118 = *(v115 + 48);
        v256 = *(v115 + 64);
        v257 = v117;
        v254 = v119;
        v255 = v118;
        v121 = *(v115 + 112);
        v120 = *(v115 + 128);
        v122 = *(v115 + 96);
        v261 = *(v115 + 144);
        v259 = v121;
        v260 = v120;
        v258 = v122;
        v123 = v263;
        *v115 = v262;
        *(v115 + 16) = v123;
        v124 = v264;
        v125 = v265;
        v126 = v267;
        *(v115 + 64) = v266;
        *(v115 + 80) = v126;
        *(v115 + 32) = v124;
        *(v115 + 48) = v125;
        v127 = v268;
        v128 = v269;
        v129 = v270;
        *(v115 + 144) = v271;
        *(v115 + 112) = v128;
        *(v115 + 128) = v129;
        *(v115 + 96) = v127;
        sub_1D615EAD8(&v252);
        goto LABEL_54;
      }

LABEL_52:
      v114 = v233;
      *(v233 + 8 * (v107 >> 6) + 64) |= 1 << v107;
      *(v114[6] + 16 * v107) = v75;
      v144 = v114[7] + 152 * v107;
      v145 = v271;
      v147 = v269;
      v146 = v270;
      *(v144 + 96) = v268;
      *(v144 + 112) = v147;
      *(v144 + 128) = v146;
      *(v144 + 144) = v145;
      v149 = v266;
      v148 = v267;
      v150 = v265;
      *(v144 + 32) = v264;
      *(v144 + 48) = v150;
      *(v144 + 64) = v149;
      *(v144 + 80) = v148;
      v151 = v263;
      *v144 = v262;
      *(v144 + 16) = v151;
      v152 = v114[2];
      v30 = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (v30)
      {
        goto LABEL_99;
      }

      v114[2] = v153;

LABEL_54:
      v251 = v114;
      v154 = *(v63 + 2);
      v155 = *(v63 + 3);

      if (v154 >= v155 >> 1)
      {
        v63 = sub_1D698F4BC((v155 > 1), v154 + 1, 1, v63);
      }

      sub_1D615EAD8(&v262);
      *(v63 + 2) = v154 + 1;
      *&v63[16 * v154 + 32] = v75;
      if (v66 == v65)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    sub_1D615EAA0(&v262, &v252);
    v77 = sub_1D6D8CB60(v75, *(&v75 + 1));
    if ((v78 & 1) == 0)
    {
      goto LABEL_41;
    }

    v79 = v76[7] + 152 * v77;
    v80 = *(v79 + 16);
    v252 = *v79;
    v253 = v80;
    v81 = *(v79 + 80);
    v83 = *(v79 + 32);
    v82 = *(v79 + 48);
    v256 = *(v79 + 64);
    v257 = v81;
    v254 = v83;
    v255 = v82;
    v84 = *(v79 + 96);
    v85 = *(v79 + 112);
    v86 = *(v79 + 128);
    v261 = *(v79 + 144);
    v259 = v85;
    v260 = v86;
    v258 = v84;
    v87 = v253;
    if (!v253)
    {
      v87 = v263;
    }

    v88 = *(&v253 + 1);
    if (!*(&v253 + 1))
    {
    }

    v223 = v88;
    v89 = *(&v254 + 1);
    v90 = v254;
    v91 = v255;
    v229 = *(&v254 + 1);
    v225 = v254;
    v227 = v255;
    if (v255 >= 0xFEu)
    {
      v229 = *(&v264 + 1);
      v90 = v264;
      v227 = v265;
      sub_1D5ED34B0(v264, *(&v264 + 1), v265);
    }

    v224 = v87;
    v92 = &v255 + 8;
    if (BYTE8(v260) == 254)
    {
      v92 = &v265 + 8;
      sub_1D615EBB8(&v265 + 8, &v233, sub_1D615C3A4);
    }

    v93 = *(v92 + 3);
    v245 = *(v92 + 2);
    v246 = v93;
    v247 = *(v92 + 4);
    v248 = v92[80];
    v94 = *(v92 + 1);
    v95 = BYTE9(v260);
    if (BYTE9(v260) == 2)
    {
      v95 = BYTE9(v270);
    }

    v222 = v95;
    v96 = v261;
    v243 = *v92;
    v244 = v94;
    if (!v261)
    {
    }

    v221 = v96;
    v97 = v252;
    *&v249[39] = v245;
    *&v249[55] = v246;
    *&v249[71] = v247;
    v249[87] = v248;
    *&v249[7] = v243;
    *&v249[23] = v244;
    sub_1D615EAA0(&v252, &v233);

    sub_1D5ED34B0(v225, v89, v91);
    sub_1D615EBB8(&v255 + 8, &v233, sub_1D615C3A4);

    v98 = swift_isUniquelyReferenced_nonNull_native();
    v250 = v76;
    v99 = sub_1D6D8CB60(v97, *(&v97 + 1));
    v101 = v76[2];
    v102 = (v100 & 1) == 0;
    v30 = __OFADD__(v101, v102);
    v103 = v101 + v102;
    if (v30)
    {
      goto LABEL_100;
    }

    v104 = v100;
    if (v76[3] >= v103)
    {
      v66 = v219;
      if (v98)
      {
        goto LABEL_49;
      }

      v156 = v99;
      sub_1D6D82278();
      v99 = v156;
      v130 = v223;
      if ((v104 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_50:
      v131 = v250;
      v132 = v250[7] + 152 * v99;
      v133 = *(v132 + 16);
      v233 = *v132;
      v234 = v133;
      v134 = *(v132 + 80);
      v136 = *(v132 + 32);
      v135 = *(v132 + 48);
      v237 = *(v132 + 64);
      v238 = v134;
      v235 = v136;
      v236 = v135;
      v138 = *(v132 + 112);
      v137 = *(v132 + 128);
      v139 = *(v132 + 96);
      v242 = *(v132 + 144);
      v240 = v138;
      v241 = v137;
      v239 = v139;
      *v132 = v97;
      *(v132 + 16) = v224;
      *(v132 + 24) = v130;
      *(v132 + 32) = v90;
      *(v132 + 40) = v229;
      *(v132 + 48) = v227;
      v140 = *v249;
      *(v132 + 65) = *&v249[16];
      *(v132 + 49) = v140;
      *(v132 + 129) = *&v249[80];
      v141 = *&v249[48];
      *(v132 + 113) = *&v249[64];
      v142 = *&v249[32];
      *(v132 + 97) = v141;
      *(v132 + 81) = v142;
      *(v132 + 137) = v222;
      *(v132 + 144) = v221;
      sub_1D615EAD8(&v233);
    }

    else
    {
      sub_1D6D6D9A8(v103, v98);
      v99 = sub_1D6D8CB60(v97, *(&v97 + 1));
      v66 = v219;
      if ((v104 & 1) != (v105 & 1))
      {
        goto LABEL_103;
      }

LABEL_49:
      v130 = v223;
      if (v104)
      {
        goto LABEL_50;
      }

LABEL_59:
      v131 = v250;
      v250[(v99 >> 6) + 8] |= 1 << v99;
      *(v131[6] + 16 * v99) = v97;
      v157 = v131[7] + 152 * v99;
      v158 = *v249;
      *(v157 + 65) = *&v249[16];
      *(v157 + 49) = v158;
      v159 = *&v249[48];
      *(v157 + 113) = *&v249[64];
      v160 = *&v249[32];
      *(v157 + 97) = v159;
      *v157 = v97;
      *(v157 + 16) = v224;
      *(v157 + 24) = v130;
      *(v157 + 32) = v90;
      *(v157 + 40) = v229;
      *(v157 + 48) = v227;
      *(v157 + 129) = *&v249[80];
      *(v157 + 81) = v160;
      *(v157 + 137) = v222;
      *(v157 + 144) = v221;
      v161 = v131[2];
      v30 = __OFADD__(v161, 1);
      v162 = v161 + 1;
      if (v30)
      {
        goto LABEL_101;
      }

      v131[2] = v162;
    }

    sub_1D615EAD8(&v252);
    sub_1D615EAD8(&v262);
    v251 = v131;
    v9 = v220;
    if (v66 == v65)
    {
      goto LABEL_64;
    }

LABEL_62:
    ++v65;
    v67 += 152;
    if (v65 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_64:

  *&v262 = v63;

  sub_1D6985DAC(v163);
  v164 = v262;
  v165 = *(v262 + 16);
  if (v165)
  {
    v166 = 0;
    v230 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v167 = v63;
    v168 = v251;
    v169 = (v164 + 40 + 16 * v166);
    v170 = v166;
    while (v170 < v165)
    {
      v166 = v170 + 1;
      if (__OFADD__(v170, 1))
      {
        goto LABEL_96;
      }

      if (v168[2])
      {
        v172 = *(v169 - 1);
        v171 = *v169;

        v173 = sub_1D6D8CB60(v172, v171);
        if (v174)
        {
          v175 = v168[7] + 152 * v173;
          v176 = *(v175 + 16);
          v262 = *v175;
          v263 = v176;
          v177 = *(v175 + 80);
          v179 = *(v175 + 32);
          v178 = *(v175 + 48);
          v266 = *(v175 + 64);
          v267 = v177;
          v264 = v179;
          v265 = v178;
          v180 = *(v175 + 96);
          v181 = *(v175 + 112);
          v182 = *(v175 + 128);
          v271 = *(v175 + 144);
          v269 = v181;
          v270 = v182;
          v268 = v180;
          sub_1D615EAA0(&v262, &v252);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v230 = sub_1D698E0D0(0, *(v230 + 2) + 1, 1, v230);
          }

          v63 = v167;
          v184 = *(v230 + 2);
          v183 = *(v230 + 3);
          if (v184 >= v183 >> 1)
          {
            v230 = sub_1D698E0D0((v183 > 1), v184 + 1, 1, v230);
          }

          *(v230 + 2) = v184 + 1;
          v185 = &v230[152 * v184];
          v186 = v263;
          *(v185 + 2) = v262;
          *(v185 + 3) = v186;
          v187 = v264;
          v188 = v265;
          v189 = v267;
          *(v185 + 6) = v266;
          *(v185 + 7) = v189;
          *(v185 + 4) = v187;
          *(v185 + 5) = v188;
          v190 = v268;
          v191 = v269;
          v192 = v270;
          *(v185 + 22) = v271;
          *(v185 + 9) = v191;
          *(v185 + 10) = v192;
          *(v185 + 8) = v190;
          if (v166 != v165)
          {
            goto LABEL_66;
          }

          goto LABEL_81;
        }
      }

      ++v170;
      v169 += 2;
      if (v166 == v165)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_95;
  }

  v230 = MEMORY[0x1E69E7CC0];
LABEL_81:

  v193 = v213[7];
  if (!v193)
  {
  }

  v226 = v193;
  v194 = v213[8];
  if (!v194)
  {
    v194 = *(v218 + 64);
  }

  v195 = v213[9];
  v196 = v213[10];
  v197 = *(v213 + 88);
  v198 = v195;
  v228 = v196;
  v199 = *(v213 + 88);
  if (v197 >= 0xFE)
  {
    v198 = *(v218 + 72);
    v196 = *(v218 + 80);
    v199 = *(v218 + 88);
    sub_1D5ED34B0(v198, v196, v199);
  }

  LOBYTE(v267) = *(v213 + 176);
  v200 = *(v213 + 9);
  v264 = *(v213 + 8);
  v265 = v200;
  v266 = *(v213 + 10);
  v201 = *(v213 + 7);
  v262 = *(v213 + 6);
  v263 = v201;
  v232 = v195;
  if (v267 == 254)
  {
    v202 = *(v218 + 144);
    v235 = *(v218 + 128);
    v236 = v202;
    v237 = *(v218 + 160);
    LOBYTE(v238) = *(v218 + 176);
    v203 = *(v218 + 112);
    v233 = *(v218 + 96);
    v234 = v203;
    sub_1D615EBB8(&v233, &v252, sub_1D615C3A4);
    v254 = v235;
    v255 = v236;
    v256 = v237;
    LOBYTE(v257) = v238;
    v204 = v233;
    v205 = v234;
  }

  else
  {
    v206 = *(v213 + 9);
    v254 = *(v213 + 8);
    v255 = v206;
    v256 = *(v213 + 10);
    LOBYTE(v257) = *(v213 + 176);
    v204 = *(v213 + 6);
    v205 = *(v213 + 7);
  }

  v252 = v204;
  v253 = v205;
  v207 = *(v213 + 177);
  if (v207 == 2)
  {
    LOBYTE(v207) = *(v218 + 177);
  }

  swift_beginAccess();
  v208 = v213[23];
  v209 = swift_allocObject();
  swift_beginAccess();
  *(v209 + 16) = v217;
  *(v209 + 24) = v216;
  *(v209 + 32) = v215;
  *(v209 + 40) = v214;
  swift_beginAccess();
  *(v209 + 48) = v230;
  *(v209 + 56) = v226;
  *(v209 + 64) = v194;
  *(v209 + 72) = v198;
  *(v209 + 80) = v196;
  *(v209 + 88) = v199;
  v210 = v255;
  *(v209 + 128) = v254;
  *(v209 + 144) = v210;
  *(v209 + 160) = v256;
  *(v209 + 176) = v257;
  v211 = v253;
  *(v209 + 96) = v252;
  *(v209 + 112) = v211;
  *(v209 + 177) = v207;
  swift_beginAccess();
  *(v209 + 184) = v208;

  sub_1D5ED34B0(v232, v228, v197);
  sub_1D615EBB8(&v262, &v233, sub_1D615C3A4);

  return v209;
}

uint64_t sub_1D615D56C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698E0D0(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v80 = sub_1D698DF68(0, v5, 0, v6);
  v84 = *(v4 + 16);
  if (v84)
  {
    v8 = 0;
    v82 = v2;
    v83 = v4 + 32;
    v81 = v4;
    while (1)
    {
      v9 = v83 + 152 * v8;
      v10 = *(v9 + 16);
      v96 = *v9;
      v97 = v10;
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      v13 = *(v9 + 80);
      v100 = *(v9 + 64);
      v101 = v13;
      v98 = v11;
      v99 = v12;
      v14 = *(v9 + 96);
      v15 = *(v9 + 112);
      v16 = *(v9 + 128);
      *&v105 = *(v9 + 144);
      v103 = v15;
      v104 = v16;
      v102 = v14;
      v17 = v96;
      sub_1D615EAA0(&v96, &v86);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      v86 = v17;

      v18 = sub_1D6844380(&v86);

      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = 0;
        v22 = 32;
        while (1)
        {
          if (v21 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v24 = *(v18 + v22 + 16);
          v23 = *(v18 + v22 + 32);
          v25 = *(v18 + v22);
          v107 = *(v18 + v22 + 48);
          v106[1] = v24;
          v106[2] = v23;
          v106[0] = v25;
          v26 = v24;
          sub_1D5E3B610(v106, &v86);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v21;
          result = sub_1D5E3B66C(v106);
          v22 += 56;
          if (v20 == v21)
          {
            goto LABEL_10;
          }
        }

        result = sub_1D5E3B66C(v106);
        if (v26 <= 1)
        {
          v39 = *(v7 + 2);
          v38 = *(v7 + 3);
          v27 = v81;
          v2 = v82;
          if (v39 >= v38 >> 1)
          {
            result = sub_1D698E0D0((v38 > 1), v39 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 2) = v39 + 1;
          v40 = &v7[152 * v39];
          v41 = v97;
          *(v40 + 2) = v96;
          *(v40 + 3) = v41;
          v42 = v98;
          v43 = v99;
          v44 = v101;
          *(v40 + 6) = v100;
          *(v40 + 7) = v44;
          *(v40 + 4) = v42;
          *(v40 + 5) = v43;
          v45 = v102;
          v46 = v103;
          v47 = v104;
          *(v40 + 22) = v105;
          *(v40 + 9) = v46;
          *(v40 + 10) = v47;
          *(v40 + 8) = v45;
        }

        else
        {
          v92 = v102;
          v93 = v103;
          v94 = v104;
          v95 = v105;
          v88 = v98;
          v89 = v99;
          v90 = v100;
          v91 = v101;
          v86 = v96;
          v87 = v97;
          sub_1D615EAA0(&v96, v85);
          v27 = v81;
          v29 = v80[2];
          v28 = v80[3];
          v2 = v82;
          if (v29 >= v28 >> 1)
          {
            v80 = sub_1D698DF68((v28 > 1), v29 + 1, 1, v80);
          }

          result = sub_1D615EAD8(&v96);
          v80[2] = v29 + 1;
          v30 = &v80[20 * v29];
          v31 = v87;
          *(v30 + 2) = v86;
          *(v30 + 3) = v31;
          v32 = v88;
          v33 = v89;
          v34 = v91;
          *(v30 + 6) = v90;
          *(v30 + 7) = v34;
          *(v30 + 4) = v32;
          *(v30 + 5) = v33;
          v35 = v92;
          v36 = v94;
          v37 = v95;
          *(v30 + 9) = v93;
          *(v30 + 10) = v36;
          *(v30 + 8) = v35;
          v30[22] = v37;
          v30[23] = v26;
        }
      }

      else
      {
LABEL_10:
        sub_1D615EAD8(&v96);

        v27 = v81;
        v2 = v82;
      }

      if (++v8 == v84)
      {
        break;
      }

      if (v8 >= *(v27 + 16))
      {
        goto LABEL_36;
      }
    }
  }

  sub_1D615EB08();
  v48 = sub_1D72626AC();

  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v49 - 1;
    for (i = 32; ; i += 160)
    {
      v52 = *(v48 + i + 16);
      v96 = *(v48 + i);
      v97 = v52;
      v53 = *(v48 + i + 32);
      v54 = *(v48 + i + 48);
      v55 = *(v48 + i + 80);
      v100 = *(v48 + i + 64);
      v101 = v55;
      v98 = v53;
      v99 = v54;
      v56 = *(v48 + i + 96);
      v57 = *(v48 + i + 112);
      v58 = *(v48 + i + 144);
      v104 = *(v48 + i + 128);
      v105 = v58;
      v102 = v56;
      v103 = v57;
      sub_1D615EBB8(&v96, &v86, sub_1D615EB08);
      v60 = *(v7 + 2);
      v59 = *(v7 + 3);
      if (v60 >= v59 >> 1)
      {
        v7 = sub_1D698E0D0((v59 > 1), v60 + 1, 1, v7);
      }

      *(v7 + 2) = v60 + 1;
      v61 = &v7[152 * v60];
      v62 = v97;
      *(v61 + 2) = v96;
      *(v61 + 3) = v62;
      v63 = v98;
      v64 = v99;
      v65 = v101;
      *(v61 + 6) = v100;
      *(v61 + 7) = v65;
      *(v61 + 4) = v63;
      *(v61 + 5) = v64;
      v66 = v102;
      v67 = v103;
      v68 = v104;
      *(v61 + 22) = v105;
      *(v61 + 9) = v67;
      *(v61 + 10) = v68;
      *(v61 + 8) = v66;
      if (!v50)
      {
        break;
      }

      --v50;
    }
  }

  v69 = *(v7 + 2);

  if (v69)
  {
    v70 = 0;
    v71 = v7 + 32;
    while (v70 < *(v7 + 2))
    {
      v72 = *(v71 + 1);
      v96 = *v71;
      v97 = v72;
      v73 = *(v71 + 2);
      v74 = *(v71 + 3);
      v75 = *(v71 + 5);
      v100 = *(v71 + 4);
      v101 = v75;
      v98 = v73;
      v99 = v74;
      v76 = *(v71 + 6);
      v77 = *(v71 + 7);
      v78 = *(v71 + 8);
      *&v105 = *(v71 + 18);
      v103 = v77;
      v104 = v78;
      v102 = v76;
      ++v70;
      v92 = v76;
      v93 = v77;
      v94 = v78;
      v95 = v105;
      v88 = v98;
      v89 = v99;
      v90 = v100;
      v91 = v75;
      v86 = v96;
      v87 = v97;
      swift_allocObject();
      sub_1D615EAA0(&v96, v85);
      v79 = sub_1D615EC20(v2, &v86);

      v71 += 152;
      v2 = v79;
      if (v69 == v70)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v79 = v2;
LABEL_33:

    return v79;
  }

  return result;
}

uint64_t sub_1D615DB10()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[3];
  v30 = v0[2];
  v3 = v0[5];
  v28 = v0[4];
  swift_beginAccess();
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];

  if (v6)
  {
    v26 = sub_1D600CADC(v6);
  }

  else
  {
    v26 = 0;
  }

  v29 = v2;
  v7 = v1[9];
  v8 = v1[10];
  v9 = *(v1 + 88);
  v10 = *(v1 + 9);
  v34 = *(v1 + 8);
  v35 = v10;
  v36 = *(v1 + 10);
  v37 = *(v1 + 176);
  v11 = v37;
  v12 = *(v1 + 7);
  v32 = *(v1 + 6);
  v33 = v12;
  v27 = v3;
  if (v37 == 254)
  {
    sub_1D5ED34B0(v7, v8, v9);
    v13 = v32;
    v14 = DWORD2(v32);
    LODWORD(v15) = HIDWORD(v32);
    v16 = *(&v33 + 1);
    v17 = v33;
    v23 = v34;
    v24 = v35;
    v25 = v36;
  }

  else
  {
    v25 = v36;
    v15 = *(&v34 + 1);
    v16 = *(&v33 + 1);
    v17 = v33;
    v14 = DWORD2(v32);
    v13 = v32;
    v24 = v35;
    v31[17] = v34;
    sub_1D615EBB8(&v32, v31, sub_1D615C3A4);
    sub_1D615EBB8(&v32, v31, sub_1D615C3A4);
    sub_1D5ED34B0(v7, v8, v9);
    sub_1D6E0CAE0(v31);

    sub_1D615F660(&v32, sub_1D615C3A4);
    *&v18 = v31[0];
    *(&v18 + 1) = v15;
    v23 = v18;
  }

  v19 = *(v1 + 177);
  swift_beginAccess();
  v20 = v1[23];
  v21 = swift_allocObject();
  swift_beginAccess();
  *(v21 + 16) = v30;
  *(v21 + 24) = v29;
  *(v21 + 32) = v28;
  *(v21 + 40) = v27;
  swift_beginAccess();
  *(v21 + 48) = v4;
  *(v21 + 56) = v5;
  *(v21 + 64) = v26;
  *(v21 + 72) = v7;
  *(v21 + 80) = v8;
  *(v21 + 88) = v9;
  *(v21 + 96) = v13;
  *(v21 + 104) = v14;
  *(v21 + 108) = v15;
  *(v21 + 112) = v17;
  *(v21 + 120) = v16;
  *(v21 + 128) = v23;
  *(v21 + 144) = v24;
  *(v21 + 160) = v25;
  *(v21 + 176) = v11;
  *(v21 + 177) = v19;
  swift_beginAccess();
  *(v21 + 184) = v20;

  return v21;
}

uint64_t FormatIssueCoverNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D600ECE4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));

  return v0;
}

uint64_t FormatIssueCoverNodeStyle.__deallocating_deinit()
{
  FormatIssueCoverNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D615DEC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6668DBC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t FormatIssueCoverNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatIssueCoverNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 48);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatIssueCoverNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 120);
  v10 = *(v1 + 104);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 136);
  v6 = *(v1 + 72);
  v9[0] = *(v1 + 56);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D615EBB8(v9, v8, sub_1D615C3A4);
}

uint64_t _s8NewsFeed25FormatIssueCoverNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v37 = a1[5];
  v9 = *(a1 + 48);
  v10 = *(a1 + 13);
  v74 = *(a1 + 11);
  v75 = v10;
  v76 = *(a1 + 15);
  v77 = *(a1 + 136);
  v11 = *(a1 + 9);
  v72 = *(a1 + 7);
  v73 = v11;
  v36 = *(a1 + 137);
  v12 = a1[18];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v16 = a2[3];
  v17 = a2[4];
  v18 = a2[5];
  v19 = *(a2 + 48);
  v83 = *(a2 + 136);
  v20 = *(a2 + 15);
  v21 = *(a2 + 11);
  v81 = *(a2 + 13);
  v82 = v20;
  v22 = *(a2 + 7);
  v79 = *(a2 + 9);
  v80 = v21;
  v78 = v22;
  v35 = *(a2 + 137);
  v34 = a2[18];
  if ((v4 != v13 || v5 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    v33 = v12;

    v23 = sub_1D633A310(v6, v15);

    if ((v23 & 1) == 0)
    {
      return 0;
    }

    if (v8)
    {
LABEL_8:
      if (!v16)
      {
        return 0;
      }

      v24 = sub_1D633C9E8(v8, v16);

      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    v33 = v12;

    if (v8)
    {
      goto LABEL_8;
    }
  }

  if (v16)
  {
    return 0;
  }

LABEL_14:
  if (v9 > 0xFD)
  {
    v25 = v37;
    sub_1D5ED34B0(v7, v37, v9);
    sub_1D5ED34B0(v17, v18, v19);
    if (v19 > 0xFD)
    {
      sub_1D5ED348C(v7, v37, v9);
      goto LABEL_21;
    }

LABEL_19:
    sub_1D5ED348C(v7, v25, v9);
    sub_1D5ED348C(v17, v18, v19);
    return 0;
  }

  v25 = v37;
  *&v54 = v7;
  *(&v54 + 1) = v37;
  LOBYTE(v55) = v9;
  if (v19 > 0xFD)
  {
    sub_1D5ED34B0(v7, v37, v9);
    sub_1D5ED34B0(v17, v18, v19);
    sub_1D5ED34B0(v7, v37, v9);
    sub_1D5ED34A0(v7, v37, v9);
    goto LABEL_19;
  }

  *v66 = v17;
  *&v66[8] = v18;
  v66[16] = v19;
  sub_1D5ED34B0(v7, v37, v9);
  sub_1D5ED34B0(v17, v18, v19);
  sub_1D5ED34B0(v7, v37, v9);
  v26 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v54, v66);
  sub_1D5ED34A0(*v66, *&v66[8], v66[16]);
  sub_1D5ED34A0(v54, *(&v54 + 1), v55);
  sub_1D5ED348C(v7, v37, v9);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v69 = v74;
  v70 = v75;
  v71 = v76;
  v67 = v72;
  v68 = v73;
  *&v66[23] = v79;
  *&v66[39] = v80;
  *&v66[55] = v81;
  *&v66[71] = v82;
  v27 = v77;
  *&v66[7] = v78;
  v28 = v83;
  if (v77 == 254)
  {
    if (v83 == 254)
    {
      v56 = v74;
      v57 = v75;
      v58 = v76;
      v54 = v72;
      v55 = v73;
      v59 = -2;
      sub_1D615EBB8(&v72, &v48, sub_1D615C3A4);
      sub_1D615EBB8(&v78, &v48, sub_1D615C3A4);
      sub_1D615F660(&v54, sub_1D615C3A4);
      goto LABEL_31;
    }

    sub_1D615EBB8(&v72, &v54, sub_1D615C3A4);
    sub_1D615EBB8(&v78, &v54, sub_1D615C3A4);
LABEL_27:
    v56 = v69;
    v57 = v70;
    v58 = v71;
    v54 = v67;
    v55 = v68;
    v62 = *&v66[32];
    v63 = *&v66[48];
    *v64 = *&v66[64];
    v60 = *v66;
    v59 = v27;
    *&v64[15] = *&v66[79];
    v61 = *&v66[16];
    v65 = v28;
    sub_1D615F660(&v54, sub_1D615F6C0);
    return 0;
  }

  v56 = v74;
  v57 = v75;
  v58 = v76;
  v54 = v72;
  v55 = v73;
  v59 = v77;
  v50 = v74;
  v51 = v75;
  v52 = v76;
  v53 = v77;
  v48 = v72;
  v49 = v73;
  if (v83 == 254)
  {
    v44 = v56;
    v45 = v57;
    v46 = v58;
    v47 = v59;
    v42 = v54;
    v43 = v55;
    sub_1D615EBB8(&v72, v40, sub_1D615C3A4);
    sub_1D615EBB8(&v78, v40, sub_1D615C3A4);
    sub_1D615EBB8(&v54, v40, sub_1D615C3A4);
    sub_1D601144C(&v42);
    goto LABEL_27;
  }

  v44 = v80;
  v45 = v81;
  v46 = v82;
  v42 = v78;
  v43 = v79;
  v47 = v83;
  sub_1D615EBB8(&v72, v40, sub_1D615C3A4);
  sub_1D615EBB8(&v78, v40, sub_1D615C3A4);
  sub_1D615EBB8(&v54, v40, sub_1D615C3A4);
  v30 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v48, &v42);
  v38[2] = v44;
  v38[3] = v45;
  v38[4] = v46;
  v39 = v47;
  v38[0] = v42;
  v38[1] = v43;
  sub_1D601144C(v38);
  v40[2] = v50;
  v40[3] = v51;
  v40[4] = v52;
  v41 = v53;
  v40[0] = v48;
  v40[1] = v49;
  sub_1D601144C(v40);
  v44 = v69;
  v45 = v70;
  v46 = v71;
  v42 = v67;
  v43 = v68;
  v47 = v27;
  sub_1D615F660(&v42, sub_1D615C3A4);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if (v36 == 2)
  {
    v31 = v33;
    if (v35 != 2)
    {
      return 0;
    }

    goto LABEL_36;
  }

  result = 0;
  v31 = v33;
  if (v35 != 2 && ((v35 ^ v36) & 1) == 0)
  {
LABEL_36:
    if (v31)
    {
      if (v34)
      {

        v32 = sub_1D633D840(v31, v34);

        if (v32)
        {
          return 1;
        }
      }
    }

    else if (!v34)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D615E66C(uint64_t a1)
{
  result = sub_1D615E7C8(&qword_1EC8846D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D615E6D4(uint64_t a1)
{
  *(a1 + 16) = sub_1D615E7C8(&qword_1EDF0C2C8);
  result = sub_1D615E7C8(&qword_1EDF0C2D0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D615E73C(void *a1)
{
  a1[1] = sub_1D615E7C8(&qword_1EDF0C2C8);
  a1[2] = sub_1D615E7C8(&qword_1EDF0C2D0);
  result = sub_1D615E7C8(&qword_1EC8846D8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D615E7C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatIssueCoverNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D615E808(uint64_t a1)
{
  result = sub_1D615E830();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D615E830()
{
  result = qword_1EC8846E0;
  if (!qword_1EC8846E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846E0);
  }

  return result;
}

unint64_t sub_1D615E884(uint64_t a1)
{
  *(a1 + 8) = sub_1D615E8B4();
  result = sub_1D615E908();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D615E8B4()
{
  result = qword_1EDF0C2D8;
  if (!qword_1EDF0C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C2D8);
  }

  return result;
}

unint64_t sub_1D615E908()
{
  result = qword_1EDF0C2E0;
  if (!qword_1EDF0C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0C2E0);
  }

  return result;
}

unint64_t sub_1D615E95C(void *a1)
{
  a1[1] = sub_1D615E8B4();
  a1[2] = sub_1D615E908();
  result = sub_1D615E994();
  a1[3] = result;
  return result;
}

unint64_t sub_1D615E994()
{
  result = qword_1EC8846E8;
  if (!qword_1EC8846E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8846E8);
  }

  return result;
}

void sub_1D615EA3C()
{
  if (!qword_1EC8846F0)
  {
    sub_1D601014C();
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8846F0);
    }
  }
}

void sub_1D615EB08()
{
  if (!qword_1EC8846F8)
  {
    sub_1D615EB64();
    v0 = type metadata accessor for FormatNodeStyleSelectorOrder();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8846F8);
    }
  }
}

unint64_t sub_1D615EB64()
{
  result = qword_1EC88EE30;
  if (!qword_1EC88EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88EE30);
  }

  return result;
}

uint64_t sub_1D615EBB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D615EC20(uint64_t a1, __int128 *a2)
{
  v4 = a2[7];
  *&v43[48] = a2[6];
  *&v43[64] = v4;
  *&v43[80] = a2[8];
  v44 = *(a2 + 18);
  v5 = a2[3];
  v42 = a2[2];
  *v43 = v5;
  v6 = a2[5];
  *&v43[16] = a2[4];
  *&v43[32] = v6;
  v7 = a2[1];
  v40 = *a2;
  v41 = v7;
  swift_beginAccess();
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v8;
  *(v2 + 24) = v9;
  v10 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v10;
  swift_beginAccess();
  v11 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v11;
  v12 = v41;
  if (!v41)
  {
  }

  *(v2 + 56) = v12;
  v13 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
  }

  *(v2 + 64) = v13;
  v15 = *(&v42 + 1);
  v14 = v42;
  v16 = v43[0];
  v17 = *(&v42 + 1);
  v27 = v42;
  v18 = v43[0];
  if (v43[0] >= 0xFEu)
  {
    v14 = *(a1 + 72);
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
    sub_1D5ED34B0(v14, v17, v18);
  }

  *(v2 + 72) = v14;
  *(v2 + 80) = v17;
  *(v2 + 88) = v18;
  if (v43[88] == 254)
  {
    v19 = *(a1 + 144);
    v30 = *(a1 + 128);
    v31 = v19;
    v32 = *(a1 + 160);
    v33 = *(a1 + 176);
    v20 = *(a1 + 112);
    v28 = *(a1 + 96);
    v29 = v20;
    sub_1D615EBB8(&v28, &v34, sub_1D615C3A4);
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v34 = v28;
    v35 = v29;
    v36 = v30;
  }

  else
  {
    v37 = *&v43[56];
    v38 = *&v43[72];
    v39 = v43[88];
    v34 = *&v43[8];
    v35 = *&v43[24];
    v36 = *&v43[40];
  }

  v21 = v37;
  v22 = v38;
  v23 = v35;
  *(v2 + 128) = v36;
  *(v2 + 144) = v21;
  *(v2 + 160) = v22;
  *(v2 + 176) = v39;
  *(v2 + 96) = v34;
  *(v2 + 112) = v23;
  v24 = v43[89];
  if (v43[89] == 2)
  {
    v24 = *(a1 + 177);
  }

  *(v2 + 177) = v24;
  v25 = v44;

  sub_1D5ED34B0(v27, v15, v16);
  sub_1D615EBB8(&v43[8], &v28, sub_1D615C3A4);

  sub_1D615EAD8(&v40);
  if (!v25)
  {
    swift_beginAccess();
    v25 = *(a1 + 184);
  }

  swift_beginAccess();
  *(v2 + 184) = v25;
  return v2;
}

void *sub_1D615EEF4(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v75 = a1[6];
  v76 = v3;
  v77 = a1[8];
  v78 = *(a1 + 18);
  v4 = a1[3];
  v71 = a1[2];
  v72 = v4;
  v5 = a1[5];
  v73 = a1[4];
  v74 = v5;
  v6 = a1[1];
  v69 = *a1;
  v70 = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7274590;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8();
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v50 = *(*(v9 - 8) + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v49 = v10;
  v12 = (v11 + v10);
  if (a2)
  {
    v13 = *(a2 + 40);
    v48 = *(a2 + 32);

    v14 = sub_1D615DB10();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0x5000000000000000;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v48 = 0;
    v13 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = (v12 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v11 + v49) = v48;
  v12[2] = 0;
  v12[3] = 0;
  v12[1] = v13;
  v20 = v12 + *(v17 + 28);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  v21(v12, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v11, v65);
  swift_setDeallocating();
  sub_1D615F660(v12, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v8 + 32) = v22;
  v23 = v65[1];
  *(v22 + 16) = v65[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v66;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7274590;
  v25 = v24 + v49;
  sub_1D711F844(1701869908, 0xE400000000000000, 0x6F65646956, 0xE500000000000000, (v24 + v49));
  v21(v24 + v49, 0, 1, v17);
  if (a2)
  {
    v26 = v21;
    v27 = *(a2 + 56);

    sub_1D711B070(0x6168706C41, 0xE500000000000000, v27, (v25 + v50));
    v26(v25 + v50, 0, 1, v17);
    v28 = *(a2 + 177);
  }

  else
  {
    sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v25 + v50));
    v21(v25 + v50, 0, 1, v17);
    v28 = 2;
    v26 = v21;
  }

  sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, v28, (v25 + 2 * v50));
  v26(v25 + 2 * v50, 0, 1, v17);
  if (a2)
  {
    swift_beginAccess();
    v29 = *(a2 + 184);
  }

  else
  {
    v29 = 0;
  }

  sub_1D7123F44(0x737469617254, 0xE600000000000000, v29, (v25 + 3 * v50));
  v26(v25 + 3 * v50, 0, 1, v17);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v24, v67);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v8 + 96) = &type metadata for FormatInspectionGroup;
  *(v8 + 104) = &off_1F518B2C0;
  v30 = swift_allocObject();
  *(v8 + 72) = v30;
  v31 = v67[1];
  *(v30 + 16) = v67[0];
  *(v30 + 32) = v31;
  *(v30 + 48) = v68;
  v63[6] = v75;
  v63[7] = v76;
  v63[8] = v77;
  v64 = v78;
  v63[2] = v71;
  v63[3] = v72;
  v63[4] = v73;
  v63[5] = v74;
  v63[0] = v69;
  v63[1] = v70;
  if (a2)
  {
    v32 = *(a2 + 72);
    v33 = *(a2 + 80);
    v34 = *(a2 + 88);
    sub_1D5ED34B0(v32, v33, v34);
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = -2;
  }

  *&v57 = v32;
  *(&v57 + 1) = v33;
  LOBYTE(v58) = v34;
  v35 = sub_1D6D9893C(v63, &v57);
  sub_1D5ED348C(v57, *(&v57 + 1), v58);
  *(v8 + 136) = &type metadata for FormatInspection;
  *(v8 + 144) = &off_1F51E3FD0;
  *(v8 + 112) = v35;
  if (a2)
  {
    v36 = *(a2 + 128);
    v37 = *(a2 + 160);
    v60 = *(a2 + 144);
    v61 = v37;
    v62 = *(a2 + 176);
    v38 = *(a2 + 112);
    v57 = *(a2 + 96);
    v58 = v38;
    v59 = v36;
    sub_1D615EBB8(&v57, &v51, sub_1D615C3A4);
    v39 = v57;
    v40 = v58;
    v41 = v59;
    v42 = v60;
    v43 = v61;
    v44 = v62;
  }

  else
  {
    v39 = 0uLL;
    v44 = -2;
    v40 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
  }

  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v55 = v43;
  v56 = v44;
  v45 = sub_1D686F740(&v69, &v51);
  v60 = v54;
  v61 = v55;
  v62 = v56;
  v57 = v51;
  v58 = v52;
  v59 = v53;
  sub_1D615F660(&v57, sub_1D615C3A4);
  *(v8 + 176) = &type metadata for FormatInspection;
  *(v8 + 184) = &off_1F51E3FD0;
  *(v8 + 152) = v45;
  v46 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v46;
}

uint64_t sub_1D615F660(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D615F6C0()
{
  if (!qword_1EC8822D8)
  {
    sub_1D615C3A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8822D8);
    }
  }
}

uint64_t IssueCover.identifier.getter()
{
  if (*(v0 + 56) > 1u)
  {
    return 1701736302;
  }

  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t IssueCover.ImageModel.init(issue:aspectRatio:assetHandle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

uint64_t IssueCover.LayeredModel.init(issue:aspectRatio:json:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a5;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t IssueCover.Kind.description.getter()
{
  v1 = 0x4D6465726579616CLL;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

NewsFeed::IssueCover::Kind_optional __swiftcall IssueCover.Kind.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D615F874(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4D6465726579616CLL;
  v4 = 0xEC00000061696465;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6567616D69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x4D6465726579616CLL;
  v8 = 0xEC00000061696465;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6567616D69;
  }

  if (*a2)
  {
    v10 = v8;
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

uint64_t sub_1D615F974()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D615FA14()
{
  sub_1D72621EC();
}

uint64_t sub_1D615FAA0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D615FB48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000061696465;
  v5 = 0x4D6465726579616CLL;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6567616D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D615FBA4()
{
  v1 = 0x4D6465726579616CLL;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_1D615FBFC()
{
  if (*(v0 + 56) > 1u)
  {
    return 1701736302;
  }

  v1 = [*v0 identifier];
  v2 = sub_1D726207C();

  return v2;
}

double IssueCover.aspectRatio.getter()
{
  result = 0.75;
  if (*(v0 + 56) == 1)
  {
    result = *(v0 + 8);
  }

  if (!*(v0 + 56))
  {
    return *(v0 + 8);
  }

  return result;
}

void IssueCover.imageModel.getter(void *a1@<X8>)
{
  if (*(v1 + 56))
  {
    if (*(v1 + 56) != 1)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v2 = *(v1 + 6);
    v6 = v2;
    v3 = v1[2];
  }

  else
  {
    v2 = *(v1 + 2);
    v6 = v2;
    v3 = *v1;
  }

  *a1 = v3;
  a1[2] = v2;
  v4 = v3;

  v5 = v6;
}

unint64_t sub_1D615FD24()
{
  result = qword_1EC884700;
  if (!qword_1EC884700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC884700);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10IssueCoverO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

uint64_t sub_1D615FD94(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t FeedServiceType.fetchAll(from:until:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v9 = sub_1D726275C();
  v10 = sub_1D617B760(&v12, v9, a2, a3, a4, a5);

  return v10;
}

uint64_t FeedService.__allocating_init(feed:cursorFactory:personalizationService:offlineProvider:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  FeedService.init(feed:cursorFactory:personalizationService:offlineProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t FeedService.__allocating_init(feed:cursorFactory:personalizationService:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  FeedService.init(feed:cursorFactory:personalizationService:)(a1, a2, a3);
  return v6;
}

uint64_t FeedService.state(context:)()
{
  sub_1D617C808();
}

uint64_t sub_1D616003C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_1D61603CC;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_1D6160164;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6160164()
{
  v13 = v0;
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v12 = v0[15];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D5D0EA94(v1);
  v5 = *(v2 + 32);

  v5(&v12, v4, v3, v2);

  v6 = v0[29];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];
  sub_1D5D10534();

  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10(v6);
}

uint64_t sub_1D61602FC()
{

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1D5D10534();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D61603CC()
{

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_1D5D10534();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t FeedService.fetchReplaceGroup(from:)(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FeedReplaceLocation();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  type metadata accessor for FeedServiceFetchResult();
  sub_1D725BC0C();
  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = v4;
  *(v11 + 3) = v3;
  *(v11 + 4) = v1;
  (*(v6 + 32))(&v11[v10], v9, v5);

  return sub_1D725BA6C();
}

uint64_t sub_1D616069C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D5E6D548;

  return sub_1D616073C(a3);
}

uint64_t sub_1D616073C(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6160784, 0, 0);
}

uint64_t sub_1D6160784()
{
  v1 = v0[6];
  v0[7] = *(v0[5] + 112);
  v2 = *(v1 + 88);
  v0[8] = v2;
  v3 = *(v2 + 48);
  v4 = *(v1 + 80);
  v0[9] = v4;
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1D61608BC;
  v6 = v0[4];

  return (v8)(v0 + 2, v6, v4, v2);
}

uint64_t sub_1D61608BC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1D6160B60;
  }

  else
  {
    v2 = sub_1D61609D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D61609D0()
{
  v13 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for FeedReplaceLocation();
  static FeedLocation.container(_:)(*(v4 + *(v7 + 36)), &v12);
  v8 = sub_1D5D0EA94(v6 | 0x2000000000000000);
  v9 = *(v2 + 32);

  v9(&v12, v8, v1, v2);

  v10 = v0[1];

  return v10(v6 | 0x2000000000000000);
}

uint64_t sub_1D6160B78(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_1D726393C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v25 - v18;
  v28 = a1;
  v20 = type metadata accessor for FeedLocation();
  FeedLocation.serviceConfig.getter(v20, v21, v14);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v22 = *(a2 + 16);
  }

  else
  {
    (*(v15 + 32))(v19, v14, AssociatedTypeWitness);
    (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v22 = sub_1D617C808();
    v23 = *(v26 + 8);

    v23(v9, v27);
    (*(v15 + 8))(v19, AssociatedTypeWitness);
  }

  return v22;
}

uint64_t sub_1D6160F2C(uint64_t *a1, uint64_t *a2, uint64_t a3, double a4)
{
  *(v5 + 104) = v4;
  *(v5 + 96) = a4;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  v7 = *v4;
  *(v5 + 112) = *v4;
  v8 = *a2;
  v9 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = *(v8 + 88);
  *(v5 + 136) = *(v8 + 80);
  *(v5 + 144) = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  *(v5 + 152) = v10;
  *(v5 + 160) = *(v10 - 8);
  *(v5 + 168) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v9);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  v11 = sub_1D726393C();
  *(v5 + 192) = v11;
  *(v5 + 200) = *(v11 - 8);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = *(v7 + 88);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v5 + 224) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 232) = AssociatedTypeWitness;
  *(v5 + 240) = *(AssociatedTypeWitness - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v13 = swift_checkMetadataState();
  *(v5 + 264) = v13;
  *(v5 + 272) = *(v13 - 8);
  *(v5 + 280) = swift_task_alloc();
  v14 = type metadata accessor for FeedServiceFetchResult.Internal();
  *(v5 + 288) = v14;
  *(v5 + 296) = *(v14 - 8);
  *(v5 + 304) = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a1;
  *(v5 + 312) = v15;
  *(v5 + 320) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1D6161390, 0, 0);
}

uint64_t sub_1D6161390()
{
  v0[2] = v0[11];
  sub_1D72627FC();
  swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v1 = swift_task_alloc();
    *(v0 + 41) = v1;
    *v1 = v0;
    v1[1] = sub_1D6161590;
    v2 = *(v0 + 39);
    v3 = v0[12];
    v4 = *(v0 + 10);

    return sub_1D6163FF4(v2, v4, v3);
  }

  else
  {
    v7 = *(v0 + 10);
    v6 = *(v0 + 11);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = FeedCursorContainer.init(cursor:)(v7);

    v9 = *(v0 + 1);

    return v9(v8 | 0x2000000000000000);
  }
}

uint64_t sub_1D6161590()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D6163924;
  }

  else
  {
    v2 = sub_1D61616A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D61616A4()
{
  v173 = v0;
  (*(v0[37] + 16))(v0[38], v0[39], v0[36]);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v1 = v0[38];
    v3 = v0[34];
    v2 = v0[35];
    v4 = v0[33];
    type metadata accessor for FeedCursor();
    v5 = *(v1 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v3 + 32))(v2, v1, v4);
    v0[43] = sub_1D6F72868();
    v6 = sub_1D5F35B18();
    if ((v6 - 1) <= 2u)
    {
      v7 = v6;
      v8 = v0[10];
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      v10 = v9;
      *(v9 + 16) = xmmword_1D7279960;
      v11 = *(v8 + 32);
      v163 = v5;
      v159 = v7;
      if (v11 <= 2)
      {
        if (*(v8 + 32))
        {
          if (v11 == 1)
          {
            v151 = 1852138867;
            v46 = 0xE400000000000000;
LABEL_44:
            v147 = v46;
            goto LABEL_45;
          }

          v53 = 0x6E657A6F7246;
        }

        else
        {
          v53 = 0x657669746341;
        }
      }

      else
      {
        if (*(v8 + 32) > 4u)
        {
          if (v11 == 5)
          {
            v47 = 0x6C6F6F706552;
          }

          else
          {
            v47 = 0x646E61707845;
          }

          v151 = v47 & 0xFFFFFFFFFFDFLL | 0x6465000000000020;
          v46 = 0xE800000000000000;
          goto LABEL_44;
        }

        if (v11 == 3)
        {
          v147 = 0xE900000000000064;
          v151 = 0x656546664F646E65;
LABEL_45:
          v54 = v0[32];
          v55 = v0[33];
          v56 = v0[29];
          v157 = v0[30];
          v57 = v0[28];
          v58 = MEMORY[0x1E69E6158];
          *(v9 + 56) = MEMORY[0x1E69E6158];
          v59 = sub_1D5B7E2C0();
          v10[8] = v59;
          v10[4] = v151;
          v10[5] = v147;
          v61 = *(v8 + 16);
          v60 = *(v8 + 24);
          v10[12] = v58;
          v10[13] = v59;
          v10[9] = v61;
          v10[10] = v60;

          v62 = sub_1D725AA4C();
          v10[17] = v58;
          v10[18] = v59;
          v10[14] = v62;
          v10[15] = v63;
          (*(v57 + 64))(v55, v57);
          v10[22] = v58;
          v10[23] = v59;
          swift_getAssociatedConformanceWitness();
          sub_1D726257C();
          (*(v157 + 8))(v54, v56);
          if (v159 == 1)
          {
            v64 = "dedupNextAsyncManifestGroups";
            v65 = 0xD000000000000010;
          }

          else if (v159 == 2)
          {
            v64 = "dedupNextSyncDatabaseGroups";
            v65 = 0xD00000000000001CLL;
          }

          else
          {
            v64 = "GroupIdentifiers";
            v65 = 0xD00000000000001BLL;
          }

          v66 = v58;
          v153 = v0[40];
          v128 = v0[35];
          v67 = v0[26];
          v126 = v0[27];
          v140 = v0[25];
          v68 = v0[23];
          v149 = v0[24];
          v69 = v0[21];
          v70 = v0[22];
          v133 = v0[20];
          v71 = v0[18];
          v136 = v0[19];
          v72 = v0[17];
          v123 = v0[15];
          v124 = v0[14];
          v10[27] = v66;
          v10[28] = v59;
          v10[24] = v65;
          v10[25] = v64 | 0x8000000000000000;
          sub_1D7262EDC();
          sub_1D725C30C();

          (*(*(v72 - 8) + 56))(v67, 1, 1, v72);
          v166 = 7;
          v73 = sub_1D725891C();
          v74 = *(*(v73 - 8) + 56);
          v74(v68, 1, 1, v73);
          v74(v70, 1, 1, v73);
          (*(*(v71 - 8) + 56))(v69, 1, 1, v71);
          v75 = type metadata accessor for FeedContext();
          (*(*(v75 - 8) + 56))(v123, 1, 1, v75);
          v76 = *(v163 + *(*v163 + 240));
          v77 = swift_task_alloc();
          v77[2] = *(v124 + 80);
          v77[3] = v126;
          v77[4] = v128;

          v78 = sub_1D5FBD65C(sub_1D617CC54, v77, v76);

          FeedJournal.init(entries:)(v78, &v167);
          v169 = v167;
          v170 = v168;
          v171 = 0;
          v172 = 256;
          v79 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v67, 0, &v166, v68, v70, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v69, v123, &v169, &v171, 0, 0, 0);
          v0[44] = v79;

          sub_1D5C086A4(v169);
          v80 = MEMORY[0x1E69E6720];
          sub_1D5B88AA0(v123, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
          (*(v133 + 8))(v69, v136);
          v81 = MEMORY[0x1E6969530];
          sub_1D5B88AA0(v70, &qword_1EDF45B00, MEMORY[0x1E6969530], v80, sub_1D5B6BFD8);
          sub_1D5B88AA0(v68, &qword_1EDF45B00, v81, v80, sub_1D5B6BFD8);
          (*(v140 + 8))(v67, v149);
          v0[9] = v153;
          v82 = sub_1D726275C();
          v0[45] = v82;
          v83 = swift_task_alloc();
          v0[46] = v83;
          *v83 = v0;
          v83[1] = sub_1D6162D30;
          v84.n128_u64[0] = v0[12];
          v85 = v0 + 9;
          v86 = v79;
          goto LABEL_68;
        }

        v53 = 0x646568636143;
      }

      v151 = v53 | 0x20;
      v46 = 0xE600000000000000;
      goto LABEL_44;
    }

    v21 = *(v0[28] + 80);
    (v21)(&v169, v0[33]);
    v22 = v169;
    v23 = v5 + *(*v5 + 232);
    v24 = type metadata accessor for FeedContext();
    v25 = *(v24 + 24);
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        goto LABEL_31;
      }
    }

    else if (v22)
    {
      if (*(v23 + v25))
      {
        goto LABEL_31;
      }
    }

    else if ((*(v23 + v25) & 1) == 0)
    {
LABEL_31:
      v48 = v0[10];
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v49 = swift_allocObject();
      v50 = v49;
      *(v49 + 16) = xmmword_1D7279960;
      v51 = *(v48 + 32);
      v165 = v5;
      v132 = v24;
      v156 = v25;
      v161 = v23;
      v144 = v21;
      if (v51 <= 2)
      {
        if (*(v48 + 32))
        {
          if (v51 == 1)
          {
            v139 = 0xE400000000000000;
            v52 = 1852138835;
          }

          else
          {
            v139 = 0xE600000000000000;
            v52 = 0x6E657A6F7246;
          }
        }

        else
        {
          v139 = 0xE600000000000000;
          v52 = 0x657669746341;
        }
      }

      else if (*(v48 + 32) > 4u)
      {
        v139 = 0xE800000000000000;
        if (v51 == 5)
        {
          v87 = 0x6C6F6F706552;
        }

        else
        {
          v87 = 0x646E61707845;
        }

        v52 = v87 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      }

      else if (v51 == 3)
      {
        v139 = 0xEB00000000646565;
        v52 = 0x4620666F20646E45;
      }

      else
      {
        v139 = 0xE600000000000000;
        v52 = 0x646568636143;
      }

      v137 = v52;
      v88 = v0[33];
      v90 = v0[30];
      v89 = v0[31];
      v91 = v0[28];
      v92 = v0[29];
      v93 = MEMORY[0x1E69E6158];
      *(v49 + 56) = MEMORY[0x1E69E6158];
      v94 = sub_1D5B7E2C0();
      *(v50 + 64) = v94;
      *(v50 + 32) = v137;
      *(v50 + 40) = v139;
      v95 = sub_1D725AA4C();
      *(v50 + 96) = v93;
      *(v50 + 104) = v94;
      *(v50 + 72) = v95;
      *(v50 + 80) = v96;
      (*(v91 + 64))(v88, v91);
      *(v50 + 136) = v93;
      *(v50 + 144) = v94;
      swift_getAssociatedConformanceWitness();
      sub_1D726257C();
      (*(v90 + 8))(v89, v92);
      v144(&v169, v88, v91);
      if (v169 > 1u)
      {
        if (v169 == 2)
        {
          v97 = 0xE400000000000000;
          v98 = 1752461122;
        }

        else
        {
          v97 = 0xE700000000000000;
          v98 = 0x7265687469654ELL;
        }
      }

      else if (v169)
      {
        v97 = 0xE600000000000000;
        v98 = 0x646961706E55;
      }

      else
      {
        v97 = 0xE400000000000000;
        v98 = 1684627792;
      }

      v99 = v0[35];
      v100 = v0[27];
      v141 = v0[26];
      v145 = v0[23];
      v150 = v0[22];
      v101 = v0[17];
      *(v50 + 176) = MEMORY[0x1E69E6158];
      *(v50 + 184) = v94;
      *(v50 + 152) = v98;
      *(v50 + 160) = v97;
      v102 = *(v161 + v156);
      v103 = v0[14];
      v104 = MEMORY[0x1E69E63A8];
      *(v50 + 216) = MEMORY[0x1E69E6370];
      *(v50 + 224) = v104;
      *(v50 + 192) = v102;
      sub_1D7262EDC();
      sub_1D725C30C();

      v0[7] = *(v165 + qword_1EDFFCF40);
      v105 = swift_task_alloc();
      v158 = *(v103 + 80);
      v105[2] = v158;
      v105[3] = v100;
      v105[4] = v99;
      type metadata accessor for FeedCursorGroup();
      sub_1D72627FC();

      swift_getWitnessTable();
      v106 = sub_1D7263E7C();

      (*(*(v101 - 8) + 56))(v141, 1, 1, v101);
      v166 = 7;
      v107 = sub_1D725891C();
      v108 = *(*(v107 - 8) + 56);
      v108(v145, 1, 1, v107);
      v108(v150, 1, 1, v107);
      v109 = *(v165 + qword_1EDFFCEF8);
      v110 = sub_1D726279C();

      v111 = sub_1D726279C();

      v112 = v110 - v111;
      if (__OFSUB__(v110, v111))
      {
        __break(1u);
      }

      else
      {
        v162 = v106;
        v154 = (v109 + v112);
        if (!__OFADD__(v109, v112))
        {
          v113 = v0[35];
          v146 = v0[40];
          v114 = v0[27];
          v130 = v0[26];
          v138 = v0[25];
          v142 = v0[24];
          v127 = v0[22];
          v129 = v0[23];
          v125 = v0[21];
          v131 = v0[20];
          v134 = v0[19];
          v115 = v0[15];
          (*(*(v0[18] - 8) + 56))();
          (*(*(v132 - 8) + 56))(v115, 1, 1);
          v116 = *(v165 + *(*v165 + 240));
          v117 = swift_task_alloc();
          v117[2] = v158;
          v117[3] = v114;
          v117[4] = v113;
          v117[5] = v165;

          v118 = sub_1D5FBD65C(sub_1D617CC34, v117, v116);

          FeedJournal.init(entries:)(v118, &v167);
          v169 = v167;
          v170 = v168;
          v171 = 0;
          v172 = 256;
          v119 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v130, 0, &v166, v129, v127, 0, 0, 0, 0, v162, 0, v154, 0, 0, 1, 0, 1, 0, 0, v125, v115, &v169, &v171, 0, 0, 0);
          v0[49] = v119;

          sub_1D5C086A4(v169);
          v120 = MEMORY[0x1E69E6720];
          sub_1D5B88AA0(v115, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
          (*(v131 + 8))(v125, v134);
          v121 = MEMORY[0x1E6969530];
          sub_1D5B88AA0(v127, &qword_1EDF45B00, MEMORY[0x1E6969530], v120, sub_1D5B6BFD8);
          sub_1D5B88AA0(v129, &qword_1EDF45B00, v121, v120, sub_1D5B6BFD8);
          (*(v138 + 8))(v130, v142);
          v0[8] = v146;
          v82 = sub_1D726275C();
          v0[50] = v82;
          v122 = swift_task_alloc();
          v0[51] = v122;
          *v122 = v0;
          v122[1] = sub_1D6162FA8;
          v84.n128_u64[0] = v0[12];
          v85 = v0 + 8;
          v86 = v119;
LABEL_68:

          return sub_1D6160F2C(v85, v86, v82, v84);
        }
      }

      __break(1u);
      return result;
    }

    v29 = v0[40];

    v0[6] = v29;
    v26 = v0 + 6;
    v27 = swift_task_alloc();
    v0[54] = v27;
    *v27 = v0;
    v28 = sub_1D6163224;
    goto LABEL_19;
  }

  v12 = v0[40];
  v13 = v0[38];
  v14 = *v13;
  v0[57] = *v13;
  if (v12 >> 60 == 4)
  {
    v15 = v0[39];
    v16 = v0[36];
    v17 = v0[37];
    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 6;
    swift_willThrow();

    (*(v17 + 8))(v15, v16);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v0[3] = *(v14 + qword_1EDFFCF10);
    type metadata accessor for FeedGroupEmitter();
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      v0[5] = v0[40];
      v26 = v0 + 5;
      v27 = swift_task_alloc();
      v0[58] = v27;
      *v27 = v0;
      v28 = sub_1D6163484;
LABEL_19:
      v27[1] = v28;
      v30 = v0[39];
      v31 = *(v0 + 12);

      return sub_1D6164CE0(v26, v30, v31);
    }

    v32 = v0[23];
    v160 = v0[25];
    v164 = v0[24];
    v143 = v32;
    v148 = v0[26];
    v34 = v0[21];
    v33 = v0[22];
    v152 = v0[20];
    v155 = v0[19];
    v35 = v0[18];
    v135 = v0[15];
    (*(*(v0[17] - 8) + 56))();
    v166 = 7;
    v36 = sub_1D725891C();
    v37 = *(*(v36 - 8) + 56);
    v37(v32, 1, 1, v36);
    v38 = v33;
    v37(v33, 1, 1, v36);
    (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
    v39 = type metadata accessor for FeedContext();
    (*(*(v39 - 8) + 56))(v135, 1, 1, v39);

    FeedJournal.init(entries:)(v40, &v167);
    v169 = v167;
    v170 = v168;
    v171 = 0;
    v172 = 256;
    v41 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v148, 0, &v166, v143, v33, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v34, v135, &v169, &v171, 0, 0, 0);
    v0[61] = v41;
    sub_1D5C086A4(v169);
    v42 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v135, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v152 + 8))(v34, v155);
    v43 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v38, &qword_1EDF45B00, MEMORY[0x1E6969530], v42, sub_1D5B6BFD8);
    sub_1D5B88AA0(v143, &qword_1EDF45B00, v43, v42, sub_1D5B6BFD8);
    (*(v160 + 8))(v148, v164);
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    v0[4] = v44 | 0x5000000000000000;

    v45 = swift_task_alloc();
    v0[62] = v45;
    *v45 = v0;
    v45[1] = sub_1D61636C4;

    return sub_1D5C795F8(v0 + 4);
  }
}

uint64_t sub_1D6162D30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v5 = sub_1D6163C44;
  }

  else
  {
    *(v4 + 384) = a1;
    v5 = sub_1D6162E68;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6162E68()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v9 = v0[48];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6162FA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = sub_1D6163D80;
  }

  else
  {
    *(v4 + 424) = a1;
    v5 = sub_1D61630E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D61630E0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v9 = v0[53];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6163224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = sub_1D6163EC0;
  }

  else
  {
    *(v4 + 448) = a1;
    v5 = sub_1D616334C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D616334C()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v9 = v0[56];

  v7 = v0[1];

  return v7(v9);
}

uint64_t sub_1D6163484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = sub_1D6163A10;
  }

  else
  {
    *(v4 + 480) = a1;
    v5 = sub_1D61635AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D61635AC()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);
  v6 = v0[60];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_1D61636C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {

    v5 = sub_1D6163B24;
  }

  else
  {
    *(v4 + 512) = a1;

    v5 = sub_1D6163800;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6163800()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);
  v6 = v0[64];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_1D6163924()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6163A10()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6163B24()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6163C44()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6163D80()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6163EC0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D6163FF4(uint64_t a1, void *a2, double a3)
{
  *(v4 + 176) = v3;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  *(v4 + 184) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D6164044, 0, 0);
}

uint64_t sub_1D6164044()
{
  v40 = v0;
  v1 = FeedCursor.nextSlotIndex.getter();
  if ((FeedCursor.reachedEnd.getter() & 1) == 0)
  {
    *(v0 + 96) = *(*(v0 + 160) + qword_1EDFFCF38);
    type metadata accessor for FeedDatabaseGroup();
    sub_1D72627FC();
    swift_getWitnessTable();
    sub_1D7262C9C();
    v4 = *(v0 + 104);
    *(v0 + 192) = v4;
    if (v4)
    {
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v5 = swift_allocObject();
      v6 = MEMORY[0x1E69E6530];
      *(v5 + 16) = xmmword_1D7270C10;
      v7 = MEMORY[0x1E69E65A8];
      *(v5 + 56) = v6;
      *(v5 + 64) = v7;
      *(v5 + 32) = v1;
      v8 = sub_1D726279C();
      *(v5 + 96) = v6;
      *(v5 + 104) = v7;
      *(v5 + 72) = v8;
      sub_1D7262EDC();
      sub_1D725C30C();

      v9 = swift_task_alloc();
      *(v0 + 200) = v9;
      *v9 = v0;
      v9[1] = sub_1D616485C;
      v10 = *(v0 + 168);
      v11 = *(v0 + 152);
      v12 = *(v0 + 160);

      return sub_1D6167360(v11, v4, v12, v10);
    }

    *(v0 + 120) = v1;
    type metadata accessor for FeedGroupEmitter();
    sub_1D72627FC();
    v14 = MEMORY[0x1E69E6530];
    sub_1D7261E3C();
    v15 = *(v0 + 112);
    *(v0 + 216) = v15;
    if (v15)
    {
      *(v0 + 136) = v15;
      swift_getWitnessTable();
      if ((sub_1D7262CCC() & 1) == 0)
      {
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1D7270C10;
        v27 = MEMORY[0x1E69E65A8];
        *(v26 + 56) = v14;
        *(v26 + 64) = v27;
        *(v26 + 32) = v1;
        v38 = 0;
        v39 = 0xE000000000000000;
        *(v0 + 144) = v15;
        swift_getWitnessTable();
        sub_1D726466C();
        v28 = v38;
        v29 = v39;
        *(v26 + 96) = MEMORY[0x1E69E6158];
        *(v26 + 104) = sub_1D5B7E2C0();
        *(v26 + 72) = v28;
        *(v26 + 80) = v29;
        sub_1D7262EDC();
        sub_1D725C30C();

        sub_1D5BEE1B8(0, &unk_1EDF19500, v14, MEMORY[0x1E69E6F90]);
        v30 = swift_allocObject();
        *(v0 + 224) = v30;
        *(v30 + 16) = xmmword_1D7273AE0;
        *(v30 + 32) = v1;
        v31 = swift_task_alloc();
        *(v0 + 232) = v31;
        *v31 = v0;
        v31[1] = sub_1D61649D4;
        v32 = *(v0 + 168);
        v33 = *(v0 + 152);
        v34 = *(v0 + 160);

        return sub_1D6169034(v33, v15, v34, v30, v32);
      }
    }

    v16 = *(v0 + 160);
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7270C10;
    v18 = MEMORY[0x1E69E65A8];
    *(v17 + 56) = v14;
    *(v17 + 64) = v18;
    *(v17 + 32) = v1;
    v38 = 0;
    v39 = 0xE000000000000000;
    *(v0 + 128) = *(v16 + qword_1EDFFCF48);
    swift_getWitnessTable();
    sub_1D726466C();
    v20 = v38;
    v19 = v39;
    *(v17 + 96) = MEMORY[0x1E69E6158];
    *(v17 + 104) = sub_1D5B7E2C0();
    *(v17 + 72) = v20;
    *(v17 + 80) = v19;
    sub_1D7262EDC();
    sub_1D725C30C();

    v21 = swift_task_alloc();
    *(v0 + 248) = v21;
    *v21 = v0;
    v21[1] = sub_1D6164B1C;
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);

    return sub_1D6170884(v23, v24, v22);
  }

  sub_1D617CCB4(*(v0 + 176) + 120, v0 + 56);
  if (!*(v0 + 80))
  {
    sub_1D617D2E4(v0 + 56, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding);
LABEL_19:
    **(v0 + 152) = *(v0 + 160);
    type metadata accessor for FeedServiceFetchResult.Internal();
    swift_storeEnumTagMultiPayload();
    v37 = *(v0 + 8);

    return v37();
  }

  sub_1D5B63F14((v0 + 56), v0 + 16);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  if (!FeedOfflineProviding.isOffline.getter(v3, v2))
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    goto LABEL_19;
  }

  FeedCursor.feedMode.getter(&v38);
  if (v38 == 1)
  {

    goto LABEL_18;
  }

  v25 = sub_1D72646CC();

  if (v25)
  {
    goto LABEL_18;
  }

  type metadata accessor for FeedServiceError();
  swift_getWitnessTable();
  swift_allocError();
  *v35 = 2;
  *(v35 + 8) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = 6;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1D616485C()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1D6164C10;
  }

  else
  {
    v2 = sub_1D6164970;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6164970()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61649D4()
{
  v2 = *v1;
  *(v2 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6164C74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D6164B1C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D6164C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6164C74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6164CE0(uint64_t *a1, uint64_t a2, double a3)
{
  *(v4 + 136) = v3;
  *(v4 + 128) = a3;
  *(v4 + 120) = a2;
  v6 = *v3;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = *(v6 + 88);
  *(v4 + 168) = *(v6 + 80);
  *(v4 + 176) = swift_getAssociatedTypeWitness();
  *(v4 + 184) = swift_getAssociatedConformanceWitness();
  *(v4 + 192) = swift_getAssociatedTypeWitness();
  v8 = sub_1D726393C();
  *(v4 + 200) = v8;
  *(v4 + 208) = *(v8 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  v9 = sub_1D726393C();
  *(v4 + 264) = v9;
  *(v4 + 272) = *(v9 - 8);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 296) = AssociatedTypeWitness;
  *(v4 + 304) = *(AssociatedTypeWitness - 8);
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v11 = type metadata accessor for FeedServiceFetchResult.Internal();
  *(v4 + 328) = v11;
  *(v4 + 336) = *(v11 - 8);
  *(v4 + 344) = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *a1;
  *(v4 + 352) = v12;
  *(v4 + 360) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D61650DC, 0, 0);
}

uint64_t sub_1D61650DC()
{
  v68 = v0;
  v1 = *(v0[42] + 16);
  v1(v0[44], v0[15], v0[41]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = v0[44];
    v19 = v0[40];
    v20 = v0[37];
    v21 = v0[38];
    type metadata accessor for FeedCursor();
    v22 = *(v18 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v21 + 32))(v19, v18, v20);
    type metadata accessor for FeedCursorContainer();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v24 = swift_allocBox();
    v26 = v25;
    v27 = *(TupleTypeMetadata2 + 48);
    (*(v21 + 16))(v25, v19, v20);
    *(v26 + v27) = FeedCursorContainer.init(cursor:)(v22);

    v61 = sub_1D5D0E228(v24);

    (*(v21 + 8))(v19, v20);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[44];
    v5 = v0[38];
    v4 = v0[39];
    v6 = v0[37];
    type metadata accessor for FeedCursor();
    v7 = *(v3 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v5 + 32))(v4, v3, v6);
    v8 = *(*v7 + 272);
    swift_beginAccess();
    v10 = v0[38];
    v9 = v0[39];
    v11 = v0[37];
    if (*(v7 + v8))
    {
      sub_1D7262EDC();
      sub_1D725C30C();
      type metadata accessor for FeedCursorContainer();
      v12 = swift_getTupleTypeMetadata2();
      v13 = swift_allocBox();
      v15 = v14;
      v16 = *(v12 + 48);
      (*(v10 + 16))(v14, v9, v11);
      *(v15 + v16) = FeedCursorContainer.init(cursor:)(v7);

      v17 = v13;
    }

    else
    {
      type metadata accessor for FeedCursorContainer();
      v34 = swift_getTupleTypeMetadata2();
      v35 = swift_allocBox();
      v37 = v36;
      v38 = *(v34 + 48);
      (*(v10 + 16))(v36, v9, v11);
      *(v37 + v38) = FeedCursorContainer.init(cursor:)(v7);

      v17 = v35 | 0x4000000000000000;
    }

    v61 = sub_1D5D0E228(v17);

    (*(v10 + 8))(v9, v11);
    goto LABEL_12;
  }

  v28 = v0[44];
  v29 = *v28;
  v0[46] = *v28;
  v30 = *(*v29 + 272);
  swift_beginAccess();
  v31 = *(v29 + v30);
  v0[47] = v31;
  if (!v31)
  {
    if ((v0[45] >> 60) - 5 >= 2)
    {
      v53 = v0[43];
      v54 = v0[41];
      v55 = v0[15];

      v1(v53, v55, v54);
      v61 = sub_1D6E57FB8(v53);
    }

    else
    {
      v57 = v0[35];
      v60 = v0[34];
      v62 = v0[33];
      v41 = v0[29];
      v40 = v0[30];
      v56 = v40;
      v42 = v0[27];
      v43 = v0[24];
      v58 = v0[26];
      v59 = v0[25];
      v44 = v0[18];
      (*(*(v0[22] - 8) + 56))();
      v63 = 3;
      v45 = sub_1D725891C();
      v46 = *(*(v45 - 8) + 56);
      v46(v40, 1, 1, v45);
      v46(v41, 1, 1, v45);
      (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
      v47 = type metadata accessor for FeedContext();
      (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
      v65 = 0;
      v66 = 0;
      v64 = 0u;
      v67 = 256;
      v48 = v41;
      v49 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v57, 0, &v63, v56, v41, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v42, v44, &v64, &v66, 0, 0, 0);

      v50 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v44, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      (*(v58 + 8))(v42, v59);
      v51 = MEMORY[0x1E6969530];
      sub_1D5B88AA0(v48, &qword_1EDF45B00, MEMORY[0x1E6969530], v50, sub_1D5B6BFD8);
      sub_1D5B88AA0(v56, &qword_1EDF45B00, v51, v50, sub_1D5B6BFD8);
      (*(v60 + 8))(v57, v62);
      v52 = swift_allocObject();
      *(v52 + 16) = FeedCursorContainer.init(cursor:)(v49);
      v61 = v52 | 0x8000000000000000;
    }

LABEL_12:

    v39 = v0[1];

    return v39(v61);
  }

  v32 = swift_task_alloc();
  v0[48] = v32;
  *v32 = v0;
  v32[1] = sub_1D61658F4;

  return sub_1D6F72B98();
}

uint64_t sub_1D61658F4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v4 = sub_1D6166814;
  }

  else
  {
    v4 = sub_1D6165A08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6165A08()
{
  v95 = v0;
  v1 = v0[23].i64[0];
  v2 = v0[18].i64[0];
  v3 = v0[16].i64[0];
  v76 = v0[15].i64[1];
  v77 = v0[24].i64[1];
  v81 = v0[12].i64[0];
  v83 = v0[14].i64[0];
  v5 = v0[10].i64[1];
  v4 = v0[11].i64[0];
  v6 = v0[10].i64[0];
  v85 = v0[9].i64[1];
  *&v91 = v0[22].i64[1];
  v7 = *(v6 + 32);

  v7(&v91, v1, v5, v6);

  v9 = sub_1D62076A8(v8);

  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v88 = 7;
  v10 = sub_1D725891C();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v11(v76, 1, 1, v10);
  v0[5].i64[1] = *(v77 + qword_1EDFFCF40);
  v12 = swift_task_alloc();
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v9;
  type metadata accessor for FeedCursorGroup();
  v13 = sub_1D72627FC();

  swift_getWitnessTable();
  v86 = v13;
  v80 = sub_1D726242C();

  (*(*(v81 - 8) + 56))(v83, 1, 1);
  v14 = type metadata accessor for FeedContext();
  result = (*(*(v14 - 8) + 56))(v85, 1, 1, v14);
  v16 = *(v77 + *(*v77 + 240));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 48;
    v20 = -v17;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      v22 = (v19 + 24 * v18++);
      while (1)
      {
        if ((v18 - 1) >= *(v16 + 16))
        {
          __break(1u);
          return result;
        }

        v23 = *v22;
        v24 = *(v22 - 1);
        *&v91 = *(v22 - 2);
        *(&v91 + 1) = v24;
        v92 = v23;

        sub_1D5C07390(v24);
        sub_1D614D57C(v9, &v89);

        sub_1D5C08648(v24);
        v25 = v89;
        if (v89)
        {
          break;
        }

        result = sub_1D5FC4EA8(0, *(&v89 + 1));
        v22 += 3;
        ++v18;
        if (v20 + v18 == 1)
        {
          goto LABEL_16;
        }
      }

      v26 = *(&v89 + 1);
      v27 = v90;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D5C073A0(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_1D5C073A0((v28 > 1), v29 + 1, 1, v21);
        v30 = v26;
        v21 = result;
      }

      else
      {
        v30 = v26;
      }

      *(v21 + 16) = v29 + 1;
      v31 = (v21 + 24 * v29);
      v31[4] = v25;
      v31[5] = v30;
      v31[6] = v27;
      v19 = v16 + 48;
    }

    while (v20 + v18);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:
  v32 = v0[18].i64[0];
  v82 = v0[17].i64[0];
  v84 = v0[16].i64[1];
  v33 = v0[16].i64[0];
  v75 = v0[15].i64[1];
  v34 = v0[14].i64[0];
  v35 = v0[13].i64[0];
  v78 = v0[12].i64[1];
  v36 = v0[9].i64[1];

  FeedJournal.init(entries:)(v21, &v89);
  v91 = v89;
  v92 = v90;
  v93 = 0;
  v94 = 256;
  v37 = v33;
  v38 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v32, 0, &v88, v33, v75, 0, 0, 0, 0, v80, 0, 0, 1, 0, 1, 0, 1, 0, 0, v34, v36, &v91, &v93, 0, 0, 0);
  v0[25].i64[1] = v38;

  sub_1D5C086A4(v91);
  v39 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v36, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v35 + 8))(v34, v78);
  v40 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v75, &qword_1EDF45B00, MEMORY[0x1E6969530], v39, sub_1D5B6BFD8);
  sub_1D5B88AA0(v37, &qword_1EDF45B00, v40, v39, sub_1D5B6BFD8);
  (*(v82 + 8))(v32, v84);
  v41 = qword_1EDFFCF40;
  v0[6].i64[0] = *&v38[qword_1EDFFCF40];
  WitnessTable = swift_getWitnessTable();
  LOBYTE(v32) = sub_1D7262CCC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  if (v32)
  {
    v43 = swift_allocObject();
    v44 = v43;
    *(v43 + 16) = xmmword_1D7270C10;
    v45 = v38[32];
    if (v45 <= 2)
    {
      if (v38[32])
      {
        if (v45 == 1)
        {
          v47 = 0xE400000000000000;
          v46 = 1852138867;
        }

        else
        {
          v47 = 0xE600000000000000;
          v46 = 0x6E657A6F7266;
        }
      }

      else
      {
        v47 = 0xE600000000000000;
        v46 = 0x657669746361;
      }
    }

    else if (v38[32] > 4u)
    {
      v47 = 0xE800000000000000;
      if (v45 == 5)
      {
        v53 = 0x6C6F6F706572;
      }

      else
      {
        v53 = 0x646E61707865;
      }

      v46 = v53 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else if (v45 == 3)
    {
      v46 = 0x656546664F646E65;
      v47 = 0xE900000000000064;
    }

    else
    {
      v47 = 0xE600000000000000;
      v46 = 0x646568636163;
    }

    v55 = v0[22].i64[1];
    v56 = MEMORY[0x1E69E6158];
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v57 = sub_1D5B7E2C0();
    v44[8] = v57;
    v44[4] = v46;
    v44[5] = v47;
    v59 = *(v38 + 2);
    v58 = *(v38 + 3);
    v44[12] = v56;
    v44[13] = v57;
    v44[9] = v59;
    v44[10] = v58;

    sub_1D7262EDC();
    sub_1D725C30C();

    v0[7].i64[0] = v55;
    v60 = sub_1D726275C();
    v0[26].i64[0] = v60;
    v61 = swift_task_alloc();
    v0[26].i64[1] = v61;
    *v61 = v0;
    v61[1] = sub_1D61665A4;
    v62.n128_u64[0] = v0[8].u64[0];

    return sub_1D6160F2C(&v0[7], v38, v60, v62);
  }

  else
  {
    v48 = swift_allocObject();
    v49 = v48;
    *(v48 + 16) = xmmword_1D7279970;
    v50 = v38[32];
    if (v50 <= 2)
    {
      if (v38[32])
      {
        if (v50 == 1)
        {
          v52 = 0xE400000000000000;
          v51 = 1852138867;
        }

        else
        {
          v52 = 0xE600000000000000;
          v51 = 0x6E657A6F7266;
        }
      }

      else
      {
        v52 = 0xE600000000000000;
        v51 = 0x657669746361;
      }
    }

    else if (v38[32] > 4u)
    {
      v52 = 0xE800000000000000;
      if (v50 == 5)
      {
        v54 = 0x6C6F6F706572;
      }

      else
      {
        v54 = 0x646E61707865;
      }

      v51 = v54 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    else if (v50 == 3)
    {
      v51 = 0x656546664F646E65;
      v52 = 0xE900000000000064;
    }

    else
    {
      v52 = 0xE600000000000000;
      v51 = 0x646568636163;
    }

    v63 = v0[18].i64[1];
    v64 = MEMORY[0x1E69E6158];
    *(v48 + 56) = MEMORY[0x1E69E6158];
    v65 = sub_1D5B7E2C0();
    v49[8] = v65;
    v49[4] = v51;
    v49[5] = v52;
    v67 = *(v38 + 2);
    v66 = *(v38 + 3);
    v49[12] = v64;
    v49[13] = v65;
    v49[9] = v67;
    v49[10] = v66;

    v79 = v0[10];
    v68 = sub_1D726279C();
    v69 = MEMORY[0x1E69E65A8];
    v49[17] = MEMORY[0x1E69E6530];
    v49[18] = v69;
    v49[14] = v68;
    sub_1D7262EDC();
    sub_1D725C30C();

    v70 = swift_allocObject();
    v0[6].i64[1] = *&v38[v41];
    v71 = swift_task_alloc();
    v71[1] = vextq_s8(v79, v79, 8uLL);

    v73 = sub_1D5B874E4(sub_1D617CC94, v71, v86, v63, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v72);

    *(v70 + 16) = v73;
    *(v70 + 24) = FeedCursorContainer.init(cursor:)(v38);

    v87 = sub_1D5D0E228(v70 | 0x2000000000000000);

    v74 = v0->i64[1];

    return v74(v87);
  }
}

uint64_t sub_1D61665A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = sub_1D6166A78;
  }

  else
  {

    *(v4 + 440) = a1;
    v5 = sub_1D61666D4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D61666D4()
{

  v3 = *(v0 + 440);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_1D6166814()
{
  v1 = v0[50];
  sub_1D7262EBC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v0[8] = 0;
  *(v2 + 16) = xmmword_1D7273AE0;
  v0[9] = 0xE000000000000000;
  v0[10] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v3 = v0[8];
  v4 = v0[9];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D725C30C();

  v5 = sub_1D6F72F24();

  v8 = swift_allocObject();
  *(v8 + 16) = FeedCursorContainer.init(cursor:)(v5);

  v6 = v0[1];

  return v6(v8 | 0x8000000000000000);
}

uint64_t sub_1D6166A78()
{

  v1 = v0[54];
  sub_1D7262EBC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v0[8] = 0;
  *(v2 + 16) = xmmword_1D7273AE0;
  v0[9] = 0xE000000000000000;
  v0[10] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v3 = v0[8];
  v4 = v0[9];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D5B7E2C0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D725C30C();

  v5 = sub_1D6F72F24();

  v8 = swift_allocObject();
  *(v8 + 16) = FeedCursorContainer.init(cursor:)(v5);

  v6 = v0[1];

  return v6(v8 | 0x8000000000000000);
}

uint64_t sub_1D6166CF8@<X0>(void *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = sub_1D725AA4C();
  sub_1D614D9A8(v2, v3, a1);
}

uint64_t sub_1D6166E54()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedCursorGroup();
  v0 = FeedCursorGroup.identifier.getter();
  v2 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (v0 == sub_1D725AA4C() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D6167000@<X0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1D725AA4C();
  sub_1D614DEB0(v4, v5, a1 + *(*a1 + 232), a2);
}

uint64_t sub_1D616716C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for FeedCursorGroup();
  return sub_1D6C12480(a1, v4, a2);
}

uint64_t sub_1D6167220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = *(type metadata accessor for FeedCursorGroup() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1 + v4, AssociatedTypeWitness);
}

uint64_t sub_1D6167360(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  *(v5 + 616) = v4;
  *(v5 + 608) = a4;
  *(v5 + 600) = a3;
  *(v5 + 592) = a2;
  *(v5 + 584) = a1;
  v6 = *a2;
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v5 + 624) = swift_task_alloc();
  *(v5 + 632) = *(v6 + 88);
  v8 = *(v6 + 80);
  *(v5 + 640) = v8;
  *(v5 + 648) = swift_getAssociatedTypeWitness();
  v9 = sub_1D726393C();
  *(v5 + 656) = v9;
  *(v5 + 664) = *(v9 - 8);
  *(v5 + 672) = swift_task_alloc();
  *(v5 + 680) = swift_task_alloc();
  *(v5 + 688) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v7);
  *(v5 + 696) = swift_task_alloc();
  *(v5 + 704) = swift_task_alloc();
  *(v5 + 712) = swift_task_alloc();
  *(v5 + 720) = swift_task_alloc();
  v10 = sub_1D726393C();
  *(v5 + 728) = v10;
  *(v5 + 736) = *(v10 - 8);
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 752) = swift_task_alloc();
  v11 = sub_1D725891C();
  *(v5 + 760) = v11;
  *(v5 + 768) = *(v11 - 8);
  *(v5 + 776) = swift_task_alloc();
  *(v5 + 784) = *(v8 - 8);
  *(v5 + 792) = swift_task_alloc();
  v12 = type metadata accessor for FeedCursorGroup();
  *(v5 + 800) = v12;
  *(v5 + 808) = *(v12 - 8);
  *(v5 + 816) = swift_task_alloc();
  *(v5 + 824) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 832) = AssociatedTypeWitness;
  *(v5 + 840) = *(AssociatedTypeWitness - 8);
  *(v5 + 848) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v5 + 856) = v14;
  v15 = swift_task_alloc();
  *(v5 + 864) = v15;
  *v15 = v5;
  v15[1] = sub_1D61677F4;

  return sub_1D5C47A60(v14);
}

uint64_t sub_1D61677F4()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_1D616861C;
  }

  else
  {
    v2 = sub_1D6167908;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6167908()
{
  v107 = v0;
  v91 = *(v0 + 856);
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v94 = *(v0 + 816);
  v78 = *(v0 + 800);
  v80 = *(v0 + 808);
  v69 = *(v0 + 792);
  v92 = *(v0 + 784);
  v70 = *(v0 + 776);
  v73 = *(v0 + 768);
  v74 = *(v0 + 760);
  v71 = *(v0 + 752);
  v72 = *(v0 + 720);
  v76 = *(v0 + 712);
  v82 = *(v0 + 664);
  v84 = *(v0 + 656);
  v87 = *(v0 + 680);
  v97 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  *(v0 + 568) = *(v6 + qword_1EDFFCF38);
  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262CDC();
  v7 = *(v0 + 464);
  *(v0 + 480) = *(v0 + 448);
  *(v0 + 496) = v7;
  sub_1D7263AFC();
  swift_getWitnessTable();
  v89 = sub_1D726281C();
  v68 = *(v2 + 16);
  v68(v1, v91, v3);
  v8 = sub_1D5D0D80C();
  v10 = v9;
  (*(v92 + 16))(v69, v6 + *(*v6 + 256), v4);
  sub_1D6F76D68();
  FeedCursorGroup.init(createdDate:group:configIdentifier:serviceConfig:)(v70, v1, v8, v10, v69, v4, v94);
  *(v0 + 288) = v3;
  *(v0 + 296) = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 264));
  v68(boxed_opaque_existential_1, v91, v3);
  v12 = sub_1D5D0D80C();
  v14 = v13;
  v15 = (CACurrentMediaTime() - v5) * 1000.0;
  sub_1D5BEE1B8(0, &qword_1EDF02300, &type metadata for FeedJournalGroup, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  sub_1D5B68374(v0 + 264, v0 + 304);
  v17 = sub_1D725AA4C();
  v19 = v18;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0;
  sub_1D5B68374(v0 + 304, v0 + 144);
  *(v0 + 184) = 0x3FF0000000000000;
  *(v0 + 208) = 1;
  sub_1D5B68374(v0 + 304, v0 + 344);
  v20 = swift_allocObject();
  sub_1D5B63F14((v0 + 344), v20 + 16);
  *(v0 + 16) = v17;
  *(v0 + 24) = v19;
  *(v0 + 32) = v12;
  *(v0 + 40) = v14;
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = 0;
  *(v0 + 240) = v15;
  *(v0 + 248) = sub_1D617CD44;
  *(v0 + 256) = v20;
  __swift_destroy_boxed_opaque_existential_1(v0 + 304);
  v21 = *(v0 + 224);
  *(v16 + 224) = *(v0 + 208);
  *(v16 + 240) = v21;
  *(v16 + 256) = *(v0 + 240);
  *(v16 + 272) = *(v0 + 256);
  v22 = *(v0 + 160);
  *(v16 + 160) = *(v0 + 144);
  *(v16 + 176) = v22;
  v23 = *(v0 + 192);
  *(v16 + 192) = *(v0 + 176);
  *(v16 + 208) = v23;
  v24 = *(v0 + 96);
  *(v16 + 96) = *(v0 + 80);
  *(v16 + 112) = v24;
  v25 = *(v0 + 128);
  *(v16 + 128) = *(v0 + 112);
  *(v16 + 144) = v25;
  v26 = *(v0 + 32);
  *(v16 + 32) = *(v0 + 16);
  *(v16 + 48) = v26;
  v27 = *(v0 + 64);
  *(v16 + 64) = *(v0 + 48);
  *(v16 + 80) = v27;
  __swift_destroy_boxed_opaque_existential_1(v0 + 264);
  (*(v92 + 56))(v71, 1, 1, v4);
  v99 = 7;
  v28 = *(v73 + 56);
  v28(v72, 1, 1, v74);
  v28(v76, 1, 1, v74);
  sub_1D72644CC();
  swift_allocObject();
  v29 = sub_1D726270C();
  (*(v80 + 16))(v30, v94, v78);
  sub_1D5BFCB60(v29);
  v95 = sub_1D726274C();

  v31 = *(*v6 + 224);
  swift_beginAccess();
  (*(v82 + 16))(v87, v6 + v31, v84);
  v32 = *(v97 - 8);
  if ((*(v32 + 48))(v87, 1) == 1)
  {
    v33 = (v0 + 656);
    v34 = *(v0 + 664);
    v35 = 1;
    v93 = v34;
  }

  else
  {
    v33 = (v0 + 648);
    (*(*(v0 + 824) + 40))(*(v0 + 856), *(v0 + 648));
    v35 = 0;
    v93 = *(v0 + 664);
    v34 = v32;
  }

  v36 = *v33;
  v85 = *(v0 + 736);
  v98 = *(v0 + 728);
  v77 = *(v0 + 720);
  v79 = *(v0 + 752);
  v75 = *(v0 + 712);
  v37 = *(v0 + 688);
  v81 = *(v0 + 656);
  v38 = *(v0 + 648);
  v39 = *(v0 + 624);
  v40 = *(v0 + 600);
  (*(v34 + 8))(*(v0 + 680), v36);
  (*(v32 + 56))(v37, v35, 1, v38);
  v41 = type metadata accessor for FeedContext();
  (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
  v42 = (v40 + *(*v40 + 240));
  v43 = v42[1];
  v44 = v42[2];
  v102 = *v42;
  v103 = v43;
  v104 = v44;
  *&v105 = v16;
  *(&v105 + 1) = 1;
  v106 = v15;

  sub_1D5C0C3EC(&v102, &v105, &v100);

  sub_1D5C08648(1uLL);
  v105 = v100;
  v106 = v101;
  v102 = 0;
  LOWORD(v103) = 256;
  v45 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v79, 0, &v99, v77, v75, 0, 0, 0, 0, v95, v89, 0, 1, 0, 1, 0, 1, 0, 0, v37, v39, &v105, &v102, 0, 0, 0);

  sub_1D5C086A4(v105);
  v46 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v39, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v93 + 8))(v37, v81);
  v47 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v75, &qword_1EDF45B00, MEMORY[0x1E6969530], v46, sub_1D5B6BFD8);
  sub_1D5B88AA0(v77, &qword_1EDF45B00, v47, v46, sub_1D5B6BFD8);
  (*(v85 + 8))(v79, v98);
  v96 = v45;
  LOBYTE(v37) = FeedCursor.reachedEnd.getter();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v48 = *(v0 + 840);
  v49 = *(v0 + 832);
  v50 = *(v0 + 808);
  v88 = *(v0 + 800);
  v90 = *(v0 + 816);
  v86 = *(v0 + 856);
  if (v37)
  {
    v51 = *(v0 + 584);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1D7273AE0;
    v53 = sub_1D72644BC();
    v55 = v54;
    *(v52 + 56) = MEMORY[0x1E69E6158];
    *(v52 + 64) = sub_1D5B7E2C0();
    *(v52 + 32) = v53;
    *(v52 + 40) = v55;
    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v50 + 8))(v90, v88);
    type metadata accessor for FeedCursor();
    v56 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v48 + 32))(v51, v86, v49);
    *(v51 + v56) = v96;
  }

  else
  {
    v57 = *(v0 + 600);
    v83 = *(v0 + 584);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1D7270C10;
    v59 = sub_1D72644BC();
    v61 = v60;
    *(v58 + 56) = MEMORY[0x1E69E6158];
    v62 = sub_1D5B7E2C0();
    *(v58 + 64) = v62;
    *(v58 + 32) = v59;
    *(v58 + 40) = v61;
    *(v0 + 576) = v57;
    type metadata accessor for FeedCursor();
    swift_getWitnessTable();
    v63 = sub_1D725B0BC();
    *(v58 + 96) = MEMORY[0x1E69E6158];
    *(v58 + 104) = v62;
    *(v58 + 72) = v63;
    *(v58 + 80) = v64;
    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v50 + 8))(v90, v88);
    v65 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v48 + 32))(v83, v86, v49);
    *(v83 + v65) = v96;
  }

  type metadata accessor for FeedServiceFetchResult.Internal();
  swift_storeEnumTagMultiPayload();

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D616861C()
{
  v55 = v0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 784);
  v3 = *(v0 + 768);
  v4 = *(v0 + 760);
  v5 = *(v0 + 744);
  v45 = *(v0 + 736);
  v46 = *(v0 + 728);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v42 = v6;
  v40 = *(v0 + 672);
  v43 = *(v0 + 664);
  v44 = *(v0 + 656);
  v38 = *(v0 + 648);
  v8 = *(v0 + 640);
  v41 = *(v0 + 624);
  v9 = *(v0 + 608);
  v36 = *(v0 + 600);
  v10 = *(v0 + 592);

  v11 = v1;
  v12 = CACurrentMediaTime();
  sub_1D614D414(v10, v1, &v53, (v12 - v9) * 1000.0);
  v13 = *(&v53 + 1);
  v39 = v53;
  v14 = v54;
  (*(v2 + 56))(v5, 1, 1, v8);
  v47 = 7;
  v15 = *(v3 + 56);
  v15(v6, 1, 1, v4);
  v15(v7, 1, 1, v4);
  *(v0 + 552) = *(v36 + qword_1EDFFCF38);
  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();

  swift_getWitnessTable();
  sub_1D7262CDC();
  v16 = *(v0 + 400);
  *(v0 + 416) = *(v0 + 384);
  *(v0 + 432) = v16;
  sub_1D7263AFC();
  swift_getWitnessTable();
  v37 = sub_1D726281C();
  (*(*(v38 - 8) + 56))(v40, 1, 1);
  v17 = type metadata accessor for FeedContext();
  (*(*(v17 - 8) + 56))(v41, 1, 1, v17);
  v18 = (v36 + *(*v36 + 240));
  v19 = v18[1];
  v20 = v18[2];
  v50 = *v18;
  v51 = v19;
  v52 = v20;
  *&v53 = v39;
  *(&v53 + 1) = v13;
  v54 = v14;

  sub_1D5C0C3EC(&v50, &v53, &v48);

  sub_1D5C08648(v13);
  v53 = v48;
  v54 = v49;
  v50 = 0;
  LOWORD(v51) = 256;
  v21 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v5, 0, &v47, v42, v7, 0, 0, 0, 0, 0, v37, 0, 1, 0, 1, 0, 1, 0, 0, v40, v41, &v53, &v50, 0, 0, 0);
  *(v0 + 880) = v21;

  sub_1D5C086A4(v53);
  v22 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v41, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v43 + 8))(v40, v44);
  v23 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v7, &qword_1EDF45B00, MEMORY[0x1E6969530], v22, sub_1D5B6BFD8);
  sub_1D5B88AA0(v42, &qword_1EDF45B00, v23, v22, sub_1D5B6BFD8);
  (*(v45 + 8))(v5, v46);
  sub_1D7262EBC();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7270C10;
  v25 = FeedDatabaseGroup.identifier.getter();
  v27 = v26;
  v28 = MEMORY[0x1E69E6158];
  *(v24 + 56) = MEMORY[0x1E69E6158];
  v29 = sub_1D5B7E2C0();
  *(v24 + 64) = v29;
  *(v24 + 32) = v25;
  *(v24 + 40) = v27;
  *(v0 + 536) = 0;
  *(v0 + 544) = 0xE000000000000000;
  *(v0 + 560) = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v30 = *(v0 + 536);
  v31 = *(v0 + 544);
  *(v24 + 96) = v28;
  *(v24 + 104) = v29;
  *(v24 + 72) = v30;
  *(v24 + 80) = v31;
  sub_1D725C30C();

  v32 = swift_task_alloc();
  *(v0 + 888) = v32;
  *v32 = v0;
  v32[1] = sub_1D6168C80;
  v33.n128_u64[0] = *(v0 + 608);
  v34 = *(v0 + 584);

  return sub_1D6163FF4(v34, v21, v33);
}

uint64_t sub_1D6168C80()
{
  *(*v1 + 896) = v0;

  if (v0)
  {
    v2 = sub_1D6168EE0;
  }

  else
  {
    v2 = sub_1D6168D94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6168D94()
{
  v1 = *(v0 + 872);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6168EE0()
{
  v1 = *(v0 + 872);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6169034(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  *(v6 + 544) = v5;
  *(v6 + 536) = a5;
  *(v6 + 528) = a3;
  *(v6 + 520) = a1;
  v9 = *a3;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = *(v9 + 88);
  v11 = *(v9 + 80);
  *(v6 + 568) = v11;
  *(v6 + 576) = swift_getAssociatedTypeWitness();
  v12 = sub_1D726393C();
  *(v6 + 584) = v12;
  *(v6 + 592) = *(v12 - 8);
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v10);
  *(v6 + 656) = swift_task_alloc();
  *(v6 + 664) = swift_task_alloc();
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  *(v6 + 688) = swift_task_alloc();
  *(v6 + 696) = swift_task_alloc();
  *(v6 + 704) = swift_task_alloc();
  *(v6 + 712) = swift_task_alloc();
  v13 = sub_1D726393C();
  *(v6 + 720) = v13;
  *(v6 + 728) = *(v13 - 8);
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  v14 = sub_1D725891C();
  *(v6 + 768) = v14;
  *(v6 + 776) = *(v14 - 8);
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = *(v11 - 8);
  *(v6 + 800) = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v6 + 808) = swift_task_alloc();
  v15 = type metadata accessor for FeedCursorGroup();
  *(v6 + 816) = v15;
  *(v6 + 824) = *(v15 - 8);
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  *(v6 + 856) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 864) = AssociatedTypeWitness;
  *(v6 + 872) = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for FeedGroupEmitterOutput();
  *(v6 + 880) = v17;
  *(v6 + 888) = *(v17 - 8);
  *(v6 + 896) = swift_task_alloc();
  v18 = type metadata accessor for FeedScoredResult();
  *(v6 + 904) = v18;
  *(v6 + 912) = *(v18 - 8);
  *(v6 + 920) = swift_task_alloc();
  *(v6 + 928) = swift_task_alloc();
  *(v6 + 936) = swift_task_alloc();
  *(v6 + 944) = swift_task_alloc();
  *(v6 + 952) = *(AssociatedTypeWitness - 8);
  *(v6 + 960) = swift_task_alloc();
  *(v6 + 968) = swift_task_alloc();
  *(v6 + 976) = swift_task_alloc();
  *(v6 + 984) = swift_task_alloc();
  v19 = type metadata accessor for FeedChosenEmitterResult();
  *(v6 + 992) = v19;
  *(v6 + 1000) = *(v19 - 8);
  v20 = swift_task_alloc();
  *(v6 + 1008) = v20;
  v21 = swift_task_alloc();
  *(v6 + 1016) = v21;
  *v21 = v6;
  v21[1] = sub_1D61697D8;

  return sub_1D6174AD8(v20, a2, a3, a4, a5);
}

uint64_t sub_1D61697D8()
{
  *(*v1 + 1024) = v0;

  if (v0)
  {
    v2 = sub_1D616E224;
  }

  else
  {
    v2 = sub_1D61698EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D61698EC()
{
  v505 = v0;
  v1 = *(v0 + 944);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v463 = (*(v0 + 912) + 16);
  v478 = *v463;
  (*v463)(v1, *(v0 + 1008), v2);
  v6 = *(v2 + 44);
  (*(v4 + 16))(v3, v1 + v6, v5);
  v7 = type metadata accessor for FeedGroupEmitTaskResult();
  v487 = *(*(v7 - 8) + 8);
  v487(v1 + v6, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v441 = v7;
        v9 = *(v0 + 896);
        v11 = *v9;
        v10 = v9[1];
LABEL_47:
        v303 = *(v0 + 1008);
        v439 = *(v0 + 928);
        v304 = *(v0 + 904);
        v377 = *(v0 + 792);
        v305 = *(v0 + 776);
        v416 = *(v0 + 768);
        v392 = *(v0 + 736);
        v404 = *(v0 + 664);
        v429 = *(v0 + 656);
        v384 = *(v0 + 568);
        v306 = *(v0 + 528);
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v307 = swift_allocObject();
        *(v307 + 16) = xmmword_1D7273AE0;
        *(v307 + 56) = MEMORY[0x1E69E6158];
        *(v307 + 64) = sub_1D5B7E2C0();
        *(v307 + 32) = v11;
        *(v307 + 40) = v10;
        sub_1D7262EDC();
        sub_1D725C30C();

        *(v0 + 488) = *(v306 + qword_1EDFFCF30);
        v478(v439, v303, v304);
        v308 = v439 + *(v2 + 44);

        v487(v308, v441);
        v309 = sub_1D5C0BA9C();
        v311 = v310;

        sub_1D607E0F0(v309, v311, (v0 + 120));

        sub_1D5B88AA0(v0 + 120, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
        (*(v377 + 56))(v392, 1, 1, v384);
        LOBYTE(v496) = 7;
        v312 = *(v305 + 56);
        v312(v404, 1, 1, v416);
        v312(v429, 1, 1, v416);
        v313 = *(v306 + qword_1EDFFCF08);
        v478(v439, v303, v304);
        v314 = v439 + *(v2 + 44);
        v315 = *(v314 + *(v441 + 36));

        v487(v314, v441);
        v495 = sub_1D61753F0(v313, v315);

        v316 = *(v306 + qword_1EDFFCEF8);
        v486 = (v316 + 1);
        if (!__OFADD__(v316, 1))
        {
          v317 = *(v0 + 1008);
          v318 = *(v0 + 992);
          v470 = *(v0 + 728);
          v477 = *(v0 + 720);
          v430 = *(v0 + 664);
          v440 = *(v0 + 736);
          v319 = *(v0 + 600);
          v450 = *(v0 + 592);
          v462 = *(v0 + 584);
          v320 = *(v0 + 552);
          v321 = *(v0 + 528);
          v405 = *(v0 + 488);
          v417 = *(v0 + 656);
          v393 = *(v317 + *(v318 + 44));
          (*(*(*(v0 + 576) - 8) + 56))(v319, 1, 1);
          v322 = type metadata accessor for FeedContext();
          (*(*(v322 - 8) + 56))(v320, 1, 1, v322);
          v323 = (v321 + *(*v321 + 240));
          v324 = v323[1];
          v325 = v323[2];
          v500 = *v323;
          v501 = v324;
          v502 = v325;
          v326 = (v317 + *(v318 + 36));
          v327 = v326[1];
          v328 = v326[2];
          *&v503 = *v326;
          *(&v503 + 1) = v327;
          v504 = v328;

          sub_1D5C07390(v327);
          sub_1D5C0C3EC(&v500, &v503, &v498);
          v329 = *(&v503 + 1);

          sub_1D5C08648(v329);

          v503 = v498;
          v504 = v499;
          v500 = 0;
          LOWORD(v501) = 256;
          v59 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v440, 0, &v496, v430, v417, 0, v495, 0, 0, 0, 0, v486, 0, 0, 1, 0, 1, v405, v393, v319, v320, &v503, &v500, 0, 0, 0);
          *(v0 + 1032) = v59;

          sub_1D5C086A4(v503);
          v330 = MEMORY[0x1E69E6720];
          sub_1D5B88AA0(v320, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
          (*(v450 + 8))(v319, v462);
          v331 = MEMORY[0x1E6969530];
          sub_1D5B88AA0(v417, &qword_1EDF45B00, MEMORY[0x1E6969530], v330, sub_1D5B6BFD8);
          sub_1D5B88AA0(v430, &qword_1EDF45B00, v331, v330, sub_1D5B6BFD8);
          (*(v470 + 8))(v440, v477);
          v62 = swift_task_alloc();
          *(v0 + 1040) = v62;
          *v62 = v0;
          v64 = sub_1D616D3CC;
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_53;
      }

      v72 = *(v0 + 896);
      v73 = *(v0 + 792);
      v74 = *(v0 + 776);
      v75 = *(v0 + 768);
      v76 = *(v0 + 736);
      v472 = *(v0 + 664);
      v480 = *(v0 + 656);
      v77 = *(v0 + 568);
      v489 = *(v0 + 528);
      v78 = *v72;
      v79 = v72[1];
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1D7273AE0;
      *(v80 + 56) = MEMORY[0x1E69E6158];
      *(v80 + 64) = sub_1D5B7E2C0();
      *(v80 + 32) = v78;
      *(v80 + 40) = v79;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v73 + 56))(v76, 1, 1, v77);
      LOBYTE(v496) = 7;
      v81 = *(v74 + 56);
      v81(v472, 1, 1, v75);
      result = (v81)(v480, 1, 1, v75);
      v82 = *(v489 + qword_1EDFFCEF8);
      v490 = (v82 + 1);
      if (__OFADD__(v82, 1))
      {
LABEL_54:
        __break(1u);
        return result;
      }

      v83 = *(v0 + 1008);
      v84 = *(v0 + 992);
      v473 = *(v0 + 728);
      v481 = *(v0 + 720);
      v433 = *(v0 + 664);
      v444 = *(v0 + 736);
      v421 = *(v0 + 656);
      v85 = *(v0 + 600);
      v454 = *(v0 + 592);
      v465 = *(v0 + 584);
      v86 = *(v0 + 552);
      v87 = *(v0 + 528);
      v408 = *(v87 + qword_1EDFFCF08);
      (*(*(*(v0 + 576) - 8) + 56))(v85, 1, 1);
      v88 = type metadata accessor for FeedContext();
      (*(*(v88 - 8) + 56))(v86, 1, 1, v88);
      v89 = (v87 + *(*v87 + 240));
      v90 = v89[1];
      v91 = v89[2];
      v500 = *v89;
      v501 = v90;
      v502 = v91;
      v92 = (v83 + *(v84 + 36));
      v93 = v92[1];
      v94 = v92[2];
      *&v503 = *v92;
      *(&v503 + 1) = v93;
      v504 = v94;

      sub_1D5C07390(v93);
      sub_1D5C0C3EC(&v500, &v503, &v498);
      v95 = *(&v503 + 1);

      sub_1D5C08648(v95);

      v503 = v498;
      v504 = v499;
      v500 = 0;
      LOWORD(v501) = 256;
      v59 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v444, 0, &v496, v433, v421, 0, v408, 0, 0, 0, 0, v490, 0, 0, 1, 0, 1, 0, 0, v85, v86, &v503, &v500, 0, 0, 0);
      *(v0 + 1056) = v59;
      sub_1D5C086A4(v503);
      v96 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v86, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      (*(v454 + 8))(v85, v465);
      v97 = MEMORY[0x1E6969530];
      sub_1D5B88AA0(v421, &qword_1EDF45B00, MEMORY[0x1E6969530], v96, sub_1D5B6BFD8);
      sub_1D5B88AA0(v433, &qword_1EDF45B00, v97, v96, sub_1D5B6BFD8);
      (*(v473 + 8))(v444, v481);
      v62 = swift_task_alloc();
      *(v0 + 1064) = v62;
      *v62 = v0;
      v64 = sub_1D616D768;
LABEL_49:
      v62[1] = v64;
      v63.n128_u64[0] = *(v0 + 536);
      v332 = *(v0 + 520);

      return sub_1D6163FF4(v332, v59, v63);
    }

    if (EnumCaseMultiPayload == 5)
    {
      v394 = *(v0 + 928);
      v406 = *(v0 + 904);
      v419 = *(v0 + 1008);
      v29 = *(v0 + 896);
      v30 = *(v0 + 792);
      v31 = *(v0 + 776);
      v442 = v7;
      v32 = *(v0 + 768);
      v379 = *(v0 + 664);
      v385 = *(v0 + 656);
      v33 = *(v0 + 568);
      v365 = *(v0 + 736);
      v452 = v2;
      v34 = *(v0 + 528);
      v35 = *v29;
      v36 = v29[1];
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1D7273AE0;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1D5B7E2C0();
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v30 + 56))(v365, 1, 1, v33);
      LOBYTE(v496) = 7;
      v38 = *(v31 + 56);
      v38(v379, 1, 1, v32);
      v38(v385, 1, 1, v32);
      v386 = *(v34 + qword_1EDFFCF08);
      sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      swift_allocObject();
      v39 = sub_1D726270C();
      v41 = v40;
      v478(v394, v419, v406);
      v42 = v394 + *(v452 + 44);
      v43 = *(v42 + *(v442 + 36));

      v487(v42, v442);
      *v41 = v43;
      type metadata accessor for FeedGroupEmitter();
      sub_1D5BFCB60(v39);
      v488 = sub_1D726274C();

      v45 = *(v34 + qword_1EDFFCEF8);
      v479 = (v45 + 1);
      if (__OFADD__(v45, 1))
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v46 = *(v0 + 1008);
      v47 = *(v0 + 992);
      v464 = *(v0 + 728);
      v471 = *(v0 + 720);
      v420 = *(v0 + 664);
      v432 = *(v0 + 736);
      v407 = *(v0 + 656);
      v48 = *(v0 + 600);
      v443 = *(v0 + 592);
      v453 = *(v0 + 584);
      v49 = *(v0 + 552);
      v50 = *(v0 + 528);
      (*(*(*(v0 + 576) - 8) + 56))(v48, 1, 1);
      v51 = type metadata accessor for FeedContext();
      (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
      v52 = (v50 + *(*v50 + 240));
      v53 = v52[1];
      v54 = v52[2];
      v500 = *v52;
      v501 = v53;
      v502 = v54;
      v55 = (v46 + *(v47 + 36));
      v56 = v55[1];
      v57 = v55[2];
      *&v503 = *v55;
      *(&v503 + 1) = v56;
      v504 = v57;

      sub_1D5C07390(v56);
      sub_1D5C0C3EC(&v500, &v503, &v498);
      v58 = *(&v503 + 1);

      sub_1D5C08648(v58);

      v503 = v498;
      v504 = v499;
      v500 = 0;
      LOWORD(v501) = 256;
      v59 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v432, 0, &v496, v420, v407, 0, v386, v488, 0, 0, 0, v479, 0, 0, 1, 0, 1, 0, 0, v48, v49, &v503, &v500, 0, 0, 0);
      *(v0 + 1080) = v59;

      sub_1D5C086A4(v503);
      v60 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v49, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      (*(v443 + 8))(v48, v453);
      v61 = MEMORY[0x1E6969530];
      sub_1D5B88AA0(v407, &qword_1EDF45B00, MEMORY[0x1E6969530], v60, sub_1D5B6BFD8);
      sub_1D5B88AA0(v420, &qword_1EDF45B00, v61, v60, sub_1D5B6BFD8);
      (*(v464 + 8))(v432, v471);
      v62 = swift_task_alloc();
      *(v0 + 1088) = v62;
      *v62 = v0;
      v64 = sub_1D616DB04;
      goto LABEL_49;
    }

    v98 = *(v0 + 896);
    v99 = *(v0 + 864);
    type metadata accessor for FeedGroupEmitterEmbeddedOutput();
    sub_1D5B49474(255, qword_1EDF37D80);
    v100 = *(swift_getTupleTypeMetadata2() + 48);
    v101 = swift_getEnumCaseMultiPayload();
    if (v101)
    {
      v441 = v7;
      if (v101 != 1)
      {
        v11 = *v98;
        v10 = v98[1];
        __swift_destroy_boxed_opaque_existential_1(v98 + v100);
        goto LABEL_47;
      }

      v71 = v2;
      (*(*(v0 + 952) + 32))(*(v0 + 976), v98, v99);
      __swift_destroy_boxed_opaque_existential_1(v98 + v100);
      goto LABEL_19;
    }

    v227 = *(v0 + 984);
    v228 = *(v0 + 952);
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v229 = (v98 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v228 + 32))(v227, v98, v99);
    v230 = v229[1];
    *(v0 + 88) = *v229;
    *(v0 + 104) = v230;
    __swift_destroy_boxed_opaque_existential_1(v98 + v100);
LABEL_33:
    v231 = *(v0 + 1008);
    v232 = *(v0 + 936);
    v233 = *(v0 + 904);
    v234 = *(*(v0 + 528) + qword_1EDFFCF30);
    v496 = v234;
    v478(v232, v231, v233);
    v459 = v2;
    v235 = v232 + *(v2 + 44);

    v447 = v7;
    v487(v235, v7);
    v236 = sub_1D5C0BA9C();
    v238 = v237;

    v239 = *(v0 + 104);
    *(v0 + 312) = *(v0 + 88);
    *(v0 + 328) = v239;
    if (*(v0 + 336))
    {
      sub_1D5B7C390((v0 + 312), (v0 + 376));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v503 = v234;
      sub_1D5BAFB24((v0 + 376), v236, v238, isUniquelyReferenced_nonNull_native);

      v496 = v234;
    }

    else
    {
      v241 = MEMORY[0x1E69E7CA0];
      v242 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v0 + 312, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      sub_1D607E0F0(v236, v238, (v0 + 344));

      sub_1D5B88AA0(v0 + 344, &qword_1EDF43B70, v241 + 8, v242, sub_1D5BEE1B8);
    }

    v243 = *(v0 + 1008);
    v438 = *(v0 + 992);
    v244 = *(v0 + 928);
    v245 = *(v0 + 904);
    v246 = *(v0 + 824);
    v342 = *(v0 + 808);
    v345 = *(v0 + 968);
    v348 = *(v0 + 800);
    v247 = *(v0 + 792);
    v248 = *(v0 + 784);
    v249 = *(v0 + 776);
    v364 = *(v0 + 768);
    v353 = *(v0 + 848);
    v356 = *(v0 + 760);
    v360 = *(v0 + 712);
    v369 = *(v0 + 704);
    v375 = *(v0 + 816);
    v401 = *(v0 + 640);
    v382 = *(v0 + 592);
    v389 = *(v0 + 584);
    v426 = *(v0 + 576);
    v250 = *(v0 + 568);
    v251 = *(v0 + 528);
    (*(*(v0 + 952) + 16))();
    v478(v244, v243, v245);
    v252 = v244 + *(v459 + 44);

    v487(v252, v447);
    sub_1D5C0354C();

    (*(v247 + 16))(v348, v251 + *(*v251 + 256), v250);
    sub_1D725890C();
    FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v248, v345, v342, v348, v250, v353);
    (*(v247 + 56))(v356, 1, 1, v250);
    v497 = 7;
    v253 = *(v249 + 56);
    v253(v360, 1, 1, v364);
    v253(v369, 1, 1, v364);
    v254 = *(v251 + qword_1EDFFCF08);
    sub_1D72644CC();
    swift_allocObject();
    v255 = sub_1D726270C();
    (*(v246 + 16))(v256, v353, v375);
    sub_1D5BFCB60(v255);
    v257 = sub_1D726274C();

    v258 = *(v243 + *(v438 + 44));
    v259 = *(*v251 + 224);
    swift_beginAccess();
    (*(v382 + 16))(v401, v251 + v259, v389);
    v260 = *(v426 - 8);
    v494 = v254;
    v476 = v257;
    if ((*(v260 + 48))(v401, 1) == 1)
    {
      v261 = (v0 + 584);
      v262 = *(v0 + 592);
      v263 = 1;
      v460 = v262;
    }

    else
    {
      v261 = (v0 + 576);
      (*(*(v0 + 856) + 40))(*(v0 + 984), *(v0 + 576));
      v263 = 0;
      v460 = *(v0 + 592);
      v262 = v260;
    }

    v264 = *v261;
    v265 = *(v0 + 1008);
    v266 = *(v0 + 992);
    v390 = *(v0 + 760);
    v427 = *(v0 + 728);
    v448 = *(v0 + 720);
    v376 = *(v0 + 704);
    v383 = *(v0 + 712);
    v267 = *(v0 + 648);
    v370 = v267;
    v402 = *(v0 + 584);
    v268 = *(v0 + 576);
    v269 = *(v0 + 552);
    v270 = *(v0 + 528);
    (*(v262 + 8))(*(v0 + 640), v264);
    (*(v260 + 56))(v267, v263, 1, v268);
    v271 = type metadata accessor for FeedContext();
    (*(*(v271 - 8) + 56))(v269, 1, 1, v271);
    v272 = (v270 + *(*v270 + 240));
    v273 = v272[1];
    v274 = v272[2];
    v500 = *v272;
    v501 = v273;
    v502 = v274;
    v275 = (v265 + *(v266 + 36));
    v276 = v275[1];
    v277 = v275[2];
    *&v503 = *v275;
    *(&v503 + 1) = v276;
    v504 = v277;

    sub_1D5C07390(v276);
    sub_1D5C0C3EC(&v500, &v503, &v498);
    v278 = *(&v503 + 1);

    sub_1D5C08648(v278);

    v503 = v498;
    v504 = v499;
    v500 = 0;
    LOWORD(v501) = 256;
    v279 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v390, 0, &v497, v383, v376, 0, v494, 0, 0, v476, 0, 0, 1, 0, 1, 0, 1, v496, v258, v370, v269, &v503, &v500, 0, 0, 0);

    sub_1D5C086A4(v503);
    v280 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v269, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v460 + 8))(v370, v402);
    v281 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v376, &qword_1EDF45B00, MEMORY[0x1E6969530], v280, sub_1D5B6BFD8);
    sub_1D5B88AA0(v383, &qword_1EDF45B00, v281, v280, sub_1D5B6BFD8);
    (*(v427 + 8))(v390, v448);
    v469 = v279;
    LOBYTE(v269) = FeedCursor.reachedEnd.getter();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v282 = *(v0 + 1000);
    v449 = *(v0 + 992);
    v461 = *(v0 + 1008);
    v283 = *(v0 + 952);
    v284 = *(v0 + 864);
    v285 = *(v0 + 824);
    v415 = *(v0 + 816);
    v428 = *(v0 + 848);
    v403 = *(v0 + 984);
    if (v269)
    {
      v286 = *(v0 + 520);
      v287 = swift_allocObject();
      *(v287 + 16) = xmmword_1D7273AE0;
      v288 = sub_1D72644BC();
      v290 = v289;
      *(v287 + 56) = MEMORY[0x1E69E6158];
      *(v287 + 64) = sub_1D5B7E2C0();
      *(v287 + 32) = v288;
      *(v287 + 40) = v290;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v285 + 8))(v428, v415);
      (*(v282 + 8))(v461, v449);
      type metadata accessor for FeedCursor();
      v291 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v283 + 32))(v286, v403, v284);
      *(v286 + v291) = v469;
    }

    else
    {
      v292 = *(v0 + 528);
      v391 = *(v0 + 520);
      v293 = swift_allocObject();
      *(v293 + 16) = xmmword_1D7270C10;
      v485 = v284;
      v294 = v283;
      v295 = sub_1D72644BC();
      v297 = v296;
      *(v293 + 56) = MEMORY[0x1E69E6158];
      v298 = sub_1D5B7E2C0();
      *(v293 + 64) = v298;
      *(v293 + 32) = v295;
      *(v293 + 40) = v297;
      *(v0 + 512) = v292;
      type metadata accessor for FeedCursor();
      swift_getWitnessTable();
      v299 = sub_1D725B0BC();
      *(v293 + 96) = MEMORY[0x1E69E6158];
      *(v293 + 104) = v298;
      *(v293 + 72) = v299;
      *(v293 + 80) = v300;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v285 + 8))(v428, v415);
      (*(v282 + 8))(v461, v449);
      v301 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v294 + 32))(v391, v403, v485);
      *(v391 + v301) = v469;
    }

    goto LABEL_41;
  }

  if (!EnumCaseMultiPayload)
  {
    v65 = *(v0 + 984);
    v66 = *(v0 + 952);
    v67 = *(v0 + 896);
    v68 = *(v0 + 864);
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v69 = (v67 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v66 + 32))(v65, v67, v68);
    v70 = v69[1];
    *(v0 + 88) = *v69;
    *(v0 + 104) = v70;
    goto LABEL_33;
  }

  v441 = v7;
  if (EnumCaseMultiPayload == 1)
  {
    v418 = *(v0 + 1008);
    v12 = *(v0 + 960);
    v13 = *(v0 + 952);
    v14 = *(v0 + 920);
    v15 = v7;
    v16 = *(v0 + 904);
    v17 = *(v0 + 896);
    v451 = v2;
    v18 = *(v0 + 864);
    v19 = *(v0 + 528);
    v431 = MEMORY[0x1E69E6720];
    sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    v20 = (v17 + *(swift_getTupleTypeMetadata2() + 48));
    v378 = *(v13 + 32);
    v378(v12, v17, v18);
    v21 = v20[1];
    *(v0 + 184) = *v20;
    *(v0 + 200) = v21;
    v22 = *(v19 + qword_1EDFFCF30);
    v23 = MEMORY[0x1E69E7CA0];
    v496 = v22;
    v478(v14, v418, v16);
    v24 = v14 + *(v451 + 44);

    v487(v24, v15);
    v25 = sub_1D5C0BA9C();
    v27 = v26;

    sub_1D617D174(v0 + 184, v0 + 216, &qword_1EDF43B70, v23 + 8, v431, sub_1D5BEE1B8);
    if (*(v0 + 240))
    {
      sub_1D5B7C390((v0 + 216), (v0 + 280));
      v28 = swift_isUniquelyReferenced_nonNull_native();
      *&v503 = v22;
      sub_1D5BAFB24((v0 + 280), v25, v27, v28);

      v496 = v22;
    }

    else
    {
      v164 = MEMORY[0x1E69E6720];
      sub_1D5B88AA0(v0 + 216, &qword_1EDF43B70, v23 + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      sub_1D607E0F0(v25, v27, (v0 + 248));

      sub_1D5B88AA0(v0 + 248, &qword_1EDF43B70, v23 + 8, v164, sub_1D5BEE1B8);
    }

    v165 = *(v0 + 1008);
    v399 = v165;
    v367 = *(v0 + 992);
    v336 = *(v0 + 968);
    v166 = *(v0 + 928);
    v167 = *(v0 + 904);
    v340 = v167;
    v435 = *(v0 + 840);
    v347 = *(v0 + 816);
    v350 = *(v0 + 824);
    v334 = *(v0 + 808);
    v168 = *(v0 + 800);
    v169 = *(v0 + 792);
    v170 = *(v0 + 784);
    v171 = *(v0 + 776);
    v338 = *(v0 + 752);
    v341 = *(v0 + 696);
    v344 = *(v0 + 768);
    v373 = *(v0 + 688);
    v352 = *(v0 + 592);
    v355 = *(v0 + 584);
    v358 = *(v0 + 624);
    v362 = *(v0 + 576);
    v412 = *(v0 + 568);
    v172 = *(v0 + 528);
    (*(*(v0 + 952) + 16))();
    v478(v166, v165, v167);
    v173 = v166 + *(v451 + 44);

    v487(v173, v441);
    sub_1D5C0354C();

    (*(v169 + 16))(v168, v172 + *(*v172 + 256), v412);
    sub_1D725890C();
    FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v170, v336, v334, v168, v412, v435);
    (*(v169 + 56))(v338, 1, 1, v412);
    v497 = 7;
    v174 = *(v171 + 56);
    v174(v341, 1, 1, v344);
    v174(v373, 1, 1, v344);
    v175 = *(v172 + qword_1EDFFCF08);
    v478(v166, v399, v340);
    v176 = v166 + *(v451 + 44);
    v177 = *(v176 + *(v441 + 36));

    v487(v176, v441);
    v374 = sub_1D61753F0(v175, v177);

    sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    swift_allocObject();
    v178 = sub_1D726270C();
    v180 = v179;
    v478(v166, v399, v340);
    v181 = v166 + *(v451 + 44);
    v182 = *(v181 + *(v441 + 36));

    v487(v181, v441);
    *v180 = v182;
    type metadata accessor for FeedGroupEmitter();
    sub_1D5BFCB60(v178);
    v483 = sub_1D726274C();

    sub_1D72644CC();
    swift_allocObject();
    v183 = sub_1D726270C();
    (*(v350 + 16))(v184, v435, v347);
    sub_1D5BFCB60(v183);
    v467 = sub_1D726274C();

    v400 = *(v399 + *(v367 + 44));
    v185 = *(*v172 + 224);
    swift_beginAccess();
    (*(v352 + 16))(v358, v172 + v185, v355);
    v186 = *(v362 - 8);
    if ((*(v186 + 48))(v358, 1) == 1)
    {
      v187 = (v0 + 584);
      v188 = *(v0 + 592);
      v189 = 1;
      v446 = v188;
    }

    else
    {
      v187 = (v0 + 576);
      (*(*(v0 + 856) + 40))(*(v0 + 960), *(v0 + 576));
      v189 = 0;
      v446 = *(v0 + 592);
      v188 = v186;
    }

    v190 = *(v0 + 1008);
    v191 = *(v0 + 992);
    v493 = *(v0 + 752);
    v413 = *(v0 + 728);
    v436 = *(v0 + 720);
    v359 = *(v0 + 688);
    v363 = *(v0 + 696);
    v192 = *(v0 + 632);
    v368 = *(v0 + 584);
    v193 = *(v0 + 576);
    v194 = *(v0 + 552);
    v195 = *(v0 + 528);
    (*(v188 + 8))(*(v0 + 624), *v187);
    (*(v186 + 56))(v192, v189, 1, v193);
    v196 = type metadata accessor for FeedContext();
    (*(*(v196 - 8) + 56))(v194, 1, 1, v196);
    v197 = (v195 + *(*v195 + 240));
    v198 = v197[1];
    v199 = v197[2];
    v500 = *v197;
    v501 = v198;
    v502 = v199;
    v200 = (v190 + *(v191 + 36));
    v201 = v200[1];
    v202 = v200[2];
    *&v503 = *v200;
    *(&v503 + 1) = v201;
    v504 = v202;

    sub_1D5C07390(v201);
    sub_1D5C0C3EC(&v500, &v503, &v498);
    v203 = *(&v503 + 1);

    sub_1D5C08648(v203);

    v503 = v498;
    v504 = v499;
    v500 = 0;
    LOWORD(v501) = 256;
    v204 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v493, 0, &v497, v363, v359, 0, v374, v483, 0, v467, 0, 0, 1, 0, 1, 0, 1, v496, v400, v192, v194, &v503, &v500, 0, 0, 0);

    sub_1D5C086A4(v503);
    v205 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v194, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v446 + 8))(v192, v368);
    v206 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v359, &qword_1EDF45B00, MEMORY[0x1E6969530], v205, sub_1D5B6BFD8);
    sub_1D5B88AA0(v363, &qword_1EDF45B00, v206, v205, sub_1D5B6BFD8);
    (*(v413 + 8))(v493, v436);
    v484 = v204;
    LOBYTE(v203) = FeedCursor.reachedEnd.getter();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v207 = *(v0 + 1000);
    v458 = *(v0 + 992);
    v468 = *(v0 + 1008);
    v208 = *(v0 + 960);
    v209 = *(v0 + 864);
    v210 = *(v0 + 824);
    v425 = *(v0 + 816);
    v437 = *(v0 + 840);
    if (v203)
    {
      v211 = *(v0 + 520);
      v212 = *(v0 + 960);
      v213 = swift_allocObject();
      *(v213 + 16) = xmmword_1D7273AE0;
      v214 = sub_1D72644BC();
      v216 = v215;
      *(v213 + 56) = MEMORY[0x1E69E6158];
      *(v213 + 64) = sub_1D5B7E2C0();
      *(v213 + 32) = v214;
      *(v213 + 40) = v216;
      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v210 + 8))(v437, v425);
      sub_1D5B88AA0(v0 + 184, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      (*(v207 + 8))(v468, v458);
      type metadata accessor for FeedCursor();
      v217 = *(swift_getTupleTypeMetadata2() + 48);
      v378(v211, v212, v209);
      *(v211 + v217) = v484;
      type metadata accessor for FeedServiceFetchResult.Internal();
      goto LABEL_43;
    }

    v218 = *(v0 + 528);
    v414 = *(v0 + 520);
    v219 = swift_allocObject();
    *(v219 + 16) = xmmword_1D7270C10;
    v220 = sub_1D72644BC();
    v475 = v208;
    v222 = v221;
    *(v219 + 56) = MEMORY[0x1E69E6158];
    v223 = sub_1D5B7E2C0();
    *(v219 + 64) = v223;
    *(v219 + 32) = v220;
    *(v219 + 40) = v222;
    *(v0 + 504) = v218;
    type metadata accessor for FeedCursor();
    swift_getWitnessTable();
    v224 = sub_1D725B0BC();
    *(v219 + 96) = MEMORY[0x1E69E6158];
    *(v219 + 104) = v223;
    *(v219 + 72) = v224;
    *(v219 + 80) = v225;
    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v210 + 8))(v437, v425);
    sub_1D5B88AA0(v0 + 184, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
    (*(v207 + 8))(v468, v458);
    v226 = *(swift_getTupleTypeMetadata2() + 48);
    v378(v414, v475, v209);
    *(v414 + v226) = v484;
LABEL_41:
    type metadata accessor for FeedServiceFetchResult.Internal();
    goto LABEL_43;
  }

  v71 = v2;
  (*(*(v0 + 952) + 32))(*(v0 + 976), *(v0 + 896), *(v0 + 864));
LABEL_19:
  v102 = *(v0 + 1008);
  v337 = v102;
  v409 = *(v0 + 992);
  v335 = *(v0 + 968);
  v103 = *(v0 + 928);
  v104 = *(v0 + 904);
  v455 = *(v0 + 832);
  v361 = *(v0 + 816);
  v366 = *(v0 + 824);
  v333 = *(v0 + 808);
  v339 = *(v0 + 800);
  v105 = *(v0 + 792);
  v106 = *(v0 + 784);
  v351 = *(v0 + 776);
  v354 = *(v0 + 768);
  v343 = v105;
  v346 = *(v0 + 744);
  v349 = *(v0 + 680);
  v357 = *(v0 + 672);
  v371 = *(v0 + 592);
  v380 = *(v0 + 584);
  v387 = *(v0 + 608);
  v395 = *(v0 + 576);
  v422 = *(v0 + 568);
  v107 = *(v0 + 528);
  (*(*(v0 + 952) + 16))();
  v478(v103, v102, v104);
  v108 = v103 + *(v71 + 44);

  v487(v108, v441);
  sub_1D5C0354C();

  (*(v105 + 16))(v339, v107 + *(*v107 + 256), v422);
  sub_1D725890C();
  FeedCursorGroup.init(createdDate:group:config:serviceConfig:)(v106, v335, v333, v339, v422, v455);
  v496 = *(v107 + qword_1EDFFCF30);
  v478(v103, v102, v104);
  v109 = v71;
  v110 = v103 + *(v71 + 44);

  v487(v110, v441);
  v111 = sub_1D5C0BA9C();
  v113 = v112;

  sub_1D607E0F0(v111, v113, (v0 + 152));

  sub_1D5B88AA0(v0 + 152, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
  (*(v343 + 56))(v346, 1, 1, v422);
  v497 = 7;
  v114 = *(v351 + 56);
  v114(v349, 1, 1, v354);
  v114(v357, 1, 1, v354);
  v115 = *(v107 + qword_1EDFFCF08);
  v478(v103, v337, v104);
  v116 = v103 + *(v109 + 44);
  v117 = *(v116 + *(v441 + 36));

  v487(v116, v441);
  v118 = sub_1D61753F0(v115, v117);

  sub_1D72644CC();
  swift_allocObject();
  v119 = sub_1D726270C();
  (*(v366 + 16))(v120, v455, v361);
  sub_1D5BFCB60(v119);
  v121 = sub_1D726274C();

  v122 = *(v337 + *(v409 + 44));
  v123 = *(*v107 + 224);
  swift_beginAccess();
  (*(v371 + 16))(v387, v107 + v123, v380);
  v124 = *(v395 - 8);
  v491 = v118;
  v474 = v121;
  v410 = v122;
  if ((*(v124 + 48))(v387, 1) == 1)
  {
    v125 = (v0 + 584);
    v126 = *(v0 + 592);
    v127 = 1;
    v456 = v126;
  }

  else
  {
    v125 = (v0 + 576);
    (*(*(v0 + 856) + 40))(*(v0 + 976), *(v0 + 576));
    v127 = 0;
    v456 = *(v0 + 592);
    v126 = v124;
  }

  v128 = *(v0 + 1008);
  v129 = *(v0 + 992);
  v388 = *(v0 + 744);
  v423 = *(v0 + 728);
  v445 = *(v0 + 720);
  v372 = *(v0 + 672);
  v381 = *(v0 + 680);
  v130 = *(v0 + 616);
  v396 = *(v0 + 584);
  v131 = *(v0 + 576);
  v132 = *(v0 + 552);
  v133 = *(v0 + 528);
  (*(v126 + 8))(*(v0 + 608), *v125);
  (*(v124 + 56))(v130, v127, 1, v131);
  v134 = type metadata accessor for FeedContext();
  (*(*(v134 - 8) + 56))(v132, 1, 1, v134);
  v135 = (v133 + *(*v133 + 240));
  v136 = v135[1];
  v137 = v135[2];
  v500 = *v135;
  v501 = v136;
  v502 = v137;
  v138 = (v128 + *(v129 + 36));
  v139 = v138[1];
  v140 = v138[2];
  *&v503 = *v138;
  *(&v503 + 1) = v139;
  v504 = v140;

  sub_1D5C07390(v139);
  sub_1D5C0C3EC(&v500, &v503, &v498);
  v141 = *(&v503 + 1);

  sub_1D5C08648(v141);

  v503 = v498;
  v504 = v499;
  v500 = 0;
  LOWORD(v501) = 256;
  v142 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v388, 0, &v497, v381, v372, 0, v491, 0, 0, v474, 0, 0, 1, 0, 1, 0, 1, v496, v410, v130, v132, &v503, &v500, 0, 0, 0);

  sub_1D5C086A4(v503);
  v143 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v132, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v456 + 8))(v130, v396);
  v144 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v372, &qword_1EDF45B00, MEMORY[0x1E6969530], v143, sub_1D5B6BFD8);
  sub_1D5B88AA0(v381, &qword_1EDF45B00, v144, v143, sub_1D5B6BFD8);
  (*(v423 + 8))(v388, v445);
  v492 = v142;
  LOBYTE(v130) = FeedCursor.reachedEnd.getter();
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v145 = *(v0 + 1000);
  v457 = *(v0 + 992);
  v466 = *(v0 + 1008);
  v146 = *(v0 + 952);
  v147 = *(v0 + 864);
  v148 = *(v0 + 824);
  v424 = *(v0 + 816);
  v434 = *(v0 + 832);
  v411 = *(v0 + 976);
  if ((v130 & 1) == 0)
  {
    v154 = *(v0 + 528);
    v398 = *(v0 + 520);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_1D7270C10;
    v482 = v147;
    v156 = v146;
    v157 = sub_1D72644BC();
    v159 = v158;
    *(v155 + 56) = MEMORY[0x1E69E6158];
    v160 = sub_1D5B7E2C0();
    *(v155 + 64) = v160;
    *(v155 + 32) = v157;
    *(v155 + 40) = v159;
    *(v0 + 496) = v154;
    type metadata accessor for FeedCursor();
    swift_getWitnessTable();
    v161 = sub_1D725B0BC();
    *(v155 + 96) = MEMORY[0x1E69E6158];
    *(v155 + 104) = v160;
    *(v155 + 72) = v161;
    *(v155 + 80) = v162;
    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v148 + 8))(v434, v424);
    (*(v145 + 8))(v466, v457);
    v163 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v156 + 32))(v398, v411, v482);
    *(v398 + v163) = v492;
    goto LABEL_41;
  }

  v397 = *(v0 + 520);
  v149 = swift_allocObject();
  *(v149 + 16) = xmmword_1D7273AE0;
  v150 = sub_1D72644BC();
  v152 = v151;
  *(v149 + 56) = MEMORY[0x1E69E6158];
  *(v149 + 64) = sub_1D5B7E2C0();
  *(v149 + 32) = v150;
  *(v149 + 40) = v152;
  sub_1D7262EDC();
  sub_1D725C30C();

  (*(v148 + 8))(v434, v424);
  (*(v145 + 8))(v466, v457);
  type metadata accessor for FeedCursor();
  v153 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v146 + 32))(v397, v411, v147);
  *(v397 + v153) = v492;
  type metadata accessor for FeedServiceFetchResult.Internal();
LABEL_43:
  swift_storeEnumTagMultiPayload();

  v302 = *(v0 + 8);

  return v302();
}

uint64_t sub_1D616D3CC()
{
  *(*v1 + 1048) = v0;

  if (v0)
  {
    v2 = sub_1D616FD04;
  }

  else
  {
    v2 = sub_1D616D4E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616D4E0()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D616D768()
{
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v2 = sub_1D616EAFC;
  }

  else
  {
    v2 = sub_1D616D87C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616D87C()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D616DB04()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_1D616F400;
  }

  else
  {
    v2 = sub_1D616DC18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616DC18()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D616DEA0()
{
  *(*v1 + 1128) = v0;

  if (v0)
  {
    v2 = sub_1D6170608;
  }

  else
  {
    v2 = sub_1D616DFB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D616DFB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D616E224()
{
  v61 = v0;
  v1 = *(v0 + 1024);
  *(v0 + 1104) = v1;
  *(v0 + 480) = v1;
  v2 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v4 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v4);
LABEL_17:
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  v51 = *(v0 + 32);
  v52 = *(v0 + 16);
  v5 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter();

  if (sub_1D726279C())
  {
    v6 = 0;
    do
    {
      v7 = sub_1D726277C();
      sub_1D726271C();
      if (v7)
      {

        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }
      }

      v10 = sub_1D5C0BA9C();
      v12 = sub_1D5B69D90(v10, v11);
      v14 = v13;

      if (v14)
      {
        *&v59 = v5;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v5 = v59;
        }

        sub_1D5B7C390((*(v5 + 56) + 32 * v12), (v0 + 56));
        sub_1D67135D8(v12, v5);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v6;
    }

    while (v9 != sub_1D726279C());
  }

  v16 = *(v0 + 792);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v19 = *(v0 + 736);
  v20 = *(v0 + 664);
  v21 = *(v0 + 568);
  v48 = *(v0 + 656);
  v22 = *(v0 + 528);

  (*(v16 + 56))(v19, 1, 1, v21);
  v53 = 7;
  v23 = *(v17 + 56);
  v23(v20, 1, 1, v18);
  v23(v48, 1, 1, v18);
  v24 = sub_1D61754E8(*(v22 + qword_1EDFFCF08), v3);

  v25 = *(v22 + qword_1EDFFCEF8);
  v26 = __OFADD__(v25, 1);
  v27 = (v25 + 1);
  if (v26)
  {
    goto LABEL_25;
  }

  v42 = v27;
  v49 = *(v0 + 728);
  v50 = *(v0 + 720);
  v44 = *(v0 + 664);
  v45 = *(v0 + 736);
  v43 = *(v0 + 656);
  v40 = *(v0 + 600);
  v46 = *(v0 + 592);
  v47 = *(v0 + 584);
  v28 = *(v0 + 552);
  v41 = v24;
  v29 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v30 = type metadata accessor for FeedContext();
  (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
  v31 = (v29 + *(*v29 + 240));
  v32 = v31[1];
  v33 = v31[2];
  v56 = *v31;
  v57 = v32;
  v58 = v33;
  v59 = v52;
  v60 = v51;

  sub_1D5C0C3EC(&v56, &v59, &v54);

  sub_1D5C08648(*(&v52 + 1));
  v59 = v54;
  v60 = v55;
  v56 = 0;
  LOWORD(v57) = 256;
  v34 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v45, 0, &v53, v44, v43, 0, v41, 0, 0, 0, 0, v42, 0, 0, 1, 0, 1, v5, 0, v40, v28, &v59, &v56, 0, 0, 0);
  *(v0 + 1112) = v34;

  sub_1D5C086A4(v59);
  v35 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v28, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v46 + 8))(v40, v47);
  v36 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v43, &qword_1EDF45B00, MEMORY[0x1E6969530], v35, sub_1D5B6BFD8);
  sub_1D5B88AA0(v44, &qword_1EDF45B00, v36, v35, sub_1D5B6BFD8);
  (*(v49 + 8))(v45, v50);
  v37 = swift_task_alloc();
  *(v0 + 1120) = v37;
  *v37 = v0;
  v37[1] = sub_1D616DEA0;
  v38.n128_u64[0] = *(v0 + 536);
  v39 = *(v0 + 520);

  return sub_1D6163FF4(v39, v34, v38);
}

uint64_t sub_1D616EAFC()
{
  v64 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1072);
  *(v0 + 1104) = v4;
  *(v0 + 480) = v4;
  v5 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v7);
LABEL_17:
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  v54 = *(v0 + 32);
  v55 = *(v0 + 16);
  v8 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter();

  if (sub_1D726279C())
  {
    v9 = 0;
    do
    {
      v10 = sub_1D726277C();
      sub_1D726271C();
      if (v10)
      {

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }
      }

      v13 = sub_1D5C0BA9C();
      v15 = sub_1D5B69D90(v13, v14);
      v17 = v16;

      if (v17)
      {
        *&v62 = v8;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v8 = v62;
        }

        sub_1D5B7C390((*(v8 + 56) + 32 * v15), (v0 + 56));
        sub_1D67135D8(v15, v8);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v9;
    }

    while (v12 != sub_1D726279C());
  }

  v19 = *(v0 + 792);
  v20 = *(v0 + 776);
  v21 = *(v0 + 768);
  v22 = *(v0 + 736);
  v23 = *(v0 + 664);
  v24 = *(v0 + 568);
  v51 = *(v0 + 656);
  v25 = *(v0 + 528);

  (*(v19 + 56))(v22, 1, 1, v24);
  v56 = 7;
  v26 = *(v20 + 56);
  v26(v23, 1, 1, v21);
  v26(v51, 1, 1, v21);
  v27 = sub_1D61754E8(*(v25 + qword_1EDFFCF08), v6);

  v28 = *(v25 + qword_1EDFFCEF8);
  v29 = __OFADD__(v28, 1);
  v30 = (v28 + 1);
  if (v29)
  {
    goto LABEL_25;
  }

  v45 = v30;
  v52 = *(v0 + 728);
  v53 = *(v0 + 720);
  v47 = *(v0 + 664);
  v48 = *(v0 + 736);
  v46 = *(v0 + 656);
  v43 = *(v0 + 600);
  v49 = *(v0 + 592);
  v50 = *(v0 + 584);
  v31 = *(v0 + 552);
  v44 = v27;
  v32 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v33 = type metadata accessor for FeedContext();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v32 + *(*v32 + 240));
  v35 = v34[1];
  v36 = v34[2];
  v59 = *v34;
  v60 = v35;
  v61 = v36;
  v62 = v55;
  v63 = v54;

  sub_1D5C0C3EC(&v59, &v62, &v57);

  sub_1D5C08648(*(&v55 + 1));
  v62 = v57;
  v63 = v58;
  v59 = 0;
  LOWORD(v60) = 256;
  v37 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v48, 0, &v56, v47, v46, 0, v44, 0, 0, 0, 0, v45, 0, 0, 1, 0, 1, v8, 0, v43, v31, &v62, &v59, 0, 0, 0);
  *(v0 + 1112) = v37;

  sub_1D5C086A4(v62);
  v38 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v31, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v49 + 8))(v43, v50);
  v39 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v46, &qword_1EDF45B00, MEMORY[0x1E6969530], v38, sub_1D5B6BFD8);
  sub_1D5B88AA0(v47, &qword_1EDF45B00, v39, v38, sub_1D5B6BFD8);
  (*(v52 + 8))(v48, v53);
  v40 = swift_task_alloc();
  *(v0 + 1120) = v40;
  *v40 = v0;
  v40[1] = sub_1D616DEA0;
  v41.n128_u64[0] = *(v0 + 536);
  v42 = *(v0 + 520);

  return sub_1D6163FF4(v42, v37, v41);
}

uint64_t sub_1D616F400()
{
  v64 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1096);
  *(v0 + 1104) = v4;
  *(v0 + 480) = v4;
  v5 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v7);
LABEL_17:
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  v54 = *(v0 + 32);
  v55 = *(v0 + 16);
  v8 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter();

  if (sub_1D726279C())
  {
    v9 = 0;
    do
    {
      v10 = sub_1D726277C();
      sub_1D726271C();
      if (v10)
      {

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }
      }

      v13 = sub_1D5C0BA9C();
      v15 = sub_1D5B69D90(v13, v14);
      v17 = v16;

      if (v17)
      {
        *&v62 = v8;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v8 = v62;
        }

        sub_1D5B7C390((*(v8 + 56) + 32 * v15), (v0 + 56));
        sub_1D67135D8(v15, v8);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v9;
    }

    while (v12 != sub_1D726279C());
  }

  v19 = *(v0 + 792);
  v20 = *(v0 + 776);
  v21 = *(v0 + 768);
  v22 = *(v0 + 736);
  v23 = *(v0 + 664);
  v24 = *(v0 + 568);
  v51 = *(v0 + 656);
  v25 = *(v0 + 528);

  (*(v19 + 56))(v22, 1, 1, v24);
  v56 = 7;
  v26 = *(v20 + 56);
  v26(v23, 1, 1, v21);
  v26(v51, 1, 1, v21);
  v27 = sub_1D61754E8(*(v25 + qword_1EDFFCF08), v6);

  v28 = *(v25 + qword_1EDFFCEF8);
  v29 = __OFADD__(v28, 1);
  v30 = (v28 + 1);
  if (v29)
  {
    goto LABEL_25;
  }

  v45 = v30;
  v52 = *(v0 + 728);
  v53 = *(v0 + 720);
  v47 = *(v0 + 664);
  v48 = *(v0 + 736);
  v46 = *(v0 + 656);
  v43 = *(v0 + 600);
  v49 = *(v0 + 592);
  v50 = *(v0 + 584);
  v31 = *(v0 + 552);
  v44 = v27;
  v32 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v33 = type metadata accessor for FeedContext();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v32 + *(*v32 + 240));
  v35 = v34[1];
  v36 = v34[2];
  v59 = *v34;
  v60 = v35;
  v61 = v36;
  v62 = v55;
  v63 = v54;

  sub_1D5C0C3EC(&v59, &v62, &v57);

  sub_1D5C08648(*(&v55 + 1));
  v62 = v57;
  v63 = v58;
  v59 = 0;
  LOWORD(v60) = 256;
  v37 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v48, 0, &v56, v47, v46, 0, v44, 0, 0, 0, 0, v45, 0, 0, 1, 0, 1, v8, 0, v43, v31, &v62, &v59, 0, 0, 0);
  *(v0 + 1112) = v37;

  sub_1D5C086A4(v62);
  v38 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v31, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v49 + 8))(v43, v50);
  v39 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v46, &qword_1EDF45B00, MEMORY[0x1E6969530], v38, sub_1D5B6BFD8);
  sub_1D5B88AA0(v47, &qword_1EDF45B00, v39, v38, sub_1D5B6BFD8);
  (*(v52 + 8))(v48, v53);
  v40 = swift_task_alloc();
  *(v0 + 1120) = v40;
  *v40 = v0;
  v40[1] = sub_1D616DEA0;
  v41.n128_u64[0] = *(v0 + 536);
  v42 = *(v0 + 520);

  return sub_1D6163FF4(v42, v37, v41);
}

uint64_t sub_1D616FD04()
{
  v64 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1048);
  *(v0 + 1104) = v4;
  *(v0 + 480) = v4;
  v5 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (!swift_dynamicCast())
  {
    goto LABEL_17;
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 != 1)
  {
    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v7);
LABEL_17:
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  v54 = *(v0 + 32);
  v55 = *(v0 + 16);
  v8 = *(*(v0 + 528) + qword_1EDFFCF30);
  type metadata accessor for FeedGroupEmitter();

  if (sub_1D726279C())
  {
    v9 = 0;
    do
    {
      v10 = sub_1D726277C();
      sub_1D726271C();
      if (v10)
      {

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          return result;
        }
      }

      v13 = sub_1D5C0BA9C();
      v15 = sub_1D5B69D90(v13, v14);
      v17 = v16;

      if (v17)
      {
        *&v62 = v8;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D5C06BE0();
          v8 = v62;
        }

        sub_1D5B7C390((*(v8 + 56) + 32 * v15), (v0 + 56));
        sub_1D67135D8(v15, v8);
      }

      else
      {

        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_1D5B88AA0(v0 + 56, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
      ++v9;
    }

    while (v12 != sub_1D726279C());
  }

  v19 = *(v0 + 792);
  v20 = *(v0 + 776);
  v21 = *(v0 + 768);
  v22 = *(v0 + 736);
  v23 = *(v0 + 664);
  v24 = *(v0 + 568);
  v51 = *(v0 + 656);
  v25 = *(v0 + 528);

  (*(v19 + 56))(v22, 1, 1, v24);
  v56 = 7;
  v26 = *(v20 + 56);
  v26(v23, 1, 1, v21);
  v26(v51, 1, 1, v21);
  v27 = sub_1D61754E8(*(v25 + qword_1EDFFCF08), v6);

  v28 = *(v25 + qword_1EDFFCEF8);
  v29 = __OFADD__(v28, 1);
  v30 = (v28 + 1);
  if (v29)
  {
    goto LABEL_25;
  }

  v45 = v30;
  v52 = *(v0 + 728);
  v53 = *(v0 + 720);
  v47 = *(v0 + 664);
  v48 = *(v0 + 736);
  v46 = *(v0 + 656);
  v43 = *(v0 + 600);
  v49 = *(v0 + 592);
  v50 = *(v0 + 584);
  v31 = *(v0 + 552);
  v44 = v27;
  v32 = *(v0 + 528);
  (*(*(*(v0 + 576) - 8) + 56))();
  v33 = type metadata accessor for FeedContext();
  (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
  v34 = (v32 + *(*v32 + 240));
  v35 = v34[1];
  v36 = v34[2];
  v59 = *v34;
  v60 = v35;
  v61 = v36;
  v62 = v55;
  v63 = v54;

  sub_1D5C0C3EC(&v59, &v62, &v57);

  sub_1D5C08648(*(&v55 + 1));
  v62 = v57;
  v63 = v58;
  v59 = 0;
  LOWORD(v60) = 256;
  v37 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v48, 0, &v56, v47, v46, 0, v44, 0, 0, 0, 0, v45, 0, 0, 1, 0, 1, v8, 0, v43, v31, &v62, &v59, 0, 0, 0);
  *(v0 + 1112) = v37;

  sub_1D5C086A4(v62);
  v38 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v31, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v49 + 8))(v43, v50);
  v39 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v46, &qword_1EDF45B00, MEMORY[0x1E6969530], v38, sub_1D5B6BFD8);
  sub_1D5B88AA0(v47, &qword_1EDF45B00, v39, v38, sub_1D5B6BFD8);
  (*(v52 + 8))(v48, v53);
  v40 = swift_task_alloc();
  *(v0 + 1120) = v40;
  *v40 = v0;
  v40[1] = sub_1D616DEA0;
  v41.n128_u64[0] = *(v0 + 536);
  v42 = *(v0 + 520);

  return sub_1D6163FF4(v42, v37, v41);
}

uint64_t sub_1D6170608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6170884(uint64_t a1, uint64_t *a2, double a3)
{
  *(v4 + 496) = v3;
  *(v4 + 488) = a3;
  *(v4 + 472) = a1;
  *(v4 + 480) = a2;
  v5 = *v3;
  *(v4 + 504) = *v3;
  v6 = *a2;
  v7 = *(*a2 + 80);
  *(v4 + 512) = v7;
  *(v4 + 520) = *(v6 + 88);
  v8 = type metadata accessor for FeedChosenEmitterResult();
  *(v4 + 528) = v8;
  v9 = sub_1D726393C();
  *(v4 + 536) = v9;
  *(v4 + 544) = *(v9 - 8);
  *(v4 + 552) = swift_task_alloc();
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 568) = swift_task_alloc();
  *(v4 + 576) = swift_task_alloc();
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v4 + 584) = swift_task_alloc();
  *(v4 + 592) = swift_getAssociatedTypeWitness();
  v11 = sub_1D726393C();
  *(v4 + 600) = v11;
  *(v4 + 608) = *(v11 - 8);
  *(v4 + 616) = swift_task_alloc();
  *(v4 + 624) = swift_task_alloc();
  *(v4 + 632) = swift_task_alloc();
  *(v4 + 640) = swift_task_alloc();
  *(v4 + 648) = swift_task_alloc();
  *(v4 + 656) = swift_task_alloc();
  *(v4 + 664) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v10);
  *(v4 + 672) = swift_task_alloc();
  *(v4 + 680) = swift_task_alloc();
  *(v4 + 688) = swift_task_alloc();
  *(v4 + 696) = swift_task_alloc();
  *(v4 + 704) = swift_task_alloc();
  *(v4 + 712) = swift_task_alloc();
  *(v4 + 720) = swift_task_alloc();
  *(v4 + 728) = swift_task_alloc();
  v12 = sub_1D726393C();
  *(v4 + 736) = v12;
  *(v4 + 744) = *(v12 - 8);
  *(v4 + 752) = swift_task_alloc();
  *(v4 + 760) = swift_task_alloc();
  *(v4 + 768) = swift_task_alloc();
  *(v4 + 776) = swift_task_alloc();
  v13 = sub_1D725891C();
  *(v4 + 784) = v13;
  *(v4 + 792) = *(v13 - 8);
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = *(v7 - 8);
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = *(v5 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  *(v4 + 832) = swift_task_alloc();
  v14 = type metadata accessor for FeedCursorGroup();
  *(v4 + 840) = v14;
  *(v4 + 848) = *(v14 - 8);
  *(v4 + 856) = swift_task_alloc();
  *(v4 + 864) = swift_task_alloc();
  *(v4 + 872) = swift_task_alloc();
  *(v4 + 880) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 888) = AssociatedTypeWitness;
  *(v4 + 896) = *(AssociatedTypeWitness - 8);
  *(v4 + 904) = swift_task_alloc();
  *(v4 + 912) = swift_task_alloc();
  *(v4 + 920) = swift_task_alloc();
  *(v4 + 928) = swift_task_alloc();
  v16 = type metadata accessor for FeedScoredResult();
  *(v4 + 936) = v16;
  *(v4 + 944) = *(v16 - 8);
  *(v4 + 952) = swift_task_alloc();
  *(v4 + 960) = swift_task_alloc();
  *(v4 + 968) = swift_task_alloc();
  *(v4 + 976) = swift_getAssociatedConformanceWitness();
  v17 = type metadata accessor for FeedGroupEmitterOutput();
  *(v4 + 984) = v17;
  *(v4 + 992) = *(v17 - 8);
  *(v4 + 1000) = swift_task_alloc();
  *(v4 + 1008) = swift_task_alloc();
  *(v4 + 1016) = *(v8 - 8);
  *(v4 + 1024) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6171094, 0, 0);
}

uint64_t sub_1D6171094()
{
  v1 = *(v0 + 60);
  v2 = *(*(v0 + 62) + 48);
  *(v0 + 129) = v2;
  v3 = *(v1 + qword_1EDFFCF48);
  *(v0 + 130) = v3;
  *(v0 + 48) = v3;
  *(v0 + 131) = type metadata accessor for FeedGroupEmitter();
  *(v0 + 132) = sub_1D72627FC();
  *(v0 + 133) = swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v4 = *(v0 + 60);
    (*(*(v0 + 127) + 56))(*(v0 + 69), 1, 1, *(v0 + 66));
    v5 = sub_1D726275C();
    *(v0 + 148) = v5;
    v6 = *(v4 + qword_1EDFFCF30);
    v7 = sub_1D61756CC();
    *(v0 + 149) = v7;
    v8 = swift_task_alloc();
    *(v0 + 150) = v8;
    *v8 = v0;
    v8[1] = sub_1D6171A9C;
    v9 = *(v0 + 69);
    v10 = v0[61];
    v11 = *(v0 + 59);
    v12 = *(v0 + 60);

    return sub_1D6175760(v11, v9, 0, v5, v6, v7, v12, v2, v10);
  }

  else
  {
    v14 = swift_task_alloc();
    *(v0 + 134) = v14;
    *v14 = v0;
    v14[1] = sub_1D5C03D00;
    v15 = *(v0 + 128);
    v16 = v0[61];
    v17 = *(v0 + 60);

    return sub_1D6174AD8(v15, v3, v17, 0, v16);
  }
}

uint64_t sub_1D61712D8()
{
  v2 = *v1;
  *(*v1 + 1104) = v0;

  (*(v2[68] + 8))(v2[72], v2[67]);

  if (v0)
  {
    v3 = sub_1D6173F4C;
  }

  else
  {
    v3 = sub_1D617145C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D617145C()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[66];
  (*(v0[124] + 8))(v0[126], v0[123]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6171730()
{
  v2 = *v1;
  *(*v1 + 1144) = v0;

  (*(v2[68] + 8))(v2[71], v2[67]);

  if (v0)
  {
    v3 = sub_1D6172D9C;
  }

  else
  {
    v3 = sub_1D617145C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D61718F4()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  (*(v2[68] + 8))(v2[70], v2[67]);

  if (v0)
  {
    v3 = sub_1D6173674;
  }

  else
  {
    v3 = sub_1D617145C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D6171A9C()
{
  v2 = *v1;
  v3 = *v1;
  v2[151] = v0;

  (*(v2[68] + 8))(v2[69], v2[67]);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6171EA8, 0, 0);
  }

  else
  {

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1D6171EA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6172148()
{
  *(*v1 + 1240) = v0;

  if (v0)
  {
    v2 = sub_1D6174824;
  }

  else
  {
    v2 = sub_1D617225C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D617225C()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6172504()
{
  v63 = v0;
  v1 = *(v0 + 1080);
  *(v0 + 1216) = v1;
  *(v0 + 392) = v1;
  v2 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 48);
    if (v3 == 1)
    {
      v36 = *(v0 + 32);
      v37 = *(v0 + 16);
      v4 = *(v0 + 1056);
      v38 = *(v0 + 1064);
      v5 = *(v0 + 824);
      v6 = *(v0 + 808);
      v7 = *(v0 + 792);
      v45 = *(v0 + 680);
      v47 = *(v0 + 784);
      v49 = *(v0 + 672);
      v51 = *(v0 + 1040);
      v8 = *(v0 + 504);
      v41 = *(v0 + 512);
      v43 = *(v0 + 752);
      v53 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v9 = swift_task_alloc();
      v10 = *(v8 + 80);
      *v9 = v10;
      v9[1] = v5;
      KeyPath = swift_getKeyPath();

      v12 = swift_task_alloc();
      v12[2] = v10;
      v12[3] = v5;
      v12[4] = KeyPath;
      v14 = sub_1D5B874E4(sub_1D617D1E8, v12, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v13);

      v15 = sub_1D5B86020(v14);

      (*(v6 + 56))(v43, 1, 1, v41);
      v55 = 7;
      v16 = *(v7 + 56);
      v16(v45, 1, 1, v47);
      v16(v49, 1, 1, v47);
      *(v0 + 408) = v51;
      v17 = swift_task_alloc();
      v17[2] = v10;
      v17[3] = v5;
      v17[4] = v15;

      swift_getWitnessTable();
      v18 = sub_1D7263E7C();

      v20 = *(v53 + qword_1EDFFCEF8);
      if (__OFADD__(v20, 1))
      {
        __break(1u);
      }

      else
      {
        v39 = (v20 + 1);
        v40 = v18;
        v52 = *(v0 + 744);
        v54 = *(v0 + 736);
        v44 = *(v0 + 680);
        v46 = *(v0 + 752);
        v42 = *(v0 + 672);
        v21 = *(v0 + 616);
        v48 = *(v0 + 608);
        v50 = *(v0 + 600);
        v22 = *(v0 + 584);
        v23 = *(v0 + 480);
        v35 = *(v23 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v21, 1, 1);
        v24 = type metadata accessor for FeedContext();
        (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
        v25 = (v23 + *(*v23 + 240));
        v26 = v25[1];
        v27 = v25[2];
        v58 = *v25;
        v59 = v26;
        v60 = v27;
        v61 = v37;
        v62 = v36;

        sub_1D5C0C3EC(&v58, &v61, &v56);

        sub_1D5C08648(*(&v37 + 1));
        v61 = v56;
        v62 = v57;
        v58 = 0;
        LOWORD(v59) = 256;
        v28 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v46, 0, &v55, v44, v42, v40, v35, 0, 0, 0, 0, v39, 0, 0, 1, 0, 1, 0, 0, v21, v22, &v61, &v58, 0, 0, 0);
        *(v0 + 1224) = v28;

        sub_1D5C086A4(v61);
        v29 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v22, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v48 + 8))(v21, v50);
        v30 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v42, &qword_1EDF45B00, MEMORY[0x1E6969530], v29, sub_1D5B6BFD8);
        sub_1D5B88AA0(v44, &qword_1EDF45B00, v30, v29, sub_1D5B6BFD8);
        (*(v52 + 8))(v46, v54);
        v31 = swift_task_alloc();
        *(v0 + 1232) = v31;
        *v31 = v0;
        v31[1] = sub_1D6172148;
        v32.n128_u64[0] = *(v0 + 488);
        v33 = *(v0 + 472);

        return sub_1D6163FF4(v33, v28, v32);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v3);
  }

  swift_willThrow();

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1D6172D9C()
{
  v66 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 528);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1144);
  *(v0 + 1216) = v4;
  *(v0 + 392) = v4;
  v5 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    if (v6 == 1)
    {
      v39 = *(v0 + 32);
      v40 = *(v0 + 16);
      v7 = *(v0 + 1056);
      v41 = *(v0 + 1064);
      v8 = *(v0 + 824);
      v9 = *(v0 + 808);
      v10 = *(v0 + 792);
      v48 = *(v0 + 680);
      v50 = *(v0 + 784);
      v52 = *(v0 + 672);
      v54 = *(v0 + 1040);
      v11 = *(v0 + 504);
      v44 = *(v0 + 512);
      v46 = *(v0 + 752);
      v56 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v12 = swift_task_alloc();
      v13 = *(v11 + 80);
      *v12 = v13;
      v12[1] = v8;
      KeyPath = swift_getKeyPath();

      v15 = swift_task_alloc();
      v15[2] = v13;
      v15[3] = v8;
      v15[4] = KeyPath;
      v17 = sub_1D5B874E4(sub_1D617D1E8, v15, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v16);

      v18 = sub_1D5B86020(v17);

      (*(v9 + 56))(v46, 1, 1, v44);
      v58 = 7;
      v19 = *(v10 + 56);
      v19(v48, 1, 1, v50);
      v19(v52, 1, 1, v50);
      *(v0 + 408) = v54;
      v20 = swift_task_alloc();
      v20[2] = v13;
      v20[3] = v8;
      v20[4] = v18;

      swift_getWitnessTable();
      v21 = sub_1D7263E7C();

      v23 = *(v56 + qword_1EDFFCEF8);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        v42 = (v23 + 1);
        v43 = v21;
        v55 = *(v0 + 744);
        v57 = *(v0 + 736);
        v47 = *(v0 + 680);
        v49 = *(v0 + 752);
        v45 = *(v0 + 672);
        v24 = *(v0 + 616);
        v51 = *(v0 + 608);
        v53 = *(v0 + 600);
        v25 = *(v0 + 584);
        v26 = *(v0 + 480);
        v38 = *(v26 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v24, 1, 1);
        v27 = type metadata accessor for FeedContext();
        (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
        v28 = (v26 + *(*v26 + 240));
        v29 = v28[1];
        v30 = v28[2];
        v61 = *v28;
        v62 = v29;
        v63 = v30;
        v64 = v40;
        v65 = v39;

        sub_1D5C0C3EC(&v61, &v64, &v59);

        sub_1D5C08648(*(&v40 + 1));
        v64 = v59;
        v65 = v60;
        v61 = 0;
        LOWORD(v62) = 256;
        v31 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v49, 0, &v58, v47, v45, v43, v38, 0, 0, 0, 0, v42, 0, 0, 1, 0, 1, 0, 0, v24, v25, &v64, &v61, 0, 0, 0);
        *(v0 + 1224) = v31;

        sub_1D5C086A4(v64);
        v32 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v25, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v51 + 8))(v24, v53);
        v33 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v45, &qword_1EDF45B00, MEMORY[0x1E6969530], v32, sub_1D5B6BFD8);
        sub_1D5B88AA0(v47, &qword_1EDF45B00, v33, v32, sub_1D5B6BFD8);
        (*(v55 + 8))(v49, v57);
        v34 = swift_task_alloc();
        *(v0 + 1232) = v34;
        *v34 = v0;
        v34[1] = sub_1D6172148;
        v35.n128_u64[0] = *(v0 + 488);
        v36 = *(v0 + 472);

        return sub_1D6163FF4(v36, v31, v35);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v6);
  }

  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1D6173674()
{
  v66 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 528);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1176);
  *(v0 + 1216) = v4;
  *(v0 + 392) = v4;
  v5 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    if (v6 == 1)
    {
      v39 = *(v0 + 32);
      v40 = *(v0 + 16);
      v7 = *(v0 + 1056);
      v41 = *(v0 + 1064);
      v8 = *(v0 + 824);
      v9 = *(v0 + 808);
      v10 = *(v0 + 792);
      v48 = *(v0 + 680);
      v50 = *(v0 + 784);
      v52 = *(v0 + 672);
      v54 = *(v0 + 1040);
      v11 = *(v0 + 504);
      v44 = *(v0 + 512);
      v46 = *(v0 + 752);
      v56 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v12 = swift_task_alloc();
      v13 = *(v11 + 80);
      *v12 = v13;
      v12[1] = v8;
      KeyPath = swift_getKeyPath();

      v15 = swift_task_alloc();
      v15[2] = v13;
      v15[3] = v8;
      v15[4] = KeyPath;
      v17 = sub_1D5B874E4(sub_1D617D1E8, v15, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v16);

      v18 = sub_1D5B86020(v17);

      (*(v9 + 56))(v46, 1, 1, v44);
      v58 = 7;
      v19 = *(v10 + 56);
      v19(v48, 1, 1, v50);
      v19(v52, 1, 1, v50);
      *(v0 + 408) = v54;
      v20 = swift_task_alloc();
      v20[2] = v13;
      v20[3] = v8;
      v20[4] = v18;

      swift_getWitnessTable();
      v21 = sub_1D7263E7C();

      v23 = *(v56 + qword_1EDFFCEF8);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        v42 = (v23 + 1);
        v43 = v21;
        v55 = *(v0 + 744);
        v57 = *(v0 + 736);
        v47 = *(v0 + 680);
        v49 = *(v0 + 752);
        v45 = *(v0 + 672);
        v24 = *(v0 + 616);
        v51 = *(v0 + 608);
        v53 = *(v0 + 600);
        v25 = *(v0 + 584);
        v26 = *(v0 + 480);
        v38 = *(v26 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v24, 1, 1);
        v27 = type metadata accessor for FeedContext();
        (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
        v28 = (v26 + *(*v26 + 240));
        v29 = v28[1];
        v30 = v28[2];
        v61 = *v28;
        v62 = v29;
        v63 = v30;
        v64 = v40;
        v65 = v39;

        sub_1D5C0C3EC(&v61, &v64, &v59);

        sub_1D5C08648(*(&v40 + 1));
        v64 = v59;
        v65 = v60;
        v61 = 0;
        LOWORD(v62) = 256;
        v31 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v49, 0, &v58, v47, v45, v43, v38, 0, 0, 0, 0, v42, 0, 0, 1, 0, 1, 0, 0, v24, v25, &v64, &v61, 0, 0, 0);
        *(v0 + 1224) = v31;

        sub_1D5C086A4(v64);
        v32 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v25, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v51 + 8))(v24, v53);
        v33 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v45, &qword_1EDF45B00, MEMORY[0x1E6969530], v32, sub_1D5B6BFD8);
        sub_1D5B88AA0(v47, &qword_1EDF45B00, v33, v32, sub_1D5B6BFD8);
        (*(v55 + 8))(v49, v57);
        v34 = swift_task_alloc();
        *(v0 + 1232) = v34;
        *v34 = v0;
        v34[1] = sub_1D6172148;
        v35.n128_u64[0] = *(v0 + 488);
        v36 = *(v0 + 472);

        return sub_1D6163FF4(v36, v31, v35);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v6);
  }

  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1D6173F4C()
{
  v66 = v0;
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 528);
  (*(*(v0 + 992) + 8))(*(v0 + 1008), *(v0 + 984));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1104);
  *(v0 + 1216) = v4;
  *(v0 + 392) = v4;
  v5 = v4;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  type metadata accessor for FeedServiceError();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    if (v6 == 1)
    {
      v39 = *(v0 + 32);
      v40 = *(v0 + 16);
      v7 = *(v0 + 1056);
      v41 = *(v0 + 1064);
      v8 = *(v0 + 824);
      v9 = *(v0 + 808);
      v10 = *(v0 + 792);
      v48 = *(v0 + 680);
      v50 = *(v0 + 784);
      v52 = *(v0 + 672);
      v54 = *(v0 + 1040);
      v11 = *(v0 + 504);
      v44 = *(v0 + 512);
      v46 = *(v0 + 752);
      v56 = *(v0 + 480);
      *(v0 + 400) = *(v0 + 40);
      v12 = swift_task_alloc();
      v13 = *(v11 + 80);
      *v12 = v13;
      v12[1] = v8;
      KeyPath = swift_getKeyPath();

      v15 = swift_task_alloc();
      v15[2] = v13;
      v15[3] = v8;
      v15[4] = KeyPath;
      v17 = sub_1D5B874E4(sub_1D617D1E8, v15, v7, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v16);

      v18 = sub_1D5B86020(v17);

      (*(v9 + 56))(v46, 1, 1, v44);
      v58 = 7;
      v19 = *(v10 + 56);
      v19(v48, 1, 1, v50);
      v19(v52, 1, 1, v50);
      *(v0 + 408) = v54;
      v20 = swift_task_alloc();
      v20[2] = v13;
      v20[3] = v8;
      v20[4] = v18;

      swift_getWitnessTable();
      v21 = sub_1D7263E7C();

      v23 = *(v56 + qword_1EDFFCEF8);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        v42 = (v23 + 1);
        v43 = v21;
        v55 = *(v0 + 744);
        v57 = *(v0 + 736);
        v47 = *(v0 + 680);
        v49 = *(v0 + 752);
        v45 = *(v0 + 672);
        v24 = *(v0 + 616);
        v51 = *(v0 + 608);
        v53 = *(v0 + 600);
        v25 = *(v0 + 584);
        v26 = *(v0 + 480);
        v38 = *(v26 + qword_1EDFFCF08);
        (*(*(*(v0 + 592) - 8) + 56))(v24, 1, 1);
        v27 = type metadata accessor for FeedContext();
        (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
        v28 = (v26 + *(*v26 + 240));
        v29 = v28[1];
        v30 = v28[2];
        v61 = *v28;
        v62 = v29;
        v63 = v30;
        v64 = v40;
        v65 = v39;

        sub_1D5C0C3EC(&v61, &v64, &v59);

        sub_1D5C08648(*(&v40 + 1));
        v64 = v59;
        v65 = v60;
        v61 = 0;
        LOWORD(v62) = 256;
        v31 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v49, 0, &v58, v47, v45, v43, v38, 0, 0, 0, 0, v42, 0, 0, 1, 0, 1, 0, 0, v24, v25, &v64, &v61, 0, 0, 0);
        *(v0 + 1224) = v31;

        sub_1D5C086A4(v64);
        v32 = MEMORY[0x1E69E6720];
        sub_1D5B88AA0(v25, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v51 + 8))(v24, v53);
        v33 = MEMORY[0x1E6969530];
        sub_1D5B88AA0(v45, &qword_1EDF45B00, MEMORY[0x1E6969530], v32, sub_1D5B6BFD8);
        sub_1D5B88AA0(v47, &qword_1EDF45B00, v33, v32, sub_1D5B6BFD8);
        (*(v55 + 8))(v49, v57);
        v34 = swift_task_alloc();
        *(v0 + 1232) = v34;
        *v34 = v0;
        v34[1] = sub_1D6172148;
        v35.n128_u64[0] = *(v0 + 488);
        v36 = *(v0 + 472);

        return sub_1D6163FF4(v36, v31, v35);
      }

      return result;
    }

    sub_1D5EAD330(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v6);
  }

  swift_willThrow();

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1D6174824()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6174AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  *(v6 + 176) = v5;
  *(v6 + 168) = a5;
  *(v6 + 152) = a3;
  *(v6 + 160) = a4;
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  v7 = *v5;
  v8 = *a3;
  *(v6 + 184) = *(*v5 + 88);
  *(v6 + 192) = *(v7 + 80);
  *(v6 + 200) = *(v8 + 80);
  *(v6 + 208) = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(v6 + 216) = swift_getAssociatedTypeWitness();
  *(v6 + 224) = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FeedGroupEmitterOutput();
  *(v6 + 232) = v9;
  *(v6 + 240) = *(v9 - 8);
  *(v6 + 248) = swift_task_alloc();
  v10 = type metadata accessor for FeedGroupEmitterCachedOutput();
  *(v6 + 256) = v10;
  v11 = sub_1D726393C();
  *(v6 + 264) = v11;
  *(v6 + 272) = *(v11 - 8);
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = swift_task_alloc();
  *(v6 + 304) = *(v10 - 8);
  *(v6 + 312) = swift_task_alloc();
  v12 = type metadata accessor for FeedScoredResult();
  *(v6 + 320) = v12;
  v13 = sub_1D726393C();
  *(v6 + 328) = v13;
  *(v6 + 336) = *(v13 - 8);
  *(v6 + 344) = swift_task_alloc();
  v14 = *(v12 - 8);
  *(v6 + 352) = v14;
  *(v6 + 360) = *(v14 + 64);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6174E98, 0, 0);
}

uint64_t sub_1D6174E98()
{
  v49 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v44 = v2;
  v45 = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v42 = v4;
  v43 = v5;
  v6 = *(v0 + 144);
  v40 = v6;
  *(v0 + 400) = CACurrentMediaTime();
  v7 = FeedGroupSlots.absoluteDescription<A>(cursor:)(v4, v5);
  v9 = v8;
  *(v0 + 408) = v7;
  *(v0 + 416) = v8;
  v10 = v7;
  v41 = v7;
  v46 = *(v3 + 48);
  *(v0 + 424) = v46;
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  *(v0 + 432) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D7270C10;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D5B7E2C0();
  *(v0 + 440) = v13;
  *(v12 + 64) = v13;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v0 + 48) = v6;
  v14 = swift_task_alloc();
  *(v14 + 16) = v1;
  *(v14 + 24) = v2;
  *(v0 + 448) = type metadata accessor for FeedGroupEmitter();
  v15 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v16 = MEMORY[0x1E69E6158];
  v18 = sub_1D5B874E4(sub_1D617CD6C, v14, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v17);

  v19 = MEMORY[0x1DA6F9D20](v18, v16);
  v21 = v20;

  *(v12 + 96) = v16;
  *(v12 + 104) = v13;
  *(v12 + 72) = v19;
  *(v12 + 80) = v21;
  sub_1D7262EDC();
  sub_1D725C30C();

  type metadata accessor for FeedGroupEmitTaskGap();
  v22 = *(v3 + 40);
  v23 = *(v3 + 48);
  v24 = *(v3 + 56);
  v25 = *(v3 + 64);
  v47[0] = *(v3 + 32);
  v47[1] = v22;
  v47[2] = v23;
  v47[3] = v24;
  v48 = v25;

  v26 = v23;
  v27 = v24;

  v28 = sub_1D5FE6010(v47);
  *(v0 + 456) = v28;
  v29 = sub_1D726279C();
  LOBYTE(v24) = sub_1D6F73578(v29);
  *(v0 + 56) = v40;
  v30 = swift_task_alloc();
  *(v30 + 16) = v42;
  *(v30 + 24) = v28;
  *(v30 + 32) = v24 & 1;
  *(v30 + 40) = v43;
  *(v30 + 48) = v3;
  *(v30 + 56) = v41;
  *(v30 + 64) = v9;
  v31 = type metadata accessor for FeedGroupEmitTask();
  *(v0 + 464) = v31;
  v33 = sub_1D5B874E4(sub_1D617CDA8, v30, v15, v31, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v32);
  *(v0 + 472) = v33;
  *(v0 + 480) = 0;

  v34 = type metadata accessor for FeedGroupEmitTaskGroupResult();
  *(v0 + 488) = type metadata accessor for FeedGroupEmitTaskResult();
  v35 = sub_1D7261E1C();
  v36 = swift_task_alloc();
  *(v0 + 496) = v36;
  v36[2] = v45;
  v36[3] = v44;
  v36[4] = v33;
  v36[5] = v28;
  v36[6] = v46;
  v36[7] = v41;
  v36[8] = v9;
  v37 = swift_task_alloc();
  *(v0 + 504) = v37;
  *v37 = v0;
  v37[1] = sub_1D61752D8;
  v51 = v35;

  return MEMORY[0x1EEE6DBF8](v0 + 64, v34, v35, 0, 0, &unk_1D72A6910, v36, v34);
}

uint64_t sub_1D61752D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D5BC184C, 0, 0);
}

uint64_t sub_1D61753F0(uint64_t a1, uint64_t a2)
{
  sub_1D5BEE1B8(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  swift_allocObject();
  v4 = sub_1D726270C();
  *v5 = a2;
  type metadata accessor for FeedGroupEmitter();
  v6 = sub_1D5BFCB60(v4);

  v7 = sub_1D61754E8(a1, v6);

  return v7;
}

uint64_t sub_1D61754E8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for FeedGroupEmitter();
  v3 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1D5B874E4(sub_1D617DAC4, KeyPath, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v5);

  sub_1D5B86020(v6);

  v7 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v8 = sub_1D726275C();
  sub_1D6F78E04(v8, v7, v3, MEMORY[0x1E69E6540]);

  sub_1D7261E1C();
  swift_getWitnessTable();
  sub_1D726248C();

  return a2;
}

uint64_t sub_1D61756CC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitter();

  return sub_1D726275C();
}

uint64_t sub_1D6175760(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, double a9)
{
  *(v9 + 208) = a9;
  *(v9 + 192) = a8;
  *(v9 + 200) = v16;
  *(v9 + 176) = a6;
  *(v9 + 184) = a7;
  *(v9 + 160) = a4;
  *(v9 + 168) = a5;
  *(v9 + 344) = a3;
  *(v9 + 144) = a1;
  *(v9 + 152) = a2;
  v10 = *a7;
  *(v9 + 216) = *v16;
  v11 = MEMORY[0x1E69E6720];
  sub_1D5B6BFD8(0, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720]);
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = *(v10 + 88);
  *(v9 + 240) = *(v10 + 80);
  *(v9 + 248) = swift_getAssociatedTypeWitness();
  v12 = sub_1D726393C();
  *(v9 + 256) = v12;
  *(v9 + 264) = *(v12 - 8);
  *(v9 + 272) = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF45B00, MEMORY[0x1E6969530], v11);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  v13 = sub_1D726393C();
  *(v9 + 296) = v13;
  *(v9 + 304) = *(v13 - 8);
  *(v9 + 312) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D61759DC, 0, 0);
}

uint64_t sub_1D61759DC()
{
  v100 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 344);
  v3 = FeedCursor.nextSlotIndex.getter();
  v4 = *(v1 + qword_1EDFFCF08);
  type metadata accessor for FeedGroupEmitter();
  v5 = sub_1D72627FC();
  v88 = v0;
  *(v0 + 128) = nullsub_1(v4);
  *(swift_task_alloc() + 16) = v3;
  v84 = v5;
  sub_1D7261DCC();

  swift_getWitnessTable();
  v86 = v0 + 128;
  v6 = sub_1D72624DC();

  if ((v2 & 1) == 0 && (v6 & 1) == 0)
  {
    v7 = v0;
    v8 = *(v0 + 200);
    sub_1D7262EDC();
    sub_1D725C30C();
    sub_1D617CCB4(v8 + 120, v0 + 56);
    if (*(v0 + 80))
    {
      sub_1D5B63F14((v0 + 56), v0 + 16);
      v9 = *(v0 + 40);
      v10 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
      if (FeedOfflineProviding.isOffline.getter(v9, v10))
      {
        FeedCursor.feedMode.getter(&v96);
        if (v96 == 1)
        {
        }

        else
        {
          v38 = sub_1D72646CC();

          if ((v38 & 1) == 0)
          {
            type metadata accessor for FeedServiceError();
            swift_getWitnessTable();
            swift_allocError();
            *v67 = 2;
            *(v67 + 8) = 0;
            *(v67 + 16) = 0;
            *(v67 + 24) = 0;
            *(v67 + 32) = 6;
            swift_willThrow();
            __swift_destroy_boxed_opaque_existential_1(v0 + 16);

            v66 = *(v0 + 8);
            goto LABEL_33;
          }
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
      sub_1D617D2E4(v0 + 56, &qword_1EDF37A60, &qword_1EDF37A68, &protocol descriptor for FeedOfflineProviding);
    }

    v39 = sub_1D7261CFC();
    v92 = v39;
    if (sub_1D726279C())
    {
      v40 = 0;
      v41 = (v86 - 32);
      v91 = v88[21];
      v42 = v88[20] + 32;
      while (1)
      {
        v43 = sub_1D726277C();
        sub_1D726271C();
        if (v43)
        {
          v44 = *(v42 + 8 * v40);

          v45 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          result = sub_1D7263DBC();
          v44 = result;
          v45 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }
        }

        if (sub_1D6B6AEFC())
        {
          *(v86 + 8) = v44;
          sub_1D72627BC();
        }

        else
        {
          v46 = sub_1D5C0BA9C();
          v47 = v91;
          v49 = sub_1D5B69D90(v46, v48);
          v51 = v50;

          if (v51)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v96 = v91;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D5C06BE0();
              v47 = v96;
            }

            sub_1D5B7C390((*(v47 + 56) + 32 * v49), v41);
            v91 = v47;
            sub_1D67135D8(v49, v47);
          }

          else
          {

            *v41 = 0u;
            *(v86 - 16) = 0u;
          }

          sub_1D5B88AA0(v41, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1D5BEE1B8);
          v7 = v88;
        }

        ++v40;
        if (v45 == sub_1D726279C())
        {
          v74 = v92;
          goto LABEL_32;
        }
      }
    }

    v91 = v88[21];
    v74 = v39;
LABEL_32:
    v72 = v7[39];
    v83 = v7[38];
    v53 = v7[36];
    v89 = v7[37];
    v55 = v7[34];
    v54 = v7[35];
    v75 = v7[33];
    v56 = v7[31];
    v78 = v7[32];
    v70 = v7[23];
    v73 = v7[22];
    v68 = v7[28];
    v69 = v7[19];
    v81 = v7[18];
    (*(*(v7[30] - 8) + 56))();
    v93 = 7;
    v57 = sub_1D725891C();
    v58 = *(*(v57 - 8) + 56);
    v58(v53, 1, 1, v57);
    v58(v54, 1, 1, v57);
    v71 = sub_1D726275C();
    v59 = MEMORY[0x1E69E6530];
    swift_getTupleTypeMetadata2();
    v60 = sub_1D726275C();
    v61 = sub_1D6F78E04(v60, v59, v84, MEMORY[0x1E69E6540]);

    (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    v62 = type metadata accessor for FeedContext();
    (*(*(v62 - 8) + 56))(v68, 1, 1, v62);
    sub_1D6176980(v69, v70, &v94);
    v96 = v94;
    v97 = v95;
    v98 = 0;
    v99 = 256;
    v63 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v72, 0, &v93, v53, v54, v71, v61, v73, v74, 0, 0, 0, 1, 0, 1, 0, 1, v91, 0, v55, v68, &v96, &v98, 0, 0, 0);

    sub_1D5C086A4(v96);
    v64 = MEMORY[0x1E69E6720];
    sub_1D5B88AA0(v68, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
    (*(v75 + 8))(v55, v78);
    v65 = MEMORY[0x1E6969530];
    sub_1D5B88AA0(v54, &qword_1EDF45B00, MEMORY[0x1E6969530], v64, sub_1D5B6BFD8);
    sub_1D5B88AA0(v53, &qword_1EDF45B00, v65, v64, sub_1D5B6BFD8);
    (*(v83 + 8))(v72, v89);
    *v81 = v63;
    type metadata accessor for FeedServiceFetchResult.Internal();
    swift_storeEnumTagMultiPayload();

    v66 = v7[1];
LABEL_33:

    return v66();
  }

  v11 = *(v0 + 312);
  v13 = *(v0 + 280);
  v12 = *(v0 + 288);
  v14 = *(v0 + 240);
  v15 = *(v0 + 184);
  v16 = *(v0 + 344);
  sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D7270C10;
  v18 = MEMORY[0x1E69E6370];
  v19 = MEMORY[0x1E69E63A8];
  *(v17 + 56) = MEMORY[0x1E69E6370];
  *(v17 + 64) = v19;
  *(v17 + 32) = v6 & 1;
  *(v17 + 96) = v18;
  *(v17 + 104) = v19;
  *(v17 + 72) = v16;
  sub_1D7262EDC();
  sub_1D725C30C();

  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  LOBYTE(v92) = 7;
  v20 = sub_1D725891C();
  v21 = *(*(v20 - 8) + 56);
  v21(v12, 1, 1, v20);
  result = (v21)(v13, 1, 1, v20);
  v23 = *(v15 + qword_1EDFFCEF8);
  v24 = (v23 + 1);
  if (__OFADD__(v23, 1))
  {
    goto LABEL_38;
  }

  v90 = *(v0 + 296);
  v79 = *(v0 + 288);
  v25 = *(v0 + 272);
  v80 = *(v0 + 280);
  v82 = *(v0 + 312);
  v26 = *(v0 + 264);
  v85 = *(v0 + 256);
  v87 = *(v0 + 304);
  v27 = *(v0 + 224);
  v28 = *(v0 + 176);
  v29 = *(v0 + 184);
  v30 = *(v0 + 168);
  v76 = *(v0 + 160);
  v31 = *(v0 + 152);
  (*(*(*(v0 + 248) - 8) + 56))(v25, 1, 1);
  v32 = type metadata accessor for FeedContext();
  (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  sub_1D6176980(v31, v29, &v94);
  v96 = v94;
  v97 = v95;
  v98 = 0;
  v99 = 256;
  v77 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v82, 0, &v92, v79, v80, v76, 0, v28, 0, 0, 0, v24, 0, 0, 1, 0, 1, v30, 0, v25, v27, &v96, &v98, 0, 0, 0);
  *(v0 + 320) = v77;
  sub_1D5C086A4(v96);
  v33 = MEMORY[0x1E69E6720];
  sub_1D5B88AA0(v27, qword_1EDF34CA0, type metadata accessor for FeedContext, MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  (*(v26 + 8))(v25, v85);
  v34 = MEMORY[0x1E6969530];
  sub_1D5B88AA0(v80, &qword_1EDF45B00, MEMORY[0x1E6969530], v33, sub_1D5B6BFD8);
  sub_1D5B88AA0(v79, &qword_1EDF45B00, v34, v33, sub_1D5B6BFD8);
  (*(v87 + 8))(v82, v90);
  v35 = swift_task_alloc();
  *(v0 + 328) = v35;
  *v35 = v0;
  v35[1] = sub_1D6176724;
  v36.n128_u64[0] = *(v0 + 208);
  v37 = *(v0 + 144);

  return sub_1D6163FF4(v37, v77, v36);
}

uint64_t sub_1D6176724()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D61768D8;
  }

  else
  {
    v2 = sub_1D6176838;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6176838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D61768D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6176980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v30 = a3;
  v5 = type metadata accessor for FeedChosenEmitterResult();
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - v9;
  v11 = *(v5 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v29 - v15;
  (*(v7 + 16))(v10, a1, v6, v14);
  if ((*(v11 + 48))(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = (a2 + *(*a2 + 240));
    v29 = *v17;
    v18 = *(v17 + 2);

    v20 = v29;
  }

  else
  {
    (*(v11 + 32))(v16, v10, v5);
    v21 = (a2 + *(*a2 + 240));
    v22 = v21[1];
    v23 = v21[2];
    v34[0] = *v21;
    v34[1] = v22;
    v34[2] = v23;
    v24 = &v16[*(v5 + 36)];
    v25 = v24[1];
    v26 = v24[2];
    v31 = *v24;
    v32 = v25;
    v33 = v26;

    sub_1D5C07390(v25);
    sub_1D5C0C3EC(v34, &v31, &v35);
    v27 = v32;

    sub_1D5C08648(v27);

    result = (*(v11 + 8))(v16, v5);
    v20 = v35;
    v18 = v36;
  }

  v28 = v30;
  *v30 = v20;
  *(v28 + 2) = v18;
  return result;
}

uint64_t sub_1D6176C8C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v6 = v5;
  v56 = a3;
  v57 = a4;
  v55 = a2;
  v59 = a5;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FeedGroupEmitTaskResult();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v62 = &v54[-v11];
  swift_getAssociatedTypeWitness();
  v58 = AssociatedConformanceWitness;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for FeedGroupEmitterOutput();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v54[-v17];
  v19 = *(AssociatedTypeWitness - 8);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v54[-v23];
  v25 = *(v15 + 16);
  v63 = a1;
  v25(v18, a1, v14, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v38 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
      sub_1D5B88AA0(&v18[v38], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v37, sub_1D5BEE1B8);
      v39 = v55;
      v27 = v13;
      v40 = v59;
LABEL_13:
      v41 = sub_1D6177438(v24, v39 & 1, v6);
      v42 = *(v27 + 8);
      v43 = (*(v42 + 48))(AssociatedTypeWitness, v42);
      v44 = (*(v42 + 64))(AssociatedTypeWitness, v42);
      (*(v19 + 8))(v24, AssociatedTypeWitness);
      v45 = v62;
      (*(v60 + 16))(v62, v63, v61);
      v34 = v40;
      v31 = v41;
      v33 = v43;
      v32 = v44;
      v35 = v45;
      return sub_1D61777AC(v35, v34, v31, v33, v32);
    }

    v27 = v13;
    if (EnumCaseMultiPayload == 1)
    {
      v28 = MEMORY[0x1E69E6720];
      sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
      v29 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
      sub_1D5B88AA0(&v18[v29], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v28, sub_1D5BEE1B8);
    }

    else
    {
      (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
    }

    goto LABEL_11;
  }

  if ((EnumCaseMultiPayload - 4) >= 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      (*(v15 + 8))(v18, v14);
      v36 = v59;
    }

    else
    {
      v27 = v13;
      v47 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
      sub_1D5B49474(255, qword_1EDF37D80);
      v48 = *(swift_getTupleTypeMetadata2() + 48);
      v49 = swift_getEnumCaseMultiPayload();
      if (!v49)
      {
        v50 = MEMORY[0x1E69E6720];
        sub_1D5BEE1B8(255, &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
        v51 = v48;
        v52 = *(swift_getTupleTypeMetadata2() + 48);
        (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
        sub_1D5B88AA0(&v18[v52], &qword_1EDF43B70, MEMORY[0x1E69E7CA0] + 8, v50, sub_1D5BEE1B8);
        __swift_destroy_boxed_opaque_existential_1(&v18[v51]);
LABEL_11:
        v40 = v59;
LABEL_12:
        v39 = v55;
        goto LABEL_13;
      }

      if (v49 == 1)
      {
        (*(v19 + 32))(v24, v18, AssociatedTypeWitness);
        __swift_destroy_boxed_opaque_existential_1(&v18[v48]);
        v40 = v59;
        goto LABEL_12;
      }

      (*(*(v47 - 8) + 8))(v18, v47);
      __swift_destroy_boxed_opaque_existential_1(&v18[v48]);
      v36 = v59;
    }

    v53 = v62;
    (*(v60 + 16))(v62, v63, v61);
    v31 = -300000.0;
    v32 = -1.79769313e308;
    v33 = 1.0;
    v34 = v36;
    v35 = v53;
    return sub_1D61777AC(v35, v34, v31, v33, v32);
  }

  (*(v15 + 8))(v18, v14);
  v30 = v62;
  (*(v60 + 16))(v62, v63, v61);
  v31 = -200000.0;
  v32 = -1.79769313e308;
  v33 = 1.0;
  v34 = v59;
  v35 = v30;
  return sub_1D61777AC(v35, v34, v31, v33, v32);
}

double sub_1D6177438(uint64_t a1, char a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = AssociatedConformanceWitness;
  if ((a2 & 1) != 0 || (v8 = *(AssociatedConformanceWitness + 8), v9 = *(v8 + 64), v10 = swift_checkMetadataState(), v11 = 1.0, v9(v10, v8) > 0.0))
  {
    v12 = *(v7 + 8);
    v13 = *(v12 + 56);
    v14 = swift_checkMetadataState();
    v15 = v13(v14, v12);
    v16 = v15 * (*(v12 + 48))(v14, v12);
    v17 = a3[12];
    v18 = a3[13];
    __swift_project_boxed_opaque_existential_1(a3 + 9, v17);
    (*(v7 + 96))(&v21, v14, v7);
    FeedPersonalizationServiceType.score<A>(group:context:)(a1, &v21, v17, v14, v18, v12);
    return v16 + v19;
  }

  return v11;
}

uint64_t sub_1D61777AC@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  v7 = *(type metadata accessor for FeedScoredResult() + 44);
  v8 = type metadata accessor for FeedGroupEmitTaskResult();
  v9 = *(*(v8 - 8) + 32);

  return v9(a2 + v7, a1, v8);
}

uint64_t sub_1D617784C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>)
{
  v34 = a7;
  v35 = a6;
  v31 = a4;
  v30 = a3;
  v29 = a2;
  v36 = a8;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v28 = type metadata accessor for FeedGroupEmitterCachedOutput();
  v10 = sub_1D726393C();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  v14 = *a1;
  v15 = sub_1D5C0BA9C();
  v16 = v29;
  v31 = sub_1D6F73704(v15, v17, v29, v30, v31);

  type metadata accessor for FeedGroupEmitTask();
  v18 = *(a5 + 40);
  v20 = *(a5 + 48);
  v19 = *(a5 + 56);
  v21 = *(a5 + 64);
  v39[0] = *(a5 + 32);
  v39[1] = v18;
  v39[2] = v20;
  v39[3] = v19;
  v40 = v21;

  v22 = v20;
  v23 = v19;

  v37 = sub_1D5C0BA9C();
  v38 = v24;
  sub_1D7261E3C();

  v25 = v34;

  v26 = sub_1D5EAE7D8(v39, v14, v31, v13, v16, v35, v25);

  (*(v32 + 8))(v13, v33);

  *v36 = v26;
  return result;
}

uint64_t sub_1D6177B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a8;
  v8[23] = v16;
  v8[20] = a6;
  v8[21] = a7;
  v8[18] = a4;
  v8[19] = a5;
  v8[16] = a2;
  v8[17] = a3;
  v8[15] = a1;
  v8[24] = *(*a4 + 80);
  v8[25] = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8[26] = swift_getAssociatedTypeWitness();
  v9 = sub_1D726393C();
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v10 = type metadata accessor for FeedGroupEmitTaskResult();
  v8[32] = v10;
  v11 = sub_1D726393C();
  v8[33] = v11;
  v8[34] = *(v11 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = *(v10 - 8);
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v12 = type metadata accessor for FeedGroupEmitTaskGroupResult();
  v8[42] = v12;
  v13 = sub_1D726393C();
  v8[43] = v13;
  v8[44] = *(v13 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = *(v12 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_1D5B6BFD8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6177F34, 0, 0);
}

uint64_t sub_1D6177F34()
{
  v31 = v0;
  v1 = MEMORY[0x1E69E7CD0];
  *(v0 + 80) = MEMORY[0x1E69E7CD0];
  *(v0 + 88) = v1;
  *(v0 + 400) = type metadata accessor for FeedGroupEmitTask();
  if (sub_1D726279C())
  {
    v2 = 0;
    v26 = *(v0 + 136) + 32;
    do
    {
      v7 = sub_1D726277C();
      sub_1D726271C();
      if (v7)
      {
        v8 = *(v26 + 8 * v2);

        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v8 = sub_1D7263DBC();
        v9 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      v10 = sub_1D5C0BA9C();
      sub_1D5B860D0(&v30, v10, v11);

      sub_1D6B6AEAC();
      if (v29 == 1 && (*(v8 + 65) & 1) == 0)
      {
        v12 = sub_1D5C0BA9C();
        sub_1D5B860D0(&v30, v12, v13);
      }

      v3 = *(v0 + 392);
      v4 = sub_1D726294C();
      v27 = *(v0 + 176);
      (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
      v5 = swift_allocObject();
      *(v5 + 16) = 0;
      *(v5 + 24) = 0;
      *(v5 + 32) = v27;
      *(v5 + 48) = v8;
      v6 = sub_1D72628EC();
      sub_1D6179CB0(v3, &unk_1D72A6920, v5, v6);
      sub_1D5B88AA0(v3, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
      ++v2;
    }

    while (v9 != sub_1D726279C());
  }

  v14 = *(v0 + 392);
  v15 = *(v0 + 144);
  v16 = sub_1D726294C();
  *(v0 + 408) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  *(v0 + 416) = v18;
  *(v0 + 424) = (v17 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v28 = *(v0 + 176);
  v18(v14, 1, 1, v16);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v28;
  *(v19 + 48) = v15;
  v20 = sub_1D72628EC();
  *(v0 + 432) = v20;

  sub_1D6179CB0(v14, &unk_1D72A6930, v19, v20);
  sub_1D5B88AA0(v14, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
  v21 = sub_1D7261CEC();
  *(v0 + 96) = v21;
  *(v0 + 440) = v21;
  *(v0 + 448) = v21;
  *(v0 + 464) = 0;
  v22 = swift_task_alloc();
  *(v0 + 456) = v22;
  *v22 = v0;
  v22[1] = sub_1D6178390;
  v23 = *(v0 + 432);
  v24 = *(v0 + 360);

  return MEMORY[0x1EEE6D8A0](v24, 0, 0, v23);
}

uint64_t sub_1D6178390()
{

  return MEMORY[0x1EEE6DFA0](sub_1D617848C, 0, 0);
}

uint64_t sub_1D617848C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 448);
    v5 = *(v0 + 344);
    v6 = *(v0 + 352);
    v7 = *(v0 + 120);

    (*(v6 + 8))(v1, v5);
    *v7 = v4;
LABEL_3:
    sub_1D617A26C(*(v0 + 128));

    v8 = *(v0 + 8);

    return v8();
  }

  v11 = *(v0 + 376);
  v10 = *(v0 + 384);
  (*(v2 + 32))(v10, v1, v3);
  (*(v2 + 16))(v11, v10, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v200 = *(v0 + 448);
        v13 = *(v0 + 384);
        v14 = *(v0 + 368);
        v15 = *(v0 + 336);
        v17 = *(v0 + 160);
        v16 = *(v0 + 168);
        v18 = *(v0 + 120);

        sub_1D7262EBC();
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1D7273AE0;
        *(v19 + 56) = MEMORY[0x1E69E6158];
        *(v19 + 64) = sub_1D5B7E2C0();
        *(v19 + 32) = v17;
        *(v19 + 40) = v16;

        sub_1D725C30C();

        (*(v14 + 8))(v13, v15);
        *v18 = v200;
        goto LABEL_3;
      }

      v61 = *(v0 + 384);
      v62 = *(v0 + 368);
      v63 = *(v0 + 336);
      v65 = *(v0 + 160);
      v64 = *(v0 + 168);
      sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_1D7273AE0;
      *(v66 + 56) = MEMORY[0x1E69E6158];
      *(v66 + 64) = sub_1D5B7E2C0();
      *(v66 + 32) = v65;
      *(v66 + 40) = v64;

      sub_1D7262EDC();
      sub_1D725C30C();

      (*(v62 + 8))(v61, v63);
      v68 = *(v0 + 440);
      v67 = *(v0 + 448);
      goto LABEL_71;
    }

    v39 = *(v0 + 160);
    v40 = *(v0 + 168);
    sub_1D7262EBC();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D7270C10;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    v189 = sub_1D5B7E2C0();
    *(v41 + 64) = v189;
    *(v41 + 32) = v39;
    *(v41 + 40) = v40;

    v42 = sub_1D7261DDC();
    v43 = MEMORY[0x1E69E65A8];
    *(v41 + 96) = MEMORY[0x1E69E6530];
    *(v41 + 104) = v43;
    *(v41 + 72) = v42;
    sub_1D725C30C();

    v44 = nullsub_1();
    v45 = v44 + 64;
    v46 = -1;
    v47 = -1 << *(v44 + 32);
    if (-v47 < 64)
    {
      v46 = ~(-1 << -v47);
    }

    v48 = v46 & *(v44 + 64);
    v49 = (63 - v47) >> 6;
    v203 = v44;

    v54 = 0;
    if (v48)
    {
      while (1)
      {
        v55 = v54;
LABEL_23:
        v57 = *(v0 + 304);
        v56 = *(v0 + 312);
        v58 = *(v0 + 256);
        v59 = *(v0 + 232);
        v60 = *(v0 + 208);
        (*(v57 + 16))(v56, *(v203 + 56) + *(v57 + 72) * (__clz(__rbit64(v48)) | (v55 << 6)), v58);
        sub_1D71A8604(v59);
        (*(v57 + 8))(v56, v58);
        if ((*(*(v60 - 8) + 48))(v59, 1, v60) != 1)
        {
          break;
        }

        v48 &= v48 - 1;
        v50 = (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
        v54 = v55;
        if (!v48)
        {
          goto LABEL_20;
        }
      }

      v187 = *(v0 + 440);
      v162 = *(v0 + 384);
      v163 = *(v0 + 368);
      v164 = *(v0 + 336);
      v165 = *(v0 + 160);
      v166 = *(v0 + 168);
      v167 = *(v0 + 120);
      (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

      sub_1D7262EBC();
      v168 = swift_allocObject();
      *(v168 + 16) = xmmword_1D7273AE0;
      *(v168 + 56) = MEMORY[0x1E69E6158];
      *(v168 + 64) = v189;
      *(v168 + 32) = v165;
      *(v168 + 40) = v166;

      sub_1D725C30C();

      (*(v163 + 8))(v162, v164);
      *v167 = v187;
      goto LABEL_3;
    }

LABEL_20:
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v49)
      {
        v78 = *(v0 + 384);
        v79 = *(v0 + 368);
        v80 = *(v0 + 336);
        v81 = *(v0 + 160);
        v82 = *(v0 + 168);

        sub_1D7262EBC();
        v83 = swift_allocObject();
        *(v83 + 16) = xmmword_1D7273AE0;
        *(v83 + 56) = MEMORY[0x1E69E6158];
        *(v83 + 64) = v189;
        *(v83 + 32) = v81;
        *(v83 + 40) = v82;

        sub_1D725C30C();

        (*(v79 + 8))(v78, v80);
        v68 = *(v0 + 440);
        v67 = *(v0 + 448);
        v84 = 1;
        goto LABEL_72;
      }

      v48 = *(v45 + 8 * v55);
      ++v54;
      if (v48)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (!EnumCaseMultiPayload)
  {
    v20 = *(v0 + 464);
    v21 = *(v0 + 328);
    v22 = *(v0 + 296);
    v23 = *(v0 + 304);
    v24 = *(v0 + 256);
    (*(v23 + 32))(v21, *(v0 + 376), v24);
    v25 = sub_1D5C0BA9C();
    v27 = v26;
    v201 = *(v23 + 16);
    v201(v22, v21, v24);
    (*(v23 + 56))(v22, 0, 1, v24);
    *(v0 + 48) = v25;
    *(v0 + 56) = v27;
    v28 = MEMORY[0x1E69E6158];
    sub_1D7261E1C();
    sub_1D7261E4C();
    if (v20 == 1)
    {
      v29 = *(v0 + 248);
      v30 = *(v0 + 208);
      sub_1D71A8604(v29);
      if ((*(*(v30 - 8) + 48))(v29, 1, v30) != 1)
      {
        v145 = *(v0 + 368);
        v186 = *(v0 + 336);
        v194 = *(v0 + 384);
        v146 = *(v0 + 304);
        v199 = *(v0 + 256);
        v206 = *(v0 + 328);
        v148 = *(v0 + 160);
        v147 = *(v0 + 168);
        v176 = *(v0 + 136);
        v173 = *(v0 + 152);
        v175 = *(v0 + 120);
        (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));

        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_1D7279970;
        *(v149 + 56) = v28;
        v150 = sub_1D5B7E2C0();
        *(v149 + 64) = v150;
        *(v149 + 32) = v148;
        *(v149 + 40) = v147;

        v151 = sub_1D6B6AE5C();
        *(v149 + 96) = v28;
        *(v149 + 104) = v150;
        *(v149 + 72) = v151;
        *(v149 + 80) = v152;
        v153 = sub_1D5C0BA9C();
        *(v149 + 136) = v28;
        *(v149 + 144) = v150;
        *(v149 + 112) = v153;
        *(v149 + 120) = v154;
        sub_1D7262EDC();
        sub_1D725C30C();

        *v175 = *(v0 + 96);

        sub_1D617A310(v176, v0 + 96, v173, v148, v147);
        (*(v145 + 8))(v194, v186);
        (*(v146 + 8))(v206, v199);
        goto LABEL_76;
      }

      (*(*(v0 + 224) + 8))(*(v0 + 248), *(v0 + 216));
    }

    v31 = *(v0 + 96);
    *(v0 + 112) = nullsub_1();
    sub_1D7261DCC();

    swift_getWitnessTable();
    v32 = sub_1D7262BBC();
    if ((sub_1D6D0A744(v32, *(v0 + 80)) & 1) == 0)
    {
      v85 = *(v0 + 88);
      v86 = sub_1D6D0A744(v32, v85);

      if ((v86 & 1) == 0)
      {
LABEL_78:
        v155 = *(v0 + 384);
        v156 = v31;
        v157 = *(v0 + 368);
        v159 = *(v0 + 328);
        v158 = *(v0 + 336);
        v160 = *(v0 + 304);
        v161 = *(v0 + 256);
        sub_1D617A310(*(v0 + 136), v0 + 96, *(v0 + 152), *(v0 + 160), *(v0 + 168));
        (*(v157 + 8))(v155, v158);
        v68 = v156;
        (*(v160 + 8))(v159, v161);
        v84 = *(v0 + 464);
        v67 = v156;
LABEL_72:
        *(v0 + 440) = v68;
        *(v0 + 448) = v67;
        *(v0 + 464) = v84;
        v144 = swift_task_alloc();
        *(v0 + 456) = v144;
        *v144 = v0;
        v144[1] = sub_1D6178390;
        v53 = *(v0 + 432);
        v50 = *(v0 + 360);
        v51 = 0;
        v52 = 0;

        return MEMORY[0x1EEE6D8A0](v50, v51, v52, v53);
      }

      v87 = v85 + 56;
      v88 = -1;
      v89 = -1 << *(v85 + 32);
      if (-v89 < 64)
      {
        v88 = ~(-1 << -v89);
      }

      v90 = v88 & *(v85 + 56);
      v91 = (63 - v89) >> 6;

      v92 = 0;
      v174 = v31;
      v196 = v85;
      while (v90)
      {
LABEL_41:
        v96 = *(v0 + 304);
        v97 = *(v0 + 288);
        v98 = *(v0 + 256);
        v99 = (*(v85 + 48) + ((v92 << 10) | (16 * __clz(__rbit64(v90)))));
        v100 = v99[1];
        *(v0 + 64) = *v99;
        *(v0 + 72) = v100;

        sub_1D7261E3C();

        if ((*(v96 + 48))(v97, 1, v98))
        {
          v93 = *(v0 + 240);
          v94 = *(v0 + 208);
          (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
          (*(*(v94 - 8) + 56))(v93, 1, 1, v94);
        }

        else
        {
          v101 = *(v0 + 320);
          v102 = *(v0 + 304);
          v103 = *(v0 + 288);
          v104 = *(v0 + 272);
          v105 = *(v0 + 256);
          v179 = *(v0 + 264);
          v183 = *(v0 + 240);
          v190 = *(v0 + 208);
          v201(v101, v103, v105);
          (*(v104 + 8))(v103, v179);
          v31 = v174;
          sub_1D71A8604(v183);
          v106 = v105;
          v107 = *(v102 + 8);
          v107(v101, v106);
          if ((*(*(v190 - 8) + 48))(v183, 1) != 1)
          {
            v108 = *(v0 + 368);
            v180 = *(v0 + 336);
            v184 = *(v0 + 384);
            v205 = *(v0 + 328);
            v191 = *(v0 + 256);
            v109 = *(v0 + 240);
            v110 = *(v0 + 216);
            v111 = *(v0 + 224);
            v171 = *(v0 + 160);
            v172 = *(v0 + 168);
            v170 = *(v0 + 152);
            v169 = *(v0 + 136);
            v112 = *(v0 + 120);

            (*(v111 + 8))(v109, v110);

            *v112 = v174;

            sub_1D617A310(v169, v0 + 96, v170, v171, v172);
            (*(v108 + 8))(v184, v180);
            v107(v205, v191);
            goto LABEL_76;
          }
        }

        v90 &= v90 - 1;
        v50 = (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
        v85 = v196;
      }

      while (1)
      {
        v95 = v92 + 1;
        if (__OFADD__(v92, 1))
        {
          break;
        }

        if (v95 >= v91)
        {

          goto LABEL_78;
        }

        v90 = *(v87 + 8 * v95);
        ++v92;
        if (v90)
        {
          v92 = v95;
          goto LABEL_41;
        }
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v33 = *(v0 + 368);
    v182 = *(v0 + 336);
    v188 = *(v0 + 384);
    v34 = *(v0 + 304);
    v195 = *(v0 + 256);
    v202 = *(v0 + 328);
    v35 = *(v0 + 160);
    v36 = *(v0 + 152);
    v177 = *(v0 + 168);
    v37 = *(v0 + 136);
    v38 = *(v0 + 120);

    *v38 = v31;

    sub_1D617A310(v37, v0 + 96, v36, v35, v177);
    (*(v33 + 8))(v188, v182);
    (*(v34 + 8))(v202, v195);
LABEL_76:

    goto LABEL_3;
  }

  v69 = **(v0 + 376);
  v70 = *(v0 + 160);
  v71 = *(v0 + 168);
  v204 = v69;
  if (v69)
  {
    v72 = v69;
    sub_1D7262EBC();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1D7270C10;
    v74 = MEMORY[0x1E69E6158];
    *(v73 + 56) = MEMORY[0x1E69E6158];
    v75 = sub_1D5B7E2C0();
    *(v73 + 64) = v75;
    *(v73 + 32) = v70;
    *(v73 + 40) = v71;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    *(v0 + 104) = v69;
    sub_1D5B49474(0, &qword_1EDF3C5D0);

    sub_1D7263F9C();
    v76 = *(v0 + 32);
    v77 = *(v0 + 40);
    *(v73 + 96) = v74;
    *(v73 + 104) = v75;
    *(v73 + 72) = v76;
    *(v73 + 80) = v77;
    sub_1D725C30C();
  }

  else
  {
    sub_1D7262EBC();
    sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_1D7273AE0;
    *(v113 + 56) = MEMORY[0x1E69E6158];
    *(v113 + 64) = sub_1D5B7E2C0();
    *(v113 + 32) = v70;
    *(v113 + 40) = v71;

    sub_1D725C30C();
  }

  if (!sub_1D726279C())
  {
    v192 = (v0 + 440);
LABEL_70:
    v68 = *v192;
    v141 = *(v0 + 384);
    v142 = *(v0 + 368);
    v143 = *(v0 + 336);

    (*(v142 + 8))(v141, v143);
    v67 = *(v0 + 448);
LABEL_71:
    v84 = *(v0 + 464);
    goto LABEL_72;
  }

  v114 = 0;
  v185 = 0;
  v192 = (v0 + 448);
  v115 = 1;
  while (2)
  {
    v197 = v115;
    v116 = v114;
    while (1)
    {
      v117 = sub_1D726277C();
      sub_1D726271C();
      if (v117)
      {
        v118 = *(*(v0 + 136) + 8 * v116 + 32);

        v114 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        v50 = sub_1D7263DBC();
        v118 = v50;
        v114 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          goto LABEL_81;
        }
      }

      v119 = *(v0 + 304);
      v120 = *(v0 + 280);
      v121 = *(v0 + 256);
      *(v0 + 16) = sub_1D5C0BA9C();
      *(v0 + 24) = v122;
      sub_1D7261E3C();

      v123 = (*(v119 + 48))(v120, 1, v121);
      v125 = *(v0 + 272);
      v124 = *(v0 + 280);
      v126 = *(v0 + 264);
      if (v123 == 1)
      {
        break;
      }

      (*(v125 + 8))(v124, v126);
LABEL_49:
      ++v116;
      if (v114 == sub_1D726279C())
      {
        if (v197)
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }
    }

    (*(v125 + 8))(*(v0 + 280), *(v0 + 264));
    v127 = *(v118 + 24);
    v128 = *(v118 + 32);

    if (v128)
    {
      goto LABEL_49;
    }

    v129 = v185;
    if (v197)
    {
      v129 = 0;
    }

    if ((~*&v127 & 0x7FF0000000000000) == 0)
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      break;
    }

    if (v127 <= -1.0)
    {
      goto LABEL_84;
    }

    if (v127 < 1.84467441e19)
    {
      if (v129 <= v127)
      {
        v129 = v127;
      }

      v185 = v129;
      v130 = sub_1D726279C();
      v115 = 0;
      if (v114 == v130)
      {
LABEL_68:
        v181 = *(v0 + 432);
        v132 = *(v0 + 408);
        v131 = *(v0 + 416);
        v133 = *(v0 + 392);
        v198 = *(v0 + 384);
        v134 = *(v0 + 368);
        v193 = *(v0 + 336);
        v135 = *(v0 + 160);
        v136 = *(v0 + 168);
        v178 = *(v0 + 176);
        sub_1D7262E9C();
        sub_1D5B5DD74(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v137 = swift_allocObject();
        *(v137 + 16) = xmmword_1D7270C10;
        *(v137 + 56) = MEMORY[0x1E69E6158];
        v138 = sub_1D5B7E2C0();
        *(v137 + 32) = v135;
        *(v137 + 40) = v136;
        v139 = MEMORY[0x1E69E7738];
        *(v137 + 96) = MEMORY[0x1E69E76D8];
        *(v137 + 104) = v139;
        *(v137 + 64) = v138;
        *(v137 + 72) = v185;

        sub_1D725C30C();

        sub_1D726291C();
        v131(v133, 0, 1, v132);
        v140 = swift_allocObject();
        *(v140 + 16) = 0;
        *(v140 + 24) = 0;
        *(v140 + 32) = v178;
        *(v140 + 48) = v185;
        sub_1D6179CB0(v133, &unk_1D72A6940, v140, v181);

        sub_1D5B88AA0(v133, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], sub_1D5B6BFD8);
        (*(v134 + 8))(v198, v193);
        v68 = *(v0 + 448);
        v84 = *(v0 + 464);
        v67 = v68;
        goto LABEL_72;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return MEMORY[0x1EEE6D8A0](v50, v51, v52, v53);
}