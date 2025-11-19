uint64_t sub_1D12E4074(void *a1)
{
  v2 = v1;
  *(v1 + 32) = MEMORY[0x1E69E7CC8];
  *(v1 + 16) = a1;
  v3 = a1;
  v4 = _s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0();
  v5 = *(v4 + 2);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = sub_1D129F7B8(v5, 0);
  v7 = sub_1D12A1754(&v36, v6 + 32, v5, v4);
  sub_1D102CC30();
  if (v7 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CategoryCountProvider();
  swift_allocObject();
  v34 = v3;
  v8 = sub_1D12D2D54(v6, v34);
  *(v2 + 24) = v8;
  v9 = v8[3];
  v10 = *(v9 + 16);

  if (!v10)
  {
    v13 = MEMORY[0x1E69E7CC8];
LABEL_21:

    swift_beginAccess();
    *(v2 + 32) = v13;

    return v2;
  }

  v11 = 0;
  v12 = (v9 + 32);
  v13 = MEMORY[0x1E69E7CC8];
  while (v11 < *(v9 + 16))
  {
    v36 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v40 = *(v12 + 8);
    v38 = v15;
    v39 = v16;
    v37 = v14;

    sub_1D1082914(&v36, &v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v13;
    v18 = sub_1D129DF64(&v36);
    v20 = v13[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_23;
    }

    v24 = v19;
    if (v13[3] < v23)
    {
      sub_1D117FB20(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1D129DF64(&v36);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      v13 = v35;
      if (v24)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v32 = v18;
    sub_1D1184280();
    v18 = v32;
    v13 = v35;
    if (v24)
    {
LABEL_7:
      *(v13[7] + 8 * v18) = v8;

      sub_1D1080D98(&v36);
      goto LABEL_8;
    }

LABEL_16:
    v13[(v18 >> 6) + 8] |= 1 << v18;
    v26 = v13[6] + 72 * v18;
    *v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    *(v26 + 64) = v40;
    *(v26 + 32) = v28;
    *(v26 + 48) = v29;
    *(v26 + 16) = v27;
    *(v13[7] + 8 * v18) = v8;
    v30 = v13[2];
    v22 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v22)
    {
      goto LABEL_24;
    }

    v13[2] = v31;
LABEL_8:
    ++v11;
    v12 = (v12 + 72);
    if (v10 == v11)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D13916CC();
  __break(1u);
  return result;
}

uint64_t sub_1D12E4360(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v10 = *a1;
  v24 = *(a1 + 16);
  v25 = v8;
  v26 = v9;
  v27 = *(a1 + 64);
  v23 = v10;
  sub_1D108310C();
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = sub_1D138FF5C();
  result = (*(v5 + 8))(v7, v4);
  if (a1)
  {
    swift_beginAccess();
    v12 = *(v2 + 32);
    if (*(v12 + 16))
    {

      v13 = sub_1D129DF64(&v23);
      if (v14)
      {
        v15 = *(*(v12 + 56) + 8 * v13);

        return v15;
      }
    }

    sub_1D12E4658();
    v16 = swift_allocObject();
    v17 = v25;
    *(v16 + 48) = v24;
    *(v16 + 64) = v17;
    *(v16 + 80) = v26;
    *(v16 + 96) = v27;
    v18 = v23;
    *(v16 + 16) = xmmword_1D139E700;
    *(v16 + 32) = v18;
    v19 = *(v2 + 16);
    type metadata accessor for CategoryCountProvider();
    swift_allocObject();
    sub_1D1082914(&v23, v22);
    v15 = sub_1D12D2D54(v16, v19);
    swift_beginAccess();
    sub_1D1082914(&v23, v22);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    sub_1D11DB9A8(v15, &v23, isUniquelyReferenced_nonNull_native);
    sub_1D1080D98(&v23);
    *(v2 + 32) = v22[0];
    swift_endAccess();
    return v15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D12E45EC()
{

  return swift_deallocClassInstance();
}

void sub_1D12E4658()
{
  if (!qword_1EE06B698)
  {
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06B698);
    }
  }
}

id HKClinicalBrand.init(_:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1D139012C();
  v2 = sub_1D139012C();

  v3 = [v0 initWithExternalID:v1 batchID:v2];

  return v3;
}

void BrandIdentifier.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 externalID];
  v5 = sub_1D139016C();
  v7 = v6;

  v8 = [a1 batchID];
  v9 = sub_1D139016C();
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
}

uint64_t static BrandIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D139162C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D139162C();
    }
  }

  return result;
}

uint64_t sub_1D12E4884()
{
  if (*v0)
  {
    return 0x64496863746162;
  }

  else
  {
    return 0x6C616E7265747865;
  }
}

uint64_t sub_1D12E48C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449;
  if (v6 || (sub_1D139162C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64496863746162 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D139162C();

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

uint64_t sub_1D12E49A8(uint64_t a1)
{
  v2 = sub_1D12E4BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D12E49E4(uint64_t a1)
{
  v2 = sub_1D12E4BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrandIdentifier.encode(to:)(void *a1)
{
  sub_1D12E5008(0, &qword_1EC60F2A8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12E4BA0();
  sub_1D139181C();
  v13 = 0;
  v9 = v11[3];
  sub_1D139155C();
  if (!v9)
  {
    v12 = 1;
    sub_1D139155C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D12E4BA0()
{
  result = qword_1EC60F2B0;
  if (!qword_1EC60F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F2B0);
  }

  return result;
}

uint64_t BrandIdentifier.hash(into:)()
{
  sub_1D139027C();

  return sub_1D139027C();
}

uint64_t BrandIdentifier.hashValue.getter()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t BrandIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D12E5008(0, &qword_1EC60F2B8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12E4BA0();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  v10 = sub_1D13914CC();
  v12 = v11;
  v18 = v10;
  v19 = 1;
  v13 = sub_1D13914CC();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v18;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D12E4EEC()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  return sub_1D13917CC();
}

uint64_t sub_1D12E4F54()
{
  sub_1D139027C();

  return sub_1D139027C();
}

uint64_t sub_1D12E4FA4()
{
  sub_1D139177C();
  sub_1D139027C();
  sub_1D139027C();
  return sub_1D13917CC();
}

void sub_1D12E5008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D12E4BA0();
    v7 = a3(a1, &type metadata for BrandIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D12E506C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D139162C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D139162C();
    }
  }

  return result;
}

id BrandIdentifier.clinicalBrand.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696BFB8]);
  v1 = sub_1D139012C();
  v2 = sub_1D139012C();
  v3 = [v0 initWithExternalID:v1 batchID:v2];

  return v3;
}

uint64_t BrandIdentifier.isLocalDevelopmentSampleBrand.getter()
{
  if (*v0 == 0xD000000000000015 && 0x80000001D13CB530 == v0[1])
  {
    return 1;
  }

  else
  {
    return sub_1D139162C();
  }
}

void static BrandIdentifier.localDevelopmentSampleBrandIdentifier()(void *a1@<X8>)
{
  *a1 = 0xD000000000000015;
  a1[1] = 0x80000001D13CB530;
  a1[2] = 0xD00000000000001ALL;
  a1[3] = 0x80000001D13CB550;
}

uint64_t sub_1D12E524C(void *a1)
{
  v1 = a1;
  v2 = [v1 externalID];
  v3 = sub_1D139016C();
  v5 = v4;

  if (v3 == 0xD000000000000015 && 0x80000001D13CB530 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D139162C();
  }

  return v7 & 1;
}

uint64_t HKClinicalBrand.isLocalDevelopmentSampleBrand.getter()
{
  v1 = [v0 externalID];
  v2 = sub_1D139016C();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x80000001D13CB530 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D139162C();
  }

  return v6 & 1;
}

id static HKClinicalBrand.localDevelopmentSampleBrand()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696BFB8]);
  v1 = sub_1D139012C();
  v2 = sub_1D139012C();
  v3 = [v0 initWithExternalID:v1 batchID:v2];

  return v3;
}

unint64_t sub_1D12E5460()
{
  result = qword_1EC60F2C0;
  if (!qword_1EC60F2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F2C0);
  }

  return result;
}

uint64_t sub_1D12E54B4(uint64_t a1, int a2)
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

uint64_t sub_1D12E54FC(uint64_t result, int a2, int a3)
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

id sub_1D12E554C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696BFB8]);
  v1 = sub_1D139012C();
  v2 = sub_1D139012C();
  v3 = [v0 initWithExternalID:v1 batchID:v2];

  return v3;
}

unint64_t sub_1D12E5628()
{
  result = qword_1EC60F2C8;
  if (!qword_1EC60F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F2C8);
  }

  return result;
}

unint64_t sub_1D12E5680()
{
  result = qword_1EC60F2D0;
  if (!qword_1EC60F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F2D0);
  }

  return result;
}

unint64_t sub_1D12E56D8()
{
  result = qword_1EC60F2D8;
  if (!qword_1EC60F2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F2D8);
  }

  return result;
}

id IconTextListView.__allocating_init(textStyle:iconSize:interItemSpacingHorizontal:interItemSpacingVertical:hidesIconsForAccessibilityTextSizes:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items] = MEMORY[0x1E69E7CC0];
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_textStyle] = a1;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = [v14 preferredFontForTextStyle_];
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_font] = v16;
  v17 = &v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_iconSize];
  *v17 = a3;
  v17[1] = a4;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_interItemSpacingHorizontal] = a5;
  *&v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_interItemSpacingVertical] = a6;
  v13[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_hidesIconsForAccessibilityTextSizes] = a2;
  v20.receiver = v13;
  v20.super_class = v6;
  v18 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v18;
}

id IconTextListView.init(textStyle:iconSize:interItemSpacingHorizontal:interItemSpacingVertical:hidesIconsForAccessibilityTextSizes:)(void *a1, char a2, double a3, double a4, double a5, double a6)
{
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items] = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_textStyle] = a1;
  v13 = objc_opt_self();
  v14 = a1;
  v15 = [v13 preferredFontForTextStyle_];
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_font] = v15;
  v16 = &v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_iconSize];
  *v16 = a3;
  v16[1] = a4;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_interItemSpacingHorizontal] = a5;
  *&v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_interItemSpacingVertical] = a6;
  v6[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_hidesIconsForAccessibilityTextSizes] = a2;
  v19.receiver = v6;
  v19.super_class = type metadata accessor for IconTextListView();
  v17 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);

  return v17;
}

void sub_1D12E5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (*a1)
  {
    v7 = *(a1 + 8);
    v8 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
    v9 = v7;
    v10 = [v8 initWithImage_];
    [v10 setContentMode_];
    [v10 setTintColor_];
    sub_1D1080A3C(v6, v7);
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12 = sub_1D139012C();
  [v11 setText_];

  [v11 setTextColor_];
  [v11 setFont_];
  if (v10)
  {
    [v4 addSubview_];
  }

  [v4 addSubview_];
  v13 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items;
  swift_beginAccess();
  v14 = *&v4[v13];
  v15 = v10;
  v16 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D10F9C90(0, *(v14 + 2) + 1, 1, v14);
    *&v4[v13] = v14;
  }

  v19 = *(v14 + 2);
  v18 = *(v14 + 3);
  if (v19 >= v18 >> 1)
  {
    v14 = sub_1D10F9C90((v18 > 1), v19 + 1, 1, v14);
  }

  *(v14 + 2) = v19 + 1;
  v20 = &v14[16 * v19];
  *(v20 + 4) = v10;
  *(v20 + 5) = v16;
  *&v4[v13] = v14;
  swift_endAccess();
  [v4 setNeedsLayout];
}

void sub_1D12E5C34()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *v5;
      if (v7)
      {
        v7 = v7;
        [v7 removeFromSuperview];
      }

      ++v4;
      [v6 removeFromSuperview];

      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    *&v0[v1] = MEMORY[0x1E69E7CC0];

    [v0 setNeedsLayout];
  }
}

void sub_1D12E5D3C()
{
  v1 = sub_1D139160C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IconTextListView();
  v73.receiver = v0;
  v73.super_class = v5;
  objc_msgSendSuper2(&v73, sel_layoutSubviews);
  v69 = [v0 effectiveUserInterfaceLayoutDirection];
  [v0 layoutMargins];
  v7 = v6;
  [v0 layoutMargins];
  v9 = v8;
  [v0 bounds];
  Width = CGRectGetWidth(v74);
  v11 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items;
  swift_beginAccess();
  v12 = *&v0[v11];
  if (*(v12 + 16))
  {
    v56 = Width - v7;
    v13 = *(v12 + 40);
    v71 = Width - v7 - v9;
    [v13 sizeThatFits_];
    v14 = *MEMORY[0x1E69E7040];
    v15 = v2 + 104;
    v67 = *(v2 + 104);
    v67(v4, v14, v1);
    v16 = [v13 traitCollection];
    [v16 displayScale];
    sub_1D138D86C();
    [v16 displayScale];
    sub_1D138D86C();
    v18 = v17;

    v20 = *(v2 + 8);
    v19 = v2 + 8;
    v66 = v20;
    v20(v4, v1);
    v21 = *(*&v0[v11] + 16);
    if (v21)
    {
      v64 = v1;
      v57 = v15;
      v55 = v13;
      v60 = v19;
      v22 = &v0[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_iconSize];
      v61 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_hidesIconsForAccessibilityTextSizes;
      v68 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_interItemSpacingVertical];
      v63 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_interItemSpacingHorizontal;
      v65 = *MEMORY[0x1E69E7048];
      v59 = v7;
      v58 = v9;
      if (v69 == 1)
      {
        v23 = v9;
      }

      else
      {
        v23 = v7;
      }

      v62 = v23;

      v24 = (v54 + 40);
      v25 = 0.0;
      v26 = &selRef_removeObserver_name_object_;
      v70 = v18;
      while (1)
      {
        v32 = *(v24 - 1);
        v33 = *v24;
        v34 = v22[1];
        if (v34 <= v18)
        {
          v34 = v18;
        }

        v72 = v34;
        if (v32)
        {
          break;
        }

        v27 = v33;
        v28 = 0;
        v29 = v62;
        v30 = v25;
        v31 = v71;
LABEL_8:
        [v33 v26[153]];

        v25 = v25 + v68 + v72;
        v24 += 2;
        if (!--v21)
        {

          return;
        }
      }

      v35 = v0[v61];
      v36 = v32;
      if (v35)
      {
        v37 = v33;
        v38 = [v0 traitCollection];
        v39 = [v38 preferredContentSizeCategory];

        LOBYTE(v38) = sub_1D1390B5C();
        v40 = 0.0;
        v41 = 0.0;
        v42 = 0.0;
        v29 = v62;
        v30 = v25;
        v31 = v71;
        v43 = 0.0;
        if (v38)
        {
LABEL_21:
          v26 = &selRef_removeObserver_name_object_;
          [v36 setFrame_];
          v28 = v36;
          v77.origin.x = 0.0;
          v77.origin.y = 0.0;
          v77.size.width = 0.0;
          v77.size.height = 0.0;
          v76.origin.x = v40;
          v76.origin.y = v41;
          v76.size.width = v42;
          v76.size.height = v43;
          [v28 setHidden_];

          v18 = v70;
          goto LABEL_8;
        }
      }

      else
      {
        v44 = v33;
      }

      v45 = v36;
      v40 = v59;
      if (v69 == 1)
      {
        v40 = v56 - *v22;
      }

      v46 = v64;
      v67(v4, v65, v64);
      sub_1D138D88C();
      v41 = v47;
      v66(v4, v46);
      v42 = *v22;
      v43 = v22[1];
      v48 = v22;
      v29 = v58;
      if (v69 != 1)
      {
        v75.origin.x = v40;
        v75.origin.y = v41;
        v75.size.width = *v22;
        v75.size.height = v22[1];
        v29 = CGRectGetMaxX(v75) + *&v0[v63];
      }

      v49 = v0;
      v50 = v64;
      v67(v4, v65, v64);
      sub_1D138D88C();
      v30 = v51;
      v52 = v50;
      v0 = v49;
      v66(v4, v52);
      v22 = v48;
      v31 = v71 - *v48 - *&v0[v63];
      v36 = v45;
      goto LABEL_21;
    }
  }

  else
  {
    v13 = 0;
  }
}

double sub_1D12E639C(double a1)
{
  [*(v1 + OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_font) lineHeight];
  swift_beginAccess();
  return a1;
}

void sub_1D12E6494(void *a1)
{
  v28.receiver = v1;
  v28.super_class = type metadata accessor for IconTextListView();
  objc_msgSendSuper2(&v28, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_1D139016C();
  v8 = v7;
  if (v6 == sub_1D139016C() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_1D139162C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v12 = [v1 traitCollection];
  v13 = [v12 legibilityWeight];

  if (v13 == [a1 legibilityWeight])
  {
LABEL_16:
    if (v1[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_hidesIconsForAccessibilityTextSizes] == 1)
    {
      v23 = [v1 traitCollection];
      v24 = [v23 preferredContentSizeCategory];

      v25 = sub_1D1390B5C();
      if (!a1 || (v26 = [a1 preferredContentSizeCategory], v27 = sub_1D1390B5C() & 1, v26, v27 != (v25 & 1)))
      {
        [v1 setNeedsLayout];
      }
    }

    return;
  }

LABEL_11:
  v14 = [objc_opt_self() preferredFontForTextStyle_];
  v15 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_font;
  v16 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_font];
  *&v1[OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_font] = v14;

  v17 = OBJC_IVAR____TtC15HealthRecordsUI16IconTextListView_items;
  swift_beginAccess();
  v18 = *&v1[v17];
  v19 = *(v18 + 16);

  if (!v19)
  {
LABEL_15:

    [v1 &selRef_setNoContentParentView_];
    goto LABEL_16;
  }

  v20 = 0;
  v21 = (v18 + 40);
  while (v20 < *(v18 + 16))
  {
    ++v20;
    v22 = *v21;
    v21 += 2;
    [v22 setFont_];
    if (v19 == v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id IconTextListView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id IconTextListView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconTextListView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void IconTextListView.addItem(for:iconSize:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  LOBYTE(v12) = *a1;
  DisplayCategory.Kind.systemImageName.getter();
  if (v5)
  {
    v6 = [v1 traitCollection];
    v7 = sub_1D139012C();
    v8 = [objc_opt_self() systemImageNamed:v7 compatibleWithTraitCollection:v6];

    if (v8)
    {
      v9 = v8;
      v10 = v2;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
  }

  v2 = 0;
LABEL_6:
  v11 = [objc_opt_self() labelColor];
  sub_1D12E5A08(&v12, v3, v4, v11);

  sub_1D1080A3C(v8, v2);
}

unint64_t sub_1D12E6B30@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D115FDE8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D12E6B5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item;
  *(a1 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item) = *a3;
  swift_retain_n();

  v5 = *(a1 + v4);
  if (v5)
  {
    v6 = *(v5 + 64);

    sub_1D12E7F28(v6);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    v10 = *(v5 + 40);
    v11 = *(v5 + 64);

    sub_1D12E7E10(v7, v8, v9, v10, v11);

    sub_1D106F934(0, &qword_1EC60E670);
    v12 = sub_1D1390C6C();
    v13 = sub_1D12E7158();
    [v13 setFont_];

    v14 = sub_1D12E73D8();
    [v14 setHidden_];

    sub_1D12E817C(*(v5 + 64));
  }
}

void sub_1D12E6D00()
{
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139027C();
  if (*(v0 + 40))
  {
    sub_1D139027C();
  }

  v1 = *(v0 + 56);
  if (v1)
  {
    v3 = v1;
    v2 = [v3 bundleIdentifier];
    sub_1D139016C();

    sub_1D139027C();
  }
}

uint64_t sub_1D12E6DE8()
{

  v1 = OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordTimelineHeaderItem_uuid;
  v2 = sub_1D138D5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D116DEF0(v0 + OBJC_IVAR____TtC15HealthRecordsUI31MedicalRecordTimelineHeaderItem_cellResolution);

  return v0;
}

uint64_t sub_1D12E6E9C()
{
  sub_1D12E6DE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D12E6F1C()
{
  result = sub_1D138D5EC();
  if (v1 <= 0x3F)
  {
    result = sub_1D138DC8C();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D12E701C()
{
  sub_1D139177C();
  sub_1D12E6D00();
  return sub_1D13917CC();
}

uint64_t sub_1D12E7084()
{
  sub_1D139177C();
  sub_1D12E6D00();
  return sub_1D13917CC();
}

uint64_t sub_1D12E70C4()
{
  v0 = sub_1D138D59C();
  MEMORY[0x1D3885C10](v0);

  return 0x7449726564616548;
}

id sub_1D12E7158()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setNumberOfLines_];
    v5 = objc_opt_self();
    v6 = [v5 labelColor];
    [v4 setTextColor_];

    v7 = v4;
    v8 = [v5 clearColor];
    [v7 setBackgroundColor_];

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1D12E727C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    sub_1D106F934(0, &qword_1EC60E670);
    v6 = sub_1D1390C6C();
    [v5 setFont_];

    [v5 setNumberOfLines_];
    v7 = [objc_opt_self() secondaryLabelColor];
    [v5 setTextColor_];

    v8 = v5;
    [v8 setClipsToBounds_];
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];

    v9 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1D12E73D8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A44A8]) initWithFrame_];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1D12E74C4()
{
  v1 = sub_1D138D82C();
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69A3588];
  sub_1D12E8E70(0, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_1D138DF1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_sectionContext;
  swift_beginAccess();
  sub_1D12E8E04(v0 + v12, v7, &qword_1EC60A840, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D12E8EC4(v7, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item);
  if (v14)
  {
    v33 = 0;
    v34 = 0xE000000000000000;

    sub_1D13911EC();
    v15 = sub_1D139016C();
    v17 = v16;

    v33 = v15;
    v34 = v17;
    MEMORY[0x1D3885C10](0xD000000000000011, 0x80000001D13C02A0);
    sub_1D138DF0C();
    v18 = sub_1D138D81C();
    (*(v31 + 8))(v3, v1);
    v32 = v18;
    v19 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v19);

    v21 = v33;
    v20 = v34;
    v31 = v33;
    v22 = sub_1D12E7158();
    v33 = v21;
    v34 = v20;

    MEMORY[0x1D3885C10](46, 0xE100000000000000);
    v23 = v14[11];
    v24 = v14[12];

    MEMORY[0x1D3885C10](v23, v24);

    v25 = sub_1D139012C();

    [v22 setAccessibilityIdentifier_];

    v26 = sub_1D12E727C();
    v33 = v31;
    v34 = v20;
    MEMORY[0x1D3885C10](46, 0xE100000000000000);
    if (v14[14])
    {
      v27 = v14[13];
      v28 = v14[14];
    }

    else
    {
      v28 = 0xE800000000000000;
      v27 = 0x656C746974627553;
    }

    MEMORY[0x1D3885C10](v27, v28);

    v29 = sub_1D139012C();

    [v26 setAccessibilityIdentifier_];
  }

  return (*(v9 + 8))(v11, v8);
}

id sub_1D12E7910(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_customConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item] = 0;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_sectionContext;
  v10 = sub_1D138DF1C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MedicalRecordTimelineHeaderItemCell(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1D12E7A7C();

  return v11;
}

id sub_1D12E7A7C()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_1D12E7158();
  [v2 addSubview_];

  v4 = [v1 contentView];
  v5 = sub_1D12E727C();
  [v4 addSubview_];

  v6 = [v1 contentView];
  v7 = sub_1D12E73D8();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item;
  if (*&v1[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item] && (sub_1D106F934(0, &qword_1EC60E670), v9 = sub_1D1390C6C(), v10 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel], [v10 setFont_], v10, v9, (v11 = *&v1[v8]) != 0))
  {
    v12 = *(v11 + 64);
  }

  else
  {
    v12 = 4;
  }

  return sub_1D12E817C(v12);
}

void sub_1D12E7C20(void *a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for MedicalRecordTimelineHeaderItemCell(0);
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      sub_1D106F934(0, &qword_1EE06B758);
      v6 = a1;
      v7 = sub_1D1390D8C();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }
  }

  v8 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item;
  if (*&v2[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item] && (sub_1D106F934(0, &qword_1EC60E670), v9 = sub_1D1390C6C(), v10 = sub_1D12E7158(), [v10 setFont_], v10, v9, v9, (v11 = *&v2[v8]) != 0))
  {
    v12 = *(v11 + 64);
  }

  else
  {
    v12 = 4;
  }

  sub_1D12E817C(v12);
}

void sub_1D12E7E10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u || a5 - 2 < 2)
  {
    v7 = sub_1D12E7158();
    if (a2)
    {
      a2 = sub_1D139012C();
    }

    [v7 setText_];

    v8 = sub_1D12E727C();
    if (a4)
    {
      v9 = sub_1D139012C();
    }

    else
    {
      v9 = 0;
    }

    [v8 setText_];

    v10 = sub_1D12E727C();
    [v10 setHidden_];
  }
}

uint64_t sub_1D12E7F28(unsigned __int8 a1)
{
  sub_1D12E8E70(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - v7;
  if (a1 > 2u)
  {
    if (a1 != 3)
    {
      return result;
    }

    sub_1D138F26C();
    v9 = sub_1D138F27C();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v8, 0, 1, v9);
    v11 = MEMORY[0x1D38864A0](v8);
    MEMORY[0x1D3886490](v11);
    if ((*(v10 + 48))(v5, 1, v9))
    {
      v12 = MEMORY[0x1E69DC0D8];
      sub_1D12E8E04(v5, v8, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
      MEMORY[0x1D38864A0](v8);
      return sub_1D12E8EC4(v5, &qword_1EC6103F0, v12);
    }

    v15 = [objc_opt_self() systemGroupedBackgroundColor];
    sub_1D138F23C();
    v14 = v5;
  }

  else
  {
    if (a1 >= 2u)
    {
      sub_1D138F26C();
    }

    else
    {
      sub_1D138F25C();
    }

    v13 = sub_1D138F27C();
    (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    v14 = v8;
  }

  return MEMORY[0x1D38864A0](v14);
}

id sub_1D12E817C(unsigned __int8 a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_customConstraints;
  sub_1D106F934(0, &qword_1EC609690);

  v5 = sub_1D139044C();

  [v3 deactivateConstraints_];

  *&v1[v4] = sub_1D12E828C(a1);

  v6 = sub_1D139044C();

  [v3 activateConstraints_];

  return [v1 setNeedsLayout];
}

uint64_t sub_1D12E828C(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
LABEL_10:
      v3 = 0.0;
      v4 = 32.0;
      v2 = 0.0;
      goto LABEL_12;
    }

    v5 = sub_1D12E73D8();
    v6 = [v5 isHidden];

    if (v6)
    {
      v3 = 0.0;
    }

    else
    {
      v3 = 10.0;
    }

    v2 = 6.0;
    v4 = 32.0;
  }

  else
  {
    v2 = 10.0;
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v3 = 0.0;
        v4 = 38.0;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v4 = 34.0;
    v3 = 10.0;
  }

LABEL_12:
  sub_1D106F424();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E7C0;
  v8 = sub_1D12E7158();
  v9 = [v8 topAnchor];

  v10 = [v1 contentView];
  v11 = [v10 &selRef_setTitle_forState_];

  v12 = [v9 constraintEqualToAnchor:v11 constant:v2];
  *(v7 + 32) = v12;
  v13 = [v1 &selRef_batches];
  v14 = [v13 trailingAnchor];

  v15 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel;
  v16 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel] trailingAnchor];
  v17 = [v14 &selRef:v16 deactivateConstraints:32.0 + 6];

  *(v7 + 40) = v17;
  v18 = sub_1D12E727C();
  v19 = [v18 &selRef_setTitle_forState_];

  v20 = [*&v1[v15] bottomAnchor];
  v21 = [v19 &selRef:v20 deactivateConstraints:4.0 + 6];

  *(v7 + 48) = v21;
  v22 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel;
  v23 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel] leadingAnchor];
  v24 = [*&v1[v15] &selRef_hrui_insurance + 1];
  v25 = [v23 constraintEqualToAnchor_];

  *(v7 + 56) = v25;
  v26 = [*&v1[v22] trailingAnchor];
  v27 = [*&v1[v15] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v7 + 64) = v28;
  v29 = sub_1D12E73D8();
  v30 = [v29 &selRef_hrui_insurance + 1];

  v31 = [v1 contentView];
  v32 = [v31 &selRef_hrui_insurance + 1];

  v33 = [v30 constraintEqualToAnchor_];
  *(v7 + 72) = v33;
  v34 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView;
  v35 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView] trailingAnchor];
  v36 = [v1 contentView];
  v37 = [v36 trailingAnchor];

  v38 = [v35 &selRef:v37 dateWithTimeIntervalSinceNow:? + 5];
  *(v7 + 80) = v38;
  v39 = [*&v1[v34] topAnchor];
  v40 = [*&v1[v22] bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:8.0];

  *(v7 + 88) = v41;
  v42 = [v1 contentView];
  v43 = [v42 bottomAnchor];

  v44 = [*&v1[v22] bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v3];

  *(v7 + 96) = v45;
  v56 = v7;
  v46 = [*&v1[v15] leadingAnchor];
  v47 = [v1 contentView];
  v48 = v47;
  if ((a1 & 0xFE) == 2)
  {
    v49 = [v47 layoutMarginsGuide];

    v50 = [v49 leadingAnchor];
    v51 = [v46 constraintEqualToAnchor_];
  }

  else
  {
    v50 = [v47 leadingAnchor];

    v51 = [v46 constraintEqualToAnchor:v50 constant:v4];
  }

  v52 = v51;

  v53 = v52;
  MEMORY[0x1D3885D90]();
  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

  sub_1D13904FC();

  return v56;
}

id sub_1D12E8910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalRecordTimelineHeaderItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D12E8A0C()
{
  sub_1D12E8E70(319, &qword_1EC60A840, MEMORY[0x1E69A3588]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D12E8AEC()
{
  result = qword_1EC60F360;
  if (!qword_1EC60F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F360);
  }

  return result;
}

uint64_t sub_1D12E8B40@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_sectionContext;
  swift_beginAccess();
  return sub_1D12E8E04(v1 + v3, a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
}

uint64_t sub_1D12E8BB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_sectionContext;
  swift_beginAccess();
  sub_1D10DCAC4(a1, v1 + v3);
  swift_endAccess();
  sub_1D12E74C4();
  return sub_1D12E8EC4(a1, &qword_1EC60A840, MEMORY[0x1E69A3588]);
}

uint64_t (*sub_1D12E8C3C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D12E8CA0;
}

uint64_t sub_1D12E8CA0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D12E74C4();
  }

  return result;
}

unint64_t sub_1D12E8CD8()
{
  result = qword_1EC60F368;
  if (!qword_1EC60F368)
  {
    type metadata accessor for MedicalRecordTimelineHeaderItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F368);
  }

  return result;
}

uint64_t sub_1D12E8D30(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 32) == *(a2 + 32) && v5 == v6;
    if (!v7 && (sub_1D139162C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 1;
  }

  return sub_1D139162C();
}

uint64_t sub_1D12E8E04(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D12E8E70(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D12E8E70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D12E8EC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D12E8E70(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D12E8F20()
{
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_customConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_item) = 0;
  v1 = OBJC_IVAR____TtC15HealthRecordsUI35MedicalRecordTimelineHeaderItemCell_sectionContext;
  v2 = sub_1D138DF1C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D12E900C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245FDC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D12EBA08(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D12E9078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC608C10 != -1)
  {
    swift_once();
  }

  v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v5 = sub_1D139012C();
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v6 = sub_1D138FFEC();
  v105 = [v4 initWithString:v5 attributes:v6];

  if (qword_1EC608C30 != -1)
  {
    swift_once();
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1D139012C();
  v9 = sub_1D138FFEC();
  v104 = [v7 initWithString:v8 attributes:v9];

  if (a1[7])
  {
    v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v11 = sub_1D139012C();
    v12 = sub_1D138FFEC();
    v106 = [v10 &selRef:v11 initWithQueryDescriptors:v12 sortDescriptors:? bufferSize:? healthStore:?];
  }

  else
  {
    v106 = 0;
  }

  if (a1[5])
  {
    v13 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v14 = sub_1D139012C();
    v15 = sub_1D138FFEC();
    v107 = [v13 initWithString:v14 attributes:v15];
  }

  else
  {
    v107 = 0;
  }

  v16 = a1[8];
  v17 = *(v16 + 16);
  v102 = a1;
  if (v17)
  {
    v111 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v18 = (v16 + 72);
    do
    {
      v19 = *(v18 - 5);
      v20 = *(v18 - 4);
      v21 = *(v18 - 3);
      v22 = *(v18 - 2);
      v23 = *(v18 - 1);
      v24 = *v18;
      v18 += 48;
      v109[0] = v19;
      v109[1] = v20;
      v109[2] = v21;
      v109[3] = v22;
      v109[4] = v23;
      v110 = v24;

      sub_1D12E9994(v109);

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      --v17;
    }

    while (v17);
    v101 = v111;
  }

  else
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  sub_1D12EC3E0(a1[11], a1[12]);
  v103 = v25;
  if (qword_1EC608C80 != -1)
  {
    swift_once();
  }

  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  v27 = sub_1D139012C();
  v28 = sub_1D138FFEC();

  v29 = [v26 initWithString:v27 attributes:v28];

  v100 = v29;
  [v29 boundingRectWithSize:1 options:0 context:{540.0, 1.79769313e308}];
  v31 = v30;
  v33 = v32;
  v34 = a1[15];
  v35 = a1[16];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v35;
  v99 = v36;
  v37 = a1[17];
  v38 = a1[18];
  v39 = swift_allocObject();
  v84 = v37;
  *(v39 + 16) = v37;
  *(v39 + 24) = v38;
  v98 = v39;
  v40 = a1[19];
  v41 = a1[20];
  v42 = swift_allocObject();
  v88 = v40;
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  v97 = v42;

  v43 = sub_1D12EB6F4();
  v95 = v44;
  v96 = v43;
  v45 = sub_1D12EB6F4();
  v93 = v46;
  v94 = v45;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0;
  if (v106)
  {
    v50 = v106;
    v48 = sub_1D12EB6F4();
    v49 = v51;
  }

  v91 = v49;
  v92 = v48;
  v52 = 0;
  v53 = v107;
  if (v107)
  {
    v54 = v107;
    v47 = sub_1D12EB6F4();
    v52 = v55;

    v53 = v107;
  }

  v108 = v53;
  v85 = v53 == 0;
  v89 = ceil(v31);
  v90 = ceil(v33);
  v56 = sub_1D12EB6F4();
  v86 = v57;
  v87 = v56;
  v34(8);
  v58 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v59 = sub_1D139012C();

  v60 = sub_1D138FFEC();
  v61 = [v58 initWithString:v59 attributes:v60];

  v62 = sub_1D12EB6F4();
  v64 = v63;

  v84(8);
  v65 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v66 = sub_1D139012C();

  v67 = sub_1D138FFEC();
  v68 = [v65 initWithString:v66 attributes:v67];

  v69 = sub_1D12EB6F4();
  v71 = v70;

  v88(8, 88);
  v72 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  v73 = sub_1D139012C();

  v74 = sub_1D138FFEC();

  v75 = [v72 initWithString:v73 attributes:v74];

  v76 = sub_1D12EB6F4();
  v78 = v77;

  LOBYTE(v111) = v106 == 0;
  sub_1D12ECAB0(0, &qword_1EC60C5D8, &_s10SortedDataVN, _s7PDFDataVMa);
  v80 = *(v79 + 28);
  sub_1D12ECAB0(0, &qword_1EC60A408, &_s9SizedDataVN, _s7PDFDataVMa);
  v82 = v81;
  sub_1D10921C4(v102 + v80, a2 + *(v81 + 28));
  *a2 = v105;
  *(a2 + 8) = v96;
  *(a2 + 16) = v95;
  *(a2 + 24) = v104;
  *(a2 + 32) = v94;
  *(a2 + 40) = v93;
  *(a2 + 48) = v106;
  *(a2 + 56) = v92;
  *(a2 + 64) = v91;
  *(a2 + 72) = v106 == 0;
  *(a2 + 80) = v108;
  *(a2 + 88) = v47;
  *(a2 + 96) = v52;
  *(a2 + 104) = v85;
  *(a2 + 112) = v101;
  *(a2 + 120) = v103;
  *(a2 + 128) = v87;
  *(a2 + 136) = v86;
  *(a2 + 144) = v100;
  *(a2 + 152) = v89;
  *(a2 + 160) = v90;
  *(a2 + 168) = sub_1D12EC608;
  *(a2 + 176) = v99;
  *(a2 + 184) = v62;
  *(a2 + 192) = v64;
  *(a2 + 200) = sub_1D12EDD0C;
  *(a2 + 208) = v98;
  *(a2 + 216) = v69;
  *(a2 + 224) = v71;
  *(a2 + 232) = sub_1D12EC624;
  *(a2 + 240) = v97;
  *(a2 + 248) = v76;
  *(a2 + 256) = v78;
  *(a2 + 264) = sub_1D12EB784;
  *(a2 + 272) = 0;
  return (*(*(v82 - 8) + 56))(a2, 0, 1, v82);
}

void sub_1D12E9994(uint64_t a1)
{
  if (qword_1EC608C08 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v3 = sub_1D139012C();
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v4 = sub_1D138FFEC();
  v5 = [v2 initWithString:v3 attributes:v4];

  if (qword_1EC608DC8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC62FC48;
  v7 = sub_1D139012C();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  sub_1D112F45C(v10, v291);
  if (v10 <= 1)
  {
    v261 = v5;
    if (v10)
    {
      sub_1D1072E70(v291, v290);
      v202 = *(v9 + 16);
      v12 = MEMORY[0x1E69E7CC0];
      if (v202)
      {
        v259 = v8;
        v289 = MEMORY[0x1E69E7CC0];
        sub_1D13912DC();
        v203 = 0;
        v272 = v9 + 32;
        do
        {
          v207 = v272 + 40 * v203;
          v208 = *(v207 + 24);
          v209 = *(v207 + 32);

          v287 = v209;

          v278 = objc_autoreleasePoolPush();
          if (qword_1EC608C40 != -1)
          {
            swift_once();
          }

          v210 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

          v211 = sub_1D139012C();
          v212 = sub_1D138FFEC();

          v213 = [v210 initWithString:v211 attributes:v212];

          if (v208)
          {
            if (qword_1EC608C50 != -1)
            {
              swift_once();
            }

            v214 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
            v215 = sub_1D139012C();
            v216 = sub_1D138FFEC();
            v217 = [v214 initWithString:v215 attributes:v216];
          }

          else
          {
            v217 = 0;
          }

          v218 = v287;
          v219 = [v213 string];
          v220 = sub_1D139016C();
          v283 = v213;
          v222 = v221;

          v223 = HIBYTE(v222) & 0xF;
          if ((v222 & 0x2000000000000000) == 0)
          {
            v223 = v220 & 0xFFFFFFFFFFFFLL;
          }

          v224 = 0.0;
          v225 = 0.0;
          v226 = 0.0;
          if (v223)
          {
            [v283 size];
            v225 = ceil(v227);
            v226 = ceil(v228);
          }

          if (v217)
          {
            v229 = v217;
            v230 = [v229 string];
            v231 = sub_1D139016C();
            v233 = v232;

            v234 = HIBYTE(v233) & 0xF;
            if ((v233 & 0x2000000000000000) == 0)
            {
              v234 = v231 & 0xFFFFFFFFFFFFLL;
            }

            if (v234)
            {
              [v229 size];
              v236 = v235;
              v238 = v237;

              v224 = ceil(v236);
              v239 = ceil(v238);
            }

            else
            {

              v239 = 0.0;
            }

            v218 = v287;
          }

          else
          {
            v239 = 0.0;
          }

          sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
          v240 = swift_allocObject();
          *(v240 + 16) = xmmword_1D139E810;
          v241 = *(v218 + 16);
          if (v241)
          {
            v242 = v202;
            *&v288[0] = MEMORY[0x1E69E7CC0];
            sub_1D13912DC();
            v243 = (v218 + 72);
            do
            {
              v244 = *(v243 - 3);
              v245 = *(v243 - 1);
              v246 = *v243;
              v292 = *(v243 - 5);
              v293 = v244;
              *&v294 = v245;
              *(&v294 + 1) = v246;
              sub_1D12ECB00();
              sub_1D13912AC();
              sub_1D13912EC();
              sub_1D13912FC();
              sub_1D13912BC();
              v243 += 6;
              --v241;
            }

            while (v241);
            v204 = *&v288[0];
            v202 = v242;
          }

          else
          {
            v204 = MEMORY[0x1E69E7CC0];
          }

          ++v203;
          _s15SizedValueGroupCMa();
          v205 = swift_allocObject();
          *(v205 + 24) = 0;
          *(v205 + 32) = 0;
          *(v205 + 16) = 0;
          *(v205 + 40) = 1;
          *(v205 + 48) = v204;
          *(v240 + 32) = v205;
          sub_1D1072E70(v290, v288);
          _s11SizedRecordCMa();
          v206 = swift_allocObject();
          *(v206 + 128) = 0;
          *(v206 + 136) = 1;
          *(v206 + 16) = v283;
          *(v206 + 24) = v225;
          *(v206 + 32) = v226;
          *(v206 + 40) = v217;
          *(v206 + 48) = v224;
          *(v206 + 56) = v239;
          *(v206 + 64) = v217 == 0;
          *(v206 + 72) = 0;
          *(v206 + 80) = v240;
          sub_1D102CC18(v288, v206 + 88);
          objc_autoreleasePoolPop(v278);

          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
        }

        while (v203 != v202);
        v12 = v289;
        v8 = v259;
      }

      v247 = v290;
      goto LABEL_157;
    }

    sub_1D1072E70(v291, &v292);
    v56 = *(v9 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (!v56)
    {
      goto LABEL_156;
    }

    v257 = v8;
    *&v288[0] = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v57 = 0;
    v264 = v9 + 32;
    v263 = v56;
    while (1)
    {
      v274 = v57;
      v61 = v264 + 40 * v57;
      v62 = *(v61 + 24);
      v63 = *(v61 + 32);

      v279 = v63;

      v266 = objc_autoreleasePoolPush();
      if (qword_1EC608C40 != -1)
      {
        swift_once();
      }

      v64 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      v65 = sub_1D139012C();
      v66 = sub_1D138FFEC();

      v277 = [v64 initWithString:v65 attributes:v66];

      if (v62)
      {
        if (qword_1EC608C50 != -1)
        {
          swift_once();
        }

        v67 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v68 = sub_1D139012C();
        v69 = sub_1D138FFEC();
        v70 = [v67 initWithString:v68 attributes:v69];
      }

      else
      {
        v70 = 0;
      }

      v71 = [v277 string];
      v72 = sub_1D139016C();
      v74 = v73;

      v75 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v75 = v72 & 0xFFFFFFFFFFFFLL;
      }

      v76 = 0.0;
      v77 = 0.0;
      v78 = 0.0;
      if (v75)
      {
        [v277 size];
        v77 = ceil(v79);
        v78 = ceil(v80);
      }

      if (!v70)
      {
        goto LABEL_57;
      }

      v81 = v70;
      v82 = [v81 string];
      v83 = sub_1D139016C();
      v85 = v84;

      v86 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v86 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (!v86)
      {
        break;
      }

      [v81 size];
      v88 = v87;
      v90 = v89;

      v76 = ceil(v88);
      v91 = ceil(v90);
LABEL_58:
      sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_1D139E810;
      v93 = *(v279 + 16);
      v265 = v92;
      if (v93)
      {
        *&v290[0] = v12;
        sub_1D13912DC();
        if (qword_1EC608C20 != -1)
        {
          swift_once();
        }

        v94 = v279 + 40;
        do
        {
          v103 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v104 = sub_1D139012C();
          v105 = sub_1D138FFEC();
          v106 = [v103 initWithString:v104 attributes:v105];

          v107 = [v106 string];
          v108 = sub_1D139016C();
          v110 = v109;

          v111 = HIBYTE(v110) & 0xF;
          if ((v110 & 0x2000000000000000) == 0)
          {
            v111 = v108 & 0xFFFFFFFFFFFFLL;
          }

          if (v111)
          {
            [v106 size];
            v96 = ceil(v95);
            v98 = ceil(v97);
          }

          else
          {
            v96 = 0.0;
            v98 = 0.0;
          }

          v99 = swift_allocObject();
          *(v99 + 16) = xmmword_1D139E810;
          *(v99 + 32) = v106;
          sub_1D12ECAB0(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_1D139E700;
          *(v100 + 32) = v96;
          v101 = swift_allocObject();
          *(v101 + 16) = xmmword_1D139E700;
          *(v101 + 32) = v98;
          _s10SizedValueCMa();
          v102 = swift_allocObject();
          *(v102 + 48) = 0;
          *(v102 + 56) = 1;
          *(v102 + 16) = v99;
          *(v102 + 24) = v100;
          *(v102 + 32) = v101;
          *(v102 + 40) = 0;
          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
          v94 += 16;
          --v93;
        }

        while (v93);
        v58 = *&v290[0];
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v58 = v12;
      }

      v57 = v274 + 1;
      _s15SizedValueGroupCMa();
      v59 = swift_allocObject();
      *(v59 + 24) = 0;
      *(v59 + 32) = 0;
      *(v59 + 16) = 0;
      *(v59 + 40) = 1;
      *(v59 + 48) = v58;
      *(v265 + 32) = v59;
      sub_1D1072E70(&v292, v290);
      _s11SizedRecordCMa();
      v60 = swift_allocObject();
      *(v60 + 128) = 0;
      *(v60 + 136) = 1;
      *(v60 + 16) = v277;
      *(v60 + 24) = v77;
      *(v60 + 32) = v78;
      *(v60 + 40) = v70;
      *(v60 + 48) = v76;
      *(v60 + 56) = v91;
      *(v60 + 64) = v70 == 0;
      *(v60 + 72) = 0;
      *(v60 + 80) = v265;
      sub_1D102CC18(v290, v60 + 88);
      objc_autoreleasePoolPop(v266);

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      if (v274 + 1 == v263)
      {
        v12 = *&v288[0];
        v8 = v257;
LABEL_156:
        v247 = &v292;
LABEL_157:
        __swift_destroy_boxed_opaque_existential_1Tm(v247);
        v5 = v261;
        goto LABEL_158;
      }
    }

LABEL_57:
    v91 = 0.0;
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    sub_1D1072E70(v291, v290);
    v112 = *(v9 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (!v112)
    {
      goto LABEL_96;
    }

    v256 = v8;
    v260 = v5;
    v289 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v113 = 0;
    v268 = v9 + 32;
    v114 = &off_1E83DF000;
    while (1)
    {
      v118 = v268 + 40 * v113;
      v119 = *(v118 + 24);
      v120 = *(v118 + 32);

      v285 = v120;

      v275 = objc_autoreleasePoolPush();
      if (qword_1EC608C40 != -1)
      {
        swift_once();
      }

      v121 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

      v122 = sub_1D139012C();
      v123 = sub_1D138FFEC();

      v124 = [v121 initWithString:v122 attributes:v123];

      if (v119)
      {
        if (qword_1EC608C50 != -1)
        {
          swift_once();
        }

        v125 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v126 = sub_1D139012C();
        v127 = sub_1D138FFEC();
        v128 = [v125 initWithString:v126 attributes:v127];
      }

      else
      {
        v128 = 0;
      }

      v129 = [v124 v114[439]];
      v130 = sub_1D139016C();
      v281 = v124;
      v132 = v131;

      v133 = HIBYTE(v132) & 0xF;
      if ((v132 & 0x2000000000000000) == 0)
      {
        v133 = v130 & 0xFFFFFFFFFFFFLL;
      }

      v134 = 0.0;
      v135 = 0.0;
      v136 = 0.0;
      if (v133)
      {
        [v281 size];
        v135 = ceil(v137);
        v136 = ceil(v138);
      }

      if (!v128)
      {
        goto LABEL_90;
      }

      v139 = v128;
      v140 = [v139 v114[439]];
      v141 = sub_1D139016C();
      v143 = v142;

      v144 = HIBYTE(v143) & 0xF;
      if ((v143 & 0x2000000000000000) == 0)
      {
        v144 = v141 & 0xFFFFFFFFFFFFLL;
      }

      if (!v144)
      {
        break;
      }

      [v139 size];
      v146 = v145;
      v148 = v147;

      v134 = ceil(v146);
      v149 = ceil(v148);
LABEL_91:
      v150 = sub_1D11F5788();
      v270 = sub_1D12EC678(v150);

      sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_1D139E810;
      v152 = *(v285 + 16);
      if (v152)
      {
        v153 = v12;
        *&v288[0] = v12;
        sub_1D13912DC();
        v154 = (v285 + 32);
        do
        {
          v293 = v154[1];
          v294 = v154[2];
          v295 = v154[3];
          LOBYTE(v296) = *(v154 + 64);
          v155 = *v154;
          v154 = (v154 + 72);
          v292 = v155;
          sub_1D12ECECC(&v292);
          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
          --v152;
        }

        while (v152);
        v115 = *&v288[0];
        v12 = v153;
        v114 = &off_1E83DF000;
      }

      else
      {
        v115 = v12;
      }

      ++v113;
      _s15SizedValueGroupCMa();
      v116 = swift_allocObject();
      *(v116 + 24) = 0;
      *(v116 + 32) = 0;
      *(v116 + 16) = 0;
      *(v116 + 40) = 1;
      *(v116 + 48) = v115;
      *(v151 + 32) = v116;
      sub_1D1072E70(v290, v288);
      _s11SizedRecordCMa();
      v117 = swift_allocObject();
      *(v117 + 128) = 0;
      *(v117 + 136) = 1;
      *(v117 + 16) = v281;
      *(v117 + 24) = v135;
      *(v117 + 32) = v136;
      *(v117 + 40) = v128;
      *(v117 + 48) = v134;
      *(v117 + 56) = v149;
      *(v117 + 64) = v128 == 0;
      *(v117 + 72) = v270;
      *(v117 + 80) = v151;
      sub_1D102CC18(v288, v117 + 88);
      objc_autoreleasePoolPop(v275);

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      if (v113 == v112)
      {
LABEL_95:
        v12 = v289;
        v8 = v256;
        v5 = v260;
        goto LABEL_96;
      }
    }

LABEL_90:
    v149 = 0.0;
    goto LABEL_91;
  }

  if (v10 == 3)
  {
    sub_1D1072E70(v291, v290);
    v11 = *(v9 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v256 = v8;
      v260 = v5;
      v289 = MEMORY[0x1E69E7CC0];
      sub_1D13912DC();
      v13 = 0;
      v267 = v9 + 32;
      v14 = &off_1E83DF000;
      while (1)
      {
        v18 = v267 + 40 * v13;
        v19 = *(v18 + 24);
        v20 = *(v18 + 32);

        v284 = v20;

        v273 = objc_autoreleasePoolPush();
        if (qword_1EC608C40 != -1)
        {
          swift_once();
        }

        v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

        v22 = sub_1D139012C();
        v23 = sub_1D138FFEC();

        v24 = [v21 initWithString:v22 attributes:v23];

        if (v19)
        {
          if (qword_1EC608C50 != -1)
          {
            swift_once();
          }

          v25 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v26 = sub_1D139012C();
          v27 = sub_1D138FFEC();
          v28 = [v25 initWithString:v26 attributes:v27];
        }

        else
        {
          v28 = 0;
        }

        v29 = [v24 v14[439]];
        v30 = sub_1D139016C();
        v280 = v24;
        v32 = v31;

        v33 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v33 = v30 & 0xFFFFFFFFFFFFLL;
        }

        v34 = 0.0;
        v35 = 0.0;
        v36 = 0.0;
        if (v33)
        {
          [v280 size];
          v35 = ceil(v37);
          v36 = ceil(v38);
        }

        if (!v28)
        {
          goto LABEL_30;
        }

        v39 = v28;
        v40 = [v39 v14[439]];
        v41 = sub_1D139016C();
        v43 = v42;

        v44 = HIBYTE(v43) & 0xF;
        if ((v43 & 0x2000000000000000) == 0)
        {
          v44 = v41 & 0xFFFFFFFFFFFFLL;
        }

        if (!v44)
        {
          break;
        }

        [v39 size];
        v46 = v45;
        v48 = v47;

        v34 = ceil(v46);
        v49 = ceil(v48);
LABEL_31:
        v50 = sub_1D11F5918();
        v269 = sub_1D12EC678(v50);

        sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1D139E810;
        v52 = *(v284 + 16);
        if (v52)
        {
          v53 = v12;
          *&v288[0] = v12;
          sub_1D13912DC();
          v54 = (v284 + 32);
          do
          {
            v293 = v54[1];
            v294 = v54[2];
            v295 = v54[3];
            v296 = v54[4];
            v55 = *v54;
            v54 += 5;
            v292 = v55;
            sub_1D12ED5E0();
            sub_1D13912AC();
            sub_1D13912EC();
            sub_1D13912FC();
            sub_1D13912BC();
            --v52;
          }

          while (v52);
          v15 = *&v288[0];
          v12 = v53;
          v14 = &off_1E83DF000;
        }

        else
        {
          v15 = v12;
        }

        ++v13;
        _s15SizedValueGroupCMa();
        v16 = swift_allocObject();
        *(v16 + 24) = 0;
        *(v16 + 32) = 0;
        *(v16 + 16) = 0;
        *(v16 + 40) = 1;
        *(v16 + 48) = v15;
        *(v51 + 32) = v16;
        sub_1D1072E70(v290, v288);
        _s11SizedRecordCMa();
        v17 = swift_allocObject();
        *(v17 + 128) = 0;
        *(v17 + 136) = 1;
        *(v17 + 16) = v280;
        *(v17 + 24) = v35;
        *(v17 + 32) = v36;
        *(v17 + 40) = v28;
        *(v17 + 48) = v34;
        *(v17 + 56) = v49;
        *(v17 + 64) = v28 == 0;
        *(v17 + 72) = v269;
        *(v17 + 80) = v51;
        sub_1D102CC18(v288, v17 + 88);
        objc_autoreleasePoolPop(v273);

        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        if (v13 == v11)
        {
          goto LABEL_95;
        }
      }

LABEL_30:
      v49 = 0.0;
      goto LABEL_31;
    }

LABEL_96:
    __swift_destroy_boxed_opaque_existential_1Tm(v290);
    goto LABEL_158;
  }

  sub_1D1072E70(v291, &v292);
  v156 = *(v9 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v156)
  {
    goto LABEL_152;
  }

  v258 = v8;
  v262 = v5;
  *&v288[0] = MEMORY[0x1E69E7CC0];
  sub_1D13912DC();
  v157 = 0;
  v271 = v156;
  v276 = v9 + 32;
  v158 = &off_1E83DF000;
  do
  {
    v161 = v276 + 40 * v157;
    v162 = *(v161 + 24);
    v163 = *(v161 + 32);

    v286 = v163;

    v282 = objc_autoreleasePoolPush();
    if (qword_1EC608C40 != -1)
    {
      swift_once();
    }

    v164 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v165 = sub_1D139012C();
    v166 = sub_1D138FFEC();

    v167 = [v164 initWithString:v165 attributes:v166];

    if (v162)
    {
      if (qword_1EC608C50 != -1)
      {
        swift_once();
      }

      v168 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v169 = sub_1D139012C();
      v170 = sub_1D138FFEC();
      v171 = [v168 initWithString:v169 attributes:v170];
    }

    else
    {
      v171 = 0;
    }

    v172 = [v167 v158[439]];
    v173 = sub_1D139016C();
    v175 = v174;

    v176 = HIBYTE(v175) & 0xF;
    if ((v175 & 0x2000000000000000) == 0)
    {
      v176 = v173 & 0xFFFFFFFFFFFFLL;
    }

    v177 = 0.0;
    v178 = 0.0;
    v179 = 0.0;
    if (v176)
    {
      [v167 size];
      v178 = ceil(v180);
      v179 = ceil(v181);
    }

    if (v171)
    {
      v182 = v167;
      v183 = v171;
      v184 = [v183 v158[439]];
      v185 = sub_1D139016C();
      v187 = v186;

      v188 = HIBYTE(v187) & 0xF;
      if ((v187 & 0x2000000000000000) == 0)
      {
        v188 = v185 & 0xFFFFFFFFFFFFLL;
      }

      if (v188)
      {
        [v183 size];
        v190 = v189;
        v192 = v191;

        v177 = ceil(v190);
        v193 = ceil(v192);
      }

      else
      {

        v193 = 0.0;
      }

      v194 = v286;
      v167 = v182;
      v156 = v271;
      v195 = *(v286 + 16);
      if (!v195)
      {
LABEL_99:
        v159 = MEMORY[0x1E69E7CC0];
        goto LABEL_100;
      }
    }

    else
    {
      v193 = 0.0;
      v194 = v286;
      v195 = *(v286 + 16);
      if (!v195)
      {
        goto LABEL_99;
      }
    }

    v196 = v158;
    v197 = v156;
    *&v290[0] = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v198 = (v194 + 48);
    do
    {
      v199 = *(v198 - 2);
      v200 = *(v198 - 1);
      v201 = *v198;
      v198 += 3;
      sub_1D12EDA44(v199, v200, v201);
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      --v195;
    }

    while (v195);
    v159 = *&v290[0];
    v156 = v197;
    v158 = v196;
LABEL_100:
    ++v157;
    sub_1D1072E70(&v292, v290);
    _s11SizedRecordCMa();
    v160 = swift_allocObject();
    *(v160 + 128) = 0;
    *(v160 + 136) = 1;
    *(v160 + 16) = v167;
    *(v160 + 24) = v178;
    *(v160 + 32) = v179;
    *(v160 + 40) = v171;
    *(v160 + 48) = v177;
    *(v160 + 56) = v193;
    *(v160 + 64) = v171 == 0;
    *(v160 + 72) = 0;
    *(v160 + 80) = v159;
    sub_1D102CC18(v290, v160 + 88);
    objc_autoreleasePoolPop(v282);

    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
  }

  while (v157 != v156);
  v12 = *&v288[0];
  v8 = v258;
  v5 = v262;
LABEL_152:
  __swift_destroy_boxed_opaque_existential_1Tm(&v292);
LABEL_158:
  v248 = sub_1D12EB6F4();
  v250 = v249;
  [v8 size];
  v252 = ceil(v251);
  v254 = ceil(v253);
  _s12SizedSectionCMa();
  v255 = swift_allocObject();
  *(v255 + 112) = 0;
  *(v255 + 120) = 1;
  *(v255 + 128) = 0;
  *(v255 + 136) = 1;
  *(v255 + 144) = 0;
  *(v255 + 152) = 1;
  *(v255 + 16) = v5;
  *(v255 + 24) = v248;
  *(v255 + 32) = v250;
  *(v255 + 40) = v8;
  *(v255 + 48) = v252;
  *(v255 + 56) = v254;
  *(v255 + 64) = v12;
  sub_1D102CC18(v291, v255 + 72);
}

id sub_1D12EB504(uint64_t a1, void (*a2)(void))
{
  a2();
  if (qword_1EC608C30 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v3 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v4 = sub_1D138FFEC();
  v5 = [v2 initWithString:v3 attributes:v4];

  return v5;
}

id sub_1D12EB5F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (qword_1EC608C80 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

  v4 = sub_1D139012C();

  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v5 = sub_1D138FFEC();

  v6 = [v3 initWithString:v4 attributes:v5];

  return v6;
}

double sub_1D12EB6F4()
{
  v1 = [v0 string];
  v2 = sub_1D139016C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0.0;
  }

  [v0 size];
  return ceil(v6);
}

uint64_t sub_1D12EB7A8()
{
  if (qword_1EC608C20 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1D139012C();
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v2 = sub_1D138FFEC();
  v3 = [v0 initWithString:v1 attributes:v2];

  v4 = sub_1D12EB6F4();
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v8 = sub_1D139012C();
  v9 = sub_1D138FFEC();
  v10 = [v7 initWithString:v8 attributes:v9];

  v11 = sub_1D12EB6F4();
  v13 = v12;
  v14 = MEMORY[0x1E69E6F90];
  sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139E6E0;
  *(v15 + 32) = v3;
  *(v15 + 40) = v10;
  sub_1D12ECAB0(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], v14);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D139E710;
  *(v16 + 32) = v4;
  *(v16 + 40) = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139E710;
  *(v17 + 32) = v6;
  *(v17 + 40) = v13;
  _s10SizedValueCMa();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 16) = v15;
  *(result + 24) = v16;
  *(result + 32) = v17;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1D12EBA08(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D13915BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D11046D8();
        v5 = sub_1D13904DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D12EBBD4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D12EBB04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D12EBB04(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_1D139162C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D12EBBD4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_1D1245848(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_1D12EC1B8((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_1D139162C();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D139162C();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1D10F7610((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_1D12EC1B8((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D1245848(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_1D12457BC(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_1D139162C(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1D12EC1B8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_1D139162C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_1D139162C() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

void sub_1D12EC3E0(uint64_t a1, uint64_t a2)
{
  if (qword_1EC608DD0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC62FC50;
  v5 = sub_1D139012C();
  v6 = [objc_opt_self() systemImageNamed:v5 withConfiguration:v4];

  if (v6)
  {
    v7 = [objc_opt_self() textAttachmentWithImage_];

    sub_1D12EC62C();
    v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    MEMORY[0x1D3885C10](a1, a2);
    if (qword_1EC608C70 != -1)
    {
      swift_once();
    }

    v9 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v10 = sub_1D139012C();

    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v11 = sub_1D138FFEC();

    v12 = [v9 initWithString:v10 attributes:v11];

    [v8 appendAttributedString_];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1D12EC62C()
{
  result = qword_1EC60C410;
  if (!qword_1EC60C410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60C410);
  }

  return result;
}

uint64_t sub_1D12EC678(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    v4 = a1 + 40;
    do
    {
      v5 = qword_1EC608C48;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v7 = sub_1D139012C();

      type metadata accessor for Key(0);
      sub_1D106F8DC();
      v8 = sub_1D138FFEC();
      [v6 initWithString:v7 attributes:v8];

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v4 += 16;
      --v1;
    }

    while (v1);
    v9 = v42;
    v2 = MEMORY[0x1E69E7CC0];
    if (!(v42 >> 62))
    {
LABEL_7:
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_8;
      }

LABEL_24:
      v27 = *(v2 + 16);
      if (!v27)
      {
        v34 = MEMORY[0x1E69E7CC0];

        v28 = v34;
LABEL_35:
        _s10SizedValueCMa();
        result = swift_allocObject();
        *(result + 48) = 0;
        *(result + 56) = 1;
        *(result + 16) = v9;
        *(result + 24) = v28;
        *(result + 32) = v34;
        *(result + 40) = 0;
        return result;
      }

      v13 = v2;
LABEL_26:
      sub_1D10FDC5C(0, v27, 0);
      v28 = v2;
      v29 = *(v2 + 16);
      v30 = 32;
      v31 = v27;
      do
      {
        v32 = *(v13 + v30);
        v33 = *(v2 + 24);
        if (v29 >= v33 >> 1)
        {
          sub_1D10FDC5C((v33 > 1), v29 + 1, 1);
        }

        *(v2 + 16) = v29 + 1;
        *(v2 + 8 * v29 + 32) = v32;
        v30 += 16;
        ++v29;
        --v31;
      }

      while (v31);
      sub_1D10FDC5C(0, v27, 0);
      v34 = v2;
      v35 = *(v2 + 16);
      v36 = 40;
      do
      {
        v37 = *(v13 + v36);
        v38 = *(v2 + 24);
        if (v35 >= v38 >> 1)
        {
          sub_1D10FDC5C((v38 > 1), v35 + 1, 1);
        }

        *(v2 + 16) = v35 + 1;
        *(v2 + 8 * v35 + 32) = v37;
        v36 += 16;
        ++v35;
        --v27;
      }

      while (v27);

      goto LABEL_35;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_7;
    }
  }

  v10 = sub_1D13910DC();
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_8:
  result = sub_1D10FE228(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v2;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3886B70](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 string];
      v17 = sub_1D139016C();
      v19 = v18;

      v20 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v20 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v20)
      {
        [v15 size];
        v39 = v22;
        v40 = v21;

        v23.f64[0] = v40;
        *&v23.f64[1] = v39;
        v24 = vrndpq_f64(v23);
      }

      else
      {

        v24 = 0uLL;
      }

      v26 = *(v2 + 16);
      v25 = *(v2 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v41 = v24;
        sub_1D10FE228((v25 > 1), v26 + 1, 1);
        v24 = v41;
      }

      ++v12;
      *(v2 + 16) = v27;
      *(v2 + 16 * v26 + 32) = v24;
    }

    while (v10 != v12);
    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

void sub_1D12ECAB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D12ECB00()
{
  if (qword_1EC608C20 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1D139012C();
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v2 = sub_1D138FFEC();
  v3 = [v0 initWithString:v1 attributes:v2];

  v4 = sub_1D12EB6F4();
  v6 = v5;

  MEMORY[0x1D3885C10](32, 0xE100000000000000);
  if (qword_1EC608C40 != -1)
  {
    swift_once();
  }

  v7 = objc_allocWithZone(MEMORY[0x1E696AD40]);

  v8 = sub_1D139012C();

  v9 = sub_1D138FFEC();

  v10 = [v7 initWithString:v8 attributes:v9];

  if (qword_1EC608C50 != -1)
  {
    swift_once();
  }

  v11 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v12 = sub_1D139012C();
  v13 = sub_1D138FFEC();
  v14 = [v11 initWithString:v12 attributes:v13];

  [v10 appendAttributedString_];
  v15 = v10;
  v16 = sub_1D12EB6F4();
  v18 = v17;
  v19 = MEMORY[0x1E69E6F90];
  sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D139E6E0;
  *(v20 + 32) = v3;
  v21 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v22 = v3;
  v23 = [v21 initWithAttributedString_];

  *(v20 + 40) = v23;
  sub_1D12ECAB0(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], v19);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D139E710;
  *(v24 + 32) = v4;
  *(v24 + 40) = v16;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D139E710;
  *(v25 + 32) = v6;
  *(v25 + 40) = v18;

  _s10SizedValueCMa();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 16) = v20;
  *(result + 24) = v24;
  *(result + 32) = v25;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1D12ECECC(unint64_t a1)
{
  if (qword_1EC608C20 != -1)
  {
    swift_once();
  }

  v2 = 0x1E696A000uLL;
  v3 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v4 = sub_1D139012C();
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v5 = sub_1D138FFEC();
  v6 = [v3 initWithString:v4 attributes:v5];

  v52 = v6;
  v7 = sub_1D12EB6F4();
  v9 = v8;

  MEMORY[0x1D3885C10](32, 0xE100000000000000);
  v10 = &OBJC_IVAR___WDClinicalOnboardingViewController__unsupportedSearchResults;
  v53 = *(a1 + 64);
  if (v53 == 1)
  {
    if (qword_1EC608C40 != -1)
    {
      goto LABEL_30;
    }
  }

  else if (qword_1EC608C58 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {

    v11 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v12 = sub_1D139012C();

    v13 = sub_1D138FFEC();

    v14 = [v11 initWithString:v12 attributes:v13];

    if (!v53)
    {
      if (*(v10 + 395) == -1)
      {
        goto LABEL_12;
      }

LABEL_11:
      swift_once();
      goto LABEL_12;
    }

    if (qword_1EC608C50 != -1)
    {
      goto LABEL_11;
    }

LABEL_12:

    v15 = v2;
    v16 = objc_allocWithZone(*(v2 + 2736));
    v17 = sub_1D139012C();
    v18 = sub_1D138FFEC();

    v19 = [v16 initWithString:v17 attributes:v18];

    [v14 appendAttributedString_];
    v20 = v14;
    v21 = sub_1D12EB6F4();
    v23 = v22;
    v24 = *(a1 + 48);
    a1 = *(a1 + 56);
    if (qword_1EC608C50 != -1)
    {
      swift_once();
    }

    v25 = objc_allocWithZone(*(v15 + 2736));
    v51 = v24;
    v26 = sub_1D139012C();
    v27 = sub_1D138FFEC();
    v28 = [v25 initWithString:v26 attributes:v27];

    v29 = sub_1D12EB6F4();
    v31 = v30;
    if ((v53 & 1) == 0)
    {
      if (qword_1EE06AD00 != -1)
      {
        swift_once();
      }

      sub_1D138D1CC();
    }

    if (qword_1EC608C60 != -1)
    {
      swift_once();
    }

    v32 = objc_allocWithZone(*(v15 + 2736));
    v33 = sub_1D139012C();

    v34 = sub_1D138FFEC();
    v35 = [v32 initWithString:v33 attributes:v34];

    v36 = sub_1D12EB6F4();
    v38 = v37;
    v39 = MEMORY[0x1E69E6F90];
    sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D139F5B0;
    *(v40 + 32) = v52;
    v41 = objc_allocWithZone(*(v15 + 2736));
    v42 = v52;
    v43 = [v41 initWithAttributedString_];

    *(v40 + 40) = v43;
    *(v40 + 48) = v28;
    *(v40 + 56) = v35;
    sub_1D12ECAB0(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], v39);
    v10 = swift_allocObject();
    v52 = 4;
    *(v10 + 1) = xmmword_1D13A3120;
    *(v10 + 4) = v7;
    *(v10 + 5) = v21;
    *(v10 + 6) = v29;
    *(v10 + 7) = v36;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D13A3120;
    *(v44 + 32) = v9;
    *(v44 + 40) = v23;
    *(v44 + 48) = v31;
    *(v44 + 56) = v38;
    v45 = v28;
    v46 = v35;
    v47 = sub_1D139028C();
    v2 = sub_1D139028C();

    if (!__OFADD__(v47, v2))
    {
      break;
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  if (v47 + v2 >= 15)
  {
    v49 = HIBYTE(a1) & 0xF;
    if ((a1 & 0x2000000000000000) == 0)
    {
      v49 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v48 = 0;
    }

    else
    {
      v48 = v53;
    }
  }

  else
  {
    v48 = 0;
  }

  _s10SizedValueCMa();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 16) = v40;
  *(result + 24) = v10;
  *(result + 32) = v44;
  *(result + 40) = v48;
  return result;
}

uint64_t sub_1D12ED5E0()
{
  if (qword_1EC608C20 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v1 = sub_1D139012C();
  type metadata accessor for Key(0);
  sub_1D106F8DC();
  v2 = sub_1D138FFEC();
  v3 = [v0 initWithString:v1 attributes:v2];

  v40 = v3;
  v41 = sub_1D12EB6F4();
  v42 = v4;
  v5 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v6 = sub_1D139012C();
  v7 = sub_1D138FFEC();
  v8 = [v5 initWithString:v6 attributes:v7];

  v9 = sub_1D12EB6F4();
  v11 = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v13 = sub_1D139012C();
  v14 = sub_1D138FFEC();
  v15 = [v12 initWithString:v13 attributes:v14];

  v39 = v15;
  v16 = sub_1D12EB6F4();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1D139012C();
  v21 = sub_1D138FFEC();
  v22 = [v19 initWithString:v20 attributes:v21];

  v23 = sub_1D12EB6F4();
  v25 = v24;
  v26 = qword_1EC608C50;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v28 = sub_1D139012C();

  v29 = sub_1D138FFEC();
  v30 = [v27 initWithString:v28 attributes:v29];

  v31 = sub_1D12EB6F4();
  v33 = v32;
  v34 = MEMORY[0x1E69E6F90];
  sub_1D12ECAB0(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D139F5A0;
  *(v35 + 32) = v40;
  *(v35 + 40) = v8;
  *(v35 + 48) = v39;
  *(v35 + 56) = v22;
  *(v35 + 64) = v30;
  sub_1D12ECAB0(0, &qword_1EC60ABE8, MEMORY[0x1E69E7DE0], v34);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D13A8CA0;
  *(v36 + 32) = v41;
  *(v36 + 40) = v9;
  *(v36 + 48) = v16;
  *(v36 + 56) = v23;
  *(v36 + 64) = v31;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D13A8CA0;
  *(v37 + 32) = v42;
  *(v37 + 40) = v11;
  *(v37 + 48) = v18;
  *(v37 + 56) = v25;
  *(v37 + 64) = v33;
  _s10SizedValueCMa();
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 16) = v35;
  *(result + 24) = v36;
  *(result + 32) = v37;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1D12EDA44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1EC608C40 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E696AAB0]);

    v5 = sub_1D139012C();
    type metadata accessor for Key(0);
    sub_1D106F8DC();
    v6 = sub_1D138FFEC();

    v7 = [v4 initWithString:v5 attributes:v6];

    v8 = sub_1D12EB6F4();
    v10 = v9;
    v11 = a3[2];
    v12 = MEMORY[0x1E69E7CC0];
    if (v11)
    {
      v13 = sub_1D129FC3C(a3[2], 0);
      v14 = sub_1D12A293C(&v20, v13 + 4, v11, a3);

      sub_1D102CC30();
      if (v14 != v11)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v12 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v20 = v13;
    sub_1D12E900C(&v20);
    a3 = v20;
    v15 = v20[2];
    if (!v15)
    {
      break;
    }

    v20 = v12;
    sub_1D13912DC();
    v16 = 0;
    v17 = a3 + 7;
    while (v16 < a3[2])
    {
      ++v16;

      sub_1D12EB7A8();

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v17 += 4;
      if (v15 == v16)
      {

        v18 = v20;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_12:
  _s15SizedValueGroupCMa();
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v8;
  *(result + 32) = v10;
  *(result + 40) = 0;
  *(result + 48) = v18;
  return result;
}

id NSLayoutConstraint.withPriority(_:)()
{
  [v0 setPriority_];

  return v2;
}

void sub_1D12EDD54(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v99 = *MEMORY[0x1E69E9840];
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  v8 = CGDataConsumerCreateWithCFData(v73);
  if (v8)
  {
    mediaBox.origin.y = 0.0;
    mediaBox.origin.x = 0.0;
    mediaBox.size = xmmword_1D13AF750;
    v9 = v8;
    v10 = CGPDFContextCreate(v8, &mediaBox, 0);

    v72 = v10;
    if (v10)
    {
      v71 = v2;
      sub_1D12EE5A0();
      v12 = a1 + *(v11 + 28);
      v87 = *(v12 + *(_s13ConfigurationVMa() + 40));
      v13 = *(a1 + 112);
      if (v13 >> 62)
      {
        v64 = *(a1 + 112);
        v65 = sub_1D13910DC();
        v13 = v64;
        v14 = v65;
        if (v65)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          if (v14 < 1)
          {
            __break(1u);
          }

          v15 = *(a1 + 144);
          v96 = *(a1 + 128);
          v97 = v15;
          v98 = *(a1 + 160);
          v16 = *(a1 + 80);
          v92 = *(a1 + 64);
          v17 = *(a1 + 96);
          v95 = *(a1 + 112);
          v93 = v16;
          v94 = v17;
          v18 = *(a1 + 16);
          mediaBox.origin = *a1;
          mediaBox.size = v18;
          v19 = *(a1 + 32);
          v91 = *(a1 + 48);
          v90 = v19;
          v20 = *(&v95 + 1);
          v82 = *(&v96 + 1);
          v21 = v97;
          v22 = 756.0 - (v98 + 24.0);
          v80 = v98;
          v84 = v13 & 0xC000000000000001;
          v79 = v22 + 8.0;
          *&v83 = v96;
          v23 = 576.0 - *&v96;
          if (v87 != 1)
          {
            v23 = 36.0;
          }

          v77 = v23;
          v76 = v22 + v80 + 24.0 - v80;
          v81 = *(&v97 + 1);
          v78 = 576.0;
          v24 = 576.0 - *(&v97 + 1);
          if (v87 != 1)
          {
            v24 = 36.0;
          }

          v75 = v24;
          v25 = v13;
          v26 = v72;
          v27 = v25;
          v28 = v26;
          v29 = 0;
          v86 = v27;
          v85 = v14;
          do
          {
            if (v84)
            {
              v30 = MEMORY[0x1D3886B70](v29);
            }

            else
            {
              v30 = *(v27 + 8 * v29 + 32);
            }

            v88 = objc_autoreleasePoolPush();
            CGPDFContextBeginPage(v28, 0);
            CGContextTranslateCTM(v28, 0.0, 792.0);
            CGContextScaleCTM(v28, 1.0, -1.0);
            v31 = v87;
            sub_1D12EE5F0(&mediaBox, v28, v87);
            sub_1D12EF1C8(v30, v28, v31);
            v32 = *(v30 + 72);
            v33 = *(v30 + 80);
            v34 = *(v30 + 88);
            CGContextSaveGState(v28);
            if (qword_1EC608E80 != -1)
            {
              swift_once();
            }

            v35 = [qword_1EC62FCE0 CGColor];
            CGContextSetFillColorWithColor(v28, v35);

            v100.size.height = 0.5;
            v100.origin.x = 36.0;
            v100.origin.y = v22;
            v100.size.width = 540.0;
            CGContextFillRect(v28, v100);
            CGContextRestoreGState(v28);
            v36 = [v20 string];
            v37 = v20;
            v38 = sub_1D139016C();
            v40 = v39;

            v41 = HIBYTE(v40) & 0xF;
            if ((v40 & 0x2000000000000000) == 0)
            {
              v41 = v38 & 0xFFFFFFFFFFFFLL;
            }

            if (v41)
            {
              v42 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
              [v42 setMinimumScaleFactor_];
              UIGraphicsPushContext(v28);
              [v37 drawWithRect:1 options:v42 context:{v77, v79, v83, v82}];
              UIGraphicsPopContext();
            }

            if (qword_1EC608C88 != -1)
            {
              swift_once();
            }

            v43 = *&qword_1EC62FA98;
            v44 = [v32 string];
            v45 = sub_1D139016C();
            v47 = v46;

            v48 = HIBYTE(v47) & 0xF;
            if ((v47 & 0x2000000000000000) == 0)
            {
              v48 = v45 & 0xFFFFFFFFFFFFLL;
            }

            if (v48)
            {
              v49 = v22 + v43 + 8.0;
              if (v87 == 1)
              {
                v50 = 36.0;
              }

              else
              {
                v50 = v78 - v33;
              }

              v51 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
              [v51 setMinimumScaleFactor_];
              UIGraphicsPushContext(v28);
              [v32 drawWithRect:1 options:v51 context:{v50, v49, v33, v34}];
              UIGraphicsPopContext();
            }

            v52 = [v21 string];
            v53 = sub_1D139016C();
            v55 = v54;

            v56 = HIBYTE(v55) & 0xF;
            if ((v55 & 0x2000000000000000) == 0)
            {
              v56 = v53 & 0xFFFFFFFFFFFFLL;
            }

            if (v56)
            {
              v57 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
              [v57 setMinimumScaleFactor_];
              UIGraphicsPushContext(v28);
              [v21 drawWithRect:1 options:v57 context:{v75, v76, v81, v80}];
              UIGraphicsPopContext();
            }

            ++v29;
            CGPDFContextEndPage(v28);
            objc_autoreleasePoolPop(v88);

            v27 = v86;
            v20 = v37;
          }

          while (v85 != v29);
          goto LABEL_40;
        }
      }

      v66 = v72;
LABEL_40:
      v67 = v72;
      CGPDFContextClose(v72);

      v68 = v73;
      v62 = sub_1D138D3DC();
      v63 = v69;

      goto LABEL_41;
    }
  }

  sub_1D138F06C();
  v58 = sub_1D138F0AC();
  v59 = sub_1D13907FC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1D101F000, v58, v59, "[PDF]: Failed to create a PDF context to render in.", v60, 2u);
    MEMORY[0x1D38882F0](v60, -1, -1);
    v61 = v73;
  }

  else
  {
    v61 = v58;
    v58 = v73;
  }

  (*(v5 + 8))(v7, v4);
  v62 = 0;
  v63 = 0xF000000000000000;
LABEL_41:
  v70 = v74;
  *v74 = v62;
  v70[1] = v63;
}

void sub_1D12EE5A0()
{
  if (!qword_1EC60A400)
  {
    v0 = _s7PDFDataVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A400);
    }
  }
}

void sub_1D12EE5F0(uint64_t a1, CGContext *a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *a1;
  v9 = [*a1 string];
  v10 = sub_1D139016C();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    if (a3 == 1)
    {
      v14 = 576.0 - v7;
    }

    else
    {
      v14 = 36.0;
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
    [v15 setMinimumScaleFactor_];
    UIGraphicsPushContext(a2);
    [v8 drawWithRect:1 options:v15 context:{v14, 37.0, v7, v6}];
    UIGraphicsPopContext();
  }

  v16 = v6 + 37.0;
  v17 = *(a1 + 48);
  if (v17)
  {
    v18 = *(a1 + 80);
    v55 = v18;
    if (v18)
    {
      v19 = *(a1 + 88);
      v20 = *(a1 + 96);
      v21 = *(a1 + 104);
      v22 = v17;
      if ((v21 & 1) == 0)
      {
        sub_1D12EFFD0(&v55, &v54);
        v23 = [v18 string];
        v24 = sub_1D139016C();
        v26 = v25;

        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          if (a3 == 1)
          {
            v28 = 36.0;
          }

          else
          {
            v28 = 576.0 - v19;
          }

          v29 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
          [v29 setMinimumScaleFactor_];
          UIGraphicsPushContext(a2);
          [v18 drawWithRect:1 options:v29 context:{v28, v16 - v20, v19, v20}];
          UIGraphicsPopContext();
          sub_1D12F008C(&v55);
        }

        else
        {
          sub_1D12F008C(&v55);
        }
      }
    }

    else
    {
      v30 = v17;
    }
  }

  v31 = *(a1 + 32);
  v32 = *(a1 + 40);
  v33 = *(a1 + 24);
  v34 = [v33 string];
  v35 = sub_1D139016C();
  v37 = v36;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    if (a3 == 1)
    {
      v39 = 576.0 - v31;
    }

    else
    {
      v39 = 36.0;
    }

    v40 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) &selRef_constraintEqualToAnchor_multiplier_constant_];
    [v40 setMinimumScaleFactor_];
    UIGraphicsPushContext(a2);
    [v33 drawWithRect:1 options:v40 context:{v39, v16 + 1.0, v31, v32}];
    UIGraphicsPopContext();
  }

  if (v17)
  {
    if (*(a1 + 72))
    {
      goto LABEL_29;
    }

LABEL_33:
    v41 = (a1 + 56);
    v42 = (a1 + 64);
    goto LABEL_34;
  }

  v43 = *(a1 + 80);
  if (!v43)
  {
    goto LABEL_42;
  }

  v17 = v43;
  if ((*(a1 + 72) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if ((*(a1 + 104) & 1) == 0)
  {
    v41 = (a1 + 88);
    v42 = (a1 + 96);
LABEL_34:
    v44 = *v42;
    v45 = *v41;
    v46 = [v17 string];
    v47 = sub_1D139016C();
    v49 = v48;

    v50 = HIBYTE(v49) & 0xF;
    if ((v49 & 0x2000000000000000) == 0)
    {
      v50 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      if (a3 == 1)
      {
        v51 = 36.0;
      }

      else
      {
        v51 = 576.0 - v45;
      }

      v52 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) &selRef_constraintEqualToAnchor_multiplier_constant_];
      [v52 setMinimumScaleFactor_];
      UIGraphicsPushContext(a2);
      [v17 drawWithRect:1 options:v52 context:{v51, v16 + 1.0, v45, v44}];
      UIGraphicsPopContext();
    }
  }

LABEL_42:
  CGContextSaveGState(a2);
  if (qword_1EC608E80 != -1)
  {
    swift_once();
  }

  v53 = [qword_1EC62FCE0 CGColor];
  CGContextSetFillColorWithColor(a2, v53);

  v56.origin.x = 36.0;
  v56.origin.y = 75.5;
  v56.size.width = 540.0;
  v56.size.height = 0.5;
  CGContextFillRect(a2, v56);
  CGContextRestoreGState(a2);
}

double sub_1D12EEAC4(unint64_t a1, char **a2, void *a3, CGContext *a4, __objc2_category **a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  v20 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v20);
  v75 = v21[4];
  (v75)(v20, v21);
  v23 = a2[2];
  if (!v23)
  {
    goto LABEL_67;
  }

  v13 = v22;
  v10 = *(a2 + 4);
  v24 = a7 + 36.0;
  a7 = 576.0 - a7;
  v76 = v24;
  if (a5 == 1)
  {
    v11 = a7 - v10;
  }

  else
  {
    v11 = v24;
  }

  sub_1D121D0F4();
  v85 = v25;
  v9 = *(a1 + 24);
  if (!*(v9 + 2))
  {
    goto LABEL_68;
  }

  if (*(v9 + 4) >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v9 + 4);
  }

  v26 = *(a1 + 16);
  v83 = v26;
  v84 = v26 & 0xC000000000000001;
  if ((v26 & 0xC000000000000001) != 0)
  {
    goto LABEL_69;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

  for (i = *(v26 + 32); ; i = MEMORY[0x1D3886B70](0))
  {
    v28 = i;
    v29 = *(a1 + 32);
    if (*(v29 + 16))
    {
      v82 = v23;
      v87 = v9;
      v71 = a7;
      v77 = a1;
      a7 = v13 + a6;
      v86 = *(a1 + 32);
      v13 = *(v29 + 32);
      v88 = a5;
      v30 = [i string];
      v31 = sub_1D139016C();
      v33 = v32;

      v9 = v88;

      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v31 & 0xFFFFFFFFFFFFLL;
      }

      a1 = 0x1E69DB000uLL;
      a5 = &off_1E83DF000;
      v23 = &selRef_subscriberIdentifier;
      if (v34)
      {
        if (v88 == 1)
        {
          v35 = v10 + v11 - v12;
        }

        else
        {
          v35 = v76;
        }

        a5 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
        [a5 setMinimumScaleFactor_];
        UIGraphicsPushContext(a4);
        [v28 drawWithRect:33 options:a5 context:{v35, a7 + ceil((v85 - v13) * 0.5), v12, v13}];
        UIGraphicsPopContext();
      }

      v73 = v21;
      v74 = v20;
      if (!(v83 >> 62))
      {
        v36 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v20 = (v36 - 1);
        v37 = v36 == 1;
        if (v36 < 1)
        {
          goto LABEL_73;
        }

        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
LABEL_71:
      __break(1u);
    }

    v69 = sub_1D13910DC();
    v20 = (v69 - 1);
    v37 = v69 == 1;
    if (v69 < 1)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
      goto LABEL_60;
    }

LABEL_22:
    v70 = a6;
    if (v37)
    {
      break;
    }

    v38 = 0;
    v39 = v82 - 1;
    v40 = a2 + 5;
    v82 = (v87 + 40);
    v81 = v39;
    v80 = a2 + 5;
    while (v20 != v38)
    {
      if (v39 == v38)
      {
        goto LABEL_63;
      }

      a6 = *&v40[v38];
      if (a6 <= 0.0)
      {
        a6 = v10;
      }

      else
      {
        v21 = a1;
        a2 = (v38 + 1);
        a5 = a3[3];
        a1 = a3[4];
        __swift_project_boxed_opaque_existential_1Tm(a3, a5);
        v41 = (*(a1 + 88))(a5, a1);
        v23 = 0;
        v42 = 0.0;
        if (v43)
        {
          v44 = v86;
        }

        else
        {
          v44 = v86;
          if (a2 == v41)
          {
            v23 = *(v77 + 40);
            v42 = a9;
            if (!*(v77 + 40))
            {
              v42 = 0.0;
            }
          }
        }

        if (a2 >= *(v87 + 2))
        {
          goto LABEL_64;
        }

        if (a2 >= *(v44 + 16))
        {
          goto LABEL_65;
        }

        v45 = a6 + v42;
        v12 = *(v86 + 40 + 8 * v38);
        if (*&v82[v38] >= a6 + v42)
        {
          v13 = a6 + v42;
        }

        else
        {
          v13 = *&v82[v38];
        }

        a5 = a3[3];
        a1 = a3[4];
        __swift_project_boxed_opaque_existential_1Tm(a3, a5);
        v46 = (*(a1 + 16))(a5, a1);
        v10 = v11 + v10 + v46;
        v47 = v11 - v46 - v45;
        if (v9 == 1)
        {
          v11 = v47;
        }

        else
        {
          v11 = v10;
        }

        if (v84)
        {
          v48 = MEMORY[0x1D3886B70](v38 + 1, v83);
        }

        else
        {
          if (a2 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v48 = *(v83 + 40 + 8 * v38);
        }

        v49 = v48;
        v50 = [v48 string];
        v51 = sub_1D139016C();
        v53 = v52;

        v54 = HIBYTE(v53) & 0xF;
        if ((v53 & 0x2000000000000000) == 0)
        {
          v54 = v51 & 0xFFFFFFFFFFFFLL;
        }

        v9 = v88;
        a1 = v21;
        a5 = &off_1E83DF000;
        v21 = &selRef_subscriberIdentifier;
        a2 = &selRef_subscriberIdentifier;
        if (v54)
        {
          if (v88 == 1)
          {
            v55 = v45 + v11 - v13;
          }

          else
          {
            v55 = v10;
          }

          a5 = [objc_allocWithZone(*(a1 + 2016)) init];
          [a5 setMinimumScaleFactor_];
          UIGraphicsPushContext(a4);
          [v49 drawWithRect:33 options:a5 context:{v55, a7 + ceil((v85 - v12) * 0.5), v13, v12}];
          UIGraphicsPopContext();
        }

        v40 = v80;
        v39 = v81;
        if (v23)
        {
          goto LABEL_55;
        }
      }

      ++v38;
      v10 = a6;
      if (v20 == v38)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

LABEL_55:
  v56 = a3[3];
  v57 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v56);
  v23 = v73;
  v9 = v74;
  v21 = v75;
  if (((*(v57 + 56))(v56, v57) & 1) == 0)
  {
    goto LABEL_61;
  }

  a7 = a8;
  if (v88 == 1)
  {
    a6 = v71 - a8;
  }

  else
  {
    a6 = v76;
  }

  v58 = v85 + (v75)(v74, v73) + v70;
  v59 = a3[3];
  v60 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v59);
  v61 = v58 + (*(v60 + 40))(v59, v60);
  v62 = a3[3];
  v63 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v62);
  v11 = v61 - (*(v63 + 64))(v62, v63);
  v20 = a4;
  CGContextSaveGState(a4);
  if (qword_1EC608E80 != -1)
  {
    goto LABEL_74;
  }

LABEL_60:
  v64 = [qword_1EC62FCE0 CGColor];
  CGContextSetFillColorWithColor(v20, v64);

  v89.size.height = 0.5;
  v89.origin.x = a6;
  v89.origin.y = v11;
  v89.size.width = a7;
  CGContextFillRect(v20, v89);
  CGContextRestoreGState(v20);
LABEL_61:
  v65 = v85 + (v21)(v9, v23);
  v66 = a3[3];
  v67 = a3[4];
  __swift_project_boxed_opaque_existential_1Tm(a3, v66);
  return v65 + (*(v67 + 40))(v66, v67);
}

void sub_1D12EF1C8(unint64_t a1, CGContext *a2, __objc2_category **a3)
{
  v4 = a1;
  v5 = *(a1 + 24);
  v6 = &off_1E83DF000;
  if (v5)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = [v9 string];
    v11 = sub_1D139016C();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      if (a3 == 1)
      {
        v15 = 576.0 - v8;
      }

      else
      {
        v15 = 36.0;
      }

      v16 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
      [v16 setMinimumScaleFactor_];
      UIGraphicsPushContext(a2);
      [v9 drawWithRect:1 options:v16 context:{v15, 101.0, v8, v7}];
      UIGraphicsPopContext();
    }

    *&v17 = 121.0;
  }

  else
  {
    *&v17 = 101.0;
  }

  v18 = *&v17;
  v19 = *(v4 + 16);
  if (v19 >> 62)
  {
    goto LABEL_111;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
LABEL_112:
    v130 = 0.0;
    v131 = *(v4 + 48);
    if (!v131)
    {
      return;
    }

    goto LABEL_113;
  }

LABEL_13:
  v21 = 0;
  v22 = *(v4 + 96);
  v146 = v19 & 0xC000000000000001;
  v141 = v19 + 32;
  v142 = v19 & 0xFFFFFFFFFFFFFF8;
  v23 = 64.0;
  if (a3 == 1)
  {
    v23 = 548.0 - v22;
  }

  v152 = v22 + 548.0 - v22;
  v155 = *(v4 + 96);
  v147 = v22 + v23;
  v148 = v23;
  v168 = a2;
  v144 = v19;
  v145 = v4;
  v143 = v20;
  while (1)
  {
    if (v146)
    {
      v30 = MEMORY[0x1D3886B70](v21, v19);
      v31 = __OFADD__(v21, 1);
      v32 = v21 + 1;
      if (v31)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v21 >= *(v142 + 16))
      {
        __break(1u);
        return;
      }

      v30 = *(v141 + 8 * v21);

      v31 = __OFADD__(v21, 1);
      v32 = v21 + 1;
      if (v31)
      {
        goto LABEL_110;
      }
    }

    v150 = v32;
    v151 = v18;
    v149 = objc_autoreleasePoolPush();
    v33 = sub_1D121CDA8();
    v34 = sub_1D12B0938(v33);
    v29 = v35;
    v18 = v36;
    v37 = *(v30 + 48);
    if (a3 == 1)
    {
      v38 = 576.0 - v37;
    }

    else
    {
      v38 = 36.0;
    }

    v39 = *(v30 + 40);
    if (qword_1EC608C00 != -1)
    {
      swift_once();
    }

    [qword_1EC60BF80 ascender];
    v41 = v40;
    v42 = COERCE_DOUBLE(sub_1D1390D3C());
    if (v43)
    {
      v42 = 0.0;
    }

    v44 = v41 + v42;
    [v39 size];
    v46 = v44 - v45;
    v26 = v151;
    v47 = v151 + v46;
    v48 = *(v30 + 40);
    v49 = *(v30 + 56);
    UIGraphicsPushContext(a2);
    [v48 drawInRect_];
    UIGraphicsPopContext();
    v50 = *(v30 + 16);
    v52 = *(v30 + 24);
    v51 = *(v30 + 32);
    v53 = [v50 *(v6 + 3512)];
    v54 = sub_1D139016C();
    v56 = v55;

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      if (a3 == 1)
      {
        v58 = 548.0 - v52;
      }

      else
      {
        v58 = 64.0;
      }

      v59 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
      [v59 setMinimumScaleFactor_];
      UIGraphicsPushContext(a2);
      [v50 drawWithRect:1 options:v59 context:{v58, v151, v52, v51}];
      UIGraphicsPopContext();
    }

    v6 = *(v30 + 64);
    v19 = v6 >> 62 ? sub_1D13910DC() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v162 = v151 + v51 + 18.0;
    if (v19)
    {
      break;
    }

LABEL_16:

    v24 = *(v30 + 96);
    v25 = *(v30 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v24);
    v26 = v151 + v162 - v151 - (*(v25 + 48))(v24, v25);
    v27 = *(v30 + 96);
    v28 = *(v30 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v27);
    v29 = (*(v28 + 48))(v27, v28);
    v18 = v26 + 30.0;
    objc_autoreleasePoolPop(v149);

    v19 = v144;
    v21 = v150;
    v6 = &off_1E83DF000;
    v4 = v145;
    if (v150 == v143)
    {
      goto LABEL_106;
    }
  }

  v60 = 0;
  v157 = v6;
  v158 = v6 & 0xC000000000000001;
  v153 = (v6 + 32);
  v154 = v6 & 0xFFFFFFFFFFFFFF8;
  v156 = v19;
  while (1)
  {
    if (v158)
    {
      v4 = MEMORY[0x1D3886B70](v60, v6);
      v31 = __OFADD__(v60, 1);
      v65 = v60 + 1;
      if (v31)
      {
        goto LABEL_108;
      }
    }

    else
    {
      if (v60 >= *(v154 + 16))
      {
        goto LABEL_109;
      }

      v4 = v153[v60];

      v31 = __OFADD__(v60, 1);
      v65 = v60 + 1;
      if (v31)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        v20 = sub_1D13910DC();
        if (!v20)
        {
          goto LABEL_112;
        }

        goto LABEL_13;
      }
    }

    v160 = v65;
    v159 = objc_autoreleasePoolPush();
    v66 = *(v30 + 96);
    v67 = *(v30 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v66);
    v68 = 28.0;
    v69 = v162;
    v161 = v4;
    if ((*(v67 + 8))(v66, v67))
    {
      v70 = *(v30 + 96);
      v71 = *(v30 + 104);
      __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v70);
      v72 = v162 + (*(v71 + 32))(v70, v71);
      v73 = *(v4 + 24);
      v74 = *(v4 + 32);
      v75 = *(v4 + 16);
      v76 = [v75 string];
      v77 = sub_1D139016C();
      v79 = v78;

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
        if (a3 == 1)
        {
          v81 = v152 - v73;
        }

        else
        {
          v81 = 64.0;
        }

        v82 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
        [v82 setMinimumScaleFactor_];
        UIGraphicsPushContext(a2);
        [v75 drawWithRect:1 options:v82 context:{v81, v72, v73, v74}];
        UIGraphicsPopContext();
      }

      v83 = *(v4 + 40);
      v69 = v162;
      if (v83)
      {
        v69 = v162;
        if ((*(v4 + 64) & 1) == 0)
        {
          v85 = *(v4 + 48);
          v84 = *(v4 + 56);
          v86 = *(v30 + 96);
          v87 = *(v30 + 104);
          __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v86);
          v88 = *(v87 + 16);
          v89 = v83;
          a2 = v168;
          v90 = v88(v86, v87);
          v91 = [v89 string];
          v92 = sub_1D139016C();
          v94 = v93;

          v95 = HIBYTE(v94) & 0xF;
          if ((v94 & 0x2000000000000000) == 0)
          {
            v95 = v92 & 0xFFFFFFFFFFFFLL;
          }

          if (v95)
          {
            if (a3 == 1)
            {
              v96 = v148 - v90 - v85;
            }

            else
            {
              v96 = v147 + v90;
            }

            v97 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
            [v97 setMinimumScaleFactor_];
            UIGraphicsPushContext(v168);
            [v89 drawWithRect:1 options:v97 context:{v96, v72, v85, v84}];
            UIGraphicsPopContext();
          }

          v98 = *(v30 + 96);
          v99 = *(v30 + 104);
          __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v98);
          v100 = sub_1D112F3EC(v98, v99, v84);
          v101 = *(v30 + 96);
          v102 = *(v30 + 104);
          __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v101);
          v103 = (*(v102 + 24))(v101, v102);

          v69 = v162 + v100 + v103;
          v4 = v161;
        }
      }

      v104 = *(v30 + 96);
      v105 = *(v30 + 104);
      __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v104);
      v68 = v155 + (*(v105 + 16))(v104, v105) + 28.0;
    }

    if (*(v4 + 72))
    {

      v107 = sub_1D12EEAC4(v106, v34, (v30 + 72), a2, a3, v69, v68, v29, v18);

      v69 = v69 + v107;
    }

    v6 = *(v4 + 80);
    if (v6 >> 62)
    {
      break;
    }

    a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_71;
    }

LABEL_41:
    v61 = *(v30 + 96);
    v62 = *(v30 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v61);
    v26 = v69 - v162 - (*(v62 + 48))(v61, v62);
    v63 = *(v30 + 96);
    v64 = *(v30 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v63);
    v162 = v162 + v26 + (*(v64 + 48))(v63, v64);
    objc_autoreleasePoolPop(v159);

    v19 = v156;
    v6 = v157;
    v60 = v160;
    a2 = v168;
    if (v160 == v156)
    {
      goto LABEL_16;
    }
  }

  a2 = sub_1D13910DC();
  if (!a2)
  {
    goto LABEL_41;
  }

LABEL_71:
  v4 = 0;
  v167 = v6 & 0xC000000000000001;
  v164 = v6 & 0xFFFFFFFFFFFFFF8;
  v165 = v6;
  v163 = (v6 + 32);
  v166 = a2;
  while (v167)
  {
    v109 = MEMORY[0x1D3886B70](v4, v165);
    v31 = __OFADD__(v4++, 1);
    if (v31)
    {
      goto LABEL_103;
    }

LABEL_80:
    v6 = *(v109 + 16);
    if (v6 && (*(v109 + 40) & 1) == 0)
    {
      v111 = *(v109 + 24);
      v110 = *(v109 + 32);
      v112 = *(v30 + 96);
      v113 = *(v30 + 104);
      __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v112);
      v114 = *(v113 + 32);
      v6 = v6;
      v115 = v114(v112, v113);
      v116 = [v6 string];
      v117 = sub_1D139016C();
      v119 = v118;

      v120 = HIBYTE(v119) & 0xF;
      if ((v119 & 0x2000000000000000) == 0)
      {
        v120 = v117 & 0xFFFFFFFFFFFFLL;
      }

      if (v120)
      {
        if (a3 == 1)
        {
          v121 = 576.0 - v68 - v111;
        }

        else
        {
          v121 = v68 + 36.0;
        }

        v122 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
        [v122 setMinimumScaleFactor_];
        UIGraphicsPushContext(v168);
        [v6 drawWithRect:1 options:v122 context:{v121, v69 + v115, v111, v110}];
        UIGraphicsPopContext();
      }

      v123 = *(v30 + 96);
      v124 = *(v30 + 104);
      __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v123);
      v26 = sub_1D112F3EC(v123, v124, v110);

      v69 = v69 + v26;
      a2 = v166;
    }

    v125 = *(v109 + 48);
    if (v125 >> 62)
    {
      v126 = sub_1D13910DC();
      if (!v126)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v126)
      {
        goto LABEL_73;
      }
    }

    if (v126 < 1)
    {
      goto LABEL_104;
    }

    v127 = 0;
    do
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v128 = MEMORY[0x1D3886B70](v127, v125);
      }

      else
      {
        v128 = *(v125 + 8 * v127 + 32);
      }

      ++v127;
      v129 = objc_autoreleasePoolPush();
      v69 = v69 + sub_1D12EEAC4(v128, v34, (v30 + 72), v168, a3, v69, v68, v29, v18);
      objc_autoreleasePoolPop(v129);
    }

    while (v126 != v127);

    a2 = v166;
LABEL_73:
    v6 = *(v30 + 96);
    v108 = *(v30 + 104);
    __swift_project_boxed_opaque_existential_1Tm((v30 + 72), v6);
    v26 = (*(v108 + 48))(v6, v108);

    v69 = v69 + v26;
    if (v4 == a2)
    {
      goto LABEL_41;
    }
  }

  if (v4 >= *(v164 + 16))
  {
    goto LABEL_105;
  }

  v109 = v163[v4];

  v31 = __OFADD__(v4++, 1);
  if (!v31)
  {
    goto LABEL_80;
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  v130 = v26 + v29 + 0.0;
  v131 = *(v4 + 48);
  if (v131)
  {
LABEL_113:
    v133 = *(v4 + 56);
    v132 = *(v4 + 64);
    v169 = v131;
    v134 = [v169 *(v6 + 3512)];
    v135 = sub_1D139016C();
    v137 = v136;

    v138 = HIBYTE(v137) & 0xF;
    if ((v137 & 0x2000000000000000) == 0)
    {
      v138 = v135 & 0xFFFFFFFFFFFFLL;
    }

    if (v138)
    {
      if (a3 == 1)
      {
        v139 = 548.0 - v133;
      }

      else
      {
        v139 = 64.0;
      }

      v140 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
      [v140 setMinimumScaleFactor_];
      UIGraphicsPushContext(a2);
      [v169 drawWithRect:1 options:v140 context:{v139, v130, v133, v132}];
      UIGraphicsPopContext();
    }
  }
}

uint64_t sub_1D12EFFD0(uint64_t a1, uint64_t a2)
{
  sub_1D12F0034();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D12F0034()
{
  if (!qword_1EC60F370)
  {
    sub_1D121D730();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60F370);
    }
  }
}

uint64_t sub_1D12F008C(uint64_t a1)
{
  sub_1D12F0034();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FHIRSourceDataSource()
{
  result = qword_1EC60F378;
  if (!qword_1EC60F378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12F01DC()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = objc_opt_self();
  v5 = [v4 absoluteDimension_];
  sub_1D138E64C();
  v6 = [v4 absoluteDimension_];
  sub_1D138E62C();
  v7 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_1D12F03A4(void *a1, void *a2)
{
  v22 = sub_1D138D5EC();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v7 = sub_1D138D1CC();
  v9 = v8;
  v10 = type metadata accessor for FHIRRawResourceItem();
  swift_allocObject();
  v11 = a1;
  v12 = a2;
  v13 = sub_1D122DA54(v7, v9, v11, v12);

  sub_1D12F06F4(0, &qword_1EC60AA30, MEMORY[0x1E69A3690]);
  sub_1D138E52C();
  v14 = swift_allocObject();
  v21 = xmmword_1D139E700;
  *(v14 + 16) = xmmword_1D139E700;
  sub_1D12F06F4(0, &qword_1EC60B640, sub_1D1159FC8);
  v15 = swift_allocObject();
  *(v15 + 16) = v21;
  *(v15 + 56) = v10;
  *(v15 + 64) = sub_1D12F0748(&qword_1EC60DCC0, type metadata accessor for FHIRRawResourceItem);
  *(v15 + 32) = v13;

  sub_1D138E4DC();
  v23 = 0x3C53447961727241;
  v24 = 0xE800000000000000;
  sub_1D138D5DC();
  v16 = sub_1D138D59C();
  v18 = v17;
  (*(v4 + 8))(v6, v22);
  MEMORY[0x1D3885C10](v16, v18);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v19 = sub_1D138DF3C();

  return v19;
}

void sub_1D12F06F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D13915DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D12F0748(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D12F07FC()
{
  result = qword_1EC60F390;
  if (!qword_1EC60F390)
  {
    sub_1D11DEC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F390);
  }

  return result;
}

uint64_t static FeedItemIdentifierFactory.makeComponent(for:prefix:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18 = 0x656C69666F72505BLL;
    v19 = 0xE90000000000003ALL;
    v10 = a1;
    v11 = [v10 identifier];
    sub_1D138D5CC();

    v12 = sub_1D138D59C();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    MEMORY[0x1D3885C10](v12, v14);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);

    v15 = v18;
    v16 = v19;
  }

  else
  {
    v16 = 0x80000001D13BBE40;
    v15 = 0xD000000000000013;
  }

  v18 = v15;
  v19 = v16;
  MEMORY[0x1D3885C10](a2, a3);
  return v18;
}

uint64_t sub_1D12F0A14()
{

  sub_1D10F27F4(v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_accountIdentifier);
  MEMORY[0x1D3888420](v0 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_parentViewController);

  return v0;
}

uint64_t sub_1D12F0AA4()
{
  sub_1D12F0A14();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicalRecordTimelineDataSourceProvider()
{
  result = qword_1EC60F3C0;
  if (!qword_1EC60F3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D12F0B50()
{
  sub_1D12F0F58(319, &qword_1EC60D6B0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D12F0C78()
{
  v1 = v0;
  sub_1D12F0F58(0, &qword_1EC60A098, sub_1D10A5C3C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D13A8CA0;
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);
  v5 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_dataProvider);
  type metadata accessor for MedicalRecordTimelineAccountDataSource();
  swift_allocObject();
  v6 = v3;

  v7 = sub_1D1345DF0(v6, v4, v5);
  v8 = sub_1D12F0FBC(&qword_1EC60F3D0, type metadata accessor for MedicalRecordTimelineAccountDataSource);
  *(v2 + 32) = v7;
  *(v2 + 40) = v8;

  sub_1D138F6CC();

  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for MedicalRecordTimelineAccountUpgradeTileDataSource();
  swift_allocObject();
  v10 = sub_1D10ECC6C(v6, v24, Strong);
  v11 = sub_1D12F0FBC(&qword_1EC60F3D8, type metadata accessor for MedicalRecordTimelineAccountUpgradeTileDataSource);
  *(v2 + 48) = v10;
  *(v2 + 56) = v11;
  type metadata accessor for MedicalRecordTimelineSystemStatusDataSource();
  swift_allocObject();

  v13 = sub_1D130E924(v12);
  v14 = sub_1D12F0FBC(&qword_1EC60F3E0, type metadata accessor for MedicalRecordTimelineSystemStatusDataSource);
  *(v2 + 64) = v13;
  *(v2 + 72) = v14;
  v15 = *(v1 + 24);
  v16 = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for MedicalRecordTimelineChartDataSource();
  swift_allocObject();

  v17 = sub_1D116A9E4(v6, v15, v16);
  v18 = sub_1D12F0FBC(&qword_1EC60F3E8, type metadata accessor for MedicalRecordTimelineChartDataSource);
  *(v2 + 80) = v17;
  *(v2 + 88) = v18;
  v19 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI39MedicalRecordTimelineDataSourceProvider_timelineDataSource);
  v20 = sub_1D12F0FBC(&qword_1EC609A40, type metadata accessor for TimelinePagingDataSource);
  *(v2 + 96) = v19;
  *(v2 + 104) = v20;

  return v2;
}

void sub_1D12F0F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12F0FBC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D12F1004()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setFont_];
  [v1 setNumberOfLines_];
  v2 = v0;
  [v1 setTextColor_];

  return v1;
}

void sub_1D12F10B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12F1570(0, &qword_1EC60F3F0, type metadata accessor for AccountStatusSummaryTileFeedItemViewData);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  sub_1D12F1570(0, &qword_1EC60A708, type metadata accessor for AccountViewData);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v44 - v17;
  v47 = a1;
  sub_1D12F15C4(a1, v15);
  v19 = *(v5 + 48);
  if (v19(v15, 1, v4) == 1)
  {
    v20 = type metadata accessor for AccountViewData(0);
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  else
  {
    sub_1D12F16FC(v15, v7);
    v21 = sub_1D138D5EC();
    (*(*(v21 - 8) + 32))(v18, v7, v21);
    v22 = *(v4 + 24);
    v23 = &v7[*(v4 + 20)];
    v24 = v19;
    v25 = v4;
    v26 = v2;
    v28 = *v23;
    v27 = *(v23 + 1);
    v29 = &v7[v22];
    v45 = v10;
    v31 = *&v7[v22];
    v30 = *(v29 + 1);
    v32 = type metadata accessor for AccountViewData(0);
    v33 = &v18[*(v32 + 20)];
    *v33 = v28;
    *(v33 + 1) = v27;
    v2 = v26;
    v4 = v25;
    v19 = v24;
    v34 = &v18[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v10 = v45;
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
  }

  sub_1D10D2EE0(v18);
  sub_1D12F1644(v18, &qword_1EC60A708, type metadata accessor for AccountViewData);
  v35 = sub_1D11B715C();
  v36 = v46;
  sub_1D12F15C4(v47, v46);
  if (v19(v36, 1, v4) == 1)
  {
    sub_1D12F1644(v36, &qword_1EC60F3F0, type metadata accessor for AccountStatusSummaryTileFeedItemViewData);
  }

  else
  {
    sub_1D10C94F8();
    v38 = v37;
    sub_1D12F16A0(v36);
    if (v38)
    {
      v39 = sub_1D139012C();

      goto LABEL_9;
    }
  }

  v39 = 0;
LABEL_9:
  [v35 setText_];

  v40 = *(v2 + qword_1EE069EA0);
  sub_1D12F15C4(v47, v10);
  if (v19(v10, 1, v4) == 1)
  {
    sub_1D12F1644(v10, &qword_1EC60F3F0, type metadata accessor for AccountStatusSummaryTileFeedItemViewData);
LABEL_13:
    v43 = 0;
    goto LABEL_14;
  }

  sub_1D10C9668();
  v42 = v41;
  sub_1D12F16A0(v10);
  if (!v42)
  {
    goto LABEL_13;
  }

  v43 = sub_1D139012C();

LABEL_14:
  [v40 setTitle:v43 forState:0];
}

void sub_1D12F1570(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1390F3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D12F15C4(uint64_t a1, uint64_t a2)
{
  sub_1D12F1570(0, &qword_1EC60F3F0, type metadata accessor for AccountStatusSummaryTileFeedItemViewData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D12F1644(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D12F1570(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D12F16A0(uint64_t a1)
{
  v2 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D12F16FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D12F1760()
{
  v0 = sub_1D11B715C();
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];
}

id AccountStatusSummaryTileFeedItemView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AccountStatusSummaryTileFeedItemView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for AccountStatusSummaryTileFeedItemView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t type metadata accessor for AccountStatusSummaryTileFeedItemView()
{
  result = qword_1EE069A10;
  if (!qword_1EE069A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D12F1914(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for AccountStatusSummaryTileFeedItemView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id AccountStatusSummaryTileFeedItemView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AccountStatusSummaryTileFeedItemView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AccountStatusSummaryTileFeedItemView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1D12F1A38(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AccountStatusSummaryTileFeedItemView();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id AccountStatusSummaryTileFeedItemView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountStatusSummaryTileFeedItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12F1B3C(uint64_t a1)
{
  sub_1D12F1570(0, &qword_1EC60F3F0, type metadata accessor for AccountStatusSummaryTileFeedItemViewData);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1D12F1C40(a1, &v7 - v3);
  v5 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  sub_1D12F10B8(v4);
  return sub_1D12F1644(v4, &qword_1EC60F3F0, type metadata accessor for AccountStatusSummaryTileFeedItemViewData);
}

uint64_t sub_1D12F1C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountStatusSummaryTileFeedItemViewData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id StandardTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for StandardTableViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id StandardTableViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StandardTableViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1D12F1ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1;
  if (a4)
  {
    sub_1D139016C();
    v8 = sub_1D139012C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v7;
  v11.super_class = a5(a1);
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a3, v8);

  return v9;
}

id sub_1D12F1F7C(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

void sub_1D12F206C(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___HRSourceTableViewCell_sourceModel;
  v4 = *&v1[OBJC_IVAR___HRSourceTableViewCell_sourceModel];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    v5 = a1;
    sub_1D106F934(0, &qword_1EC60B4B8);
    v6 = v4;
    v7 = v5;
    LOBYTE(v5) = sub_1D1390D8C();

    if (v5)
    {
      return;
    }

    if (*&v2[v3])
    {
LABEL_12:
      v11 = sub_1D138F3FC();
      v12 = swift_allocBox();
      v14 = v13;
      sub_1D138F39C();
      v15 = *&v2[v3];
      if (v15)
      {
        v16 = [v15 source];
        v17 = [v16 name];

        sub_1D139016C();
      }

      sub_1D138F3BC();
      [v2 setAccessoryType_];
      v18 = *&v2[v3];
      if (!v18)
      {
        goto LABEL_19;
      }

      v19 = [v18 icon];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 scaledToTargetSize_];
        sub_1D138F3CC();

LABEL_21:
        swift_beginAccess();
        v30 = sub_1D138F32C();
        sub_1D138F31C();
        v30(&aBlock, 0);
        swift_endAccess();
        v36 = v11;
        v37 = MEMORY[0x1E69DC110];
        v31 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
        (*(*(v11 - 8) + 16))(v31, v14, v11);
        MEMORY[0x1D38861C0](&aBlock);

        return;
      }

      v22 = *&v2[v3];
      if (v22)
      {
        v23 = [v22 source];
      }

      else
      {
LABEL_19:
        v23 = 0;
      }

      v24 = [objc_opt_self() sharedImageManager];
      v37 = sub_1D12F2E20;
      v38 = v12;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1D116B84C;
      v36 = &block_descriptor_65;
      v25 = _Block_copy(&aBlock);

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      v27[2] = v23;
      v27[3] = v26;
      v27[4] = v12;
      v37 = sub_1D12F2E40;
      v38 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v34 = 1107296256;
      v35 = sub_1D11BAA58;
      v36 = &block_descriptor_17;
      v28 = _Block_copy(&aBlock);
      v29 = v23;

      [v24 loadIconForSource:v29 syncHandler:v25 asyncHandler:v28];
      _Block_release(v28);
      _Block_release(v25);

      goto LABEL_21;
    }
  }

  v8 = [v2 textLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setText_];
  }

  v10 = [v2 imageView];
  if (v10)
  {
    v32 = v10;
    [v10 setImage_];
  }
}

uint64_t sub_1D12F2538(void *a1)
{
  sub_1D138F3FC();
  swift_projectBox();
  swift_beginAccess();
  v2 = a1;
  sub_1D138F3CC();
  return swift_endAccess();
}

uint64_t sub_1D12F25A0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D138FECC();
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D138FF0C();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F934(0, &qword_1EE06B760);
  v22 = sub_1D1390A7C();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  aBlock[4] = sub_1D12F2E4C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10CBD3C;
  aBlock[3] = &block_descriptor_23_1;
  v16 = _Block_copy(aBlock);
  v17 = a3;

  v18 = a1;

  sub_1D138FEEC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D10CBDF0(&qword_1EE06B7E0, MEMORY[0x1E69E7F60]);
  sub_1D10CBD98();
  sub_1D10CBDF0(&qword_1EE06B7B0, sub_1D10CBD98);
  sub_1D139103C();
  v19 = v22;
  MEMORY[0x1D3886400](0, v14, v11, v16);
  _Block_release(v16);

  (*(v24 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v23);
}

void sub_1D12F28B0(void *a1, void *a2)
{
  sub_1D138F3FC();
  swift_projectBox();
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR___HRSourceTableViewCell_sourceModel);
      v6 = Strong;
      v7 = v5;
      v8 = a1;

      if (v5)
      {
        v5 = [v7 source];
      }

      if (a2)
      {
LABEL_6:
        if (!v5)
        {
          goto LABEL_13;
        }

        sub_1D106F934(0, &qword_1EC609E10);
        v9 = a2;
        v10 = sub_1D1390D8C();

        if ((v10 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v11 = a1;
      v5 = 0;
      if (a2)
      {
        goto LABEL_6;
      }
    }

    if (v5)
    {

      a1 = v5;
LABEL_13:

      return;
    }

LABEL_12:
    v12 = [a1 scaledToTargetSize_];
    swift_beginAccess();
    sub_1D138F3CC();
    swift_endAccess();
    goto LABEL_13;
  }
}

id _s15HealthRecordsUI20RecordDetailItemCellC5style15reuseIdentifierACSo011UITableViewG5StyleV_SSSgtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id SourceTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___HRSourceTableViewCell_sourceModel] = 0;
  if (a3)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SourceTableViewCell();
  v6 = objc_msgSendSuper2(&v8, sel_initWithStyle_reuseIdentifier_, a1, v5);

  return v6;
}

id SourceTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SourceTableViewCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HRSourceTableViewCell_sourceModel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SourceTableViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1D12F2D70(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D12F2E70()
{
  sub_1D10CD5A4(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v17 - v1;
  v3 = sub_1D138D67C();
  v4 = *(*(v3 - 8) + 56);
  v18 = v2;
  v4(v2, 1, 1, v3);
  if (qword_1EC608CB0 != -1)
  {
    swift_once();
  }

  v17[3] = "ETAIL_TITLE_RELEASED";
  v17[4] = qword_1EC60C070;
  v17[1] = qword_1EC60C080;
  v17[2] = *algn_1EC60C078;
  sub_1D10CD5A4(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E710;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v6 = sub_1D138D1CC();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D1089930();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v11 = sub_1D138D1CC();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  v13 = sub_1D138D1CC();
  if (*(v5 + 16))
  {
    v14 = v18;
    v15 = sub_1D139019C();

    sub_1D10CD608(v14);
  }

  else
  {
    v15 = v13;
    sub_1D10CD608(v18);
  }

  return v15;
}

void sub_1D12F318C()
{
  v1 = v0;
  v39 = sub_1D138E35C();
  v2 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 secondarySystemGroupedBackgroundColor];
  [v1 setBackgroundColor_];

  v7 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setBackgroundView_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setSelectedBackgroundView_];

  v9 = [v1 selectedBackgroundView];
  if (v9)
  {
    v10 = v9;
    sub_1D106F934(0, &qword_1EE06B6E0);
    v11 = sub_1D1390CEC();
    [v10 setBackgroundColor_];
  }

  v12 = [v1 contentView];
  v13 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI8ListCell_textLabel];
  [v12 addSubview_];

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v13 setFont_];

  [v13 setNumberOfLines_];
  [v13 setAdjustsFontForContentSizeCategory_];
  v15 = [v5 labelColor];
  [v13 setTextColor_];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = objc_opt_self();
  sub_1D106F424();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D139F5B0;
  v18 = [v13 leadingAnchor];
  v19 = [v1 contentView];
  v20 = [v19 leadingAnchor];

  sub_1D138E34C();
  sub_1D138E27C();
  v22 = v21;
  (*(v2 + 8))(v4, v39);
  v23 = [v18 constraintEqualToAnchor:v20 constant:v22];

  *(v17 + 32) = v23;
  v24 = [v13 topAnchor];
  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:12.0];
  *(v17 + 40) = v27;
  v28 = [v1 &selRef_batches];
  v29 = [v28 layoutMarginsGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v13 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v17 + 48) = v32;
  v33 = [v1 &selRef_batches];
  v34 = [v33 bottomAnchor];

  v35 = [v13 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:12.0];

  *(v17 + 56) = v36;
  sub_1D106F934(0, &qword_1EC609690);
  v37 = sub_1D139044C();

  [v16 activateConstraints_];
}

uint64_t sub_1D12F3938@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D12F3990(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A73A8(a1, v1 + v3);
  return swift_endAccess();
}

id sub_1D12F3A50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1D12F3B5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  return sub_1D10B0564;
}

void *sub_1D12F3C4C(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_1D139137C();

    if (v6)
    {
      sub_1D106F934(0, a4);
      swift_dynamicCast();
      return v13;
    }
  }

  else if (*(a2 + 16))
  {
    v9 = a3();
    if (v10)
    {
      v11 = *(*(a2 + 56) + 8 * v9);
      v12 = v11;
      return v11;
    }
  }

  return 0;
}

void sub_1D12F3D48(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v57 = v3 & 0xC000000000000001;
    swift_beginAccess();
    v5 = 0;
    v52 = v3 + 32;
    v53 = v3 & 0xFFFFFFFFFFFFFF8;
    v55 = v3;
    v56 = v2;
    v54 = i;
    while (1)
    {
      if (v57)
      {
        v6 = MEMORY[0x1D3886B70](v5, v3);
        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v5 >= *(v53 + 16))
        {
          goto LABEL_57;
        }

        v6 = *(v52 + 8 * v5);
        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_56;
        }
      }

      v9 = v6;
      v58 = v8;
      v10 = *(v2 + 16);
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = sub_1D139135C() | 0x8000000000000000;
      }

      else
      {
        v15 = -1 << *(v10 + 32);
        v12 = ~v15;
        v11 = v10 + 64;
        v16 = -v15;
        v17 = v16 < 64 ? ~(-1 << v16) : -1;
        v13 = v17 & *(v10 + 64);
        v14 = *(v2 + 16);
      }

      swift_bridgeObjectRetain_n();
      v2 = 0;
      v3 = (v12 + 64) >> 6;
      if ((v14 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        if (!sub_1D13913AC())
        {
          goto LABEL_28;
        }

        sub_1D106F934(0, &unk_1EC6096D0);
        swift_dynamicCast();
        v22 = v61;
        v20 = v2;
        v21 = v13;
        if (!v61)
        {
          goto LABEL_28;
        }

LABEL_25:
        if ([v22 _isCompatibleWithUnit_])
        {
          break;
        }

        v2 = v20;
        v13 = v21;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      sub_1D102CC30();

      v2 = v56;
      v32 = *(v56 + 16);

      v23 = v22;
      v33 = sub_1D12F3C4C(v23, v32, sub_1D129E520, &qword_1EC60C368);

      if (v33)
      {
        [v33 addObject_];
        v34 = [v9 unitString];
        v35 = sub_1D139016C();
        v37 = v36;

        v38 = [v23 unitString];
        v39 = sub_1D139016C();
        v41 = v40;

        if (v35 == v39 && v37 == v41)
        {
        }

        else
        {
          v42 = sub_1D139162C();

          if (v42)
          {
            swift_beginAccess();
            v43 = *(v56 + 16);
            if ((v43 & 0xC000000000000001) != 0)
            {
              if (v43 < 0)
              {
                v44 = *(v56 + 16);
              }

              else
              {
                v44 = v43 & 0xFFFFFFFFFFFFFF8;
              }

              v45 = v9;
              v46 = v33;
              v47 = sub_1D13910DC();
              if (__OFADD__(v47, 1))
              {
                __break(1u);
                return;
              }

              *(v56 + 16) = sub_1D12F5968(v44, v47 + 1);
            }

            else
            {
              v48 = v9;
              v49 = v33;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v60 = *(v56 + 16);
            sub_1D11DAEC4(v33, v9, isUniquelyReferenced_nonNull_native);
            *(v56 + 16) = v60;

            v51 = sub_1D12F51D4(v23);
            swift_endAccess();
          }

          else
          {
          }
        }

        goto LABEL_39;
      }

LABEL_29:
      v24 = objc_opt_self();
      v25 = v9;
      v26 = [v24 setWithObject_];
      swift_beginAccess();
      if (v26)
      {
        v27 = *(v2 + 16);
        if ((v27 & 0xC000000000000001) != 0)
        {
          if (v27 < 0)
          {
            v28 = *(v2 + 16);
          }

          else
          {
            v28 = v27 & 0xFFFFFFFFFFFFFF8;
          }

          v29 = sub_1D13910DC();
          if (__OFADD__(v29, 1))
          {
            goto LABEL_58;
          }

          *(v2 + 16) = sub_1D12F5968(v28, v29 + 1);
        }

        v30 = swift_isUniquelyReferenced_nonNull_native();
        v59 = *(v2 + 16);
        sub_1D11DAEC4(v26, v25, v30);
        *(v2 + 16) = v59;
      }

      else
      {
        v31 = sub_1D12F51D4(v25);
      }

      swift_endAccess();

LABEL_39:
      v3 = v55;
      v5 = v58;
      if (v58 == v54)
      {
        return;
      }
    }

LABEL_17:
    v18 = v2;
    v19 = v13;
    v20 = v2;
    if (v13)
    {
LABEL_21:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v14 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_28:
      sub_1D102CC30();

      v23 = 0;
      v2 = v56;
      goto LABEL_29;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v3)
      {
        goto LABEL_28;
      }

      v19 = *(v11 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }
}

uint64_t sub_1D12F42DC()
{
  v2 = v1;
  v114 = sub_1D138D2CC();
  v3 = *(v114 - 8);
  v4 = MEMORY[0x1EEE9AC00](v114);
  v113 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v101 - v6;
  swift_beginAccess();
  v104 = v0;
  v8 = *(v0 + 16);
  v105 = v3;
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = sub_1D12F5DE0();
LABEL_22:

    v27 = v9 + 64;
    v28 = 1 << v9[32];
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v9 + 8);
    if (!v30)
    {
      v35 = 0;
      v34 = ((v28 + 63) >> 6);
      while (v34 - 1 != v30)
      {
        v31 = v30 + 1;
        v36 = *&v9[8 * v30 + 72];
        v35 -= 64;
        ++v30;
        if (v36)
        {
          v109 = v2;
          v33 = (v36 - 1) & v36;
          v32 = __clz(__rbit64(v36)) - v35;
          goto LABEL_30;
        }
      }

      sub_1D1115BF0();
      swift_allocError();
      *v97 = 1;
      *(v97 + 8) = 1;
      swift_willThrow();
      return v34;
    }

    v109 = v2;
    v31 = 0;
    v32 = __clz(__rbit64(v30));
    v33 = (v30 - 1) & v30;
    v34 = ((v28 + 63) >> 6);
LABEL_30:
    v37 = *(*(v9 + 7) + 8 * v32);
    v38 = *(*(v9 + 6) + 8 * v32);

    v112 = v9;
LABEL_31:
    v110 = v37;
    v111 = v38;
    while (v33)
    {
LABEL_39:
      v41 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v42 = (v31 << 9) | (8 * v41);
      v43 = *(*(v9 + 6) + v42);
      v44 = *(*(v9 + 7) + v42);
      if (v37 == v44)
      {
        v45 = v43;
        v46 = [v38 unitString];
        v47 = sub_1D139016C();
        v49 = v48;

        *&v118 = v47;
        *(&v118 + 1) = v49;
        v50 = [v45 unitString];
        v51 = sub_1D139016C();
        v53 = v52;

        *&v116 = v51;
        *(&v116 + 1) = v53;
        sub_1D10940C8();
        v54 = sub_1D1390FEC();
        v9 = v112;
        v55 = v54;
        v37 = v110;

        v38 = v111;

        if (v55 == 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v39 = v43;
        if (v37 < v44)
        {
          v37 = v44;
LABEL_43:

          v38 = v43;
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v40 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_87;
      }

      if (v40 >= v34)
      {

        v56 = *(v104 + 16);
        v57 = v38;

        v110 = v57;
        v58 = sub_1D12F3C4C(v57, v56, sub_1D129E520, &qword_1EC60C368);

        if (!v58)
        {
          v58 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
        }

        sub_1D1390C4C();
        v34 = sub_1D12F64E8();
        sub_1D1390F5C();
        v112 = v58;
        v59 = MEMORY[0x1E69E7CC0];
        while (v119)
        {
          sub_1D109E39C(&v118, &v116);
          sub_1D109F94C(&v116, v115);
          sub_1D106F934(0, &unk_1EC6096D0);
          if (swift_dynamicCast())
          {
            v60 = v120;
            __swift_project_boxed_opaque_existential_1Tm(&v116, v117);
            v61 = [v58 countForObject_];
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1Tm(&v116);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_1D10F870C(0, v59[2] + 1, 1, v59);
            }

            v63 = v59[2];
            v62 = v59[3];
            if (v63 >= v62 >> 1)
            {
              v59 = sub_1D10F870C((v62 > 1), v63 + 1, 1, v59);
            }

            v59[2] = v63 + 1;
            v64 = &v59[2 * v63];
            v64[4] = v60;
            v64[5] = v61;
            v58 = v112;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(&v116);
          }

          sub_1D1390F5C();
        }

        (*(v105 + 8))(v113, v114);
        if (v59[2])
        {
          sub_1D12F6540();
          v65 = sub_1D139144C();
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC8];
        }

        v66 = v109;
        *&v118 = v65;

        sub_1D12F6188(v67, 1, &v118);
        if (v66)
        {
          goto LABEL_91;
        }

        v109 = 0;

        v68 = v118;
        v69 = v118 + 64;
        v70 = 1 << *(v118 + 32);
        v71 = -1;
        if (v70 < 64)
        {
          v71 = ~(-1 << v70);
        }

        v72 = v71 & *(v118 + 64);
        if (v72)
        {
          v73 = 0;
          v74 = __clz(__rbit64(v72));
          v75 = (v72 - 1) & v72;
          v76 = (v70 + 63) >> 6;
LABEL_68:
          v79 = *(*(v118 + 56) + 8 * v74);
          v34 = *(*(v118 + 48) + 8 * v74);

          v111 = v68;
LABEL_69:
          v113 = v79;
          v114 = v34;
          while (v75)
          {
LABEL_77:
            v82 = __clz(__rbit64(v75));
            v75 &= v75 - 1;
            v83 = (v73 << 9) | (8 * v82);
            v84 = *(v68[6] + v83);
            v85 = *(v68[7] + v83);
            if (v79 == v85)
            {
              v86 = v84;
              v87 = [v34 unitString];
              v88 = sub_1D139016C();
              v90 = v89;

              *&v118 = v88;
              *(&v118 + 1) = v90;
              v91 = [v86 unitString];
              v92 = sub_1D139016C();
              v94 = v93;

              *&v116 = v92;
              *(&v116 + 1) = v94;
              v68 = v111;
              sub_1D10940C8();
              v95 = sub_1D1390FEC();
              v79 = v113;

              v34 = v114;

              if (v95 == 1)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v80 = v84;
              if (v79 < v85)
              {
                v79 = v85;
LABEL_81:

                v34 = v84;
                goto LABEL_69;
              }
            }
          }

          while (1)
          {
            v81 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              goto LABEL_88;
            }

            if (v81 >= v76)
            {
              v96 = v110;

              return v34;
            }

            v75 = *(v69 + 8 * v81);
            ++v73;
            if (v75)
            {
              v73 = v81;
              goto LABEL_77;
            }
          }
        }

        v77 = 0;
        v76 = (v70 + 63) >> 6;
        while (v76 - 1 != v72)
        {
          v73 = v72 + 1;
          v78 = *(v118 + 8 * v72 + 72);
          v77 -= 64;
          ++v72;
          if (v78)
          {
            v75 = (v78 - 1) & v78;
            v74 = __clz(__rbit64(v78)) - v77;
            goto LABEL_68;
          }
        }

        sub_1D1115BF0();
        swift_allocError();
        *v98 = 1;
        *(v98 + 8) = 1;
        swift_willThrow();
        v99 = v110;

        return v34;
      }

      v33 = *&v27[8 * v40];
      ++v31;
      if (v33)
      {
        v31 = v40;
        goto LABEL_39;
      }
    }
  }

  v109 = v1;
  sub_1D12F6540();
  v10 = sub_1D139141C();
  v9 = v10;
  v11 = *(v8 + 64);
  v103 = v8 + 64;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v102 = (v12 + 63) >> 6;
  v108 = (v3 + 8);
  v107 = v10 + 64;

  v15 = 0;
  v112 = v9;
  v106 = v8;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v110 = ((v14 - 1) & v14);
LABEL_12:
      v19 = v16 | (v15 << 6);
      v20 = *(*(v8 + 56) + 8 * v19);
      v111 = *(*(v8 + 48) + 8 * v19);
      v21 = v20;
      sub_1D1390C4C();
      sub_1D12F64E8();
      sub_1D1390F5C();
      if (v119)
      {
        break;
      }

      v22 = 0;
LABEL_18:

      (*v108)(v7, v114);
      *(v107 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v9 = v112;
      *(*(v112 + 6) + 8 * v19) = v111;
      *(*(v9 + 7) + 8 * v19) = v22;
      v25 = *(v9 + 2);
      v24 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v24)
      {
        goto LABEL_90;
      }

      *(v9 + 2) = v26;
      v8 = v106;
      v14 = v110;
      if (!v110)
      {
        goto LABEL_7;
      }
    }

    v22 = 0;
    while (1)
    {
      sub_1D109E39C(&v118, &v116);
      __swift_project_boxed_opaque_existential_1Tm(&v116, v117);
      v23 = [v21 countForObject_];
      swift_unknownObjectRelease();
      v24 = __OFADD__(v22, v23);
      v22 += v23;
      if (v24)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v116);
      sub_1D1390F5C();
      if (!v119)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

LABEL_7:
  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= v102)
    {
      v2 = v109;
      goto LABEL_22;
    }

    v18 = *(v103 + 8 * v15);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v110 = ((v18 - 1) & v18);
      goto LABEL_12;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t MedicalRecordUnitCollector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D12F4DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D11362EC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1181374();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_1D138E52C();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1D1224C58(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_1D138E52C();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

double sub_1D12F4F5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D11362EC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D118164C();
      v10 = v15;
    }

    v11 = *(v10 + 56) + 72 * v8;
    v12 = *(v11 + 48);
    *(a3 + 32) = *(v11 + 32);
    *(a3 + 48) = v12;
    *(a3 + 64) = *(v11 + 64);
    v13 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v13;
    sub_1D1224E44(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1D12F501C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D129E240(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1181CB4();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D138D5EC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 72 * v7;
    v13 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v13;
    *(a2 + 64) = *(v12 + 64);
    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    sub_1D1225180(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1D12F5114@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_1D129E444(a1, a2, a3, a4 & 1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v18 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1181FA4();
      v12 = v18;
    }

    v13 = *(v12 + 56) + 48 * v10;
    v14 = *(v13 + 24);
    v15 = *(v13 + 32);
    v16 = *(v13 + 40);
    *a5 = *v13;
    *(a5 + 8) = *(v13 + 8);
    *(a5 + 24) = v14;
    *(a5 + 32) = v15;
    *(a5 + 40) = v16;
    sub_1D1225478(v10, v12);
    *v6 = v12;
  }

  else
  {
    result = 0.0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t sub_1D12F51D4(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1D129E520(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1D1225A00(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1D1182AC8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1D139137C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D13910DC();
  v8 = sub_1D12F5968(v4, v7);

  v9 = sub_1D129E520(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1D1225A00(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

double sub_1D12F5320@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D129E5D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v16 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1183994();
      v9 = v16;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for BrowseCategory();
    sub_1D10F3688(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56) + 72 * v7;
    v13 = *(v12 + 48);
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = v13;
    *(a2 + 64) = *(v12 + 64);
    v14 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v14;
    sub_1D1225EAC(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1D12F5400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v8 = sub_1D129E444(a1, a2, a3, a4 & 1);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v16 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D1183C34();
      v12 = v16;
    }

    v13 = (*(v12 + 56) + 48 * v10);
    v14 = v13[1];
    *a5 = *v13;
    a5[1] = v14;
    a5[2] = v13[2];
    sub_1D1225478(v10, v12);
    *v6 = v12;
  }

  else
  {
    *a5 = 0u;
    a5[1] = 0u;
    *&result = 0x1FFFFFFFELL;
    a5[2] = xmmword_1D13A9F00;
  }

  return result;
}

uint64_t sub_1D12F54B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D109F4D8(0, &qword_1EC609E40, &qword_1EE06B780, 0x1E696C3D0, &qword_1EE06B778);
    v2 = sub_1D139143C();
    v19 = v2;
    sub_1D139135C();
    v3 = sub_1D139139C();
    if (v3)
    {
      v4 = v3;
      sub_1D106F934(0, &qword_1EE06B780);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D1179450(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D1390D7C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D139139C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D12F570C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D109F4D8(0, &qword_1EC609ED0, &qword_1EC609EC8, 0x1E696C258, &qword_1EC609ED8);
    v2 = sub_1D139143C();
    v19 = v2;
    sub_1D139135C();
    v3 = sub_1D139139C();
    if (v3)
    {
      v4 = v3;
      sub_1D106F934(0, &qword_1EC609EC8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D106F934(0, &qword_1EE06B790);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D117B4E4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D1390D7C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D139139C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D12F5968(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D1186370();
    v2 = sub_1D139143C();
    v19 = v2;
    sub_1D139135C();
    v3 = sub_1D139139C();
    if (v3)
    {
      v4 = v3;
      sub_1D106F934(0, &unk_1EC6096D0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D106F934(0, &qword_1EC60C368);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D117D268(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D1390D7C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D139139C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D12F5BA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D118612C();
    v2 = sub_1D139143C();
    v19 = v2;
    sub_1D139135C();
    v3 = sub_1D139139C();
    if (v3)
    {
      v4 = v3;
      sub_1D106F934(0, &unk_1EE06B748);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D106F934(0, &qword_1EE06B6B0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D1180B2C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D1390D7C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D139139C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D12F5DE0()
{
  v0 = sub_1D138D2CC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D13910DC())
  {
    sub_1D12F6540();
    v4 = sub_1D139144C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v39 = v4;
  v5 = sub_1D139135C();
  swift_unknownObjectRetain();
  v31 = v5;
  v6 = sub_1D139139C();
  if (v6)
  {
    v8 = v7;
    v9 = v6;
    v30 = sub_1D106F934(0, &unk_1EC6096D0);
    v10 = v9;
    v29 = (v1 + 8);
    while (1)
    {
      *&v35 = v10;
      swift_dynamicCast();
      *&v35 = v8;
      sub_1D106F934(0, &qword_1EC60C368);
      swift_dynamicCast();
      v19 = v37;
      v32 = v38;
      sub_1D1390C4C();
      sub_1D12F64E8();
      sub_1D1390F5C();
      if (v36)
      {
        break;
      }

      v20 = 0;
LABEL_15:
      (*v29)(v3, v0);

      v23 = *(v4 + 16);
      if (*(v4 + 24) <= v23)
      {
        sub_1D117D4E0(v23 + 1, 1);
      }

      v4 = v39;
      v11 = v32;
      result = sub_1D1390D7C();
      v13 = v4 + 64;
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v4 + 64 + 8 * (v15 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v14) >> 6;
        while (++v16 != v25 || (v24 & 1) == 0)
        {
          v26 = v16 == v25;
          if (v16 == v25)
          {
            v16 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v16);
          if (v27 != -1)
          {
            v17 = __clz(__rbit64(~v27)) + (v16 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_27;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v4 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v4 + 48) + 8 * v17) = v11;
      *(*(v4 + 56) + 8 * v17) = v20;
      ++*(v4 + 16);
      v10 = sub_1D139139C();
      v8 = v18;
      if (!v10)
      {
        goto LABEL_25;
      }
    }

    v20 = 0;
    while (1)
    {
      sub_1D109E39C(&v35, &v33);
      __swift_project_boxed_opaque_existential_1Tm(&v33, v34);
      v21 = [v19 countForObject_];
      result = swift_unknownObjectRelease();
      v22 = __OFADD__(v20, v21);
      v20 += v21;
      if (v22)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v33);
      sub_1D1390F5C();
      if (!v36)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_25:

    return v4;
  }

  return result;
}

void sub_1D12F6188(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = sub_1D129E520(v9);
  v12 = v8[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v8[3] < v15)
  {
    sub_1D117D4E0(v15, v6 & 1);
    v10 = sub_1D129E520(v9);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_1D106F934(0, &unk_1EC6096D0);
    v10 = sub_1D13916CC();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_1D1182C3C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    sub_1D10922EC();
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v9;
  *(v21[7] + 8 * v10) = v7;
  v22 = v21[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D13911EC();
    MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
    sub_1D106F934(0, &unk_1EC6096D0);
    sub_1D139133C();
    MEMORY[0x1D3885C10](39, 0xE100000000000000);
    sub_1D13913BC();
    __break(1u);
    return;
  }

  v21[2] = v23;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v24 = *v6;
      v25 = *a3;
      v9 = *(v6 - 1);
      v26 = sub_1D129E520(v9);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        sub_1D117D4E0(v30, 1);
        v26 = sub_1D129E520(v9);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v32[6] + 8 * v26) = v9;
      *(v32[7] + 8 * v26) = v24;
      v33 = v32[2];
      v14 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v32[2] = v34;
      v6 += 2;
      if (v4 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

unint64_t sub_1D12F64E8()
{
  result = qword_1EC60F410;
  if (!qword_1EC60F410)
  {
    sub_1D138D2CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60F410);
  }

  return result;
}

void sub_1D12F6540()
{
  if (!qword_1EC60C350)
  {
    sub_1D106F934(255, &unk_1EC6096D0);
    sub_1D109D274(&qword_1EC60C358, &unk_1EC6096D0);
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C350);
    }
  }
}

id static UIImage.circleCheckmarkImage.getter()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:3];

  v2 = sub_1D139012C();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  return v3;
}

id static UIImage.circleImage.getter()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  v1 = [objc_opt_self() configurationWithFont:v0 scale:3];

  v2 = sub_1D139012C();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  return v3;
}

void static UIImage.checkmarkSymbol()()
{
  v0 = [objc_opt_self() configurationWithScale_];
  v1 = sub_1D139012C();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
  }
}

UIImage __swiftcall UIImage.scaled(to:)(CGSize to)
{
  v2 = [v1 scaledToTargetSize:to.width padding:{to.height, 0.0, 0.0}];

  return v2;
}

id sub_1D12F69AC(void *a1, double a2, double a3)
{
  v3 = [a1 scaledToTargetSize:a2 padding:{a3, 0.0, 0.0}];

  return v3;
}

UIImage __swiftcall UIImage.scaled(to:padding:)(CGSize to, CGPoint padding)
{
  y = padding.y;
  x = padding.x;
  height = to.height;
  width = to.width;
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = v9 * width;
  v11 = v9 * height;
  v12 = v9 * x;
  v13 = v9 * y;
  v14 = [v2 imageRendererFormat];
  [v14 setOpaque_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds:v14 format:{0.0, 0.0, v12 + v12 + v10, v13 + v13 + v11}];
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v12;
  *(v16 + 32) = v13;
  *(v16 + 40) = v10;
  *(v16 + 48) = v11;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D12F6C40;
  *(v17 + 24) = v16;
  v22[4] = sub_1D12F6C58;
  v22[5] = v17;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 1107296256;
  v22[2] = sub_1D12F6C80;
  v22[3] = &block_descriptor_66;
  v18 = _Block_copy(v22);
  v19 = v2;

  v20 = [v15 imageWithActions_];

  _Block_release(v18);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

void sub_1D12F6C80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Class sub_1D12F6CE4(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v10.super.isa = UIImage.scaled(to:padding:)(__PAIR128__(*&a3, *&a2), __PAIR128__(*&a5, *&a4)).super.isa;

  return v10.super.isa;
}

void sub_1D12F6D58()
{
  v0 = [objc_opt_self() configurationWithScale_];
  v1 = sub_1D139012C();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {

    v3 = v2;
  }

  else
  {
    __break(1u);
  }
}

void static UIImage.xmarkSymbol()()
{
  v0 = [objc_opt_self() configurationWithScale_];
  v1 = sub_1D139012C();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
  }
}

void sub_1D12F6EC8()
{
  v0 = [objc_opt_self() configurationWithScale_];
  v1 = sub_1D139012C();
  v2 = [objc_opt_self() systemImageNamed:v1 withConfiguration:v0];

  if (v2)
  {

    v3 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D12F7194(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10A71C0(v1 + v3, v8);
  if (v9)
  {
    sub_1D1080EA4(0, &qword_1EC60A3D0);
    type metadata accessor for UploadNewDataItem();
    if (swift_dynamicCast())
    {
      v4 = sub_1D12F7430();
      [v4 setEnabled_];

      [v1 setUserInteractionEnabled_];
    }

    v5 = a1;
  }

  else
  {
    sub_1D10A72B8(a1);
    v5 = v8;
  }

  return sub_1D10A72B8(v5);
}

void (*sub_1D12F72AC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell_item;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1D12F7334;
}

void sub_1D12F7334(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D10A71C0(v3[6] + v3[7], v3);
    if (v3[3])
    {
      sub_1D1080EA4(0, &qword_1EC60A3D0);
      type metadata accessor for UploadNewDataItem();
      if (swift_dynamicCast())
      {
        v5 = v3[5];
        v4 = v3[6];
        v6 = sub_1D12F7430();
        [v6 setEnabled_];

        [v4 setUserInteractionEnabled_];
      }
    }

    else
    {
      sub_1D10A72B8(v3);
    }
  }

  free(v3);
}

id sub_1D12F7430()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button);
  }

  else
  {
    v4 = sub_1D12F87B4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D12F75BC()
{
  v1 = v0;
  v2 = sub_1D138F3FC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D38864F0](v4);
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138F3BC();
  v7 = sub_1D138F28C();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 textLayoutGuide];
    if (v10)
    {
      v11 = v10;
      v12 = [v1 contentView];
      v13 = v7;
      v38 = v2;
      v14 = v13;
      [v12 addSubview_];

      [v9 setTranslatesAutoresizingMaskIntoConstraints_];
      v37 = v14;
      v15 = [v1 contentView];
      [v9 hk:v15 alignConstraintsWithView:?];

      [v9 setHidden_];
      v16 = [v1 contentView];
      v17 = sub_1D12F7430();
      [v16 addSubview_];

      v18 = OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button;
      [*&v1[OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell____lazy_storage___button] setTranslatesAutoresizingMaskIntoConstraints_];
      v19 = [*&v1[v18] leadingAnchor];
      v20 = [v11 leadingAnchor];
      v21 = [v19 constraintEqualToAnchor_];

      [v21 setActive_];
      v22 = [*&v1[v18] topAnchor];
      v23 = [v11 topAnchor];
      v24 = [v22 constraintEqualToAnchor_];

      [v24 setActive_];
      v25 = [*&v1[v18] bottomAnchor];
      v26 = [v11 bottomAnchor];
      v27 = [v25 constraintEqualToAnchor_];

      [v27 setActive_];
      v28 = [*&v1[v18] trailingAnchor];
      v29 = [v11 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      type metadata accessor for UILayoutPriority(0);
      v39 = 1065353216;
      v40 = 1148846080;
      sub_1D12F876C(&qword_1EC60A508, 255, type metadata accessor for UILayoutPriority);
      sub_1D138F0DC();
      LODWORD(v31) = v41;
      [v30 setPriority_];
      [v30 setActive_];
      LODWORD(v32) = 1148846080;
      [*&v1[v18] setContentCompressionResistancePriority:0 forAxis:v32];
      sub_1D10A5C9C(0, &qword_1EE06B560);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1D139E710;
      *(v33 + 32) = sub_1D139016C();
      *(v33 + 40) = v34;
      strcpy((v33 + 48), "UploadNewData");
      *(v33 + 62) = -4864;
      v35 = sub_1D139044C();

      v36 = HKUIJoinStringsForAutomationIdentifier();

      [v1 setAccessibilityIdentifier_];
      [v1 setAccessibilityTraits_];

      (*(v3 + 8))(v6, v38);
    }

    else
    {
      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

id sub_1D12F7BE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1D12F7CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

void (*sub_1D12F7D08(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D12F72AC(v2);
  return sub_1D10B0564;
}

uint64_t sub_1D12F7DBC()
{
  v0[6] = *(v0[5] + 40);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1D12F7E54;

  return sub_1D1133A58();
}

uint64_t sub_1D12F7E54()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D12F80F8, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 72) = v3;
    *v3 = v2;
    v3[1] = sub_1D12F7FC4;

    return sub_1D11343DC(5);
  }
}

uint64_t sub_1D12F7FC4()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D12F825C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D12F80F8()
{
  v1 = v0[8];
  sub_1D10A5C9C(0, &qword_1EC60AEB8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E700;
  sub_1D13911EC();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1D3885C10](0xD000000000000024, 0x80000001D13CBC40);
  v0[4] = v1;
  sub_1D1080EA4(0, &qword_1EE06B690);
  sub_1D139133C();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D139174C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D12F825C()
{
  v1 = v0[10];
  sub_1D10A5C9C(0, &qword_1EC60AEB8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E700;
  sub_1D13911EC();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1D3885C10](0xD000000000000024, 0x80000001D13CBC40);
  v0[4] = v1;
  sub_1D1080EA4(0, &qword_1EE06B690);
  sub_1D139133C();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_1D139174C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D12F83C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D12F8424()
{
  type metadata accessor for UploadNewDataCell();
  sub_1D12F876C(&qword_1EC60E7E8, v0, type metadata accessor for UploadNewDataCell);
  return sub_1D138DECC();
}

uint64_t sub_1D12F8488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D12F8534()
{
  sub_1D10AC494();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC15HealthRecordsUI17UploadNewDataCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v4, v11);
  if (!v12)
  {
    return sub_1D10A72B8(v11);
  }

  sub_1D1080EA4(0, &qword_1EC60A3D0);
  type metadata accessor for UploadNewDataItem();
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v10;
    if ((*(v10 + 32) & 1) == 0)
    {
      v7 = sub_1D13905DC();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;
      sub_1D107877C(0, 0, v3, &unk_1D13AFCE0, v8);
    }
  }

  return result;
}