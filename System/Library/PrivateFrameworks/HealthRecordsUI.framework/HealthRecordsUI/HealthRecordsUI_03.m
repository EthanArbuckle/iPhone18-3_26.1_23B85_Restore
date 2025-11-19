void sub_1D10A5CE8()
{
  if (!qword_1EC60A0B0)
  {
    sub_1D138DB9C();
    sub_1D10A5D80(&qword_1EC60A0B8, 255, MEMORY[0x1E69A3DD0]);
    v0 = sub_1D138E0BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A0B0);
    }
  }
}

uint64_t sub_1D10A5D80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1D10A5DC8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView);
  }

  else
  {
    v4 = v0;
    sub_1D106F934(0, &qword_1EE06A540);
    v5 = sub_1D1390D0C();
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_1D10A5E8C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v1, v5);
  if (v6)
  {
    sub_1D10A7254();
    type metadata accessor for PinnedConceptItem();
    if (swift_dynamicCast())
    {
      v2 = *(v4 + 40);

      if (v2)
      {
        if (qword_1EE06AD00 == -1)
        {
          return sub_1D138D1CC();
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_1D10A72B8(v5);
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_9:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D10A600C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v1, v3);
  if (v4)
  {
    sub_1D10A7254();
    type metadata accessor for PinnedConceptItem();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1D10A72B8(v3);
  }

  sub_1D106F934(0, &qword_1EE06A540);
  return sub_1D1390D0C();
}

uint64_t sub_1D10A612C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for PinnedConceptItem();
    if (swift_dynamicCast())
    {
      return v17;
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }

  sub_1D138F06C();
  v8 = v1;
  v9 = sub_1D138F0AC();
  v10 = sub_1D13907FC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D10A7344(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for PinnedConceptCell: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_1D10A639C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for PinnedConceptItem();
    if (swift_dynamicCast())
    {

      sub_1D10A71C0(v1 + v6, v18);
      if (v19)
      {
        if (swift_dynamicCast())
        {
        }
      }

      else
      {
        sub_1D10A72B8(v18);
      }

      return sub_1D10A69CC();
    }
  }

  else
  {
    sub_1D10A72B8(v18);
  }

  sub_1D138F06C();
  v7 = v1;
  v8 = sub_1D138F0AC();
  v9 = sub_1D13907FC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    sub_1D10A71C0(v1 + v6, v18);
    sub_1D10A7344(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
    v12 = sub_1D139020C();
    v14 = sub_1D11DF718(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D101F000, v8, v9, "Incorrect view model for PinnedConceptCell: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1D38882F0](v11, -1, -1);
    MEMORY[0x1D38882F0](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D10A665C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D10A66B8(uint64_t a1)
{
  sub_1D10A71C0(a1, v5);
  v3 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A73A8(v5, v1 + v3);
  swift_endAccess();
  sub_1D10A639C();
  return sub_1D10A72B8(a1);
}

void (*sub_1D10A6730(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1D12F39F0();
  return sub_1D10A67A4;
}

void sub_1D10A67A4(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1D10A639C();
  }

  free(v3);
}

uint64_t sub_1D10A6800()
{
  sub_1D12F318C();

  return sub_1D10A69CC();
}

id sub_1D10A6938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinnedConceptCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10A69CC()
{
  v1 = v0;
  sub_1D10A7344(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v41 - v3;
  v44 = sub_1D138F16C();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138F13C();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1D138F3FC();
  v43 = *(v41 - 8);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1D38864F0](v9);
  sub_1D10A5E8C();
  sub_1D138F3BC();
  sub_1D106F934(0, &qword_1EC60E670);
  sub_1D1390C6C();
  v12 = sub_1D138F2FC();
  sub_1D138F2CC();
  v12(v49, 0);
  v13 = sub_1D10A5DC8();
  v14 = [objc_opt_self() systemBlueColor];
  [v13 setTintColor_];

  sub_1D10A7344(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1D138F17C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  v15 = OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView;
  v16 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI17PinnedConceptCell____lazy_storage___accessoryImageView];
  sub_1D10A42A4();
  v18 = &v5[*(v17 + 48)];
  v19 = *MEMORY[0x1E69DBF28];
  v20 = sub_1D138F0FC();
  (*(*(v20 - 8) + 104))(v5, v19, v20);
  *v18 = sub_1D10A69C4;
  v18[1] = 0;
  (*(v42 + 104))(v5, *MEMORY[0x1E69DBF60], v44);
  v21 = sub_1D138F10C();
  (*(*(v21 - 8) + 56))(v47, 1, 1, v21);
  v22 = v16;
  v23 = v41;
  sub_1D138F12C();
  sub_1D138F0EC();
  v24 = v8;
  v25 = v43;
  (*(v45 + 8))(v24, v46);
  sub_1D1390B8C();
  v50 = v23;
  v51 = MEMORY[0x1E69DC110];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(v25 + 16))(boxed_opaque_existential_1, v11, v23);
  MEMORY[0x1D3886480](v49);
  v27 = *&v1[v15];
  v28 = sub_1D10A600C();
  [v27 setImage_];

  sub_1D1086E1C();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D139E710;
  *(v29 + 32) = 0x736E6F6974704FLL;
  *(v29 + 40) = 0xE700000000000000;
  v30 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A71C0(&v1[v30], v49);
  if (!v50)
  {
    sub_1D10A72B8(v49);
LABEL_6:
    v32 = 0xE90000000000006ELL;
    v33 = 0x6F747475426E6950;
    goto LABEL_7;
  }

  sub_1D10A7254();
  type metadata accessor for PinnedConceptItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v31 = *(v48 + 40);

  if ((v31 & 1) == 0)
  {
    goto LABEL_6;
  }

  v32 = 0xEB000000006E6F74;
  v33 = 0x7475426E69706E55;
LABEL_7:
  *(v29 + 48) = v33;
  *(v29 + 56) = v32;
  v34 = sub_1D139044C();
  v35 = HKUIJoinStringsForAutomationIdentifier();

  [v1 setAccessibilityIdentifier_];
  v36 = *&v1[v15];
  v49[0] = v29;
  v37 = v36;
  sub_1D1121FC4(&unk_1F4D04540);
  v38 = sub_1D139044C();

  v39 = HKUIJoinStringsForAutomationIdentifier();

  [v37 setAccessibilityIdentifier_];
  return (*(v25 + 8))(v11, v23);
}

uint64_t sub_1D10A70E0()
{
  v1 = v0;
  v2 = sub_1D10A612C();
  if (v2)
  {
    v3 = *(v2 + 48);

    v3(v4);
  }

  v5 = OBJC_IVAR____TtC15HealthRecordsUI8ListCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v5, v7);
  if (v8)
  {
    sub_1D10A7254();
    type metadata accessor for PinnedConceptItem();
    if (swift_dynamicCast())
    {
    }
  }

  else
  {
    sub_1D10A72B8(v7);
  }

  return sub_1D10A69CC();
}

uint64_t sub_1D10A71C0(uint64_t a1, uint64_t a2)
{
  sub_1D10A7344(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D10A7254()
{
  result = qword_1EC60A3D0;
  if (!qword_1EC60A3D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60A3D0);
  }

  return result;
}

uint64_t sub_1D10A72B8(uint64_t a1)
{
  sub_1D10A7344(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10A7344(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D10A73A8(uint64_t a1, uint64_t a2)
{
  sub_1D10A7344(0, &qword_1EC60B620, sub_1D10A7254, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ClinicalPublisherFactory.__allocating_init(with:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
  return v2;
}

uint64_t ClinicalPublisherFactory.init(with:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
  return v1;
}

uint64_t sub_1D10A74EC(void *a1)
{
  sub_1D10A864C(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  sub_1D10A7828();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10A791C(0);
  v20 = *(v11 - 8);
  v21 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v1;
  sub_1D10A991C(0, &qword_1EE069670, MEMORY[0x1E695C028]);
  sub_1D10A78A8();
  v15 = a1;

  sub_1D138F75C();
  v16 = sub_1D138D57C();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_1D10A79EC(&qword_1EC60A0E8, sub_1D10A7828);
  sub_1D138F82C();
  sub_1D109AC18(v5);
  (*(v8 + 8))(v10, v7);
  sub_1D10A79EC(&qword_1EC60A0F0, sub_1D10A791C);
  v17 = v21;
  v18 = sub_1D138F80C();
  (*(v20 + 8))(v13, v17);
  return v18;
}

void sub_1D10A7828()
{
  if (!qword_1EC60A0D8)
  {
    sub_1D10A991C(255, &qword_1EE069670, MEMORY[0x1E695C028]);
    sub_1D10A78A8();
    v0 = sub_1D138F76C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A0D8);
    }
  }
}

unint64_t sub_1D10A78A8()
{
  result = qword_1EE069678;
  if (!qword_1EE069678)
  {
    sub_1D10A991C(255, &qword_1EE069670, MEMORY[0x1E695C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE069678);
  }

  return result;
}

void sub_1D10A7958(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D10A79EC(a4, a5);
    v8 = sub_1D138F52C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D10A79EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D10A7A34@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D10A991C(0, &qword_1EE069670, MEMORY[0x1E695C028]);
  swift_allocObject();
  v7 = a1;

  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D10A7AF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  aBlock[7] = *MEMORY[0x1E69E9840];
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a3 identifier];
  sub_1D138D5CC();

  v13 = _sSo7HKQueryC15HealthRecordsUIE025predicateForRecentAccountC09accountIdSo11NSPredicateC10Foundation4UUIDV_tFZ_0();
  (*(v9 + 8))(v11, v8);
  v14 = _s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0();
  v15 = v14;
  v16 = *(v14 + 32);
  v17 = ((1 << v16) + 63) >> 6;
  if ((v16 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](v14);
    v19 = aBlock - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v19, v18);
    v20 = 0;
    v21 = 0;
    v22 = 1 << *(v15 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = *(v15 + 56) & v23;
    v25 = (v22 + 63) >> 6;
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v27 = v26 | (v21 << 6);
LABEL_12:
      *&v19[(v27 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v27;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        v31 = sub_1D1103848(v19, v17, v20, v15);
        goto LABEL_16;
      }
    }

    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
        goto LABEL_15;
      }

      v29 = *(v15 + 56 + 8 * v21);
      ++v28;
      if (v29)
      {
        v24 = (v29 - 1) & v29;
        v27 = __clz(__rbit64(v29)) | (v21 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v42 = swift_slowAlloc();
  v31 = sub_1D10A91CC(v42, v17, v15, sub_1D1099E60);

  MEMORY[0x1D38882F0](v42, -1, -1);
LABEL_16:
  v32 = v13;
  sub_1D10A925C(v31, v32);

  sub_1D106F424();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D139E810;
  *(v33 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:*MEMORY[0x1E696C6C0] ascending:0];
  v34 = swift_allocObject();
  *(v34 + 16) = a1;
  *(v34 + 24) = a2;
  v35 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  sub_1D106F934(0, &qword_1EE06A630);

  v36 = sub_1D139044C();

  sub_1D106F934(0, &qword_1EE06B578);
  v37 = sub_1D139044C();

  aBlock[4] = sub_1D10A9914;
  aBlock[5] = v34;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D10FD688;
  aBlock[3] = &block_descriptor_23;
  v38 = _Block_copy(aBlock);
  v39 = [v35 initWithQueryDescriptors:v36 sortDescriptors:v37 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:1 resultsHandler:v38];

  _Block_release(v38);

  v40 = v39;
  v41 = sub_1D139012C();
  [v40 setDebugIdentifier_];

  [*(a4 + 16) executeQuery_];
}

uint64_t sub_1D10A800C(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(char *))
{
  sub_1D10A991C(0, &qword_1EC60A138, MEMORY[0x1E69E75F0]);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  if (a4)
  {
    *v13 = a4;
    swift_storeEnumTagMultiPayload();
    v14 = a4;
    v11 = v13;
LABEL_14:
    a5(v11);
    return sub_1D10A99C4(v11);
  }

  if (!a2)
  {
    v20 = sub_1D138D57C();
    (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
    swift_storeEnumTagMultiPayload();
    v11 = v13;
    goto LABEL_14;
  }

  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    v21 = sub_1D138D57C();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    goto LABEL_13;
  }

  result = sub_1D13910DC();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a2 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1D3886B70](0, a2);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a2 + 32);
LABEL_9:
    v17 = v16;
    v18 = [v16 _creationDate];

    sub_1D138D52C();
    v19 = sub_1D138D57C();
    (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D10A8274(void *a1)
{
  v2 = v1;
  sub_1D10A8518();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10A8728(0);
  v18[0] = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v2;
  sub_1D10A85AC();
  sub_1D10A79EC(&qword_1EC60A118, sub_1D10A85AC);
  v14 = a1;

  sub_1D138F75C();
  v18[1] = MEMORY[0x1E69E7CC0];
  sub_1D10A79EC(&qword_1EC60A128, sub_1D10A8518);
  sub_1D138F82C();
  (*(v6 + 8))(v8, v5);
  sub_1D10A79EC(&qword_1EC60A130, sub_1D10A8728);
  v15 = v18[0];
  v16 = sub_1D138F80C();
  (*(v10 + 8))(v12, v15);
  return v16;
}

void sub_1D10A8518()
{
  if (!qword_1EC60A0F8)
  {
    sub_1D10A85AC();
    sub_1D10A79EC(&qword_1EC60A118, sub_1D10A85AC);
    v0 = sub_1D138F76C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A0F8);
    }
  }
}

void sub_1D10A85AC()
{
  if (!qword_1EC60A100)
  {
    sub_1D10A864C(255, &qword_1EC60A108, sub_1D10A86B0, MEMORY[0x1E69E62F8]);
    sub_1D10922EC();
    v0 = sub_1D138F72C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A100);
    }
  }
}

void sub_1D10A864C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D10A86B0()
{
  if (!qword_1EC60A110)
  {
    sub_1D138D57C();
    sub_1D138D5EC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC60A110);
    }
  }
}

uint64_t sub_1D10A8764@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D10A85AC();
  swift_allocObject();
  v7 = a1;

  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D10A8808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a3 identifier];
  sub_1D138D5CC();

  v14 = sub_1D11902F8(v11);
  (*(v9 + 8))(v11, v8);
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = off_1EE069F80;
  if (*(off_1EE069F80 + 2))
  {
    v16 = sub_1D12A2F78(2);
    if (v17)
    {
      v18 = v15[7] + 72 * v16;
      v38 = *v18;
      v20 = *(v18 + 32);
      v19 = *(v18 + 48);
      v21 = *(v18 + 64);
      v39 = *(v18 + 16);
      v40 = v20;
      v42 = v21;
      v41 = v19;
      swift_endAccess();
      v45 = v40;
      v46 = v41;
      v47 = v42;
      v43 = v38;
      v44 = v39;
      sub_1D1082914(&v38, aBlock);
LABEL_8:
      v23 = v14;
      sub_1D13789AC(v14);

      v40 = v45;
      v41 = v46;
      v42 = v47;
      v38 = v43;
      v39 = v44;
      sub_1D1080D98(&v38);
      sub_1D106F424();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D139E810;
      sub_1D139016C();
      v25 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v26 = sub_1D139012C();

      v27 = [v25 initWithKey:v26 ascending:0];

      *(v24 + 32) = v27;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_1D10A918C;
      *(v28 + 24) = v12;
      v29 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
      sub_1D106F934(0, &qword_1EE06A630);
      v30 = sub_1D139044C();

      sub_1D106F934(0, &qword_1EE06B578);
      v31 = sub_1D139044C();

      aBlock[4] = sub_1D10A9848;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D10FD688;
      aBlock[3] = &block_descriptor_5;
      v32 = _Block_copy(aBlock);
      v33 = [v29 initWithQueryDescriptors:v30 sortDescriptors:v31 followingAnchor:0 upToAndIncludingAnchor:0 distinctByKeyPaths:0 limit:0 resultsHandler:v32];

      _Block_release(v32);

      v34 = v33;
      v35 = sub_1D139012C();
      [v34 setDebugIdentifier_];

      [*(a4 + 16) executeQuery_];
      return;
    }
  }

  swift_endAccess();
  v22 = [objc_opt_self() unknownRecordCategory];
  if (v22)
  {
    sub_1D123E1C4(v22, &v43);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D10A8CD4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  sub_1D10A86B0();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  if (a4)
  {
    v17 = a4;
    (a5)(a4, 1);
  }

  else
  {
    v41 = &v36 - v16;
    if (a2)
    {
      v42 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_25;
      }

      v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = a6;
      for (i = a5; v18; i = a5)
      {
        v19 = 0;
        v20 = MEMORY[0x1E69E7CC0];
        v43 = v18;
        v44 = a2 & 0xC000000000000001;
        a5 = v42;
        v39 = v11;
        v40 = a2;
        v38 = v12;
        while (1)
        {
          if (v44)
          {
            v21 = MEMORY[0x1D3886B70](v19, a2);
          }

          else
          {
            if (v19 >= *(a5 + 16))
            {
              goto LABEL_24;
            }

            v21 = *(a2 + 8 * v19 + 32);
          }

          v22 = v21;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          if (v24)
          {
            v25 = v24;
            v45 = *(v11 + 64);
            v26 = v22;
            v27 = [v25 displayNameForGroupByConcept];
            v28 = sub_1D139016C();
            v30 = v29;

            *v15 = v28;
            v15[1] = v30;
            v31 = [v25 sortDate];

            v32 = [v31 date];
            v33 = v41;
            sub_1D138D52C();

            v34 = [v25 UUID];
            sub_1D138D5CC();

            sub_1D10A9868(v15, v33);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_1D10F8424(0, v20[2] + 1, 1, v20);
            }

            a6 = v20[2];
            v35 = v20[3];
            v11 = v39;
            a2 = v40;
            v12 = v38;
            if (a6 >= v35 >> 1)
            {
              v20 = sub_1D10F8424(v35 > 1, a6 + 1, 1, v20);
            }

            v20[2] = a6 + 1;
            sub_1D10A9868(v33, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * a6);
            a5 = v42;
          }

          else
          {
          }

          ++v19;
          if (v23 == v43)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v18 = sub_1D13910DC();
        v36 = a6;
      }

      v20 = MEMORY[0x1E69E7CC0];
LABEL_27:
      i(v20, 0);
    }

    else
    {
      (a5)(MEMORY[0x1E69E7CC0], 0);
    }
  }
}

uint64_t ClinicalPublisherFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D10A918C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

void *sub_1D10A91CC(void *result, uint64_t a2, unint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D1103464(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D10A925C(uint64_t a1, void *a2)
{
  v42 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v41 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v4)
  {
LABEL_10:
    v46 = v6;
    v9 = (*(a1 + 48) + 72 * (__clz(__rbit64(v4)) | (v6 << 6)));
    v10 = v9[1];
    v11 = v9[6];
    v12 = v9[8];
    if (v11 >> 62)
    {
      v13 = sub_1D13910DC();
      if (!v13)
      {
LABEL_23:
        v27 = MEMORY[0x1E69E7CC0];
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v51[0] = MEMORY[0x1E69E7CC0];

    v43 = v12;
    v44 = v10;
    result = sub_1D13912DC();
    if (v13 < 0)
    {
      goto LABEL_56;
    }

    v47 = v4;
    v48 = v7;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D3886B70](v14, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 sampleType];
      v19 = [v17 predicate];
      if (v19)
      {
        v20 = v19;
        sub_1D106F424();
        v21 = swift_allocObject();
        v52 = v18;
        *(v21 + 16) = xmmword_1D139E6E0;
        *(v21 + 32) = v20;
        *(v21 + 40) = a2;
        sub_1D106F934(0, &qword_1EE06B790);
        v22 = a2;
        v23 = v20;
        v24 = v22;
        v25 = v23;
        v26 = sub_1D139044C();
        v18 = v52;

        v15 = [objc_opt_self() andPredicateWithSubpredicates_];
      }

      else
      {
        v15 = a2;
      }

      ++v14;
      [objc_allocWithZone(MEMORY[0x1E696C388]) initWithSampleType:v18 predicate:v15];

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    while (v13 != v14);

    v27 = v51[0];
    v4 = v47;
    v7 = v48;
LABEL_24:
    v28 = v27 >> 62;
    if (v27 >> 62)
    {
      v52 = sub_1D13910DC();
    }

    else
    {
      v52 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v7 >> 62;
    if (v7 >> 62)
    {
      result = sub_1D13910DC();
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = result + v52;
    if (__OFADD__(result, v52))
    {
      goto LABEL_54;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v29)
      {
LABEL_35:
        sub_1D13910DC();
      }

LABEL_36:
      result = sub_1D139122C();
      v49 = result;
      v31 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_37;
    }

    if (v29)
    {
      goto LABEL_35;
    }

    v31 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v30 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_36;
    }

    v49 = v7;
LABEL_37:
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);
    if (v28)
    {
      result = sub_1D13910DC();
      v34 = result;
    }

    else
    {
      v34 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 &= v4 - 1;
    if (v34)
    {
      if (((v33 >> 1) - v32) < v52)
      {
        goto LABEL_57;
      }

      v35 = v31 + 8 * v32 + 32;
      if (v28)
      {
        if (v34 < 1)
        {
          goto LABEL_59;
        }

        sub_1D10A9A3C();
        sub_1D10A79EC(&unk_1EC60A140, sub_1D10A9A3C);
        for (i = 0; i != v34; ++i)
        {
          v37 = sub_1D1112FB8(v51, i, v27);
          v39 = *v38;
          (v37)(v51, 0);
          *(v35 + 8 * i) = v39;
        }
      }

      else
      {
        sub_1D106F934(0, &qword_1EE06A630);
        swift_arrayInitWithCopy();
      }

      v6 = v46;
      v7 = v49;
      if (v52 >= 1)
      {
        v40 = *(v31 + 16);
        if (__OFADD__(v40, v52))
        {
          goto LABEL_58;
        }

        *(v31 + 16) = v40 + v52;
      }
    }

    else
    {

      v6 = v46;
      v7 = v49;
      if (v52 > 0)
      {
        goto LABEL_55;
      }
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v41)
    {

      return v7;
    }

    v4 = *(v42 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_10;
    }
  }

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
  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D10A9868(uint64_t a1, uint64_t a2)
{
  sub_1D10A86B0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D10A991C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_1D10A864C(255, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v7 = v6;
    v8 = sub_1D10922EC();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D10A99C4(uint64_t a1)
{
  sub_1D10A991C(0, &qword_1EC60A138, MEMORY[0x1E69E75F0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10A9A3C()
{
  if (!qword_1EE0695D0)
  {
    sub_1D106F934(255, &qword_1EE06A630);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0695D0);
    }
  }
}

uint64_t sub_1D10A9AAC(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138F06C();
  v11 = a1;
  v12 = sub_1D138F0AC();
  v13 = sub_1D13907DC();

  if (os_log_type_enabled(v12, v13))
  {
    v31 = v13;
    v32 = v7;
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v33 = v30;
    v34 = ObjectType;
    *v14 = 136446722;
    swift_getMetatypeMetadata();
    v15 = sub_1D13901EC();
    v17 = sub_1D11DF718(v15, v16, &v33);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = v11;
    v19 = [v18 description];
    v20 = sub_1D139016C();
    v22 = v21;

    v23 = sub_1D11DF718(v20, v22, &v33);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2082;
    if (a2 > 1)
    {
      if (a2 == 3)
      {
        v24 = 0xE900000000000067;
        v25 = 0x6E69747365676E49;
        goto LABEL_14;
      }

      if (a2 == 2)
      {
        v24 = 0x80000001D13B99E0;
        v25 = 0xD000000000000013;
        goto LABEL_14;
      }
    }

    else
    {
      if (!a2)
      {
        v24 = 0xED00006574617453;
        goto LABEL_12;
      }

      if (a2 == 1)
      {
        v24 = 0xED0000676E697473;
        v25 = 0x65676E4920746F4ELL;
LABEL_14:
        v26 = sub_1D11DF718(v25, v24, &v33);

        *(v14 + 24) = v26;
        _os_log_impl(&dword_1D101F000, v12, v31, "[%{public}s]: ingestionStateDidUpdate (store: %s, to: %{public}s)", v14, 0x20u);
        v27 = v30;
        swift_arrayDestroy();
        MEMORY[0x1D38882F0](v27, -1, -1);
        MEMORY[0x1D38882F0](v14, -1, -1);

        (*(v8 + 8))(v10, v32);
        goto LABEL_15;
      }
    }

    v24 = 0xEE002E6574617453;
LABEL_12:
    v25 = 0x206E776F6E6B6E55;
    goto LABEL_14;
  }

  (*(v8 + 8))(v10, v7);
LABEL_15:
  v28 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI28IngestionStateChangeListener_handler);

  v28(a2);

  v34 = a2;
  v35 = 0;
  return sub_1D138F6BC();
}

id sub_1D10A9ECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IngestionStateChangeListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D10AA070()
{
  sub_1D10AC494();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountSelectionViewController();
  v18.receiver = v0;
  v18.super_class = v4;
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  type metadata accessor for TextWithIconCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = sub_1D139012C();
  [v6 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  result = [v0 tableView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  type metadata accessor for HeaderWithRightAlignedButton();
  v10 = swift_getObjCClassFromMetadata();
  v11 = sub_1D139012C();
  [v9 registerClass:v10 forHeaderFooterViewReuseIdentifier:v11];

  result = [v0 tableView];
  if (result)
  {
    v12 = result;
    [result setSectionHeaderTopPadding_];

    v13 = sub_1D13905DC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_1D13905AC();
    v14 = v0;
    v15 = sub_1D139059C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_1D107877C(0, 0, v3, &unk_1D139F590, v16);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1D10AA2D4()
{
  v0[2] = sub_1D13905AC();
  v0[3] = sub_1D139059C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D10AA380;

  return sub_1D10AA564();
}

uint64_t sub_1D10AA380()
{

  v1 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10AA4BC, v1, v0);
}

uint64_t sub_1D10AA4BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D10AA564()
{
  v1[21] = v0;
  v2 = sub_1D138D5EC();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = sub_1D13905AC();
  v1[27] = sub_1D139059C();
  v4 = sub_1D139055C();
  v1[28] = v4;
  v1[29] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D10AA668, v4, v3);
}

uint64_t sub_1D10AA668()
{
  v1 = *(v0 + 168);
  v2 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_accountIcons;
  swift_beginAccess();
  if (*(v1 + v2))
  {

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 168);
  *(v1 + v2) = sub_1D109D580(MEMORY[0x1E69E7CC0]);

  v7 = *(v5 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts);
  *(v0 + 240) = v7;
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 248) = v8;
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_17:
    v8 = sub_1D10AB050;
    v10 = 0;
    v6 = 0;

    return MEMORY[0x1EEE6DFA0](v8, v10, v6);
  }

  v8 = sub_1D13910DC();
  *(v0 + 248) = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_7:
  v9 = *(v0 + 168) + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize;
  *(v0 + 256) = *v9;
  *(v0 + 264) = *(v9 + 8);
  *(v0 + 272) = *(v9 + 16);
  *(v0 + 121) = *(v9 + 24);
  v10 = *(v0 + 240);
  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
      goto LABEL_11;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v10, v6);
  }

  v11 = MEMORY[0x1D3886B70](0);
LABEL_11:
  *(v0 + 280) = v11;
  *(v0 + 288) = 1;
  v12 = [v11 identifier];
  sub_1D138D5CC();

  if (qword_1EC608DC0 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 121);
  v14 = *(v0 + 272);
  v17 = *(v0 + 256);
  os_unfair_lock_lock(&dword_1EC60E248);
  *(v0 + 296) = qword_1EC60E250;

  os_unfair_lock_unlock(&dword_1EC60E248);
  *(v0 + 96) = v17;
  *(v0 + 112) = v14;
  *(v0 + 120) = v13;
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *v15 = v0;
  v15[1] = sub_1D10AA940;
  v16 = *(v0 + 200);

  return AccountIconProvider.fetchIcon(for:size:)(v0 + 16, v16, v0 + 96);
}

uint64_t sub_1D10AA940()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1D10AAA84, v3, v2);
}

uint64_t sub_1D10AAA84()
{
  v2 = v0 + 64;
  v3 = *(v0 + 32);
  v63 = *(v0 + 24);
  v64 = *(v0 + 16);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = sub_1D10A9F74();
  if (!*v7)
  {
    v24 = *(v0 + 280);
    v25 = *(v0 + 184);
    (v8)(v0 + 64, 0);

    v26 = *(v25 + 8);
    goto LABEL_21;
  }

  v1 = v7;
  v60 = v3;
  v61 = v5;
  v62 = v4;
  v9 = *(v0 + 184);
  v11 = *(v9 + 16);
  v5 = v9 + 16;
  v10 = v11;
  v11(*(v0 + 192), *(v0 + 200), *(v0 + 176));
  v12 = *(v0 + 192);
  if (v6)
  {
    v59 = v8;
    v57 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v1;
    *(v0 + 160) = *v1;
    *v1 = 0x8000000000000000;
    v15 = sub_1D129E240(v12);
    v17 = *(v14 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v16;
      v58 = v6;
      if (*(v14 + 24) < v20)
      {
        v21 = *(v0 + 192);
        sub_1D117C300(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_1D129E240(v21);
        if ((v12 & 1) != (v22 & 1))
        {

          return sub_1D13916CC();
        }

LABEL_14:
        v34 = *(v0 + 160);
        v35 = *(v0 + 184);
        v36 = *(v0 + 192);
        v37 = *(v0 + 176);
        v56 = (v35 + 8);
        if (v12)
        {
          v38 = v34[7] + 48 * v15;
          v39 = *(v38 + 40);
          *v38 = v64 & 1;
          *(v38 + 8) = v63;
          *(v38 + 16) = v60;
          *(v38 + 24) = v61;
          *(v38 + 32) = v62 & 1;
          *(v38 + 40) = v57;
          v5 = v37;

          v26 = *v56;
          (*v56)(v36, v5);
        }

        else
        {
          v34[(v15 >> 6) + 8] |= 1 << v15;
          v55 = v15;
          v40 = v37;
          v10(v34[6] + *(v35 + 72) * v15, v36, v37);
          v41 = v34[7] + 48 * v55;
          *v41 = v64 & 1;
          *(v41 + 8) = v63;
          *(v41 + 16) = v60;
          *(v41 + 24) = v61;
          *(v41 + 32) = v62 & 1;
          *(v41 + 40) = v57;
          v26 = *(v35 + 8);
          v26(v36, v40);
          v42 = v34[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_39;
          }

          v34[2] = v43;
        }

        v8 = v59;
        *v1 = v34;

        v6 = v58;
        goto LABEL_20;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }
    }

    v54 = v15;
    sub_1D1182140();
    v15 = v54;
    goto LABEL_14;
  }

  v27 = sub_1D129E240(*(v0 + 192));
  if (v28)
  {
    v5 = v27;
    v58 = 0;
    v59 = v8;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 152) = *v1;
    *v1 = 0x8000000000000000;
    if (!v29)
    {
      goto LABEL_40;
    }

    goto LABEL_12;
  }

  v26 = *(*(v0 + 184) + 8);
  v26(*(v0 + 192), *(v0 + 176));
  while (1)
  {
LABEL_20:
    v44 = *(v0 + 280);
    (v8)(v2, 0);

LABEL_21:
    v45 = *(v0 + 288);
    v2 = *(v0 + 248);
    v26(*(v0 + 200), *(v0 + 176));
    if (v45 == v2)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D10AB050, 0, 0);
    }

    v46 = *(v0 + 288);
    v47 = *(v0 + 240);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x1D3886B70](*(v0 + 288));
      goto LABEL_29;
    }

    if (v46 < *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    sub_1D1182140();
LABEL_12:
    v31 = *(v0 + 184);
    v30 = *(v0 + 192);
    v32 = *(v0 + 176);
    v33 = *(v0 + 152);
    v26 = *(v31 + 8);
    v26(*(v33 + 48) + *(v31 + 72) * v5, v32);

    sub_1D12256DC(v5, v33);
    v26(v30, v32);
    *v1 = v33;

    v6 = v58;
    v8 = v59;
  }

  v48 = *(v47 + 8 * v46 + 32);
LABEL_29:
  *(v0 + 280) = v48;
  *(v0 + 288) = v46 + 1;
  if (__OFADD__(v46, 1))
  {
    __break(1u);
    goto LABEL_35;
  }

  v49 = [v48 identifier];
  sub_1D138D5CC();

  if (qword_1EC608DC0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v50 = *(v0 + 121);
  v51 = *(v0 + 272);
  v65 = *(v0 + 256);
  os_unfair_lock_lock(&dword_1EC60E248);
  *(v0 + 296) = qword_1EC60E250;

  os_unfair_lock_unlock(&dword_1EC60E248);
  *(v0 + 96) = v65;
  *(v0 + 112) = v51;
  *(v0 + 120) = v50;
  v52 = swift_task_alloc();
  *(v0 + 304) = v52;
  *v52 = v0;
  v52[1] = sub_1D10AA940;
  v53 = *(v0 + 200);

  return AccountIconProvider.fetchIcon(for:size:)(v0 + 16, v53, v0 + 96);
}

uint64_t sub_1D10AB050()
{
  *(v0 + 312) = sub_1D139059C();
  v2 = sub_1D139055C();

  return MEMORY[0x1EEE6DFA0](sub_1D10AB0DC, v2, v1);
}

uint64_t sub_1D10AB0DC()
{
  v1 = v0[21];

  v2 = [v1 tableView];
  if (v2)
  {
    v5 = v2;
    [v2 reloadData];

    v3 = v0[28];
    v4 = v0[29];
    v2 = sub_1D10AB178;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D10AB178()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1D10AB218(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D138D5EC();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D139012C();
  v11 = sub_1D138D7DC();
  v12 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

  type metadata accessor for TextWithIconCell();
  v84 = swift_dynamicCastClassUnconditional();
  v13 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts);
  v14 = sub_1D138D7FC();
  v82 = a2;
  v81 = v12;
  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v13 + 8 * v14 + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_53:
    swift_once();
    goto LABEL_11;
  }

  v15 = MEMORY[0x1D3886B70](v14, v13);
LABEL_5:
  v13 = v15;
  v16 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_accountIcons;
  swift_beginAccess();
  v17 = *(v3 + v16);
  v12 = &selRef_removeObserver_name_object_;
  if (v17)
  {

    v18 = [v13 identifier];
    sub_1D138D5CC();

    if (*(v17 + 16))
    {
      v19 = sub_1D129E240(v9);
      if (v20)
      {
        v21 = (*(v17 + 56) + 48 * v19);
        v80 = v6;
        v22 = *v21;
        v23 = *(v21 + 2);
        v78 = *(v21 + 1);
        v79 = v23;
        v24 = *(v21 + 3);
        v25 = v21[32];
        v26 = *(v7 + 8);
        v83 = *(v21 + 5);
        v27 = v9;
        v28 = v78;
        v26(v27, v80);

        goto LABEL_12;
      }
    }

    (*(v7 + 8))(v9, v6);
  }

  if (qword_1EC608DC0 != -1)
  {
    goto LABEL_53;
  }

LABEL_11:
  os_unfair_lock_lock(&dword_1EC60E248);

  os_unfair_lock_unlock(&dword_1EC60E248);
  v29 = [v13 v12[447]];
  v30 = sub_1D139016C();
  v32 = v31;

  v33 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize + 16);
  v34 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize + 24);
  v85 = *(v3 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize);
  v86 = v33;
  v87 = v34;
  AccountIconProvider.placeholder(forTitle:size:)(v30, v32, &v85, v88);

  v22 = v88[0];
  v28 = v89;
  v79 = v90;
  v24 = v91;
  v25 = v92;
  v83 = v93;
LABEL_12:
  v35 = v84;
  v36 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts;
  swift_beginAccess();
  v37 = *(v3 + v36);

  v38 = sub_1D1347504(v13, v37);

  v39 = sub_1D121A20C();
  v40 = v12[447];
  v80 = v13;
  v41 = [v13 v40];
  if (!v41)
  {
    sub_1D139016C();
    v41 = sub_1D139012C();
  }

  [v39 setText_];

  v42 = sub_1D121A164();
  [v42 setImage_];

  v43 = *&v35[OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell____lazy_storage___iconView];
  if (v22)
  {
    v44 = 0;
  }

  else
  {
    v44 = v24;
  }

  if (v22)
  {
    v45 = 2;
  }

  else
  {
    v45 = 0;
  }

  if (!(v22 & 1 | ((v25 & 1) == 0)))
  {
    v46 = v24 | v79;
    v45 = v24 | v79 | v28;
    if (v24 | v79 | v28)
    {
      if (v28 != 1 || v46)
      {
        v45 = 0;
        if (v46)
        {
          v76 = 0;
        }

        else
        {
          v76 = v28 == 2;
        }

        v44 = 0x4032000000000000;
        if (v76)
        {
          v44 = 0x4028000000000000;
        }
      }

      else
      {
        v45 = 0;
        v44 = 0x4024000000000000;
      }
    }

    else
    {
      v44 = 0x401C000000000000;
    }
  }

  *&v85 = v44;
  BYTE8(v85) = v45;
  v47 = v43;
  UIImageView.applyStyle(_:)(&v85);

  sub_1D10A4C44(v85, SBYTE8(v85));
  v48 = v81;
  if (v38)
  {
    v49 = sub_1D10A508C();
  }

  else
  {
    v49 = sub_1D10A51C8();
  }

  v50 = v49;
  [v35 setAccessoryView_];

  sub_1D1086E1C();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D139EAB0;
  *(v51 + 32) = 0x6F6974704F464450;
  *(v51 + 40) = 0xEA0000000000736ELL;
  *(v51 + 48) = 0x43746E756F636341;
  *(v51 + 56) = 0xEB000000006C6C65;
  *&v85 = sub_1D138D7FC();
  sub_1D1082D14();
  *(v51 + 64) = sub_1D139100C();
  *(v51 + 72) = v52;
  v53 = sub_1D139044C();
  v54 = HKUIJoinStringsForAutomationIdentifier();

  if (v54)
  {
    v55 = sub_1D139016C();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v58 = v84;
  v59 = (v84 + OBJC_IVAR____TtC15HealthRecordsUI16TextWithIconCell_baseAccessibilityIdentifier);
  *v59 = v55;
  v59[1] = v57;

  sub_1D121A2F0();
  v60 = [v58 accessoryView];
  if (v60)
  {
    v61 = v60;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E700;
    v63 = 0x7463656C65736544;
    if (v38)
    {
      v63 = 0x64657463656C6553;
    }

    v64 = 0xE800000000000000;
    if ((v38 & 1) == 0)
    {
      v64 = 0xEA00000000006465;
    }

    *(inited + 32) = v63;
    *(inited + 40) = v64;
    *&v85 = v51;
    sub_1D1121FC4(inited);
    v65 = sub_1D139044C();

    v66 = HKUIJoinStringsForAutomationIdentifier();

    [v61 setAccessibilityIdentifier_];
  }

  else
  {
  }

  v67 = v48;
  v68 = v80;
  v69 = [v80 title];
  v70 = sub_1D139016C();
  v72 = v71;

  *&v85 = v70;
  *(&v85 + 1) = v72;
  MEMORY[0x1D3885C10](8236, 0xE200000000000000);
  if (v38)
  {
    if (qword_1EE06AD00 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_54;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_54:
    swift_once();
  }

LABEL_43:
  v73 = sub_1D138D1CC();
  MEMORY[0x1D3885C10](v73);

  v74 = sub_1D139012C();

  [v58 setAccessibilityLabel_];

  return v58;
}

void sub_1D10ABC38(void *a1)
{
  v3 = sub_1D138D7DC();
  [a1 deselectRowAtIndexPath:v3 animated:1];

  v4 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts);
  v5 = sub_1D138D7FC();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1D3886B70](v5, v4);
    goto LABEL_5;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = *(v4 + 8 * v5 + 32);
LABEL_5:
  v7 = v6;
  v8 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts;
  swift_beginAccess();
  v9 = *(v1 + v8);

  v10 = sub_1D1347504(v7, v9);

  swift_beginAccess();
  if (v10)
  {
    v11 = sub_1D1136714(v7);
  }

  else
  {
    sub_1D10E4A44(&v12, v7);
    v11 = v12;
  }

  swift_endAccess();

  sub_1D10ABF7C();
}

char *sub_1D10ABE88()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts);
  if (v4 >> 62)
  {
    if (v3 == sub_1D13910DC())
    {
      goto LABEL_6;
    }

LABEL_8:

    v5 = sub_1D12DEEFC(v6);

    goto LABEL_9;
  }

  if (v3 != *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_6:
  v5 = MEMORY[0x1E69E7CD0];
LABEL_9:
  *(v0 + v1) = v5;

  return sub_1D10ABF7C();
}

char *sub_1D10ABF7C()
{
  result = [v0 tableView];
  if (result)
  {
    v2 = result;
    [result reloadData];

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = result;
      v4 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts;
      swift_beginAccess();
      *(*&v3[OBJC_IVAR___HRPDFConfigurationViewController_configurationDataSource] + 112) = *&v0[v4];

      sub_1D11B2198();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D10AC0A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10AC16C(void *a1)
{
  v2 = v1;
  v4 = sub_1D139012C();
  v5 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for HeaderWithRightAlignedButton();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v7 = sub_1D138D1CC();
    v8 = (v6 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerText);
    *v8 = v7;
    v8[1] = v9;

    v10 = *(v6 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_headerLabel);

    v11 = sub_1D139012C();

    [v10 setText_];

    v12 = OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts;
    swift_beginAccess();
    if ((*(v2 + v12) & 0xC000000000000001) != 0)
    {

      sub_1D13910DC();
    }

    if (*(v2 + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts) >> 62)
    {
      sub_1D13910DC();
    }

    v13 = sub_1D138D1CC();
    v14 = (v6 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_buttonText);
    *v14 = v13;
    v14[1] = v15;

    sub_1D1390DDC();

    *(v6 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_baseAccessibilityIdentifier) = xmmword_1D139EAC0;

    sub_1D127854C();
    *(v6 + OBJC_IVAR____TtC15HealthRecordsUI28HeaderWithRightAlignedButton_delegate + 8) = &off_1F4D06C88;
    swift_unknownObjectWeakAssign();
  }

  else
  {
  }

  return v6;
}

void sub_1D10AC494()
{
  if (!qword_1EE06A650)
  {
    sub_1D13905DC();
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE06A650);
    }
  }
}

uint64_t sub_1D10AC4EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D108077C;

  return sub_1D10AA2D4();
}

uint64_t sub_1D10AC5B0()
{
  type metadata accessor for PDFAttachmentCell(0);
  sub_1D10B0A84(&unk_1EC60A3E8, type metadata accessor for PDFAttachmentCell);
  return sub_1D138DECC();
}

unint64_t sub_1D10AC618()
{
  v0 = sub_1D138D59C();
  MEMORY[0x1D3885C10](v0);

  return 0xD000000000000012;
}

uint64_t sub_1D10AC67C(uint64_t a1)
{
  v2 = sub_1D10B0A84(&qword_1EC60A378, type metadata accessor for PDFAttachmentItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1D10AC6F8()
{
  v1 = qword_1EC60A198;
  v2 = *&v0[qword_1EC60A198];
  if (v2)
  {
    v3 = *&v0[qword_1EC60A198];
  }

  else
  {
    v4 = v0;
    v5 = sub_1D10AE484();
    v6 = [v5 heightAnchor];

    v7 = [v4 contentView];
    [v7 bounds];

    v8 = sub_1D138E6EC();
    sub_1D138E6CC();
    v9 = objc_allocWithZone(v8);
    v10 = sub_1D138E6DC();
    [v10 itemSize];
    v12 = v11;

    v13 = [v6 constraintEqualToConstant_];
    v14 = *&v4[v1];
    *&v4[v1] = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

char *sub_1D10AC84C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = qword_1EC60A190;
  *&v4[v10] = [objc_allocWithZone(sub_1D138E3AC()) init];
  *&v4[qword_1EC60A198] = 0;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = sub_1D10AE484();
  [v12 setDataSource_];

  v13 = v11;
  v14 = sub_1D10AE484();

  v15 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v13 action:sel_didTapPreview_];
  [v14 addGestureRecognizer_];

  return v13;
}

void sub_1D10AC9B4(uint64_t a1)
{
  v2 = qword_1EC60A190;
  *(a1 + v2) = [objc_allocWithZone(sub_1D138E3AC()) init];
  *(a1 + qword_1EC60A198) = 0;
  sub_1D13913BC();
  __break(1u);
}

void sub_1D10ACA48(void *a1)
{
  v13.receiver = a1;
  v13.super_class = swift_getObjectType();
  v1 = v13.receiver;
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v2 = sub_1D10AE484();
  v3 = [v1 contentView];
  [v3 bounds];

  v4 = sub_1D138E6EC();
  sub_1D138E6CC();
  v5 = objc_allocWithZone(v4);
  v6 = sub_1D138E6DC();
  [v2 setCollectionViewLayout:v6 animated:0];

  v7 = sub_1D10AC6F8();
  v8 = [v1 contentView];
  [v8 bounds];

  sub_1D138E6CC();
  v9 = objc_allocWithZone(v4);
  v10 = sub_1D138E6DC();
  [v10 itemSize];
  v12 = v11;

  [v7 setConstant_];
  [v1 invalidateIntrinsicContentSize];
}

id sub_1D10ACC2C()
{
  v1 = [v0 contentView];
  [v1 bounds];

  v2 = sub_1D138E6EC();
  sub_1D138E6CC();
  v3 = objc_allocWithZone(v2);
  sub_1D138E6DC();
  v4 = objc_allocWithZone(sub_1D138E7AC());
  v5 = sub_1D138E79C();
  [v5 setShowsHorizontalScrollIndicator_];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 secondarySystemGroupedBackgroundColor];
  [v7 setBackgroundColor_];

  return v7;
}

void sub_1D10ACD60(uint64_t a1)
{
  sub_1D10ACDD8(a1);
  sub_1D138E39C();
  v1 = sub_1D10AE484();
  [v1 reloadData];
}

void sub_1D10ACDD8(uint64_t a1)
{
  v2 = v1;
  v3 = a1 + *(type metadata accessor for PDFAttachmentItem(0) + 20);
  v4 = (v3 + *(type metadata accessor for AttachmentContext() + 28));
  v5 = *v4;
  v6 = v4[1];

  v7 = sub_1D10AE3A8();
  v8 = sub_1D12D0EC8();

  v9 = sub_1D139012C();
  [v8 setText_];

  v10 = *&v2[qword_1EC60A250];
  v11 = sub_1D12D0FC0();

  v12 = sub_1D139012C();
  [v11 setText_];

  MEMORY[0x1D3885C10](8236, 0xE200000000000000);
  MEMORY[0x1D3885C10](v5, v6);
  v13 = sub_1D139012C();

  [v2 setAccessibilityLabel_];
}

void sub_1D10ACF44(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1 + *a2;
  v5 = (v4 + *(type metadata accessor for AttachmentContext() + 28));
  v6 = *v5;
  v7 = v5[1];

  v8 = sub_1D10AE3A8();
  v9 = sub_1D12D0EC8();

  v10 = sub_1D139012C();
  [v9 setText_];

  v11 = *&v3[qword_1EC60A250];
  v12 = sub_1D12D0FC0();

  v13 = sub_1D139012C();
  [v12 setText_];

  MEMORY[0x1D3885C10](8236, 0xE200000000000000);
  MEMORY[0x1D3885C10](v6, v7);
  v14 = sub_1D139012C();

  [v3 setAccessibilityLabel_];
}

void sub_1D10AD0A4()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = type metadata accessor for AttachmentContext();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *((v2 & v1) + 0x60);
  v8 = *(v7 + 16);
  v9 = *((v2 & v1) + 0x50);
  v8(v9, v7);
  v10 = &v6[*(v4 + 28)];
  v11 = *(v10 + 1);
  v25 = *v10;

  sub_1D10B1494(v6, type metadata accessor for AttachmentContext);
  v8(v9, v7);
  v12 = &v6[*(v4 + 36)];
  v14 = *v12;
  v13 = *(v12 + 1);

  sub_1D10B1494(v6, type metadata accessor for AttachmentContext);
  v15 = v0;
  v16 = sub_1D10AE3A8();
  v17 = sub_1D12D0EC8();

  v18 = v25;
  v19 = sub_1D139012C();
  [v17 setText_];

  v20 = *&v15[qword_1EC60A250];
  v21 = sub_1D12D0FC0();

  v22 = sub_1D139012C();
  [v21 setText_];

  v26 = v18;
  v27 = v11;
  MEMORY[0x1D3885C10](8236, 0xE200000000000000);
  MEMORY[0x1D3885C10](v14, v13);

  v23 = sub_1D139012C();

  [v15 setAccessibilityLabel_];
}

void sub_1D10AD2F4()
{
  sub_1D10AD4B8();
  v1 = objc_opt_self();
  sub_1D106F424();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E6F0;
  v3 = sub_1D10AE484();
  v4 = [v3 leadingAnchor];

  v5 = [v0 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = sub_1D10AE484();
  v9 = [v8 trailingAnchor];

  v10 = [v0 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v12;
  *(v2 + 48) = sub_1D10AC6F8();
  sub_1D1071940();
  v13 = sub_1D139044C();

  [v1 activateConstraints_];
}

void sub_1D10AD4B8()
{
  v1 = [v0 contentView];
  v2 = [v1 layoutMarginsGuide];

  v24 = objc_opt_self();
  sub_1D106F424();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139F5A0;
  v4 = sub_1D10AE3A8();
  v5 = [v4 topAnchor];

  v6 = [v0 &selRef_batches];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = qword_1EC60A250;
  v10 = [*&v0[qword_1EC60A250] leadingAnchor];
  v11 = [v2 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 40) = v12;
  v13 = [*&v0[v9] trailingAnchor];
  v14 = [v2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 48) = v15;
  v16 = sub_1D10AE484();
  v17 = [v16 topAnchor];

  v18 = [*&v0[v9] bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

  *(v3 + 56) = v19;
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [*&v0[qword_1EC60A258] bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:30.0];

  *(v3 + 64) = v23;
  sub_1D1071940();
  v25 = sub_1D139044C();

  [v24 activateConstraints_];
}

void sub_1D10AD7E4()
{
  v1 = [v0 contentView];
  v2 = [v1 layoutMarginsGuide];

  v24 = objc_opt_self();
  sub_1D106F424();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139F5A0;
  v4 = sub_1D10AE3A8();
  v5 = [v4 topAnchor];

  v6 = [v0 &selRef_batches];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = qword_1EC60A250;
  v10 = [*(v0 + qword_1EC60A250) leadingAnchor];
  v11 = [v2 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 40) = v12;
  v13 = [*(v0 + v9) trailingAnchor];
  v14 = [v2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 48) = v15;
  v16 = sub_1D10AE484();
  v17 = [v16 topAnchor];

  v18 = [*(v0 + v9) bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

  *(v3 + 56) = v19;
  v20 = [v0 contentView];
  v21 = [v20 bottomAnchor];

  v22 = [*(v0 + qword_1EC60A258) bottomAnchor];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xC0))();
  v23 = [v21 constraintEqualToAnchor:v22 constant:?];

  *(v3 + 64) = v23;
  sub_1D1071940();
  v25 = sub_1D139044C();

  [v24 activateConstraints_];
}

void sub_1D10ADB40()
{
  v1 = [v0 contentView];
  v2 = [v1 layoutMarginsGuide];

  v25 = objc_opt_self();
  sub_1D106F424();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139F5A0;
  v4 = sub_1D10AE3A8();
  v5 = [v4 topAnchor];

  v6 = [v0 &selRef_batches];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = qword_1EC60A250;
  v10 = [*(v0 + qword_1EC60A250) leadingAnchor];
  v11 = [v2 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 40) = v12;
  v13 = [*(v0 + v9) trailingAnchor];
  v14 = [v2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 48) = v15;
  v16 = sub_1D10AE484();
  v17 = [v16 topAnchor];

  v18 = [*(v0 + v9) bottomAnchor];
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  v20 = [v17 constraintEqualToAnchor:v18 constant:?];

  *(v3 + 56) = v20;
  v21 = [v0 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [*(v0 + qword_1EC60A258) bottomAnchor];
  (*((*v19 & *v0) + 0xC0))();
  v24 = [v22 constraintEqualToAnchor:v23 constant:?];

  *(v3 + 64) = v24;
  sub_1D1071940();
  v26 = sub_1D139044C();

  [v25 activateConstraints_];
}

void sub_1D10ADEC4()
{
  v1 = [v0 contentView];
  v2 = [v1 layoutMarginsGuide];

  v25 = objc_opt_self();
  sub_1D106F424();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139F5A0;
  v4 = sub_1D10AE3A8();
  v5 = [v4 topAnchor];

  v6 = [v0 &selRef_batches];
  v7 = [v6 topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = qword_1EC60A250;
  v10 = [*(v0 + qword_1EC60A250) leadingAnchor];
  v11 = [v2 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 40) = v12;
  v13 = [*(v0 + v9) trailingAnchor];
  v14 = [v2 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 48) = v15;
  v16 = sub_1D10AE480();
  v17 = [v16 topAnchor];

  v18 = [*(v0 + v9) bottomAnchor];
  v19 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  v20 = [v17 constraintEqualToAnchor:v18 constant:?];

  *(v3 + 56) = v20;
  v21 = [v0 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [*(v0 + qword_1EC60A258) bottomAnchor];
  (*((*v19 & *v0) + 0xC0))();
  v24 = [v22 constraintEqualToAnchor:v23 constant:?];

  *(v3 + 64) = v24;
  sub_1D1071940();
  v26 = sub_1D139044C();

  [v25 activateConstraints_];
}

void sub_1D10AE248(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D10B1018();
}

void sub_1D10AE2A8()
{
  v1 = *(v0 + qword_1EC60A198);
}

void sub_1D10AE2EC(uint64_t a1)
{
  v2 = *(a1 + qword_1EC60A198);
}

id sub_1D10AE3A8()
{
  v1 = qword_1EC60A250;
  v2 = *(v0 + qword_1EC60A250);
  if (v2)
  {
    v3 = *(v0 + qword_1EC60A250);
  }

  else
  {
    type metadata accessor for StackedTwoLabelView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1D139044C();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D10AE484()
{
  v1 = qword_1EC60A258;
  v2 = *(v0 + qword_1EC60A258);
  if (v2)
  {
    v3 = *(v0 + qword_1EC60A258);
  }

  else
  {
    v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1D10AE524@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EC60A260;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D10AE57C(uint64_t a1)
{
  v3 = qword_1EC60A260;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D10AFDE4();
  return sub_1D10B13D4(a1, &qword_1EC60B620, sub_1D10A7254);
}

uint64_t (*sub_1D10AE604(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10AE668;
}

uint64_t sub_1D10AE668(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D10AFDE4();
  }

  return result;
}

uint64_t sub_1D10AE760(uint64_t a1)
{
  v2 = sub_1D10B0A84(&qword_1EC60A3A8, type metadata accessor for ImageAttachmentItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1D10AE7DC(void *a1)
{
  v2 = qword_1EC60A1C8;
  v3 = *(v1 + qword_1EC60A1C8);
  *(v1 + qword_1EC60A1C8) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setActive_];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setActive_];
  }

LABEL_4:
}

id sub_1D10AE884()
{
  v1 = qword_1EC60A1D0;
  v2 = *&v0[qword_1EC60A1D0];
  if (v2)
  {
    v3 = *&v0[qword_1EC60A1D0];
  }

  else
  {
    v4 = sub_1D10AE484();
    v5 = [v4 widthAnchor];

    v6 = [v0 contentView];
    [v6 bounds];
    v8 = v7;

    v9 = [v5 constraintEqualToConstant_];
    v10 = *&v0[v1];
    *&v0[v1] = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1D10AE968()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = sub_1D10AE884();
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;

  [v1 setConstant_];
  if ((v0[qword_1EC60A1D8 + 8] & 1) == 0)
  {
    v5 = *&v0[qword_1EC60A1D8];
    v6 = sub_1D10AE484();
    v7 = [v6 heightAnchor];

    v8 = sub_1D10AE484();
    v9 = [v8 widthAnchor];

    v10 = [v7 constraintEqualToAnchor:v9 multiplier:v5];
    sub_1D10AE7DC(v10);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_1D10AEAB4(void *a1)
{
  v1 = a1;
  sub_1D10AE968();
}

id sub_1D10AEAFC()
{
  v0 = [objc_allocWithZone(sub_1D138E26C()) init];
  [v0 setContentMode_];
  return v0;
}

void sub_1D10AEB48(uint64_t a1)
{
  sub_1D10ACF44(a1, &OBJC_IVAR____TtC15HealthRecordsUI19ImageAttachmentItem_context);
  v3 = sub_1D10AE484();
  v4 = *(a1 + 16);
  [v3 setImage_];

  [v4 size];
  if (v5 <= 0.0)
  {
    v14 = sub_1D10AE484();
    v11 = [v14 heightAnchor];

    v13 = [v11 constraintEqualToConstant_];
  }

  else
  {
    v7 = v1 + qword_1EC60A1D8;
    *v7 = v6 / v5;
    *(v7 + 8) = 0;
    v8 = sub_1D10AE484();
    v9 = [v8 heightAnchor];

    v10 = sub_1D10AE484();
    v11 = [v10 widthAnchor];

    v12 = *v7;
    if (*(v7 + 8))
    {
      v12 = 0.0;
    }

    v13 = [v9 constraintEqualToAnchor:v11 multiplier:v12];
  }

  sub_1D10AE7DC(v13);
}

void sub_1D10AECB4()
{
  sub_1D10AD4B8();
  v1 = objc_opt_self();
  sub_1D106F424();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E6E0;
  v3 = sub_1D10AE484();
  v4 = [v3 centerXAnchor];

  v5 = [v0 contentView];
  v6 = [v5 centerXAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  *(v2 + 40) = sub_1D10AE884();
  sub_1D1071940();
  v8 = sub_1D139044C();

  [v1 activateConstraints_];
}

id sub_1D10AEDF4(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_1EC60A1C8] = 0;
  *&a1[qword_1EC60A1D0] = 0;
  v11 = &a1[qword_1EC60A1D8];
  *v11 = 0;
  v11[8] = 1;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1D10AEE94(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1EC60A1C8] = 0;
  *&v1[qword_1EC60A1D0] = 0;
  v4 = &v1[qword_1EC60A1D8];
  *v4 = 0;
  v4[8] = 1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1D10AEF58()
{
  v1 = *(v0 + qword_1EC60A1D0);
}

void sub_1D10AEF98(uint64_t a1)
{
  v2 = *(a1 + qword_1EC60A1D0);
}

uint64_t sub_1D10AF064()
{

  sub_1D10B1494(v0 + OBJC_IVAR____TtC15HealthRecordsUI18TextAttachmentItem_context, type metadata accessor for AttachmentContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D10AF118()
{
  result = type metadata accessor for AttachmentContext();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D10AF224(uint64_t a1)
{
  v2 = sub_1D10B0A84(&qword_1EC60A398, type metadata accessor for TextAttachmentItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1D10AF2A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setAdjustsFontForContentSizeCategory_];
  return v0;
}

void sub_1D10AF348()
{
  sub_1D10AD7E4();
  v0 = objc_opt_self();
  sub_1D106F424();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139E6E0;
  v2 = sub_1D10AE484();
  v3 = [v2 leadingAnchor];

  v4 = sub_1D10AE3A8();
  v5 = [v4 leadingAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = sub_1D10AE484();
  v8 = [v7 trailingAnchor];

  v9 = sub_1D10AE3A8();
  v10 = [v9 trailingAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v1 + 40) = v11;
  sub_1D1071940();
  v12 = sub_1D139044C();

  [v0 activateConstraints_];
}

void sub_1D10AF500(uint64_t *a1)
{
  sub_1D10ACF44(*a1, &OBJC_IVAR____TtC15HealthRecordsUI18TextAttachmentItem_context);
  v1 = sub_1D10AE484();
  v2 = sub_1D139012C();
  [v1 setText_];
}

uint64_t sub_1D10AF580()
{
  v2 = sub_1D139184C();
  MEMORY[0x1D3885C10](95, 0xE100000000000000);
  v0 = sub_1D138D59C();
  MEMORY[0x1D3885C10](v0);

  return v2;
}

uint64_t sub_1D10AF628(void *a1)
{
  sub_1D10B1494(v1 + *a1, type metadata accessor for AttachmentContext);

  return swift_deallocClassInstance();
}

uint64_t sub_1D10AF6D8()
{
  result = type metadata accessor for AttachmentContext();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D10AF7CC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1D10B0A84(a4, a5);
  return sub_1D138DECC();
}

uint64_t sub_1D10AF864(uint64_t a1)
{
  v2 = sub_1D10B0A84(&qword_1EC60A388, type metadata accessor for ThumbnailAttachmentItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

id sub_1D10AF8E8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);

  return [v0 init];
}

void sub_1D10AF920(uint64_t a1)
{
  sub_1D10ACF44(a1, &OBJC_IVAR____TtC15HealthRecordsUI23ThumbnailAttachmentItem_context);
  v2 = sub_1D10AE484();
  [v2 setImage_];

  if (*(a1 + 24) == 1)
  {
    v3 = sub_1D10AE484();
    v4 = 0x4008000000000000;
    v5 = 0;
    UIImageView.applyStyle(_:)(&v4);
  }
}

void sub_1D10AF9A4()
{
  sub_1D10ADB40();
  v1 = objc_opt_self();
  sub_1D106F424();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139F5B0;
  v3 = sub_1D10AE484();
  v4 = [v3 leadingAnchor];

  v5 = sub_1D10AE3A8();
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v0 contentView];
  v9 = [v8 layoutMarginsGuide];

  v10 = [v9 trailingAnchor];
  v11 = sub_1D10AE484();
  v12 = [v11 trailingAnchor];

  v13 = [v10 constraintGreaterThanOrEqualToAnchor_];
  *(v2 + 40) = v13;
  v14 = sub_1D10AE484();
  v15 = [v14 widthAnchor];

  v16 = [v15 constraintEqualToConstant_];
  *(v2 + 48) = v16;
  v17 = sub_1D10AE484();
  v18 = [v17 heightAnchor];

  v19 = [v18 constraintEqualToConstant_];
  *(v2 + 56) = v19;
  sub_1D1071940();
  v20 = sub_1D139044C();

  [v1 activateConstraints_];
}

id sub_1D10AFC0C(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1D10AFC7C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_1D10AFCF4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10AFDE4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = sub_1D1390F3C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  v8 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15[-v9];
  v11 = qword_1EC60A260;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v11, v15);
  sub_1D10B1380(0, &qword_1EC60B620, sub_1D10A7254);
  v12 = swift_dynamicCast();
  v13 = *(v8 + 56);
  if (v12)
  {
    v13(v7, 0, 1, v2);
    (*(v8 + 32))(v10, v7, v2);
    (*((*v1 & *v0) + 0xF0))(v10);
    return (*(v8 + 8))(v10, v2);
  }

  else
  {
    v13(v7, 1, 1, v2);
    return (*(v4 + 8))(v7, v3);
  }
}

void *sub_1D10B0058(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x1E69E7D40];
  *&v4[qword_1EC60A250] = 0;
  *&v4[qword_1EC60A258] = 0;
  v10 = &v4[qword_1EC60A260];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for BaseAttachmentCell();
  v11 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 contentView];
  v13 = sub_1D10AE3A8();
  [v12 addSubview_];

  v14 = [v11 contentView];
  v15 = sub_1D10AE480();
  [v14 addSubview_];

  v16 = qword_1EC60A258;
  [*(v11 + qword_1EC60A258) setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setIsAccessibilityElement_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v17 = sub_1D139012C();

  [v11 setAccessibilityHint_];

  sub_1D1250378();
  v18 = *(v11 + v16);
  sub_1D1250378();

  (*((*v9 & *v11) + 0xE8))();
  return v11;
}

id sub_1D10B03E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseAttachmentCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1D10B04F4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1D10AE604(v2);
  return sub_1D10B0564;
}

void sub_1D10B0564(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_1D10B05AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentContext();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D106F424();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D139E810;
  (*(a2 + 16))(a1, a2);
  v9 = &v7[*(v5 + 32)];
  v10 = *v9;
  v11 = v9[1];
  v12 = type metadata accessor for QLItemSingleDataProvider();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC15HealthRecordsUI24QLItemSingleDataProvider_data];
  *v14 = v10;
  v14[1] = v11;
  sub_1D1083D58(v10, v11);
  v24.receiver = v13;
  v24.super_class = v12;
  v15 = objc_msgSendSuper2(&v24, sel_init);
  sub_1D138EDDC();
  v16 = objc_allocWithZone(MEMORY[0x1E697A0C0]);

  v17 = sub_1D139012C();

  v18 = sub_1D139012C();

  v19 = [v16 initWithDataProvider:v15 contentType:v17 previewTitle:v18];

  sub_1D10B1494(v7, type metadata accessor for AttachmentContext);
  *(v8 + 32) = v19;
  v20 = objc_allocWithZone(MEMORY[0x1E697A0C8]);
  sub_1D10B0FB4();
  v21 = sub_1D139044C();

  v22 = [v20 initWithPreviewItems_];

  return v22;
}

id sub_1D10B08A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QLItemSingleDataProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10B0954()
{
  result = sub_1D138E00C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AttachmentContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D10B0A2C(uint64_t a1)
{
  result = sub_1D10B0A84(&qword_1EC60A378, type metadata accessor for PDFAttachmentItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D10B0A84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D10B0B14(uint64_t a1)
{
  result = sub_1D10B0A84(&qword_1EC60A388, type metadata accessor for ThumbnailAttachmentItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D10B0BB4(uint64_t a1)
{
  result = sub_1D10B0A84(&qword_1EC60A398, type metadata accessor for TextAttachmentItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D10B0C54(uint64_t a1)
{
  result = sub_1D10B0A84(&qword_1EC60A3A8, type metadata accessor for ImageAttachmentItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D10B0CAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttachmentContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10B0D10(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + 0x50);
  v5 = sub_1D1390F3C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v18[-v11];
  v13 = qword_1EC60A260;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v13, v18);
  sub_1D10B1380(0, &qword_1EC60B620, sub_1D10A7254);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, v4);
    (*(v10 + 32))(v12, v9, v4);
    v16 = sub_1D10B05AC(v4, *(v3 + 96));
    [a1 presentViewController:v16 animated:1 completion:0];

    return (*(v10 + 8))(v12, v4);
  }

  else
  {
    v15(v9, 1, 1, v4);
    return (*(v6 + 8))(v9, v5);
  }
}

unint64_t sub_1D10B0FB4()
{
  result = qword_1EC60A3E0;
  if (!qword_1EC60A3E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60A3E0);
  }

  return result;
}

uint64_t sub_1D10B1018()
{
  sub_1D10B1380(0, &qword_1EC60A3F8, type metadata accessor for PDFAttachmentItem);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11[-v2];
  v4 = type metadata accessor for PDFAttachmentItem(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = qword_1EC60A260;
  swift_beginAccess();
  sub_1D10A71C0(v0 + v8, v12);
  if (!v13)
  {
    sub_1D10B13D4(v12, &qword_1EC60B620, sub_1D10A7254);
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_1D10B13D4(v3, &qword_1EC60A3F8, type metadata accessor for PDFAttachmentItem);
  }

  sub_1D10A7254();
  v9 = swift_dynamicCast();
  (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1D10B13D4(v3, &qword_1EC60A3F8, type metadata accessor for PDFAttachmentItem);
  }

  sub_1D10B1430(v3, v7);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D1312020(&v7[*(v4 + 20)]);
    swift_unknownObjectRelease();
  }

  return sub_1D10B1494(v7, type metadata accessor for PDFAttachmentItem);
}

void sub_1D10B1274()
{
  *(v0 + qword_1EC60A250) = 0;
  *(v0 + qword_1EC60A258) = 0;
  v1 = v0 + qword_1EC60A260;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D10B1300(uint64_t a1, uint64_t a2)
{
  sub_1D10B1380(0, &qword_1EC60B620, sub_1D10A7254);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D10B1380(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D10B13D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D10B1380(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D10B1430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PDFAttachmentItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D10B1494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D10B150C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 160);
  *&v76 = *(a1 + 168);
  v72 = *(a1 + 232);
  *&v74 = *(a1 + 200);
  v79 = *(a1 + 264);
  v84 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_44:
    v4 = sub_1D13910DC();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    while (1)
    {
      v8 = v7 >> 62;
      if (v6)
      {
        if (v8)
        {
          v9 = sub_1D13910DC();
        }

        else
        {
          v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = (v74)(v9);
        v11 = v79();
        v13 = v12;

        v14 = v11;
        v15 = v13;
      }

      else
      {
        v10 = 0;
        v14 = 0.0;
        v15 = 0;
      }

      if (v8)
      {
        if (__OFADD__(sub_1D13910DC(), 2))
        {
          goto LABEL_43;
        }
      }

      else if (__OFADD__(*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10), 2))
      {
        goto LABEL_43;
      }

      v16 = (v76)();
      v17 = v79();
      v19 = sub_1D10B1BA0(v2, v10, *&v14, v15, v16, 40, 680.0 - (v3 + 24.0) + -25.0 + -20.0, v17, v18);
      v21 = v20;

      if (!v19)
      {

        sub_1D10B50AC(0, &qword_1EC60A400, &_s13PaginatedDataVN, _s7PDFDataVMa);
        return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
      }

      MEMORY[0x1D3885D90](v22);
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v7 = v84;
      v23 = *(v19 + 48);
      v24 = v23;

      v6 = v23 != 0;
      v25 = v21 >> 62;
      if (!v23)
      {
        break;
      }

      if (v25)
      {
        goto LABEL_20;
      }

LABEL_17:
      v2 = v21;
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    if (!v25)
    {
      goto LABEL_17;
    }

LABEL_20:
    v2 = v21;
  }

  while (sub_1D13910DC());
LABEL_28:

  v5 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (v7 >> 62)
  {
    v71 = sub_1D13910DC();
    v28 = sub_1D13910DC();
    if (!v28)
    {
      goto LABEL_46;
    }

LABEL_31:
    v82 = v5;
    result = sub_1D13912DC();
    if ((v28 & 0x8000000000000000) == 0)
    {
      if (v7 >> 62)
      {
        v29 = sub_1D13910DC();
      }

      else
      {
        v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = 0;
      v69 = v28;
      v70 = v29 & ~(v29 >> 63);
      while (v70 != v30)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1D3886B70](v30, v7);
        }

        else
        {
          v31 = *(v7 + 8 * v30 + 32);
        }

        v32 = v72(++v30, v71);
        v33 = v79();
        v35 = v34;

        v36 = *(v31 + 16);
        v38 = *(v31 + 56);
        v37 = *(v31 + 64);
        v39 = *(v31 + 96);
        v40 = *(v31 + 104);
        v74 = *(v31 + 40);
        v76 = *(v31 + 24);
        v2 = *(v31 + 24);
        v41 = *(&v74 + 1);

        v42 = v2;

        _s4PageCMa();
        v43 = swift_allocObject();
        *(v43 + 120) = 1;
        *(v43 + 16) = v36;
        *(v43 + 40) = v74;
        *(v43 + 24) = v76;
        *(v43 + 56) = v38;
        *(v43 + 64) = v37;
        *(v43 + 72) = v32;
        *(v43 + 80) = v33;
        *(v43 + 88) = v35;
        *(v43 + 96) = v39;
        *(v43 + 104) = v40;
        *(v43 + 112) = 0;
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        if (v69 == v30)
        {

          v44 = v82;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
  }

  else
  {
    v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v71 = v28;
    if (v28)
    {
      goto LABEL_31;
    }

LABEL_46:

    v44 = MEMORY[0x1E69E7CC0];
LABEL_47:
    v80 = v44;
    v45 = *a1;
    v46 = *(a1 + 8);
    v47 = *(a1 + 16);
    v48 = *(a1 + 24);
    v49 = *(a1 + 32);
    v50 = *(a1 + 40);
    v51 = *(a1 + 48);
    v73 = *(a1 + 64);
    v75 = *(a1 + 56);
    v52 = *(a1 + 80);
    v78 = *(a1 + 88);
    v77 = *(a1 + 96);
    v53 = *(a1 + 120);
    v54 = *(a1 + 128);
    v55 = *(a1 + 136);
    v56 = *(a1 + 144);
    v57 = *(a1 + 152);
    v83 = *(a1 + 72);
    v81 = *(a1 + 104);
    sub_1D10B50AC(0, &qword_1EC60A408, &_s9SizedDataVN, _s7PDFDataVMa);
    v59 = *(v58 + 28);
    sub_1D10B50AC(0, &qword_1EC60A400, &_s13PaginatedDataVN, _s7PDFDataVMa);
    v61 = v60;
    sub_1D10921C4(a1 + v59, a2 + *(v60 + 28));
    *a2 = v45;
    *(a2 + 8) = v46;
    *(a2 + 16) = v47;
    *(a2 + 24) = v48;
    *(a2 + 32) = v49;
    *(a2 + 40) = v50;
    *(a2 + 48) = v51;
    *(a2 + 56) = v75;
    *(a2 + 64) = v73;
    *(a2 + 72) = v83;
    *(a2 + 80) = v52;
    *(a2 + 88) = v78;
    *(a2 + 96) = v77;
    *(a2 + 104) = v81;
    *(a2 + 112) = v80;
    *(a2 + 120) = v53;
    *(a2 + 128) = v54;
    *(a2 + 136) = v55;
    *(a2 + 144) = v56;
    *(a2 + 152) = v57;
    *(a2 + 160) = v3;
    (*(*(v61 - 8) + 56))(a2, 0, 1, v61);
    v62 = v52;
    v63 = v53;
    v64 = v56;
    v65 = v45;
    v66 = v48;
    return v51;
  }

  return result;
}

uint64_t sub_1D10B1BA0(unint64_t a1, char *a2, _OWORD *a3, uint64_t a4, void *a5, uint64_t a6, double a7, double a8, double a9)
{
  v14 = objc_autoreleasePoolPush();
  v174 = a1 >> 62;
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v16 = sub_1D13910DC();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = 0;
  while (v16 != v17)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1D3886B70](v17, a1);
      if (__OFADD__(v17, 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v19 = *(a1 + 8 * v17 + 32);

      if (__OFADD__(v17, 1))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v20 = *(v19 + 64);
    if (v20 >> 62)
    {
      v21 = sub_1D13910DC();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v17;
    v22 = __OFADD__(v18, v21);
    v18 += v21;
    if (v22)
    {
      goto LABEL_70;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
    goto LABEL_240;
  }

  v175 = a1 & 0xFFFFFFFFFFFFFF8;
  v176 = a1 & 0xC000000000000001;
  v177 = v16;
  v178 = v14;
  v15 = 0;
  v23 = 0;
  v179 = *&a9;
  v180 = *&a8;
  v24 = 1;
  v184 = a1;
  while (1)
  {
    *&v190 = v15;
    v25 = sub_1D10B2E14(v24, a1);
    v15 = v25;
    v182 = v23;
    LODWORD(v189) = v26;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      v28 = sub_1D13910DC();
    }

    else
    {
      v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = 0;
    v30 = 0;
    a1 = v15 & 0xC000000000000001;
    while (v28 != v29)
    {
      if (a1)
      {
        MEMORY[0x1D3886B70](v29, v15);
        if (__OFADD__(v29, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_63;
        }

        if (__OFADD__(v29, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:

LABEL_66:
          sub_1D10B32E4(v24, a1);
          goto LABEL_67;
        }
      }

      v9 = sub_1D121C9C4();

      ++v29;
      v22 = __OFADD__(v30, v9);
      v30 += v9;
      if (v22)
      {
        goto LABEL_64;
      }
    }

    if (v30 >= a6)
    {

      a1 = v184;
      v14 = v176;
      v39 = v177;
      goto LABEL_45;
    }

    v31 = objc_autoreleasePoolPush();
    a1 = v184;
    if (v189)
    {
      v32 = a5;
      v33 = a5;
      v35 = *&a9;
      v34 = *&a8;
    }

    else
    {
      v32 = 0;
      v34 = 0;
      v35 = 0;
    }

    v14 = a2;
    v36 = a2;
    v15 = sub_1D12B2610(v15, a2, a3, a4, v32, v34, v35);
    objc_autoreleasePoolPop(v31);
    v37 = v15;
    if (sub_1D12B0704() >= a7)
    {
      break;
    }

    if (v24 == v18)
    {
      v24 = v18;
      goto LABEL_66;
    }

    v23 = v24;
    v22 = __OFADD__(v24++, 1);
    if (v22)
    {
      __break(1u);
      goto LABEL_146;
    }
  }

  v14 = v176;
  v39 = v177;
  if (*(v15 + 112) <= a7)
  {
    goto LABEL_65;
  }

LABEL_45:
  v15 = v190;
  if (v190)
  {
    v24 = v182;
    goto LABEL_66;
  }

  if (!v39)
  {
    goto LABEL_286;
  }

  if (v14)
  {
    goto LABEL_243;
  }

  if (!*(v175 + 16))
  {
    __break(1u);
    goto LABEL_247;
  }

  v39 = *(*(a1 + 32) + 64);

  if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
  {
    goto LABEL_284;
  }

LABEL_53:
  if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_285;
  }

LABEL_54:
  if ((v39 & 0xC000000000000001) == 0)
  {
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v39 + 32);

      v41 = *(v40 + 80);

      if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
      {
        goto LABEL_289;
      }

      goto LABEL_58;
    }

    __break(1u);
LABEL_253:
    if (sub_1D13910DC())
    {
      goto LABEL_74;
    }

LABEL_254:

LABEL_255:
    objc_autoreleasePoolPop(v160);
    goto LABEL_286;
  }

  while (1)
  {
    v157 = MEMORY[0x1D3886B70](0, v39);

    v41 = *(v157 + 80);

    swift_unknownObjectRelease();
    if ((v41 & 0x8000000000000000) == 0)
    {
      a1 = v184;
      v14 = v176;
      if ((v41 & 0x4000000000000000) != 0)
      {
        goto LABEL_289;
      }

LABEL_58:
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_59;
    }

LABEL_288:
    a1 = v184;
    v14 = v176;
LABEL_289:
    v42 = sub_1D13910DC();
LABEL_59:

    if (v42 < 2)
    {
      goto LABEL_286;
    }

    v160 = objc_autoreleasePoolPush();
    if (v14)
    {
      v9 = MEMORY[0x1D3886B70](0, a1);
    }

    else
    {
LABEL_71:
      v9 = *(a1 + 32);
    }

    v39 = *(v9 + 64);
    if (v39 >> 62)
    {
      goto LABEL_253;
    }

    if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_254;
    }

LABEL_74:
    if ((v39 & 0xC000000000000001) != 0)
    {

      v39 = MEMORY[0x1D3886B70](0, v39);
    }

    else
    {
      v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_260;
      }

      v39 = *(v39 + 32);
    }

    v18 = *(v39 + 80);
    v44 = v18 & 0xFFFFFFFFFFFFFF8;
    v45 = v18 >> 62;
    if (v18 >> 62)
    {
      v158 = sub_1D13910DC();
      v47 = v158 - 1;
      if (__OFSUB__(v158, 1))
      {
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        if ((a1 & 0x8000000000000000) != 0)
        {
          v159 = a1;
        }

        else
        {
          v159 = v44;
        }

        v180 = v159;
        result = sub_1D13910DC();
        if ((result & 0x8000000000000000) == 0)
        {
          v37 = result;
          v48 = result != 0;
          if (sub_1D13910DC() >= v48)
          {
            if (sub_1D13910DC() >= v37)
            {
              goto LABEL_193;
            }

            __break(1u);
          }

LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
          goto LABEL_275;
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      v46 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v46 - 1;
      if (__OFSUB__(v46, 1))
      {
        goto LABEL_259;
      }
    }

    if (v47 < 1)
    {
      goto LABEL_261;
    }

    v170 = v39;
    v48 = v18 & 0xFFFFFFFFFFFFFF8;
    if (v45)
    {
      v49 = sub_1D13910DC();
    }

    else
    {
      v49 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v169 = v18 & 0xC000000000000001;
    if (v18 < 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = v18 & 0xFFFFFFFFFFFFFF8;
    }

    v161 = v48 + 32;

    v50 = 0;
    v51 = 0;
    a1 = 1;
    v190 = xmmword_1D139E810;
    v52 = 1;
    v171 = v9;
    v167 = v49;
    v168 = v18 >> 62;
    v165 = v18 & 0xFFFFFFFFFFFFFF8;
    v166 = v15;
    v163 = v47;
    v164 = v18;
LABEL_87:
    if (v49 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v49;
    }

    if (v49 >= 0)
    {
      v39 = v53;
    }

    else
    {
      v39 = v52;
    }

    if (v39 < 0)
    {
LABEL_240:
      __break(1u);
LABEL_241:
      __break(1u);
LABEL_242:
      __break(1u);
LABEL_243:
      v39 = *(MEMORY[0x1D3886B70](0, a1) + 64);

      swift_unknownObjectRelease();
      if (v39 < 0)
      {
        a1 = v184;
        v14 = v176;
      }

      else
      {
        a1 = v184;
        v14 = v176;
        if ((v39 & 0x4000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_284:
      if (!sub_1D13910DC())
      {
LABEL_285:

        goto LABEL_286;
      }

      goto LABEL_54;
    }

    v183 = v52;
    if (!v45)
    {
      v54 = *(v48 + 16);
      goto LABEL_98;
    }

    if ((sub_1D13910DC() & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
  }

  v54 = sub_1D13910DC();
LABEL_98:
  if (v54 < v39)
  {
    goto LABEL_241;
  }

  v189 = v50;
  if (!v169 || !v39)
  {

    if (!v45)
    {
      goto LABEL_104;
    }

LABEL_107:

    v58 = sub_1D13913FC();
    v57 = v60;
    v39 = v61;
    if (v61)
    {
      goto LABEL_109;
    }

LABEL_108:
    sub_1D12E17CC(v58, v59, v57, v39);
    v37 = v62;
    goto LABEL_115;
  }

  _s15SizedValueGroupCMa();

  v55 = 0;
  do
  {
    v56 = v55 + 1;
    sub_1D13911FC();
    v55 = v56;
  }

  while (v39 != v56);
  if (v45)
  {
    goto LABEL_107;
  }

LABEL_104:
  v57 = 0;
  v58 = v48;
  v59 = v161;
  v39 = (2 * v39) | 1;
  if ((v39 & 1) == 0)
  {
    goto LABEL_108;
  }

LABEL_109:
  v63 = v51;
  v64 = v59;
  v15 = sub_1D139166C();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v65 + 16);

  if (__OFSUB__(v39 >> 1, v57))
  {
    goto LABEL_248;
  }

  if (v66 != (v39 >> 1) - v57)
  {
    swift_unknownObjectRelease();
    v59 = v64;
    v51 = v63;
    goto LABEL_108;
  }

  v37 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v51 = v63;
  if (v37)
  {
    goto LABEL_116;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_115:
  swift_unknownObjectRelease();
LABEL_116:
  v162 = v51;
  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v67 = sub_1D13910DC();
  }

  else
  {
    v67 = *(v37 + 16);
  }

  v68 = 0;
  v14 = 0;
  while (1)
  {
    if (v67 == v68)
    {
      if (v14 >= a6)
      {

        a1 = v184;
        v37 = v189;
LABEL_144:
        if (!v37)
        {

          goto LABEL_255;
        }

        v15 = v37;
        v93 = v162;
LABEL_147:
        v95 = v167;
        v94 = v168;
        a1 = v166;
        goto LABEL_153;
      }

      v173 = objc_autoreleasePoolPush();
      sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D139E810;
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_1D139E810;
      v72 = *(v170 + 16);
      v73 = *(v170 + 24);
      v74 = *(v170 + 32);
      v76 = *(v170 + 40);
      v75 = *(v170 + 48);
      v77 = *(v170 + 56);
      v78 = *(v170 + 64);
      v79 = *(v170 + 72);
      sub_1D1072E70(v170 + 88, v191);
      _s11SizedRecordCMa();
      v80 = swift_allocObject();
      *(v80 + 128) = 0;
      *(v80 + 136) = 1;
      *(v80 + 16) = v72;
      *(v80 + 24) = v73;
      *(v80 + 32) = v74;
      *(v80 + 40) = v76;
      *(v80 + 48) = v75;
      v9 = v171;
      *(v80 + 56) = v77;
      *(v80 + 64) = v78;
      *(v80 + 72) = v79;
      *(v80 + 80) = v37;
      sub_1D102CC18(v191, v80 + 88);
      *(v71 + 32) = v80;
      v14 = v171[2];
      v81 = v171[3];
      v82 = v171[4];
      v83 = v171[5];
      v84 = v171[6];
      v85 = v171[7];
      sub_1D1072E70((v171 + 9), v191);
      _s12SizedSectionCMa();
      v86 = swift_allocObject();
      *(v86 + 112) = 0;
      *(v86 + 120) = 1;
      *(v86 + 128) = 0;
      *(v86 + 136) = 1;
      *(v86 + 144) = 0;
      a1 = 1;
      *(v86 + 152) = 1;
      *(v86 + 16) = v14;
      *(v86 + 24) = v81;
      *(v86 + 32) = v82;
      *(v86 + 40) = v83;
      *(v86 + 48) = v84;
      *(v86 + 56) = v85;
      *(v86 + 64) = v71;
      sub_1D102CC18(v191, v86 + 72);
      *(inited + 32) = v86;

      v87 = v14;
      v88 = v83;
      v89 = a5;
      v90 = a2;
      v91 = v72;
      v92 = v76;
      v15 = sub_1D12B2610(inited, a2, a3, a4, a5, v180, v179);
      objc_autoreleasePoolPop(v173);
      v37 = v15;
      if (sub_1D12B0704() >= a7)
      {
        a1 = v184;
        v18 = v164;
        v37 = v189;
        if (*(v15 + 112) <= a7)
        {
          goto LABEL_152;
        }

        v48 = v165;
        goto LABEL_144;
      }

      v38 = v163;
      v18 = v164;
      if (v183 == v163)
      {
LABEL_146:
        v93 = v38;
        v48 = v165;
        goto LABEL_147;
      }

      v50 = v15;
      v51 = v183;
      v52 = v183 + 1;
      v48 = v165;
      v15 = v166;
      v49 = v167;
      v45 = v168;
      if (__OFADD__(v183, 1))
      {
        goto LABEL_242;
      }

      goto LABEL_87;
    }

    if ((v37 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1D3886B70](v68, v37);
      if (__OFADD__(v68, 1))
      {
        break;
      }

      goto LABEL_124;
    }

    if (v68 >= *(v37 + 16))
    {
      goto LABEL_150;
    }

    v15 = *(v37 + 8 * v68 + 32);

    if (__OFADD__(v68, 1))
    {
      break;
    }

LABEL_124:
    v69 = *(v15 + 48);
    if (v69 >> 62)
    {
      v70 = sub_1D13910DC();
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    ++v68;
    v22 = __OFADD__(v14, v70);
    v14 += v70;
    if (v22)
    {
      goto LABEL_151;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:

  v48 = v165;
  a1 = v166;
  v95 = v167;
  v94 = v168;
  v93 = v183;
LABEL_153:
  if (v95 <= 0)
  {
    v44 = v93;
  }

  else
  {
    v44 = 0;
  }

  if (v95 >= v93)
  {
    v96 = v93;
  }

  else
  {
    v96 = v95;
  }

  if (v95 < 0)
  {
    v96 = v93;
  }

  if (v93 >= 1)
  {
    v39 = v96;
  }

  else
  {
    v39 = v44;
  }

  if (v95 < v39)
  {
    goto LABEL_262;
  }

  if (v94)
  {
    if (sub_1D13910DC() < v39)
    {
      goto LABEL_263;
    }

    v97 = sub_1D13910DC();
  }

  else
  {
    v97 = *(v48 + 16);
    if (v97 < v39)
    {
      goto LABEL_263;
    }
  }

  if (v97 < v95)
  {
    goto LABEL_264;
  }

  if (v95 < 0)
  {
    goto LABEL_265;
  }

  if (v169 && v39 != v95)
  {
    if (v39 < v95)
    {
      _s15SizedValueGroupCMa();

      v98 = v39;
      do
      {
        v99 = v98 + 1;
        sub_1D13911FC();
        v98 = v99;
      }

      while (v95 != v99);
      goto LABEL_179;
    }

    goto LABEL_276;
  }

LABEL_179:

  if (v94)
  {
    v48 = sub_1D13913FC();
    v161 = v100;
    v39 = v101;
    v37 = v102;
  }

  else
  {
    v37 = (2 * v95) | 1;
  }

  if ((v37 & 1) == 0)
  {
LABEL_183:
    sub_1D12E17CC(v48, v161, v39, v37);
    v104 = v103;
    v105 = v170;
    goto LABEL_190;
  }

  sub_1D139166C();
  swift_unknownObjectRetain_n();
  v106 = swift_dynamicCastClass();
  if (!v106)
  {
    swift_unknownObjectRelease();
    v106 = MEMORY[0x1E69E7CC0];
  }

  v107 = *(v106 + 16);

  if (__OFSUB__(v37 >> 1, v39))
  {
    goto LABEL_277;
  }

  if (v107 != (v37 >> 1) - v39)
  {
    goto LABEL_278;
  }

  v104 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v105 = v170;
  if (!v104)
  {
    v104 = MEMORY[0x1E69E7CC0];
LABEL_190:
    swift_unknownObjectRelease();
  }

  v9 = *(v105 + 16);
  v108 = *(v105 + 24);
  v109 = *(v105 + 32);
  v14 = *(v105 + 40);
  v110 = *(v105 + 48);
  v111 = *(v105 + 56);
  v112 = *(v105 + 64);
  v113 = *(v105 + 72);
  sub_1D1072E70(v105 + 88, v191);
  _s11SizedRecordCMa();
  v39 = swift_allocObject();
  *(v39 + 128) = 0;
  *(v39 + 136) = 1;
  *(v39 + 16) = v9;
  *(v39 + 24) = v108;
  *(v39 + 32) = v109;
  *(v39 + 40) = v14;
  *(v39 + 48) = v110;
  *(v39 + 56) = v111;
  *(v39 + 64) = v112;
  *(v39 + 72) = v113;
  *(v39 + 80) = v104;
  sub_1D102CC18(v191, v39 + 88);
  sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v114 = swift_allocObject();
  *(v114 + 16) = v190;
  *(v114 + 32) = v39;
  a1 = v171[8];
  v18 = a1 >> 62;
  v189 = v114;
  v44 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_266;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v48 = v37 != 0;
  if (v37 < v48)
  {
    goto LABEL_273;
  }

LABEL_193:
  if ((a1 & 0xC000000000000001) != 0)
  {

    swift_bridgeObjectRetain_n();
    v115 = v9;
    v116 = v14;
    if (v37 >= 2)
    {
      v117 = v48;
      do
      {
        v118 = v117 + 1;
        sub_1D13911FC();
        v117 = v118;
      }

      while (v37 != v118);
    }
  }

  else
  {

    swift_bridgeObjectRetain_n();
    v119 = v9;
    v120 = v14;
  }

  if (v18)
  {
    v121 = sub_1D13913FC();
    v122 = v124;
    v48 = v125;
    v123 = v126;
  }

  else
  {
    v121 = a1 & 0xFFFFFFFFFFFFFF8;
    v122 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v123 = (2 * v37) | 1;
  }

  if ((v123 & 1) == 0)
  {
LABEL_203:
    sub_1D12E16C0(v121, v122, v48, v123);
    v128 = v127;
    goto LABEL_210;
  }

  sub_1D139166C();
  swift_unknownObjectRetain_n();
  v129 = swift_dynamicCastClass();
  if (!v129)
  {
    swift_unknownObjectRelease();
    v129 = MEMORY[0x1E69E7CC0];
  }

  v130 = *(v129 + 16);

  if (__OFSUB__(v123 >> 1, v48))
  {
    __break(1u);
LABEL_280:
    swift_unknownObjectRelease_n();
    goto LABEL_203;
  }

  if (v130 != (v123 >> 1) - v48)
  {
    goto LABEL_280;
  }

  v128 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v128)
  {
    v128 = MEMORY[0x1E69E7CC0];
LABEL_210:
    swift_unknownObjectRelease();
  }

  *&v191[0] = v189;
  sub_1D1122340(v128);
  v131 = *&v191[0];
  v48 = v171[2];
  v132 = v171[3];
  v133 = v171[4];
  v134 = v171[5];
  v135 = v171[6];
  v136 = v171[7];
  sub_1D1072E70((v171 + 9), v191);
  _s12SizedSectionCMa();
  v137 = swift_allocObject();
  *(v137 + 112) = 0;
  *(v137 + 120) = 1;
  *(v137 + 128) = 0;
  *(v137 + 136) = 1;
  *(v137 + 144) = 0;
  *(v137 + 152) = 1;
  *(v137 + 16) = v48;
  *(v137 + 24) = v132;
  *(v137 + 32) = v133;
  *(v137 + 40) = v134;
  *(v137 + 48) = v135;
  *(v137 + 56) = v136;
  *(v137 + 64) = v131;
  sub_1D102CC18(v191, v137 + 72);
  v138 = swift_allocObject();
  *(v138 + 16) = v190;
  *(v138 + 32) = v137;
  if (v177 < 0)
  {
    __break(1u);
    goto LABEL_288;
  }

  v37 = v138;
  if (v174)
  {
    if (sub_1D13910DC() < 1)
    {
      goto LABEL_274;
    }

    v139 = sub_1D13910DC();
  }

  else
  {
    v139 = *(v175 + 16);
    if (!v139)
    {
      goto LABEL_274;
    }
  }

  if (v139 < v177)
  {
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    swift_unknownObjectRelease_n();
    goto LABEL_183;
  }

  if (v176)
  {
    v140 = v48;
    v141 = v134;

    v142 = v177;
    if (v177 != 1)
    {
      v143 = 1;
      do
      {
        v144 = v143 + 1;
        sub_1D13911FC();
        v143 = v144;
      }

      while (v177 != v144);
    }
  }

  else
  {
    v145 = v48;
    v146 = v134;

    v142 = v177;
  }

  if (v174)
  {

    v175 = sub_1D13913FC();
    v148 = v150;
    v149 = v151;
  }

  else
  {
    v147 = v175 + 32;
    v148 = 1;
    v149 = (2 * v142) | 1;
  }

  if ((v149 & 1) == 0)
  {
LABEL_228:
    sub_1D12E16A8(v175, v147, v148, v149);
    v153 = v152;
    a1 = v184;
    goto LABEL_235;
  }

  v154 = v147;
  sub_1D139166C();
  swift_unknownObjectRetain_n();
  v155 = swift_dynamicCastClass();
  if (!v155)
  {
    swift_unknownObjectRelease();
    v155 = MEMORY[0x1E69E7CC0];
  }

  v156 = *(v155 + 16);

  if (__OFSUB__(v149 >> 1, v148))
  {
    __break(1u);
    goto LABEL_282;
  }

  if (v156 != (v149 >> 1) - v148)
  {
LABEL_282:
    swift_unknownObjectRelease();
    v147 = v154;
    goto LABEL_228;
  }

  v153 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  a1 = v184;
  if (!v153)
  {
    v153 = MEMORY[0x1E69E7CC0];
LABEL_235:
    swift_unknownObjectRelease();
  }

  *&v191[0] = v37;
  sub_1D1122328(v153);

  objc_autoreleasePoolPop(v160);
  if (!v15)
  {
LABEL_286:
    v15 = sub_1D10B3D1C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

LABEL_67:
  objc_autoreleasePoolPop(v178);
  return v15;
}

uint64_t sub_1D10B2E14(uint64_t a1, unint64_t a2)
{
  v36 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
LABEL_30:
    v6 = sub_1D13910DC();
    if (v6)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1D3886B70](i, a2);
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v8 = *(a2 + 8 * i + 32);

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    v10 = *(v8 + 64);
    if (v10 >> 62)
    {
      break;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
    {
      goto LABEL_22;
    }

LABEL_9:

    MEMORY[0x1D3885D90](v11);
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v2 = v36;
    v12 = *(v8 + 64);
    if (v12 >> 62)
    {
      v3 = sub_1D13910DC();
    }

    else
    {
      v3 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = __OFSUB__(a1, v3);
    a1 -= v3;
    if (v13)
    {
      goto LABEL_29;
    }

    if (v9 == v6)
    {
      return v2;
    }
  }

  if (sub_1D13910DC() < a1)
  {
    goto LABEL_9;
  }

LABEL_22:
  v14 = *(v8 + 64);
  if (v14 >> 62)
  {
    if (sub_1D13910DC() == a1)
    {
      goto LABEL_24;
    }

LABEL_33:
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(v8 + 64);
      v3 = v2 >> 62;
      if (!(v2 >> 62))
      {
        v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 >= a1)
        {
          v17 = a1;
        }

        else
        {
          v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a1)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v16 >= v18)
        {
          goto LABEL_42;
        }

        goto LABEL_74;
      }
    }

    v34 = sub_1D13910DC();
    result = sub_1D13910DC();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    if (v34 >= a1)
    {
      v35 = a1;
    }

    else
    {
      v35 = v34;
    }

    if (v34 < 0)
    {
      v35 = a1;
    }

    if (a1)
    {
      v18 = v35;
    }

    else
    {
      v18 = 0;
    }

    if (sub_1D13910DC() >= v18)
    {
LABEL_42:
      if ((v2 & 0xC000000000000001) != 0 && v18)
      {
        _s11SizedRecordCMa();
        swift_bridgeObjectRetain_n();
        v19 = 0;
        do
        {
          v20 = v19 + 1;
          sub_1D13911FC();
          v19 = v20;
        }

        while (v18 != v20);
      }

      else
      {
        swift_bridgeObjectRetain_n();
      }

      if (v3)
      {
        v22 = sub_1D13913FC();
        v23 = v25;
        v21 = v26;
        v24 = v27;

        if ((v24 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v21 = 0;
        v22 = v2 & 0xFFFFFFFFFFFFFF8;
        v23 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
        v24 = (2 * v18) | 1;
        if ((v24 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      sub_1D139166C();
      swift_unknownObjectRetain_n();
      v30 = swift_dynamicCastClass();
      if (!v30)
      {
        swift_unknownObjectRelease();
        v30 = MEMORY[0x1E69E7CC0];
      }

      v31 = *(v30 + 16);

      if (__OFSUB__(v24 >> 1, v21))
      {
        __break(1u);
      }

      else if (v31 == (v24 >> 1) - v21)
      {
        v29 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v29)
        {
          goto LABEL_60;
        }

        v29 = MEMORY[0x1E69E7CC0];
LABEL_59:
        swift_unknownObjectRelease();
LABEL_60:
        sub_1D121C5B4(v29);

        MEMORY[0x1D3885D90](v32);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_61;
        }

        goto LABEL_75;
      }

      swift_unknownObjectRelease_n();
LABEL_52:
      sub_1D12E16C0(v22, v23, v21, v24);
      v29 = v28;
      goto LABEL_59;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    sub_1D13904BC();
    goto LABEL_61;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) != a1)
  {
    goto LABEL_33;
  }

LABEL_24:

  MEMORY[0x1D3885D90](v15);
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D13904BC();
  }

LABEL_61:
  sub_1D13904FC();

  return v36;
}

uint64_t sub_1D10B32E4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v76 = MEMORY[0x1E69E7CC0];
  if (a2 >> 62)
  {
    goto LABEL_157;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v74 = v4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D3886B70](0, v2);
      v6 = MEMORY[0x1E69E7CC0];
      v7 = 1;
      while (1)
      {
        if (a1)
        {
          v10 = v5[8];
          if (v10 >> 62)
          {
            v11 = sub_1D13910DC();
          }

          else
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v12 = v5[8];
          if (a1 < v11)
          {
            if (a1 < 0)
            {
              goto LABEL_145;
            }

            if (v12 >> 62)
            {
              v28 = sub_1D13910DC();
              if (v28 >= a1)
              {
                v29 = a1;
              }

              else
              {
                v29 = v28;
              }

              if (v28 >= 0)
              {
                a1 = v29;
              }

              if (v28 < a1)
              {
                goto LABEL_161;
              }

              v13 = v28;
              if (sub_1D13910DC() < a1)
              {
                goto LABEL_162;
              }

              result = sub_1D13910DC();
              if (result < v13)
              {
                goto LABEL_147;
              }

              if (v13 < 0)
              {
                goto LABEL_166;
              }
            }

            else
            {
              v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v13 < a1)
              {
                a1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }
            }

            if ((v12 & 0xC000000000000001) == 0 || a1 == v13)
            {
              swift_bridgeObjectRetain_n();
            }

            else
            {
              if (a1 >= v13)
              {
                goto LABEL_152;
              }

              _s11SizedRecordCMa();
              swift_bridgeObjectRetain_n();
              v14 = a1;
              do
              {
                v15 = v14 + 1;
                sub_1D13911FC();
                v14 = v15;
              }

              while (v13 != v15);
            }

            if (v12 >> 62)
            {
              sub_1D13913FC();
              a1 = v23;
              v17 = v24;

              if ((v17 & 1) == 0)
              {
                goto LABEL_39;
              }

LABEL_32:
              sub_1D139166C();
              swift_unknownObjectRetain_n();
              v18 = swift_dynamicCastClass();
              if (!v18)
              {
                swift_unknownObjectRelease();
                v18 = MEMORY[0x1E69E7CC0];
              }

              v19 = *(v18 + 16);

              v20 = v17 >> 1;
              v9 = __OFSUB__(v17 >> 1, a1);
              v21 = (v17 >> 1) - a1;
              if (v9)
              {
                goto LABEL_153;
              }

              if (v19 != v21)
              {
                swift_unknownObjectRelease();
                if (v21)
                {
                  goto LABEL_44;
                }

                goto LABEL_64;
              }

              v22 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v22)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v17 = (2 * v13) | 1;
              if (v17)
              {
                goto LABEL_32;
              }

LABEL_39:
              v20 = v17 >> 1;
              v9 = __OFSUB__(v17 >> 1, a1);
              v21 = (v17 >> 1) - a1;
              v25 = v9;
              swift_unknownObjectRetain();
              if (v25)
              {
                goto LABEL_151;
              }

              if (v21)
              {
LABEL_44:
                if (v21 < 1)
                {
                  v22 = MEMORY[0x1E69E7CC0];
                }

                else
                {
                  sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
                  v22 = swift_allocObject();
                  v26 = _swift_stdlib_malloc_size(v22);
                  v27 = v26 - 32;
                  if (v26 < 32)
                  {
                    v27 = v26 - 25;
                  }

                  v22[2] = v21;
                  v22[3] = (2 * (v27 >> 3)) | 1;
                }

                swift_unknownObjectRelease();
                if (a1 == v20)
                {
                  swift_unknownObjectRelease();
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  result = swift_unknownObjectRelease();
                  __break(1u);
LABEL_164:
                  __break(1u);
                  goto LABEL_165;
                }

                _s11SizedRecordCMa();
                swift_arrayInitWithCopy();
LABEL_66:
                swift_unknownObjectRelease();
LABEL_67:
                v31 = v5[2];
                v32 = v5[3];
                v33 = v5[4];
                v34 = v5[5];
                v35 = v5[6];
                v36 = v5[7];
                sub_1D1072E70((v5 + 9), v75);
                _s12SizedSectionCMa();
                v37 = swift_allocObject();
                *(v37 + 112) = 0;
                *(v37 + 120) = 1;
                *(v37 + 128) = 0;
                *(v37 + 136) = 1;
                *(v37 + 144) = 0;
                *(v37 + 152) = 1;
                *(v37 + 16) = v31;
                *(v37 + 24) = v32;
                *(v37 + 32) = v33;
                *(v37 + 40) = v34;
                *(v37 + 48) = v35;
                *(v37 + 56) = v36;
                *(v37 + 64) = v22;
                sub_1D102CC18(v75, v37 + 72);
                v38 = v31;
                MEMORY[0x1D3885D90](v34);
                if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D13904BC();
                }

                sub_1D13904FC();
                swift_unknownObjectRelease();
                v6 = v76;
                v4 = v74;
                if (v7 == v74)
                {
                  return v6;
                }

                a1 = 0;
                goto LABEL_9;
              }

LABEL_64:
              swift_unknownObjectRelease();
            }

            v22 = MEMORY[0x1E69E7CC0];
            goto LABEL_66;
          }

          if (v12 >> 62)
          {
            v16 = sub_1D13910DC();
          }

          else
          {
            v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          swift_unknownObjectRelease();
          v9 = __OFSUB__(a1, v16);
          a1 -= v16;
          if (v9)
          {
            goto LABEL_146;
          }
        }

        else
        {
          v8 = swift_unknownObjectRetain();
          MEMORY[0x1D3885D90](v8);
          if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D13904BC();
            v4 = v74;
          }

          sub_1D13904FC();
          swift_unknownObjectRelease();
          a1 = 0;
          v6 = v76;
        }

        if (v7 == v4)
        {
          return v6;
        }

LABEL_9:
        v5 = MEMORY[0x1D3886B70](v7, v2);
        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          __break(1u);
          goto LABEL_144;
        }
      }
    }

    v39 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      break;
    }

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
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
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
    v4 = sub_1D13910DC();
    if (!v4)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v40 = 0;
  v2 += 32;
  v6 = MEMORY[0x1E69E7CC0];
  v73 = v39;
  while (1)
  {
    while (1)
    {
      v42 = *(v2 + 8 * v40++);
      if (a1)
      {
        break;
      }

      v41 = swift_retain_n();
      MEMORY[0x1D3885D90](v41);
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
        v4 = v74;
      }

      sub_1D13904FC();

      a1 = 0;
      v6 = v76;
LABEL_76:
      if (v40 == v4)
      {
        return v6;
      }

      if (v40 == v39)
      {
        goto LABEL_144;
      }
    }

    v43 = v42[8];
    if (v43 >> 62)
    {
      v44 = sub_1D13910DC();
    }

    else
    {
      v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = v42[8];
    if (a1 >= v44)
    {
      if (v45 >> 62)
      {
        v63 = sub_1D13910DC();
        v9 = __OFSUB__(a1, v63);
        a1 -= v63;
        if (v9)
        {
          goto LABEL_149;
        }
      }

      else
      {
        v48 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v9 = __OFSUB__(a1, v48);
        a1 -= v48;
        if (v9)
        {
          goto LABEL_149;
        }
      }

      goto LABEL_76;
    }

    if (a1 < 0)
    {
      goto LABEL_148;
    }

    if (!(v45 >> 62))
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46 < a1)
      {
        a1 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_86;
    }

    result = sub_1D13910DC();
    if (result >= a1)
    {
      v64 = a1;
    }

    else
    {
      v64 = result;
    }

    if (result >= 0)
    {
      a1 = v64;
    }

    if (result < a1)
    {
      goto LABEL_164;
    }

    v46 = result;
    result = sub_1D13910DC();
    if (result < a1)
    {
      break;
    }

    result = sub_1D13910DC();
    if (result < v46)
    {
      goto LABEL_150;
    }

    if (v46 < 0)
    {
      goto LABEL_167;
    }

LABEL_86:
    if ((v45 & 0xC000000000000001) == 0 || a1 == v46)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      if (a1 >= v46)
      {
        goto LABEL_155;
      }

      _s11SizedRecordCMa();
      swift_bridgeObjectRetain_n();

      v49 = a1;
      do
      {
        v50 = v49 + 1;
        sub_1D13911FC();
        v49 = v50;
      }

      while (v46 != v50);
    }

    if (v45 >> 62)
    {
      sub_1D13913FC();
      a1 = v57;
      v59 = v58;

      v52 = v59 >> 1;
      if ((v59 & 1) == 0)
      {
LABEL_108:
        v55 = v52 - a1;
        v60 = __OFSUB__(v52, a1);
        swift_unknownObjectRetain();
        if (v60)
        {
          goto LABEL_154;
        }

        if (v55)
        {
LABEL_113:
          if (v55 < 1)
          {
            v56 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v56 = swift_allocObject();
            v61 = _swift_stdlib_malloc_size(v56);
            v62 = v61 - 32;
            if (v61 < 32)
            {
              v62 = v61 - 25;
            }

            v56[2] = v55;
            v56[3] = (2 * (v62 >> 3)) | 1;
          }

          swift_unknownObjectRelease();
          if (a1 == v52)
          {
            goto LABEL_163;
          }

          _s11SizedRecordCMa();
          swift_arrayInitWithCopy();
          goto LABEL_137;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v51 = (2 * v46) | 1;
      v52 = v51 >> 1;
      if ((v51 & 1) == 0)
      {
        goto LABEL_108;
      }
    }

    sub_1D139166C();
    swift_unknownObjectRetain_n();
    v53 = swift_dynamicCastClass();
    if (!v53)
    {
      swift_unknownObjectRelease();
      v53 = MEMORY[0x1E69E7CC0];
    }

    v54 = *(v53 + 16);

    v55 = v52 - a1;
    if (__OFSUB__(v52, a1))
    {
      goto LABEL_156;
    }

    if (v54 == v55)
    {
      v56 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      if (v56)
      {
        goto LABEL_138;
      }

      goto LABEL_136;
    }

    swift_unknownObjectRelease();
    if (v55)
    {
      goto LABEL_113;
    }

LABEL_135:
    swift_unknownObjectRelease();
LABEL_136:
    v56 = MEMORY[0x1E69E7CC0];
LABEL_137:
    swift_unknownObjectRelease();
LABEL_138:
    v65 = v42[2];
    v66 = v42[3];
    v67 = v42[4];
    v68 = v42[5];
    v69 = v42[6];
    v70 = v42[7];
    sub_1D1072E70((v42 + 9), v75);
    _s12SizedSectionCMa();
    v71 = swift_allocObject();
    *(v71 + 112) = 0;
    *(v71 + 120) = 1;
    *(v71 + 128) = 0;
    *(v71 + 136) = 1;
    *(v71 + 144) = 0;
    *(v71 + 152) = 1;
    *(v71 + 16) = v65;
    *(v71 + 24) = v66;
    *(v71 + 32) = v67;
    *(v71 + 40) = v68;
    *(v71 + 48) = v69;
    *(v71 + 56) = v70;
    *(v71 + 64) = v56;
    sub_1D102CC18(v75, v71 + 72);
    v72 = v65;
    MEMORY[0x1D3885D90](v68);
    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();

    v6 = v76;
    v4 = v74;
    if (v40 == v74)
    {
      return v6;
    }

    a1 = 0;
    v39 = v73;
    if (v40 == v73)
    {
      goto LABEL_144;
    }
  }

LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_1D10B3D1C(unint64_t a1, void *a2, _OWORD *a3, uint64_t a4, unint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v19 = sub_1D138F0BC();
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = v20;
    v72 = v21;
    v73 = sub_1D13910DC();
    v21 = v72;
    v26 = v73;
    v20 = v9;
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return 0;
    }
  }

  v104 = v20;
  v105 = a1 & 0xC000000000000001;
  v107 = a1 >> 62;
  v103 = v21;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1D3886B70](0, a1, v22);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_94:

      v27 = MEMORY[0x1D3886B70](0, v9);

      goto LABEL_11;
    }

    v25 = *(a1 + 32);
  }

  v9 = *(v25 + 64);
  if (v9 >> 62)
  {
    if (!sub_1D13910DC())
    {
      goto LABEL_97;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_97;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_94;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_100;
  }

  v27 = *(v9 + 32);

LABEL_11:
  v109 = v27;
  v9 = *(v27 + 80);
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_96;
  }

  if (!sub_1D13910DC())
  {
LABEL_96:

LABEL_97:

    return 0;
  }

LABEL_13:
  v108 = v25;
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_100:

    v28 = MEMORY[0x1D3886B70](0, v9);

    goto LABEL_16;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v28 = *(v9 + 32);

LABEL_16:
  v106 = v28;
  v29 = *(v28 + 48);
  v30 = v29 >> 62;
  if (v29 >> 62)
  {
    v31 = sub_1D13910DC();
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31 < a6)
  {
    a6 = v31;
  }

  v32 = sub_1D10B4A84(0, a6, 0, a8, a9, a7, 0, v108, v109, v106, v29, a2, a3, a4, a5);
  if (!v32)
  {
    goto LABEL_24;
  }

  v34 = v33;
  if (v30)
  {
    a2 = v32;
    if ((v29 & 0x8000000000000000) != 0)
    {
      v24 = v29;
    }

    else
    {
      v24 = (v29 & 0xFFFFFFFFFFFFFF8);
    }

    v39 = sub_1D13910DC();
    if (v39 < v34)
    {
      goto LABEL_174;
    }

    a5 = v39;
    v35 = sub_1D13910DC();
    v32 = a2;
  }

  else
  {
    v35 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a5 = v35;
    if (v35 < v33)
    {
      __break(1u);
LABEL_24:

      sub_1D138F06C();
      v36 = sub_1D138F0AC();
      v37 = sub_1D13907FC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1D101F000, v36, v37, "[PDF]: Encountered a value that does not fit on a page, attempted to truncate the value but the resulting maximum height turned out to be negative.", v38, 2u);
        MEMORY[0x1D38882F0](v38, -1, -1);
      }

      else
      {
      }

      (*(v103 + 8))(v24, v104);
      return 0;
    }
  }

  if (v35 < v34)
  {
    goto LABEL_103;
  }

  if (v34 < 0)
  {
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v102 = v32;
  if (v30)
  {
    v40 = sub_1D13910DC();
  }

  else
  {
    v40 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v40 < a5)
  {
    goto LABEL_105;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    if ((v29 & 0xC000000000000001) == 0 || v34 == a5)
    {
    }

    else
    {
      if (v34 >= a5)
      {
        goto LABEL_175;
      }

      _s10SizedValueCMa();

      v41 = v34;
      do
      {
        v42 = v41 + 1;
        sub_1D13911FC();
        v41 = v42;
      }

      while (a5 != v42);
    }

    if (v30)
    {
      v24 = sub_1D13913FC();
      v30 = v43;
      v34 = v44;
      a5 = v45;

      if ((a5 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v24 = (v29 & 0xFFFFFFFFFFFFFF8);
      v30 = (v29 & 0xFFFFFFFFFFFFFF8) + 32;
      a5 = (2 * a5) | 1;
      if ((a5 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    sub_1D139166C();
    swift_unknownObjectRetain_n();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      swift_unknownObjectRelease();
      v48 = MEMORY[0x1E69E7CC0];
    }

    v49 = *(v48 + 16);

    if (!__OFSUB__(a5 >> 1, v34))
    {
      if (v49 == (a5 >> 1) - v34)
      {
        v47 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        if (v47)
        {
          goto LABEL_57;
        }

        v47 = MEMORY[0x1E69E7CC0];
        goto LABEL_56;
      }

      goto LABEL_177;
    }

    goto LABEL_176;
  }

LABEL_106:
  __break(1u);
LABEL_107:
  result = sub_1D13910DC();
  if (result < 0)
  {
    __break(1u);
LABEL_185:
    __break(1u);
    return result;
  }

  v57 = result;
  v47 = result != 0;
  if (sub_1D13910DC() < v47)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    v50 = sub_1D13910DC();
    goto LABEL_60;
  }

  if (sub_1D13910DC() < v57)
  {
    __break(1u);
    goto LABEL_111;
  }

  while (1)
  {
    if ((a5 & 0xC000000000000001) != 0 && v57 > 1)
    {
      _s15SizedValueGroupCMa();
      swift_bridgeObjectRetain_n();
      v58 = v47;
      do
      {
        v59 = v58 + 1;
        sub_1D13911FC();
        v58 = v59;
      }

      while (v57 != v59);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (a2)
    {
      v60 = sub_1D13913FC();
      v61 = v63;
      v47 = v64;
      v62 = v65;

      if ((v62 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v60 = a5 & 0xFFFFFFFFFFFFFF8;
      v61 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
      v62 = (2 * v57) | 1;
      if ((v62 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    sub_1D139166C();
    swift_unknownObjectRetain_n();
    v68 = swift_dynamicCastClass();
    if (!v68)
    {
      swift_unknownObjectRelease();
      v68 = MEMORY[0x1E69E7CC0];
    }

    v69 = *(v68 + 16);

    if (__OFSUB__(v62 >> 1, v47))
    {
      __break(1u);
LABEL_179:
      swift_unknownObjectRelease_n();
LABEL_75:
      sub_1D12E17CC(v60, v61, v47, v62);
      v67 = v66;
      goto LABEL_82;
    }

    if (v69 != (v62 >> 1) - v47)
    {
      goto LABEL_179;
    }

    v67 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v67)
    {
      goto LABEL_83;
    }

    v67 = MEMORY[0x1E69E7CC0];
LABEL_82:
    swift_unknownObjectRelease();
LABEL_83:
    v110 = v24;
    v24 = &v110;
    sub_1D1122358(v67);
    v70 = v110;
    if (v110 >> 62)
    {
      if (sub_1D13910DC())
      {
LABEL_85:
        sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
        v71 = swift_allocObject();
        *(v71 + 16) = a3[129];
        v24 = sub_1D121C4B8(v70);

        *(v71 + 32) = v24;
        goto LABEL_115;
      }
    }

    else if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

    v71 = MEMORY[0x1E69E7CC0];
LABEL_115:
    v34 = *(v108 + 64);
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v24 = *(v108 + 64);
      }

      else
      {
        v24 = (v34 & 0xFFFFFFFFFFFFFF8);
      }

      result = sub_1D13910DC();
      if (result < 0)
      {
        goto LABEL_185;
      }

      a5 = result;
      v75 = result != 0;
      if (sub_1D13910DC() < v75)
      {
        goto LABEL_168;
      }

      if (sub_1D13910DC() < a5)
      {
        __break(1u);
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }
    }

    else
    {
      a5 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v75 = a5 != 0;
      if (a5 < v75)
      {
        goto LABEL_168;
      }
    }

    if ((v34 & 0xC000000000000001) != 0 && a5 > 1)
    {
      _s11SizedRecordCMa();
      swift_bridgeObjectRetain_n();
      v76 = v75;
      do
      {
        v77 = v76 + 1;
        sub_1D13911FC();
        v76 = v77;
      }

      while (a5 != v77);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v34 >> 62)
    {
      v78 = sub_1D13913FC();
      v79 = v80;
      v75 = v81;
      a5 = v82;

      if ((a5 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v78 = v34 & 0xFFFFFFFFFFFFFF8;
      v79 = (v34 & 0xFFFFFFFFFFFFFF8) + 32;
      a5 = (2 * a5) | 1;
      if ((a5 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    v34 = sub_1D139166C();
    swift_unknownObjectRetain_n();
    v85 = swift_dynamicCastClass();
    if (!v85)
    {
      swift_unknownObjectRelease();
      v85 = MEMORY[0x1E69E7CC0];
    }

    v86 = *(v85 + 16);

    if (__OFSUB__(a5 >> 1, v75))
    {
      __break(1u);
LABEL_181:
      swift_unknownObjectRelease_n();
LABEL_127:
      sub_1D12E16C0(v78, v79, v75, a5);
      v84 = v83;
      goto LABEL_134;
    }

    if (v86 != (a5 >> 1) - v75)
    {
      goto LABEL_181;
    }

    v84 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v84)
    {
      goto LABEL_135;
    }

    v84 = MEMORY[0x1E69E7CC0];
LABEL_134:
    swift_unknownObjectRelease();
LABEL_135:
    v110 = v71;
    v24 = &v110;
    sub_1D1122340(v84);
    v75 = v110;
    if (!(v110 >> 62))
    {
      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_137;
      }

      goto LABEL_170;
    }

LABEL_169:
    if (sub_1D13910DC())
    {
LABEL_137:
      sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = a3[129];
      v24 = sub_1D121C5B4(v75);

      *(v30 + 32) = v24;
      if (v26 < 0)
      {
        goto LABEL_171;
      }

      goto LABEL_138;
    }

LABEL_170:

    v30 = MEMORY[0x1E69E7CC0];
    if (v26 < 0)
    {
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

LABEL_138:
    if (v107)
    {
      if (sub_1D13910DC() < 1)
      {
        goto LABEL_172;
      }

      v87 = sub_1D13910DC();
    }

    else
    {
      v87 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v87)
      {
        goto LABEL_172;
      }
    }

    if (v87 >= v26)
    {
      break;
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    swift_unknownObjectRelease_n();
LABEL_49:
    sub_1D12E17E4(v24, v30, v34, a5);
    v47 = v46;
LABEL_56:
    swift_unknownObjectRelease();
LABEL_57:
    if (v47 < 0 || (v47 & 0x4000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v50 = *(v47 + 16);
LABEL_60:
    if (v50)
    {
      sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v24 = swift_allocObject();
      a3 = &unk_1D139E000;
      *(v24 + 1) = xmmword_1D139E810;
      v51 = *(v106 + 16);
      v52 = *(v106 + 24);
      v53 = *(v106 + 32);
      v54 = *(v106 + 40);
      _s15SizedValueGroupCMa();
      v55 = swift_allocObject();
      *(v55 + 16) = v51;
      *(v55 + 24) = v52;
      *(v55 + 32) = v53;
      *(v55 + 40) = v54;
      *(v55 + 48) = v47;
      v24[4] = v55;
      v56 = v51;
    }

    else
    {
      a3 = &unk_1D139E000;

      v24 = MEMORY[0x1E69E7CC0];
    }

    a5 = *(v109 + 80);
    a2 = (a5 >> 62);
    if (a5 >> 62)
    {
      goto LABEL_107;
    }

    v57 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = v57 != 0;
    if (v57 < v47)
    {
      goto LABEL_111;
    }
  }

  if (!v105 || v26 == 1)
  {

    if (!v107)
    {
      goto LABEL_149;
    }
  }

  else
  {
    _s12SizedSectionCMa();

    v88 = 1;
    do
    {
      v89 = v88 + 1;
      sub_1D13911FC();
      v88 = v89;
    }

    while (v26 != v89);
    if (!v107)
    {
LABEL_149:
      v90 = a1 & 0xFFFFFFFFFFFFFF8;
      v91 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
      v92 = 1;
      v93 = (2 * v26) | 1;
      goto LABEL_153;
    }
  }

  v90 = sub_1D13913FC();
  v92 = v94;
  v93 = v95;
  if ((v95 & 1) == 0)
  {
LABEL_152:
    sub_1D12E16A8(v90, v91, v92, v93);
    v97 = v96;
    goto LABEL_159;
  }

LABEL_153:
  v98 = v91;
  sub_1D139166C();
  swift_unknownObjectRetain_n();
  v99 = swift_dynamicCastClass();
  if (!v99)
  {
    swift_unknownObjectRelease();
    v99 = MEMORY[0x1E69E7CC0];
  }

  v100 = *(v99 + 16);

  if (__OFSUB__(v93 >> 1, v92))
  {
    __break(1u);
    goto LABEL_183;
  }

  if (v100 != (v93 >> 1) - v92)
  {
LABEL_183:
    swift_unknownObjectRelease();
    v91 = v98;
    goto LABEL_152;
  }

  v97 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v97)
  {
    v97 = MEMORY[0x1E69E7CC0];
LABEL_159:
    swift_unknownObjectRelease();
  }

  v110 = v30;
  sub_1D1122328(v97);

  return v102;
}

uint64_t sub_1D10B4A84(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15)
{
  v25 = objc_autoreleasePoolPush();
  if (a1 >= a2)
  {

LABEL_44:
    objc_autoreleasePoolPop(v25);
    return a3;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_50;
  }

  v15 = a1 + (a2 - a1) / 2;
  if (__OFADD__(a1, (a2 - a1) / 2))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v77 = 1;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E810;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1D139E810;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D139E810;
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v16 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v74 = v26;
  v77 = a11 >> 62;
  if (!(a11 >> 62))
  {
    if (*((a11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v16)
    {
LABEL_8:
      v68 = v15;
      if ((a11 & 0xC000000000000001) != 0 && v16)
      {
        _s10SizedValueCMa();

        v27 = 0;
        do
        {
          v28 = v27 + 1;
          sub_1D13911FC();
          v27 = v28;
        }

        while (v16 != v28);
      }

      else
      {
      }

      v70 = a3;
      v71 = a2;
      v69 = a1;
      if (v77)
      {

        v30 = sub_1D13913FC();
        v31 = v33;
        v29 = v34;
        v32 = v35;
        if ((v35 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = 0;
        v30 = a11 & 0xFFFFFFFFFFFFFF8;
        v31 = ((a11 & 0xFFFFFFFFFFFFFF8) + 32);
        v32 = (2 * v16) | 1;
      }

      sub_1D139166C();
      swift_unknownObjectRetain_n();
      v38 = swift_dynamicCastClass();
      if (!v38)
      {
        swift_unknownObjectRelease();
        v38 = MEMORY[0x1E69E7CC0];
      }

      v39 = *(v38 + 16);

      if (__OFSUB__(v32 >> 1, v29))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v39 == (v32 >> 1) - v29)
      {
        v37 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v37)
        {
          goto LABEL_26;
        }

        v37 = MEMORY[0x1E69E7CC0];
LABEL_25:
        swift_unknownObjectRelease();
LABEL_26:
        v73 = v25;
        v40 = *(a10 + 16);
        v41 = *(a10 + 24);
        v72 = v40;
        v42 = *(a10 + 32);
        v43 = *(a10 + 40);
        _s15SizedValueGroupCMa();
        v44 = swift_allocObject();
        *(v44 + 16) = v40;
        *(v44 + 24) = v41;
        *(v44 + 32) = v42;
        *(v44 + 40) = v43;
        *(v44 + 48) = v37;
        *(v74 + 32) = v44;
        v45 = *(a9 + 16);
        v46 = *(a9 + 24);
        v47 = *(a9 + 32);
        v49 = *(a9 + 40);
        v48 = *(a9 + 48);
        v50 = *(a9 + 56);
        v51 = *(a9 + 64);
        v52 = *(a9 + 72);
        sub_1D1072E70(a9 + 88, v80);
        _s11SizedRecordCMa();
        v53 = swift_allocObject();
        *(v53 + 128) = 0;
        *(v53 + 136) = 1;
        *(v53 + 16) = v45;
        *(v53 + 24) = v46;
        *(v53 + 32) = v47;
        *(v53 + 40) = v49;
        *(v53 + 48) = v48;
        *(v53 + 56) = v50;
        *(v53 + 64) = v51;
        *(v53 + 72) = v52;
        *(v53 + 80) = v74;
        sub_1D102CC18(v80, v53 + 88);
        *(v75 + 32) = v53;
        v54 = sub_1D121C5B4(v75);

        v55 = v72;
        v56 = v45;
        v57 = v49;

        *(inited + 32) = v54;
        v58 = *(a8 + 64);
        if (!(v58 >> 62))
        {
          v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_28;
        }

LABEL_56:
        v59 = sub_1D13910DC();
LABEL_28:
        v30 = a14;
        v31 = a15;
        v25 = a12;
        v29 = a13;
        if (v59 > 1)
        {
          goto LABEL_35;
        }

        v60 = *(a9 + 80);
        if (!(v60 >> 62))
        {
          if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

LABEL_58:
        if (sub_1D13910DC() > 1)
        {
          goto LABEL_35;
        }

LABEL_31:
        if (v77)
        {
          if (v16 >= sub_1D13910DC())
          {
LABEL_45:
            v64 = 0;
            v61 = 0;
            v62 = 0;
LABEL_36:
            v65 = v25;
            v66 = sub_1D12B2610(inited, v25, v29, v30, v64, v61, v62);
            if (sub_1D12B0704() >= a6)
            {
              if (*(v66 + 112) > a6)
              {
                if (v68 <= v69)
                {
                  a3 = v70;
                  if (v70)
                  {

                    v25 = v73;
                    goto LABEL_44;
                  }

                  a3 = sub_1D10B5100(v66, a6);
                }

                else
                {
                  a3 = sub_1D10B4A84(a4, a5, a6);
                }

                goto LABEL_43;
              }
            }

            else if (v16 < v71)
            {

              a3 = sub_1D10B4A84(a4, a5, a6);

LABEL_43:
              v25 = v73;
              goto LABEL_44;
            }

            a3 = v66;
            goto LABEL_43;
          }
        }

        else if (v16 >= *((a11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

LABEL_35:
        v61 = *&a4;
        v62 = *&a5;
        v63 = v31;
        v64 = v31;
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
LABEL_18:
      sub_1D12E17E4(v30, v31, v29, v32);
      v37 = v36;
      goto LABEL_25;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_53:
  result = sub_1D13910DC();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_1D13910DC() >= v16)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

  __break(1u);
  return result;
}

void sub_1D10B50AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D10B5100(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3 >> 62)
  {
    v59 = a1;
    v60 = a2;
    v61 = sub_1D13910DC();
    a2 = v60;
    v62 = v61;
    a1 = v59;
    if (v62 != 1)
    {
      return 0;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 0;
  }

  v4 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v2 = a2;
    v70 = a1;
    v63 = *(MEMORY[0x1D3886B70](0, v3) + 64);

    swift_unknownObjectRelease();
    if ((v63 & 0x8000000000000000) == 0 && (v63 & 0x4000000000000000) == 0)
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v64 != 1)
      {
        return 0;
      }

LABEL_66:
      v6 = MEMORY[0x1D3886B70](0, v3);
      goto LABEL_10;
    }

LABEL_64:
    v65 = sub_1D13910DC();

    if (v65 != 1)
    {
      return 0;
    }

    if (!v4)
    {
      goto LABEL_77;
    }

    goto LABEL_66;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_63:
    v2 = a2;
    v70 = a1;

    goto LABEL_64;
  }

  v5 = *(*(v3 + 32) + 64);
  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  while (1)
  {
    v2 = a2;
    v70 = a1;
    v6 = *(v3 + 32);

LABEL_10:
    v7 = *(v6 + 64);

    if ((v7 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x1D3886B70](0, v7);

      v9 = *(v66 + 80);

      swift_unknownObjectRelease();
      if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_71:
        v13 = MEMORY[0x1D3886B70](0, v7);
        goto LABEL_23;
      }

      v8 = *(v7 + 32);

      v9 = *(v8 + 80);

      if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
      {
LABEL_14:
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_15;
      }
    }

    v10 = sub_1D13910DC();
LABEL_15:

    if (v10 != 1)
    {
      return 0;
    }

    if (v4)
    {
      v12 = MEMORY[0x1D3886B70](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v12 = *(v3 + 32);
    }

    v7 = *(v12 + 64);

    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_71;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v13 = *(v7 + 32);

LABEL_23:

    v14 = *(v13 + 80);

    if ((v14 & 0xC000000000000001) != 0)
    {
      v67 = MEMORY[0x1D3886B70](0, v14);

      v16 = *(v67 + 48);

      swift_unknownObjectRelease();
      if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_74;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    a1 = v70;
    a2 = v2;
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_78;
    }
  }

  v15 = *(v14 + 32);

  v16 = *(v15 + 48);

  if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
  {
LABEL_27:
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_28;
  }

LABEL_74:
  v17 = sub_1D13910DC();
LABEL_28:

  if (v17 != 1)
  {
    return 0;
  }

  if (v4)
  {
    v18 = MEMORY[0x1D3886B70](0, v3);
    goto LABEL_33;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_86:
    __break(1u);
    return result;
  }

  v18 = *(v3 + 32);

LABEL_33:
  v19 = *(v18 + 64);
  if ((v19 & 0xC000000000000001) != 0)
  {
LABEL_79:
    result = MEMORY[0x1D3886B70](0);
    v16 = result;
LABEL_36:
    v20 = *(v16 + 80);
    if ((v20 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1D3886B70](0);
      v4 = result;
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v4 = *(v20 + 32);
    }

    v21 = *(v4 + 48);
    if ((v21 & 0xC000000000000001) != 0)
    {
      goto LABEL_82;
    }

    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v22 = *(v21 + 32);

      goto LABEL_42;
    }

    goto LABEL_84;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v19 + 32);

    goto LABEL_36;
  }

  __break(1u);
LABEL_82:
  v22 = MEMORY[0x1D3886B70](0);
LABEL_42:
  v23 = sub_1D121C6A4((v16 + 88));
  v24 = v23 - (sub_1D12B0704() - v2);
  if (v24 <= 0.0)
  {

    return 0;
  }

  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  v27 = *(v22 + 32);
  v28 = *(v27 + 16);
  if (v28)
  {
    v71 = MEMORY[0x1E69E7CC0];

    sub_1D10FDC5C(0, v28, 0);
    v29 = v71;
    v30 = (v27 + 32);
    v31 = *(v71 + 16);
    do
    {
      if (v24 >= *v30)
      {
        v32 = *v30;
      }

      else
      {
        v32 = v24;
      }

      v33 = *(v71 + 24);
      if (v31 >= v33 >> 1)
      {
        sub_1D10FDC5C((v33 > 1), v31 + 1, 1);
      }

      *(v71 + 16) = v31 + 1;
      *(v71 + 8 * v31 + 32) = v32;
      ++v30;
      ++v31;
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v34 = *(v22 + 40);
  _s10SizedValueCMa();
  v35 = swift_allocObject();
  *(v35 + 48) = 0;
  *(v35 + 56) = 1;
  *(v35 + 16) = v25;
  *(v35 + 24) = v26;
  *(v35 + 32) = v29;
  *(v35 + 40) = v34;
  sub_1D10B50AC(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1D139E810;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D139E810;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D139E810;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D139E810;
  *(v38 + 32) = v35;
  v39 = *(v4 + 16);
  v40 = *(v4 + 24);
  v41 = *(v4 + 32);
  v42 = *(v4 + 40);
  _s15SizedValueGroupCMa();
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  *(v43 + 24) = v40;
  *(v43 + 32) = v41;
  *(v43 + 40) = v42;
  *(v43 + 48) = v38;
  *(v37 + 32) = v43;
  v44 = sub_1D121C4B8(v37);
  v45 = v39;

  *(v36 + 32) = v44;
  v46 = sub_1D121C5B4(v36);

  *(v68 + 32) = v46;

  v47 = *(v70 + 56);
  v48 = *(v70 + 64);
  v49 = *(v70 + 72);
  v69 = *(v70 + 80);
  v50 = *(v70 + 96);
  v51 = *(v70 + 104);
  _s4PageCMa();
  v52 = swift_allocObject();
  *(v52 + 120) = 1;
  *(v52 + 16) = v68;
  v53 = *(v70 + 24);
  v54 = *(v70 + 40);
  *(v52 + 40) = v54;
  *(v52 + 24) = v53;
  *(v52 + 56) = v47;
  *(v52 + 64) = v48;
  *(v52 + 72) = v49;
  *(v52 + 80) = v69;
  *(v52 + 96) = v50;
  *(v52 + 104) = v51;
  *(v52 + 112) = 0;
  v55 = v53;
  v56 = *(&v54 + 1);
  v57 = v55;
  v58 = v49;

  return v52;
}

unint64_t MedicalRecordChartingError.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    if (*v0)
    {
      return 0xD000000000000013;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    sub_1D13911EC();
    MEMORY[0x1D3885C10](0x6820796C6E6F2049, 0xEC00000020657661);
    v2 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v2);

    MEMORY[0x1D3885C10](0xD000000000000034, 0x80000001D13B9ED0);
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MedicalRecordChartingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MedicalRecordChartingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D10B5A10(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D10B5A2C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingThingsToKnowViewController()
{
  result = qword_1EC60A428;
  if (!qword_1EC60A428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D10B5B08(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for ClinicalSharingThingsToKnowViewController();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (*(*&v1[qword_1EC60A410] + OBJC_IVAR___WDClinicalAccountOnboardingSession_context) == 2)
  {
    v2 = [v1 navigationItem];
    [v2 setRightBarButtonItem_];
  }

  sub_1D10B5BBC();
}

void sub_1D10B5BBC()
{
  sub_1D1086E1C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139E710;
  *(v1 + 32) = sub_1D139016C();
  *(v1 + 40) = v2;
  strcpy((v1 + 48), "YouShouldKnow");
  *(v1 + 62) = -4864;
  v3 = sub_1D139044C();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  if (v4)
  {
    v5 = sub_1D139016C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v0 navigationItem];
  v9 = [v8 leftBarButtonItem];

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v21;
    if (!v7)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    *(v10 + 48) = 1801675074;
    *(v10 + 56) = 0xE400000000000000;

    v11 = sub_1D139044C();

    v12 = HKUIJoinStringsForAutomationIdentifier();

    [v9 setAccessibilityIdentifier_];
  }

  v13 = [v0 navigationItem];
  v14 = [v13 rightBarButtonItem];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v21;
    if (!v7)
    {
LABEL_18:
      __break(1u);
      return;
    }

    *(v15 + 32) = v5;
    *(v15 + 40) = v7;
    *(v15 + 48) = 0x6C65636E6143;
    *(v15 + 56) = 0xE600000000000000;

    v16 = sub_1D139044C();

    v17 = HKUIJoinStringsForAutomationIdentifier();

    [v14 setAccessibilityIdentifier_];
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v21;
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v18 + 32) = v5;
  *(v18 + 40) = v7;
  *(v18 + 48) = 1954047310;
  *(v18 + 56) = 0xE400000000000000;

  v19 = sub_1D139044C();

  v20 = HKUIJoinStringsForAutomationIdentifier();

  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D139016C();

  sub_1D138EBCC();
}

void sub_1D10B5F08()
{
  v1 = *&v0[qword_1EC60A410];
  v2 = *&v0[qword_1EC60A418];
  v3 = *&v0[qword_1EC60A420];
  v4 = objc_allocWithZone(type metadata accessor for ClinicalSharingOnboardingDataTypeSelectionViewController(0));
  v5 = v1;
  v6 = v2;

  v7 = sub_1D1085238(v5, v6, v3);
  [v0 showViewController:v7 sender:0];
  v8 = *&v5[OBJC_IVAR___WDClinicalAccountOnboardingSession_sharingClient];
  v9 = sub_1D139012C();
  sub_1D11496D4(*&v5[OBJC_IVAR___WDClinicalAccountOnboardingSession_context]);
  v10 = sub_1D139012C();

  v12[4] = nullsub_1;
  v12[5] = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D112A218;
  v12[3] = &block_descriptor_6;
  v11 = _Block_copy(v12);
  [v8 submitOnboardingAnalyticsForStepIdentifier:v9 context:v10 completion:v11];
  _Block_release(v11);
}

uint64_t sub_1D10B60D8()
{
}

id sub_1D10B6128()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingThingsToKnowViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D10B6160(uint64_t a1)
{
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D10B61DC(void *a1, void *a2, uint64_t a3)
{
  v40 = sub_1D138E02C();
  v38 = *(v40 - 8);
  v7 = MEMORY[0x1EEE9AC00](v40);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  *(v3 + qword_1EC60A410) = a1;
  *(v3 + qword_1EC60A418) = a2;
  v39 = v3;
  *(v3 + qword_1EC60A420) = a3;
  sub_1D1086E1C();
  v14 = swift_allocObject();
  v37 = xmmword_1D139EAB0;
  *(v14 + 16) = xmmword_1D139EAB0;
  *(v14 + 32) = sub_1D139016C();
  *(v14 + 40) = v15;
  strcpy((v14 + 48), "YouShouldKnow");
  *(v14 + 62) = -4864;
  *(v14 + 64) = 0x4964656B63617453;
  *(v14 + 72) = 0xEB000000006D6574;
  v16 = a1;
  v17 = a2;
  v36 = a3;

  v18 = sub_1D139044C();

  v19 = HKUIJoinStringsForAutomationIdentifier();

  if (v19)
  {
    sub_1D139016C();
  }

  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();

  v41 = v13;
  sub_1D138E01C();
  sub_1D138D1CC();

  v20 = v11;
  sub_1D138E01C();
  v21 = objc_opt_self();
  v22 = sub_1D139012C();
  v23 = [v21 modelSpecificLocalizedStringKeyForKey_];

  if (v23)
  {

    sub_1D139016C();

    sub_1D138D1CC();

    sub_1D138E01C();
    sub_1D138D1CC();
    v36 = v24;
    sub_1D10B674C();
    v25 = v38;
    v26 = *(v38 + 72);
    v27 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v37;
    v29 = v28 + v27;
    v30 = *(v25 + 16);
    v31 = v40;
    v30(v29, v41, v40);
    v30(v29 + v26, v20, v31);
    v32 = v29 + 2 * v26;
    v33 = v42;
    v30(v32, v42, v31);
    sub_1D138EB7C();
    v34 = *(v25 + 8);
    v34(v33, v31);
    v34(v20, v31);
    v34(v41, v31);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D10B674C()
{
  if (!qword_1EC60A438)
  {
    sub_1D138E02C();
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A438);
    }
  }
}

uint64_t type metadata accessor for RecordDisplayNamesDataSource()
{
  result = qword_1EC60A450;
  if (!qword_1EC60A450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D10B6840(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D106F934(0, &qword_1EC609BE8);
  v2 = sub_1D139045C();

  v1(v2);
}

uint64_t sub_1D10B68C4(void *a1, void *a2)
{
  *(v2 + qword_1EC60A440) = a1;
  *(v2 + qword_1EC60A448) = a2;
  v4 = a1;
  v5 = a2;
  v6 = sub_1D138EA8C();
  v7 = *(v6 + qword_1EC60A440);
  v8 = *(v6 + qword_1EC60A448);
  v12[4] = sub_1D10B7224;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D10B6840;
  v12[3] = &block_descriptor_7;
  v9 = _Block_copy(v12);
  swift_retain_n();
  v10 = v7;

  [v10 fetchDisplayNameItemWithHealthRecordsStore:v8 completion:v9];
  _Block_release(v9);

  return v6;
}

uint64_t sub_1D10B6A24()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D10B6AF8(unint64_t a1, void *a2)
{
  v4 = sub_1D138FF3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D13910DC())
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v20 = MEMORY[0x1E69E7CC0];
    result = sub_1D13912DC();
    if (i < 0)
    {
      goto LABEL_22;
    }

    v17 = v5;
    v18 = v4;
    v19 = a2;
    if (v8)
    {
      v12 = sub_1D13910DC();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = 0;
    v8 = a1 & 0xC000000000000001;
    v4 = v12 & ~(v12 >> 63);
    while (v4 != v13)
    {
      if (v8)
      {
        v14 = MEMORY[0x1D3886B70](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v5 = v13 + 1;
      a2 = sub_1D10B6D74(v13, v14);

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v13 = v5;
      if (i == v5)
      {
        v10 = v20;
        v5 = v17;
        v4 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_16:
  sub_1D106F934(0, &qword_1EE06B760);
  *v7 = sub_1D1390A7C();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v16 = sub_1D138FF5C();
  result = (*(v5 + 8))(v7, v4);
  if (v16)
  {
    sub_1D110A398(v10);

    sub_1D138E5AC();
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void *sub_1D10B6D74(uint64_t a1, void *a2)
{
  sub_1D1086E1C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D139EAB0;
  *(v3 + 32) = sub_1D139016C();
  *(v3 + 40) = v4;
  *(v3 + 48) = 0x4E79616C70736944;
  *(v3 + 56) = 0xEF6C6C6543656D61;
  *(v3 + 64) = sub_1D13915CC();
  *(v3 + 72) = v5;
  v6 = sub_1D139044C();

  v7 = HKUIJoinStringsForAutomationIdentifier();

  if (v7)
  {
    v8 = sub_1D139016C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  result = [a2 title];
  if (result)
  {
    v12 = result;
    v13 = sub_1D139016C();
    v15 = v14;

    v16 = [a2 subtitle];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1D139016C();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    type metadata accessor for TitleSubtitleDetailItem(0);
    v21 = swift_allocObject();
    sub_1D138D5DC();
    v21[2] = v13;
    v21[3] = v15;
    v22 = MEMORY[0x1E69E7CC0];
    v21[4] = v18;
    v21[5] = v20;
    v21[6] = 0;
    v21[7] = v22;
    v21[8] = v8;
    v21[9] = v10;
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D10B6FA4()
{
  v1 = *(v0 + qword_1EC60A448);
}

uint64_t sub_1D10B6FE4()
{
  v0 = sub_1D138EABC();
  v1 = *(v0 + qword_1EC60A440);

  v2 = *(v0 + qword_1EC60A448);

  return swift_deallocClassInstance();
}

unint64_t sub_1D10B7058@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D138F3FC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D138F36C();
  v3 = sub_1D138DE3C();
  swift_allocObject();
  v4 = sub_1D138DE1C();
  a1[3] = v3;
  result = sub_1D10B71CC();
  a1[4] = result;
  *a1 = v4;
  return result;
}

unint64_t sub_1D10B71CC()
{
  result = qword_1EC60B610;
  if (!qword_1EC60B610)
  {
    sub_1D138DE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B610);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D10B7244(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1D138F0BC();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1D138D5EC();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10B737C, 0, 0);
}

uint64_t sub_1D10B737C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  *(v0 + 112) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 24);
    v4 = [v2 originIdentifier];
    v5 = [v4 signedClinicalDataRecordIdentifier];

    if (v5)
    {
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = *(v0 + 72);
      v9 = *(v0 + 80);
      sub_1D138D5CC();

      (*(v9 + 32))(v6, v7, v8);
      v10 = swift_task_alloc();
      *(v0 + 120) = v10;
      *v10 = v0;
      v10[1] = sub_1D10B7530;
      v11 = *(v0 + 104);
      v12 = *(v0 + 32);

      return sub_1D10B7B08(v11, v12);
    }
  }

  v14 = *(v0 + 8);

  return v14(0);
}

uint64_t sub_1D10B7530(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_1D10B77A8;
  }

  else
  {
    v4 = sub_1D10B7644;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D10B7644()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[14];
    v3 = v1;
    v4 = [v2 meaningfulDateTitle];
    if (!v4)
    {
      sub_1D139016C();
      v4 = sub_1D139012C();
    }

    v5 = v0[13];
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[3];
    v9 = [v3 attributedMeaningfulDateStringWithDateTitle_];

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v10 = v0[3];
    (*(v0[10] + 8))(v0[13], v0[9]);

    v9 = 0;
  }

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_1D10B77A8()
{
  v44 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  sub_1D138F06C();
  (*(v4 + 16))(v3, v2, v5);
  v6 = v1;
  v7 = sub_1D138F0AC();
  v8 = sub_1D13907FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 88);
    v34 = *(v0 + 80);
    v36 = *(v0 + 136);
    v10 = *(v0 + 72);
    v41 = *(v0 + 64);
    v42 = *(v0 + 104);
    v39 = *(v0 + 56);
    v40 = *(v0 + 48);
    v11 = *(v0 + 40);
    v38 = *(v0 + 24);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v12 = 136315650;
    *(v0 + 16) = v11;
    swift_getMetatypeMetadata();
    v14 = sub_1D13901EC();
    v16 = sub_1D11DF718(v14, v15, &v43);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_1D10B81E8();
    v17 = sub_1D13915CC();
    v19 = v18;
    v35 = *(v34 + 8);
    v35(v9, v10);
    v20 = sub_1D11DF718(v17, v19, &v43);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2112;
    v21 = v36;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v22;
    *v13 = v22;
    _os_log_impl(&dword_1D101F000, v7, v8, "%s Failed to fetch corresponding SCD record for %s: %@", v12, 0x20u);
    sub_1D10B8240(v13);
    MEMORY[0x1D38882F0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v37, -1, -1);
    MEMORY[0x1D38882F0](v12, -1, -1);

    (*(v39 + 8))(v41, v40);
    v35(v42, v10);
  }

  else
  {
    v23 = *(v0 + 136);
    v24 = *(v0 + 104);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);

    v31 = *(v26 + 8);
    v31(v25, v27);
    (*(v30 + 8))(v28, v29);
    v31(v24, v27);
  }

  v32 = *(v0 + 8);

  return v32(0);
}

uint64_t sub_1D10B7B08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1D10B82C8(0, &qword_1EC60A460, &qword_1EE06B0D0, 0x1E696C3A8, MEMORY[0x1E696B3D0]);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1D10B82C8(0, &qword_1EC60A468, &qword_1EE06B0D0, 0x1E696C3A8, MEMORY[0x1E696B3A0]);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D10B7C7C, 0, 0);
}

uint64_t sub_1D10B7C7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = objc_opt_self();
  v5 = sub_1D138D5AC();
  v6 = [v4 predicateForMedicalRecordsWithSignedClinicalDataOriginIdentifier_];
  v0[10] = v6;

  v7 = [objc_opt_self() signedClinicalDataRecordType];
  sub_1D106F934(0, &qword_1EE06B0D0);
  v8 = v6;
  sub_1D138FFBC();

  sub_1D10B8330();
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D139E700;
  (*(v2 + 16))(v10 + v9, v1, v3);
  sub_1D138FFCC();
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1D10B7E50;
  v13 = v0[3];
  v12 = v0[4];

  return MEMORY[0x1EEDC7698](v13, v12);
}

uint64_t sub_1D10B7E50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1D10B8128;
  }

  else
  {
    v4 = sub_1D10B7F64;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D10B7F64()
{
  v1 = v0[12];
  if (v1 >> 62)
  {
    result = sub_1D13910DC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = v0[9];
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v12, v14);
    v11 = 0;
    goto LABEL_10;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D3886B70](0, v0[12]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[12] + 32);
  }

  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v4, v6);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
  }

LABEL_10:

  v19 = v0[1];

  return v19(v11);
}

uint64_t sub_1D10B8128()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 32);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_1D10B81E8()
{
  result = qword_1EC60D1C0;
  if (!qword_1EC60D1C0)
  {
    sub_1D138D5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60D1C0);
  }

  return result;
}

uint64_t sub_1D10B8240(uint64_t a1)
{
  sub_1D10B82C8(0, &qword_1EE06A518, &qword_1EE06B0C0, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D10B82C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D106F934(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D10B8330()
{
  if (!qword_1EC60A470)
  {
    sub_1D10B82C8(255, &qword_1EC60A468, &qword_1EE06B0D0, 0x1E696C3A8, MEMORY[0x1E696B3A0]);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60A470);
    }
  }
}

uint64_t sub_1D10B83B4()
{
  sub_1D138D85C();
  v1 = v0;
  sub_1D138D85C();
  v3 = v2;
  result = sub_1D138D85C();
  qword_1EC62F870 = v1;
  qword_1EC62F878 = v3;
  qword_1EC62F880 = 0;
  qword_1EC62F888 = v5;
  return result;
}

id sub_1D10B83F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v0 setNumberOfLines_];
  [v0 setLineBreakMode_];
  v1 = v0;
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v1 setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [v1 setContentHuggingPriority:0 forAxis:v4];
  [v1 setAdjustsFontForContentSizeCategory_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];

  return v1;
}

id sub_1D10B84DC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___bottomConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___bottomConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___bottomConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel] bottomAnchor];
    v5 = [v0 bottomAnchor];
    if (qword_1EC608BD8 != -1)
    {
      swift_once();
    }

    v6 = [v4 constraintEqualToAnchor:v5 constant:*&qword_1EC62F880];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D10B85DC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateChevronConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateChevronConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateChevronConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView) leadingAnchor];
    v5 = [*(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel) trailingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:8.0];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D10B86B4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateTrailingConstraint;
  v2 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateTrailingConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateTrailingConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel] trailingAnchor];
    v5 = [v0 trailingAnchor];
    if (qword_1EC608BD8 != -1)
    {
      swift_once();
    }

    v6 = [v4 constraintEqualToAnchor:v5 constant:-*&qword_1EC62F888];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1D10B87B8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D10B8804(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D10B8934(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_1D10B89B4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

void sub_1D10B8A70(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1D10B8ACC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D10B8B18(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D10B8C14()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView);
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron;
  swift_beginAccess();
  [v2 setHidden_];
  v4 = sub_1D10B85DC();
  [v4 setActive_];

  v5 = sub_1D10B86B4();
  [v5 setActive_];

  v6 = *(v1 + v3);
  v7 = *(v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel);
  if (v6 == 1)
  {
    [v7 setLineBreakMode_];
    type metadata accessor for UILayoutPriority(0);
    sub_1D10BC3B4(&qword_1EC60A508, type metadata accessor for UILayoutPriority);
    sub_1D138F0DC();
    LODWORD(v8) = v11;
    [v7 setContentCompressionResistancePriority:0 forAxis:v8];
    LODWORD(v9) = 1132068864;
  }

  else
  {
    [v7 setLineBreakMode_];
    type metadata accessor for UILayoutPriority(0);
    sub_1D10BC3B4(&qword_1EC60A508, type metadata accessor for UILayoutPriority);
    sub_1D138F0CC();
    LODWORD(v10) = v11;
    [v7 setContentCompressionResistancePriority:0 forAxis:v10];
    LODWORD(v9) = 1148846080;
  }

  [v7 setContentCompressionResistancePriority:1 forAxis:v9];
  sub_1D10BAAA4();
}

uint64_t sub_1D10B8E1C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1D10B8E80(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10B8EE4;
}

void sub_1D10B8EFC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = sub_1D10B86B4();
  v6 = 0.0;
  if ((*(v3 + v4) & 1) == 0)
  {
    if (qword_1EC608BD8 != -1)
    {
      swift_once();
    }

    v6 = -*&qword_1EC62F888;
  }

  [v5 setConstant_];
}

uint64_t sub_1D10B8FB4()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D10B8FF8(char a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = sub_1D10B86B4();
  v5 = 0.0;
  if ((*(v1 + v3) & 1) == 0)
  {
    if (qword_1EC608BD8 != -1)
    {
      swift_once();
    }

    v5 = -*&qword_1EC62F888;
  }

  [v4 setConstant_];
}

void (*sub_1D10B90AC(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D10B9134;
}

void sub_1D10B9134(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = sub_1D10B86B4();
    v7 = 0.0;
    if ((*(v4 + v5) & 1) == 0)
    {
      if (qword_1EC608BD8 != -1)
      {
        swift_once();
      }

      v7 = -*&qword_1EC62F888;
    }

    [v6 setConstant_];
  }

  free(v3);
}

uint64_t sub_1D10B91E8()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesHeaderSymbolForAccessibilitySizing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1D10B924C(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  v7 = swift_beginAccess();
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t (*sub_1D10B92A4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10B9308;
}

uint64_t sub_1D10B932C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

void sub_1D10B9380(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  if (a2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel);

    MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
    v7 = sub_1D139012C();

    [v6 setAccessibilityIdentifier_];

    v8 = *(v2 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel);

    MEMORY[0x1D3885C10](0x657461442ELL, 0xE500000000000000);

    v9 = sub_1D139012C();

    [v8 setAccessibilityIdentifier_];
  }
}

void (*sub_1D10B94C8(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1D10B9550;
}

void sub_1D10B9550(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel);
      v12 = *v5;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1D3885C10](0x656C7469542ELL, 0xE600000000000000);
      v9 = sub_1D139012C();

      [v8 setAccessibilityIdentifier_];

      v10 = *(v4 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel);
      v13 = v6;

      MEMORY[0x1D3885C10](0x657461442ELL, 0xE500000000000000);

      v11 = sub_1D139012C();

      [v10 setAccessibilityIdentifier_];
    }
  }

  free(v3);
}

uint64_t sub_1D10B9690(uint64_t a1, uint64_t *a2)
{
  sub_1D10BA6A0(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
  swift_beginAccess();
  sub_1D10BA76C(v6, v3 + v4);
  swift_endAccess();
  sub_1D10B9714();
  return sub_1D10BBEEC(v6, sub_1D10BA704);
}

void sub_1D10B9714()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData);
  swift_beginAccess();
  v3 = v2[3];
  if (v3)
  {
    v4 = v2[4];
    v5 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v6 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = (*(v4 + 24))(v3, v4);
    (*(v6 + 8))(v8, v3);
  }

  else
  {
    v9 = 0;
  }

  v10 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage;
  swift_beginAccess();
  v11 = *(v1 + v10);
  *(v1 + v10) = v9;

  v12 = v2[3];
  if (v12)
  {
    v13 = v2[4];
    v14 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v15 = *(v12 - 8);
    MEMORY[0x1EEE9AC00](v14);
    v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);
    v18 = (*(v13 + 8))(v12, v13);
    v20 = v19;
    (*(v15 + 8))(v17, v12);
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_title);
  swift_beginAccess();
  *v21 = v18;
  v21[1] = v20;

  v22 = v2[3];
  if (!v22 || (v23 = v2[4], v24 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]), v25 = *(v22 - 8), MEMORY[0x1EEE9AC00](v24), v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v25 + 16))(v27), v28 = (*(v23 + 16))(v22, v23), v30 = v29, (*(v25 + 8))(v27, v22), !v30))
  {

    v30 = 0xE100000000000000;
    v28 = 32;
  }

  v31 = (v1 + OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateString);
  swift_beginAccess();
  *v31 = v28;
  v31[1] = v30;

  v32 = v2[3];
  if (v32)
  {
    v33 = v2[4];
    v34 = __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
    v35 = *(v32 - 8);
    MEMORY[0x1EEE9AC00](v34);
    v37 = &v41 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v37);
    v38 = (*(v33 + 32))(v32, v33);
    (*(v35 + 8))(v37, v32);
  }

  else
  {
    v38 = 0;
  }

  v39 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor;
  swift_beginAccess();
  v40 = *(v1 + v39);
  *(v1 + v39) = v38;

  sub_1D10BA268();
  sub_1D10BA7F4();
}

uint64_t sub_1D10B9C00@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
  swift_beginAccess();
  return sub_1D10BA6A0(v1 + v3, a1);
}

uint64_t sub_1D10B9C58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData;
  swift_beginAccess();
  sub_1D10BA76C(a1, v1 + v3);
  swift_endAccess();
  sub_1D10B9714();
  return sub_1D10BBEEC(a1, sub_1D10BA704);
}

uint64_t (*sub_1D10B9CD8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D10B9D3C;
}

uint64_t sub_1D10B9D54(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id ConceptFeedItemTitleView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ConceptFeedItemTitleView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v11 setNumberOfLines_];
  [v11 setLineBreakMode_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = v11;
  LODWORD(v13) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v13];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v10] = v12;
  v14 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateLabel;
  *&v5[v14] = sub_1D10B83F8();
  v15 = OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_chevronView;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v16 setContentMode_];
  sub_1D106F934(0, &qword_1EE06A540);
  v17 = sub_1D1390CFC();
  [v16 setImage_];

  v18 = [objc_opt_self() tertiaryLabelColor];
  [v16 setTintColor_];

  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v19) = 1148846080;
  [v16 setContentHuggingPriority:0 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v20];

  *&v5[v15] = v16;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___bottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateChevronConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView____lazy_storage___dateTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_headerImage] = 0;
  v21 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_title];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_dateString];
  *v22 = 0;
  v22[1] = 0;
  *&v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_categoryColor] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesChevron] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_isInEditingMode] = 0;
  v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_hidesHeaderSymbolForAccessibilitySizing] = 1;
  v23 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_baseAccessibilityIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v5[OBJC_IVAR____TtC15HealthRecordsUI24ConceptFeedItemTitleView_viewData];
  v25 = type metadata accessor for ConceptFeedItemTitleView();
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  v31.receiver = v5;
  v31.super_class = v25;
  v26 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1D10BB498();
  [v26 addSubview_];
  [v26 addSubview_];
  [v26 addSubview_];
  sub_1D10BAAA4();
  sub_1D10BB580(0, &qword_1EC60D0C0, sub_1D107F520);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D139E700;
  v28 = sub_1D138F4EC();
  v29 = MEMORY[0x1E69DC2B0];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  MEMORY[0x1D3886600](v27, sel_traitCollectionDidChangeWithTraitEnvironment_previousTraitCollection_);

  swift_unknownObjectRelease();

  return v26;
}