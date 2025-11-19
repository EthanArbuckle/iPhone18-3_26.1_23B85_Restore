char *_s15HealthRecordsUI19DisplayItemProviderC19supportedCategoriesShyAA0D8CategoryVGvgZ_0()
{
  v0 = [objc_opt_self() allSupportedRecordCategories];
  if (!v0)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v1 = v0;
  sub_1D106F934(0, &qword_1EE06B730);
  v2 = sub_1D139045C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_16:

    v6 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v14 = sub_1D12DE968(v6);

    return v14;
  }

  v3 = sub_1D13910DC();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_4:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D10FD8EC(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v17;
    if ((v2 & 0xC000000000000001) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    for (i = MEMORY[0x1D3886B70](v5, v2); ; i = *(v2 + 8 * v5 + 32))
    {
      sub_1D123E1C4(i, v15);
      v17 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D10FD8EC((v8 > 1), v9 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v9 + 1;
      v10 = v6 + 72 * v9;
      *(v10 + 32) = v15[0];
      v11 = v15[1];
      v12 = v15[2];
      v13 = v15[3];
      *(v10 + 96) = v16;
      *(v10 + 64) = v12;
      *(v10 + 80) = v13;
      *(v10 + 48) = v11;
      if (v3 - 1 == v5)
      {
        break;
      }

      ++v5;
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }

LABEL_7:
      ;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_1D12A2CCC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D106F934(255, a3);
    v4 = sub_1D139052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D12A2D24(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D12A2D6C()
{
  if (!qword_1EC60EAA0)
  {
    sub_1D12A2CCC(255, &qword_1EC609E90, &qword_1EE06B0E0);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EAA0);
    }
  }
}

uint64_t sub_1D12A2DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D12A2E44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12A2EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D12A2F10()
{
  if (!qword_1EE06B4B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE06B4B0);
    }
  }
}

uint64_t sub_1D12A310C()
{
  v1 = v0;
  sub_1D12A3EAC(0, &qword_1EC6103F0, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1D138F27C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() tertiarySystemBackgroundColor];
  [v1 setBackgroundColor_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setBackgroundView_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v1 setSelectedBackgroundView_];

  v12 = [v1 selectedBackgroundView];
  if (v12)
  {
    v13 = v12;
    sub_1D106F934(0, &qword_1EE06B6E0);
    v14 = sub_1D1390CEC();
    [v13 setBackgroundColor_];
  }

  sub_1D138F26C();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  MEMORY[0x1D38864A0](v4);
  return (*(v6 + 8))(v8, v5);
}

void sub_1D12A338C()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for ChartItem();
    if (swift_dynamicCast())
    {

      v7 = [v1 superview];
      if (v7)
      {

        sub_1D12A3908();
      }

      return;
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
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for ChartCell: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D12A36B0()
{
  v1 = v0;
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10A71C0(v1 + v6, v18);
  if (v19)
  {
    sub_1D10A7254();
    type metadata accessor for ChartItem();
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
    sub_1D12A3EAC(0, &qword_1EC60B620, sub_1D10A7254);
    v13 = sub_1D139020C();
    v15 = sub_1D11DF718(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D101F000, v9, v10, "Incorrect view model for ChartCell: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1D38882F0](v12, -1, -1);
    MEMORY[0x1D38882F0](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_1D12A3908()
{
  v1 = sub_1D12A36B0();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 viewController];
    if (v3)
    {
      v26 = v3;
      v4 = [*(v2 + 64) view];
      if (v4)
      {
        v27 = v4;
        [v26 addChildViewController_];
        [v27 setTranslatesAutoresizingMaskIntoConstraints_];
        v5 = [v0 contentView];
        [v5 addSubview_];

        v6 = objc_opt_self();
        sub_1D106F424();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1D139F5B0;
        v8 = [v27 leadingAnchor];
        v9 = [v0 contentView];
        v10 = [v9 leadingAnchor];

        v11 = [v8 constraintEqualToAnchor_];
        *(v7 + 32) = v11;
        v12 = [v27 trailingAnchor];
        v13 = [v0 contentView];
        v14 = [v13 trailingAnchor];

        v15 = [v12 constraintEqualToAnchor_];
        *(v7 + 40) = v15;
        v16 = [v27 topAnchor];
        v17 = [v0 contentView];
        v18 = [v17 topAnchor];

        v19 = [v16 constraintEqualToAnchor_];
        *(v7 + 48) = v19;
        v20 = [v27 bottomAnchor];
        v21 = [v0 contentView];
        v22 = [v21 bottomAnchor];

        v23 = [v20 constraintEqualToAnchor_];
        *(v7 + 56) = v23;
        sub_1D106F934(0, &qword_1EC609690);
        v24 = sub_1D139044C();

        [v6 activateConstraints_];

        [v0 invalidateIntrinsicContentSize];
        [v0 setNeedsLayout];

        v25 = v27;
      }

      else
      {

        v25 = v26;
      }
    }

    else
    {
    }
  }
}

id sub_1D12A3CE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChartCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D12A3D50@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  return sub_1D10A71C0(v1 + v3, a1);
}

uint64_t sub_1D12A3DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HealthRecordsUI9ChartCell_item;
  swift_beginAccess();
  sub_1D10B1300(a1, v1 + v3);
  swift_endAccess();
  sub_1D12A338C();
  return sub_1D10A72B8(a1);
}

void (*sub_1D12A3E14(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D12A3E78;
}

void sub_1D12A3E78(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D12A338C();
  }
}

void sub_1D12A3EAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D12A3F24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D12A3F6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D12A3FC4(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v22 = a1 + 32;
  while (1)
  {
    v4 = *(v22 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_1D13910DC();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_1D13910DC();
      v9 = v21 + v6;
      if (__OFADD__(v21, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_1D13910DC();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_1D139122C();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v24 = v2;
    v25 = v1;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_1D12A8C20();
      sub_1D12A8C88(&qword_1EC60B058, sub_1D12A8C20);
      for (i = 0; i != v13; ++i)
      {
        v15 = sub_1D1112FB8(v26, i, v4);
        v17 = *v16;
        (v15)(v26, 0);
        *(v10 + 8 * v11 + 32 + 8 * i) = v17;
      }
    }

    else
    {
      sub_1D106F934(0, &qword_1EE06B0E0);
      swift_arrayInitWithCopy();
    }

    v2 = v24;
    v1 = v25;
    if (v27 >= 1)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v27);
      v20 = v18 + v27;
      if (v19)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return v2;
    }
  }

  result = sub_1D13910DC();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1D12A4298(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245E74(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D12A71F4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D12A4304(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1247E34(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D12A72EC(v6);
  return sub_1D13912BC();
}

id sub_1D12A4380()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1D12A8B50(0, &qword_1EC60F290, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  sub_1D12A8B50(0, &qword_1EC60E4E0, MEMORY[0x1E6969AE8], v1);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_1D138D18C();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  result = 0;
  if ((*(v0 + 32) & 1) == 0)
  {
    v17 = *(v0 + 24);
    v30 = *(v0 + 16);
    v31 = v17;
    v32 = v13;
    v33 = v12;
    v18 = sub_1D138D76C();
    v29 = *(*(v18 - 8) + 56);
    v29(v7, 1, 1, v18);
    v19 = sub_1D138D7CC();
    v20 = *(*(v19 - 8) + 56);
    v20(v4, 1, 1, v19);
    sub_1D138D16C();
    v29(v7, 1, 1, v18);
    v20(v4, 1, 1, v19);
    sub_1D138D16C();
    v21 = objc_opt_self();
    v22 = sub_1D138D0FC();
    v23 = sub_1D138D0FC();
    v24 = [v21 predicateForRecordsWithSortDateFromStartDateComponents:v22 endDateComponents:v23];

    v25 = *(v32 + 8);
    v26 = v10;
    v27 = v33;
    v25(v26, v33);
    v25(v15, v27);
    return v24;
  }

  return result;
}

uint64_t sub_1D12A47B4()
{
  sub_1D12A8B50(0, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  if (*(v0 + 32))
  {
    v4 = *(v0 + 48);
  }

  else
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = sub_1D138D67C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_1D12A8B50(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D139E710;
    v9 = sub_1D11F3C64(v6);
    v11 = v10;
    v12 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v13 = sub_1D1089930();
    *(v8 + 64) = v13;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v14 = sub_1D11F3C64(v5);
    *(v8 + 96) = v12;
    *(v8 + 104) = v13;
    *(v8 + 72) = v14;
    *(v8 + 80) = v15;
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    v4 = sub_1D138D1CC();
    if (*(v8 + 16))
    {
      v4 = sub_1D139019C();

      sub_1D12A8D38(v3, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D12A8B50);
    }

    else
    {
      sub_1D12A8D38(v3, &qword_1EC60DF40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720], sub_1D12A8B50);
    }
  }

  return v4;
}

uint64_t sub_1D12A4AC4()
{
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v1 = *(v0[9] + 16);
  if (v1 == *(v0[8] + 16))
  {

    v2 = v0[10];
  }

  else
  {
    sub_1D12A8B50(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    v4 = MEMORY[0x1E69E6530];
    *(v3 + 16) = xmmword_1D139E700;
    v5 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = v4;
    *(v3 + 64) = v5;
    *(v3 + 32) = v1;
    v2 = sub_1D139013C();
  }

  return v2;
}

uint64_t sub_1D12A4C30()
{
  v1 = v0[14];
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_1D13910DC();

    v3 = v0[13];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v2 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  v2 = *(v1 + 16);
  v3 = v0[13];
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v3 >> 62)
  {
    if (v2 == sub_1D13910DC())
    {
      goto LABEL_5;
    }
  }

  else if (v2 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v4 = v0[15];

    return v4;
  }

LABEL_8:
  if (qword_1EC608C98 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  sub_1D12A8B50(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D139E700;
  v6 = v0[14];
  if ((v6 & 0xC000000000000001) != 0)
  {

    v7 = sub_1D13910DC();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  v8 = MEMORY[0x1E69E65A8];
  *(v5 + 56) = MEMORY[0x1E69E6530];
  *(v5 + 64) = v8;
  *(v5 + 32) = v7;
  v4 = sub_1D139013C();

  return v4;
}

uint64_t sub_1D12A4E44(void *a1, __int128 *a2, uint64_t a3)
{
  v51 = a1;
  v5 = a2[3];
  v72 = a2[2];
  v73 = v5;
  v74 = *(a2 + 8);
  v6 = a2[1];
  v70 = *a2;
  v71 = v6;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 40) = 0;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  *(v3 + 48) = sub_1D138D1CC();
  *(v3 + 56) = v7;
  v8 = sub_1D138D1CC();
  v9 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = v8;
  *(v3 + 88) = v10;
  *(v3 + 104) = 0;
  *(v3 + 112) = v9;
  v47 = 0xE000000000000000;
  *(v3 + 120) = sub_1D138D1CC();
  *(v3 + 128) = v11;
  v48 = OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration;
  sub_1D10921C4(a3, v3 + OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration);
  sub_1D12A8D98();
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v3 + 96) = v12;
  v13 = v51;
  if (v51)
  {
    sub_1D10DCFE8(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D139E810;
    *(inited + 32) = v13;
    v15 = v13;
    sub_1D1265480(inited);
    v17 = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v3 + 112) = v17;
  }

  v49 = a3;
  v50 = v3;
  v69 = MEMORY[0x1E69E7CC0];
  sub_1D10FD8EC(0, 8, 0);
  v18 = v69;
  if (qword_1EE069F78 != -1)
  {
    swift_once();
  }

  for (i = 0; ; ++i)
  {
    v20 = byte_1F4D044B8[i + 32];
    swift_beginAccess();
    v21 = off_1EE069F80;
    if (*(off_1EE069F80 + 2))
    {
      v22 = sub_1D12A2F78(v20);
      if (v23)
      {
        v24 = v21[7] + 72 * v22;
        v59 = *v24;
        v26 = *(v24 + 32);
        v25 = *(v24 + 48);
        v27 = *(v24 + 64);
        v60 = *(v24 + 16);
        v61 = v26;
        v63 = v27;
        v62 = v25;
        swift_endAccess();
        v66 = v61;
        v67 = v62;
        v68 = v63;
        v64 = v59;
        v65 = v60;
        sub_1D1082914(&v59, v52);
        goto LABEL_13;
      }
    }

    swift_endAccess();
    v28 = [objc_opt_self() unknownRecordCategory];
    if (!v28)
    {
      break;
    }

    sub_1D123E1C4(v28, &v64);
LABEL_13:
    v63 = v68;
    v61 = v66;
    v62 = v67;
    v59 = v64;
    v60 = v65;
    v69 = v18;
    v30 = *(v18 + 16);
    v29 = *(v18 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D10FD8EC((v29 > 1), v30 + 1, 1);
      v18 = v69;
    }

    *(v18 + 16) = v30 + 1;
    v31 = v18 + 72 * v30;
    *(v31 + 32) = v59;
    v32 = v60;
    v33 = v61;
    v34 = v62;
    *(v31 + 96) = v63;
    *(v31 + 64) = v33;
    *(v31 + 80) = v34;
    *(v31 + 48) = v32;
    if (i == 7)
    {
      v58 = v18;

      sub_1D12A4298(&v58);

      v36 = v58;
      v38 = v49;
      v37 = v50;
      *(v50 + 64) = v58;
      v39 = v70;
      v54 = v71;
      v55 = v72;
      v56 = v73;
      v57 = v74;
      if (*(&v70 + 1))
      {
        v52[0] = v70;
        v52[1] = v71;
        v52[2] = v72;
        v52[3] = v73;
        v53 = v74;
        MEMORY[0x1EEE9AC00](v35);
        v47 = v52;

        if (sub_1D10F1AE8(sub_1D12A8DFC, &v46, v36))
        {

          sub_1D10DCFE8(0, &qword_1EE06B698, &type metadata for DisplayCategory, MEMORY[0x1E69E6F90]);
          v40 = swift_initStackObject();
          *(v40 + 16) = xmmword_1D139E700;
          *(v40 + 32) = v39;
          v41 = v40 + 32;
          v42 = v55;
          *(v40 + 48) = v54;
          *(v40 + 64) = v42;
          *(v40 + 80) = v56;
          *(v40 + 96) = v57;
          v43 = sub_1D1265764(v40);
          swift_setDeallocating();
          sub_1D1080D98(v41);

LABEL_23:
          sub_1D1092890(v38);
          *(v37 + 72) = v43;
          return v37;
        }

        sub_1D12A8D38(&v70, &unk_1EC609AC8, &type metadata for DisplayCategory, MEMORY[0x1E69E6720], sub_1D10DCFE8);
      }

      else
      {
      }

      v44 = v51;
      v43 = sub_1D12DE968(v36);

      goto LABEL_23;
    }
  }

  __break(1u);

  sub_1D1092890(v50 + v48);
  type metadata accessor for PDFConfigurationDataSource();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

uint64_t sub_1D12A54C4(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1D138F0BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    result = sub_1D12A5784();
    if (!a4)
    {
      return result;
    }

    return a4(result);
  }

  sub_1D138F06C();

  v15 = a2;
  v16 = sub_1D138F0AC();
  v17 = sub_1D13907FC();

  if (os_log_type_enabled(v16, v17))
  {
    v27[1] = a5;
    v18 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    v27[6] = a3;
    v28 = v27[0];
    *v18 = 136315394;
    type metadata accessor for PDFConfigurationDataSource();

    v19 = sub_1D13901EC();
    v21 = sub_1D11DF718(v19, v20, &v28);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v22 = sub_1D13916FC();
      v24 = v23;
    }

    else
    {
      v24 = 0xEB000000007D726FLL;
      v22 = 0x727265206C696E7BLL;
    }

    v25 = sub_1D11DF718(v22, v24, &v28);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_1D101F000, v16, v17, "%s failed to load all accounts: %s)", v18, 0x16u);
    v26 = v27[0];
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v26, -1, -1);
    MEMORY[0x1D38882F0](v18, -1, -1);

    result = (*(v11 + 8))(v13, v10);
    if (a4)
    {
      return a4(result);
    }
  }

  else
  {

    result = (*(v11 + 8))(v13, v10);
    if (a4)
    {
      return a4(result);
    }
  }

  return result;
}

uint64_t sub_1D12A5784()
{
  v1 = v0[12];

  os_unfair_lock_lock(v1 + 4);

  if (v0[13])
  {
    goto LABEL_18;
  }

  v3 = sub_1D12DEEFC(v2);

  v4 = v0[14];
  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_1D13910DC();

    v4 = v0[14];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else if (!*(v4 + 16))
  {
LABEL_7:
    v0[14] = v3;

    goto LABEL_8;
  }

  sub_1D12A59C0(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_1D12E1828(v3);

  v19 = sub_1D1113278(v8);
  sub_1D12A4304(&v19);

  v9 = v19;
  v10 = v0[13];
  v0[13] = v19;

  if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
  {
    if (sub_1D13910DC() == 1 && sub_1D13910DC())
    {
      goto LABEL_11;
    }

LABEL_17:

    goto LABEL_18;
  }

  if (*(v9 + 16) != 1)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1D3886B70](0, v9);
  }

  else
  {
    if (!*(v9 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  v13 = [v12 title];
  v14 = sub_1D139016C();
  v16 = v15;

  v0[15] = v14;
  v0[16] = v16;

LABEL_18:
  v17 = v0[12];

  os_unfair_lock_unlock(v17 + 4);
}

void sub_1D12A59C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D13910DC();
    v6 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 16) < v5)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(a2 + 16);
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_1D13910DC() < v5)
  {
    return;
  }

LABEL_7:
  if (v4)
  {

    sub_1D139108C();
    sub_1D106F934(0, &qword_1EC609A00);
    sub_1D12A8CD0();
    sub_1D139070C();
    v2 = v32;
    v7 = v33;
    v8 = v34;
    v9 = v35;
    v10 = v36;
  }

  else
  {
    v11 = -1 << *(v2 + 32);
    v7 = v2 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v2 + 56);

    v9 = 0;
  }

  sub_1D106F934(0, &qword_1EC609A00);
  v28 = v7;
  v14 = (v8 + 64) >> 6;
  v29 = v2;
  v15 = a1 + 56;
  while (1)
  {
    while (v2 < 0)
    {
      if (!sub_1D139110C())
      {
LABEL_35:
        sub_1D102CC30();
        return;
      }

      swift_dynamicCast();
      v20 = v10;
      v18 = v31;
      v30 = v20;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_21:
      v19 = sub_1D139111C();

      v10 = v30;
      if ((v19 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v16 = v10;
    if (!v10)
    {
      break;
    }

LABEL_20:
    v30 = (v16 - 1) & v16;
    v31 = *(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v31;
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_25:
    v27 = v6;
    if (!*(a1 + 16) || (v21 = sub_1D1390D7C(), v22 = -1 << *(a1 + 32), v23 = v21 & ~v22, ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
    {
LABEL_32:

LABEL_33:
      sub_1D102CC30();
      return;
    }

    v24 = ~v22;
    while (1)
    {
      v25 = *(*(a1 + 48) + 8 * v23);
      v26 = sub_1D1390D8C();

      if (v26)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v7 = v28;
    v2 = v29;
    v6 = v27;
    v10 = v30;
  }

  v17 = v9;
  while (1)
  {
    v9 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_35;
    }

    v16 = *(v7 + 8 * v9);
    ++v17;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

id sub_1D12A5CF4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1D138D7FC();
  if (v5 == 2)
  {
    v19 = v2[14];
    if (v3[13])
    {
      v20 = v3[13];
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    swift_getObjectType();
    v21 = swift_conformsToProtocol2();
    if (v21)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = v21;
      v24 = a2;
    }

    else
    {
      v23 = 0;
    }

    v29 = type metadata accessor for AccountSelectionViewController();
    v30 = objc_allocWithZone(v29);
    v31 = &v30[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize];
    *(v31 + 1) = 0;
    *(v31 + 2) = 0;
    *v31 = 0;
    v31[24] = 1;
    *&v30[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_accountIcons] = 0;
    *&v30[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_delegate + 8] = 0;
    v32 = swift_unknownObjectWeakInit();
    *&v30[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts] = v20;
    *&v30[OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_selectedAccounts] = v19;
    *(v32 + 8) = v23;
    swift_unknownObjectWeakAssign();
    v40.receiver = v30;
    v40.super_class = v29;

    v28 = objc_msgSendSuper2(&v40, sel_initWithStyle_, 2);
    goto LABEL_28;
  }

  if (v5 == 1)
  {
    v14 = v2[8];
    v13 = v2[9];
    swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = a2;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = v15;
      v18 = a2;
    }

    else
    {
      v17 = 0;
    }

    v25 = type metadata accessor for CategorySelectionViewController();
    v26 = objc_allocWithZone(v25);
    *&v26[OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_delegate + 8] = 0;
    v27 = swift_unknownObjectWeakInit();
    *&v26[OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_allCategories] = v14;
    *&v26[OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_selectedCategories] = v13;
    *(v27 + 8) = v17;
    swift_unknownObjectWeakAssign();
    v39.receiver = v26;
    v39.super_class = v25;

    v28 = objc_msgSendSuper2(&v39, sel_initWithStyle_, 2);
LABEL_28:
    v12 = v28;
LABEL_32:
    swift_unknownObjectRelease();
    return v12;
  }

  if (v5)
  {
    return 0;
  }

  v6 = v2[5];
  if (!v6)
  {
    return 0;
  }

  v7 = *(v3 + 33);
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v8;
    v11 = a2;
  }

  else
  {
    v10 = 0;
  }

  v33 = type metadata accessor for YearRangePickerViewController();
  v34 = objc_allocWithZone(v33);
  v35 = &v34[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_defaultCellIdentifier];
  *v35 = 1819043139;
  v35[1] = 0xE400000000000000;
  *&v34[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_delegate + 8] = 0;
  v36 = swift_unknownObjectWeakInit();
  *&v34[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_dataSource] = v6;
  v34[OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow] = v7;
  *(v36 + 8) = v10;
  swift_unknownObjectWeakAssign();
  v38.receiver = v34;
  v38.super_class = v33;
  swift_retain_n();
  result = objc_msgSendSuper2(&v38, sel_initWithUsingInsetStyling_, 1);
  if (result)
  {
    v12 = result;

    goto LABEL_32;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D12A6014(uint64_t a1)
{
  v3 = _s13ConfigurationVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12A8B50(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = sub_1D138D57C();
  v16 = *(v15 - 8);
  v63 = v15;
  v64 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = sub_1D129FB90(*(a1 + 16), 0);
    v20 = sub_1D12A22B0(v72, v19 + 4, v18, a1);
    v68 = v72[4];
    v69 = v20;

    sub_1D102CC30();
    if (v69 == v18)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v21 = sub_1D12A3FC4(v19);

  if (v21 >> 62)
  {
    goto LABEL_26;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v60 = v7;
  for (i = v1; v22; i = v1)
  {
    v23 = 0;
    v68 = v21 & 0xFFFFFFFFFFFFFF8;
    v69 = v21 & 0xC000000000000001;
    v7 = v63;
    v66 = (v64 + 48);
    v67 = (v64 + 56);
    v65 = (v64 + 32);
    v24 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v69)
      {
        v25 = MEMORY[0x1D3886B70](v23, v21);
      }

      else
      {
        if (v23 >= *(v68 + 16))
        {
          goto LABEL_25;
        }

        v25 = *(v21 + 8 * v23 + 32);
      }

      v1 = v25;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v25 meaningfulDate];
      if (v27)
      {
        v28 = v70;
        v29 = v27;
        sub_1D138D52C();

        v30 = 0;
      }

      else
      {
        v30 = 1;
        v28 = v70;
      }

      (*v67)(v28, v30, 1, v7);
      sub_1D112A184(v28, v14);
      if ((*v66)(v14, 1, v7) == 1)
      {
        sub_1D12A8D38(v14, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1D12A8B50);
      }

      else
      {
        v31 = *v65;
        (*v65)(v71, v14, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D10F90B0(0, v24[2] + 1, 1, v24);
        }

        v33 = v24[2];
        v32 = v24[3];
        v1 = (v33 + 1);
        if (v33 >= v32 >> 1)
        {
          v24 = sub_1D10F90B0(v32 > 1, v33 + 1, 1, v24);
        }

        v24[2] = v1;
        v34 = v24 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v33;
        v7 = v63;
        v31(v34, v71, v63);
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v22 = sub_1D13910DC();
    v60 = v7;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v7 = v63;
LABEL_28:

  v35 = v62;
  sub_1D12A67B0(v24, v62);
  v36 = v64;
  v37 = *(v64 + 48);
  if (v37(v35, 1, v7) == 1)
  {

    v38 = MEMORY[0x1E6969530];
    v39 = MEMORY[0x1E69E6720];
    v40 = v35;
    return sub_1D12A8D38(v40, &qword_1EE06B500, v38, v39, sub_1D12A8B50);
  }

  v42 = i;
  v43 = sub_1D12A6A60();
  v45 = v44;
  v46 = *(v36 + 8);
  v46(v35, v7);
  if (v45)
  {
  }

  v47 = v7;
  v48 = v60;
  sub_1D12A6D48(v24, v60);

  if (v37(v48, 1, v47) == 1)
  {
    v38 = MEMORY[0x1E6969530];
    v39 = MEMORY[0x1E69E6720];
    v40 = v48;
    return sub_1D12A8D38(v40, &qword_1EE06B500, v38, v39, sub_1D12A8B50);
  }

  v49 = sub_1D12A6A60();
  v51 = v50;
  result = (v46)(v48, v47);
  if ((v51 & 1) == 0)
  {
    v52 = v42;
    if (v43 == v49)
    {
      v52 = v42;
      v42[6] = sub_1D11F3C64(v43);
      v42[7] = v53;
    }

    v54 = v59;
    sub_1D10921C4(v52 + OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration, v59);
    type metadata accessor for YearRangePickerDataSource();
    v55 = swift_allocObject();
    *(v55 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_delegate + 8) = 0;
    result = swift_unknownObjectWeakInit();
    v56 = v49 - v43;
    if (v49 < v43)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v49, v43))
    {
      v57 = v56 + 1;
      if (!__OFADD__(v56, 1))
      {
        if (v56 != -1)
        {
          v58 = sub_1D129FB08(v56 + 1, 0);
          if (sub_1D12A21F8(v72, v58 + 4, v57, v43, v49) == v57)
          {
LABEL_46:
            *(v55 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_pickerRange) = v58;
            *(v55 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMinYear) = v43;
            *(v55 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_selectedMaxYear) = v49;
            sub_1D109238C(v54, v55 + OBJC_IVAR____TtC15HealthRecordsUI25YearRangePickerDataSource_configuration);
            v52[5] = v55;
          }

          __break(1u);
        }

        v58 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }

LABEL_49:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_1D12A67B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1D12A8C88(&qword_1EC60D430, MEMORY[0x1E6969530]);
        v21 = sub_1D13900AC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_1D12A6A60()
{
  v15 = sub_1D138D18C();
  v0 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138D76C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() hk_gregorianCalendarWithUTCTimeZone];
  sub_1D138D6EC();

  sub_1D12A8B50(0, &qword_1EC609C80, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v8 = sub_1D138D75C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E700;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E6969A68], v8);
  sub_1D1265AC0(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  sub_1D138D6CC();

  v12 = sub_1D138D13C();
  (*(v0 + 8))(v2, v15);
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t sub_1D12A6D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D138D57C();
  MEMORY[0x1EEE9AC00](*(v4 - 8));
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v8 + 16);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v26 = v8;
    v24 = a2;
    v25 = v13;
    (v13)(&v23 - v9, v14, v4, v10);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v6, v14 + *(result + 72) * v19, v4);
        sub_1D12A8C88(&qword_1EC60D430, MEMORY[0x1E6969530]);
        v21 = sub_1D13900AC();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v6, v4);
        }

        else
        {
          v22(v6, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v8 + 56);

    return v17(a2, 1, 1, v4, v10);
  }

  return result;
}

uint64_t sub_1D12A6FF8()
{

  sub_1D1092890(v0 + OBJC_IVAR____TtC15HealthRecordsUI26PDFConfigurationDataSource_configuration);
  return v0;
}

uint64_t sub_1D12A7068()
{
  sub_1D12A6FF8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PDFConfigurationDataSource()
{
  result = qword_1EC60EAB8;
  if (!qword_1EC60EAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12A7114()
{
  result = _s13ConfigurationVMa();
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

uint64_t sub_1D12A71F4(uint64_t *a1)
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
        v5 = sub_1D13904DC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D12A7684(v7, v8, a1, v4);
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
    return sub_1D12A7400(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D12A72EC(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D13915BC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D106F934(0, &qword_1EC609A00);
        v6 = sub_1D13904DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D12A7CC4(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1D12A7508(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D12A7400(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *(v10 + 32);
      v11 = result == *(v10 - 40) && *(v10 + 40) == *(v10 - 32);
      if (v11 || (result = sub_1D139162C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 72;
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

      v12 = v10 - 72;
      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 24);
      *(v10 + 32) = *(v10 - 40);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 8);
      v14 = *(v10 - 56);
      *v10 = *(v10 - 72);
      *(v10 + 16) = v14;
      *(v12 + 64) = v20;
      *(v12 + 32) = v18;
      *(v12 + 48) = v19;
      v10 -= 72;
      *v12 = v16;
      *(v12 + 16) = v17;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D12A7508(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 title];
      v11 = sub_1D139016C();
      v13 = v12;

      v14 = [v9 title];
      v15 = sub_1D139016C();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_1D139162C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D12A7684(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  __dst = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    __dst = *__dst;
    if (!__dst)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D1245848(v8);
      v8 = result;
    }

    v83 = v8 + 16;
    v84 = *(v8 + 2);
    if (v84 >= 2)
    {
      while (1)
      {
        v85 = *v5;
        if (!*v5)
        {
          goto LABEL_142;
        }

        v86 = &v8[16 * v84];
        v5 = *v86;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1D12A84C4((v85 + 72 * *v86), (v85 + 72 * *v87), (v85 + 72 * v88), __dst);
        if (v4)
        {
        }

        if (v88 < v5)
        {
          goto LABEL_130;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_131;
        }

        *v86 = v5;
        *(v86 + 1) = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_132;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        v5 = a3;
        if (v84 <= 1)
        {
        }
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 72 * v7;
      result = *(v11 + 32);
      v12 = *(v11 + 40);
      v13 = *v5 + 72 * v9;
      if (result == *(v13 + 32) && v12 == *(v13 + 40))
      {
        v15 = 0;
      }

      else
      {
        result = sub_1D139162C();
        v15 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v16 = (v10 + 72 * v9 + 184);
        do
        {
          result = *(v16 - 1);
          if (result == *(v16 - 10) && *v16 == *(v16 - 9))
          {
            if (v15)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D139162C();
            if ((v15 ^ result))
            {
              goto LABEL_23;
            }
          }

          v16 += 9;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v15)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v18 = 72 * v7 - 72;
          v19 = v9;
          v20 = 72 * v9;
          v21 = v7;
          v90 = v19;
          do
          {
            if (v19 != --v21)
            {
              v23 = *v5;
              if (!*v5)
              {
                goto LABEL_141;
              }

              v22 = v23 + v18;
              v99 = *(v23 + v20 + 32);
              v101 = *(v23 + v20 + 48);
              v103 = *(v23 + v20 + 64);
              v95 = *(v23 + v20);
              v97 = *(v23 + v20 + 16);
              result = memmove((v23 + v20), (v23 + v18), 0x48uLL);
              *(v22 + 32) = v99;
              *(v22 + 48) = v101;
              *(v22 + 64) = v103;
              *v22 = v95;
              *(v22 + 16) = v97;
            }

            ++v19;
            v18 -= 72;
            v20 += 72;
          }

          while (v19 < v21);
          v9 = v90;
        }
      }
    }

    v24 = v5[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_136;
        }

        if (v9 + a4 >= v24)
        {
          v25 = v5[1];
        }

        else
        {
          v25 = v9 + a4;
        }

        if (v25 < v9)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (v7 != v25)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v37 = *(v8 + 2);
    v36 = *(v8 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_1D10F7610((v36 > 1), v37 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v38;
    v39 = &v8[16 * v37];
    *(v39 + 4) = v9;
    *(v39 + 5) = v7;
    v40 = *__dst;
    if (!*__dst)
    {
      goto LABEL_143;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_75:
          if (v45)
          {
            goto LABEL_121;
          }

          v58 = &v8[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_124;
          }

          v64 = &v8[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_128;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v68 = &v8[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_89:
        if (v63)
        {
          goto LABEL_123;
        }

        v71 = &v8[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_126;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_96:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v5)
        {
          goto LABEL_140;
        }

        v80 = *&v8[16 * v79 + 32];
        v81 = *&v8[16 * v41 + 40];
        sub_1D12A84C4((*v5 + 72 * v80), (*v5 + 72 * *&v8[16 * v41 + 32]), (*v5 + 72 * v81), v40);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D1245848(v8);
        }

        if (v79 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v82 = &v8[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        result = sub_1D12457BC(v41);
        v38 = *(v8 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v8[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_119;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_120;
      }

      v53 = &v8[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_122;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_125;
      }

      if (v57 >= v49)
      {
        v75 = &v8[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_129;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  v26 = *v5;
  v27 = *v5 + 72 * v7;
  v91 = v9;
  v28 = v9 - v7;
LABEL_44:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 32) == *(v30 - 40) && *(v30 + 40) == *(v30 - 32);
    if (v31 || (result = sub_1D139162C(), (result & 1) == 0))
    {
LABEL_43:
      ++v7;
      v27 += 72;
      --v28;
      if (v7 != v25)
      {
        goto LABEL_44;
      }

      v7 = v25;
      v5 = a3;
      v9 = v91;
      goto LABEL_55;
    }

    if (!v26)
    {
      break;
    }

    v32 = v30 - 72;
    v100 = *(v30 + 32);
    v102 = *(v30 + 48);
    v104 = *(v30 + 64);
    v96 = *v30;
    v98 = *(v30 + 16);
    v33 = *(v30 - 24);
    *(v30 + 32) = *(v30 - 40);
    *(v30 + 48) = v33;
    *(v30 + 64) = *(v30 - 8);
    v34 = *(v30 - 56);
    *v30 = *(v30 - 72);
    *(v30 + 16) = v34;
    *(v32 + 64) = v104;
    *(v32 + 32) = v100;
    *(v32 + 48) = v102;
    v30 -= 72;
    *v32 = v96;
    *(v32 + 16) = v98;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}

void sub_1D12A7CC4(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_1D12A8764((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_1D1245848(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1D12457BC(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_1D1245848(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 title];
      v16 = sub_1D139016C();
      v18 = v17;

      v19 = [v14 title];
      v20 = sub_1D139016C();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_1D139162C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 title];
          v5 = sub_1D139016C();
          v29 = v28;

          v30 = [v26 title];
          v31 = sub_1D139016C();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = sub_1D139162C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_1D10F7610(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_1D10F7610((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_1D12A8764((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D1245848(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1D12457BC(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 title];
    v5 = sub_1D139016C();
    v51 = v50;

    v52 = [v48 title];
    v53 = sub_1D139016C();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = sub_1D139162C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

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
}

uint64_t sub_1D12A84C4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 72;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 72;
  if (v9 < v11)
  {
    if (__dst != __src || &__src[72 * v9] <= __dst)
    {
      memmove(__dst, __src, 72 * v9);
    }

    v12 = &v4[72 * v9];
    if (v8 < 72 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = *(v6 + 4) == *(v4 + 4) && *(v6 + 5) == *(v4 + 5);
      if (v13 || (sub_1D139162C() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 72;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 72;
      if (v4 >= v12 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_41;
      }
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 72;
    if (v13)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v14, 0x48uLL);
    goto LABEL_17;
  }

  if (__dst != a2 || &a2[72 * v11] <= __dst)
  {
    memmove(__dst, a2, 72 * v11);
  }

  v12 = &v4[72 * v11];
  if (v10 >= 72 && v6 > v7)
  {
    do
    {
      v5 -= 72;
      while (1)
      {
        v15 = *(v12 - 5) == *(v6 - 5) && *(v12 - 4) == *(v6 - 4);
        if (!v15 && (sub_1D139162C() & 1) != 0)
        {
          break;
        }

        v16 = (v12 - 72);
        if (v5 + 72 != v12)
        {
          memmove(v5, v12 - 72, 0x48uLL);
        }

        v5 -= 72;
        v12 -= 72;
        if (v16 <= v4)
        {
          v12 = v16;
          goto LABEL_41;
        }
      }

      v17 = v6 - 72;
      if (v5 + 72 != v6)
      {
        memmove(v5, v6 - 72, 0x48uLL);
      }

      if (v12 <= v4)
      {
        break;
      }

      v6 -= 72;
    }

    while (v17 > v7);
    v6 = v17;
  }

LABEL_41:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[72 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

uint64_t sub_1D12A8764(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 title];
        v38 = sub_1D139016C();
        v40 = v39;

        v41 = [v36 title];
        v42 = sub_1D139016C();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = sub_1D139162C();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 title];
        v18 = sub_1D139016C();
        v20 = v19;

        v21 = [v16 title];
        v22 = sub_1D139016C();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_1D139162C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

void sub_1D12A8B50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12A8BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v2;
  v10 = *(a1 + 64);
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v8 = *(a2 + 64);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return _s15HealthRecordsUI15DisplayCategoryV2eeoiySbAC_ACtFZ_0(v9, v7) & 1;
}

void sub_1D12A8C20()
{
  if (!qword_1EC609E90)
  {
    sub_1D106F934(255, &qword_1EE06B0E0);
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC609E90);
    }
  }
}

uint64_t sub_1D12A8C88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D12A8CD0()
{
  result = qword_1EC60A950;
  if (!qword_1EC60A950)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60A950);
  }

  return result;
}

uint64_t sub_1D12A8D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D12A8D98()
{
  if (!qword_1EC60EAC8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1D139127C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EAC8);
    }
  }
}

uint64_t sub_1D12A8DFC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v3;
  v11 = *(a1 + 64);
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v5 = *(v2 + 48);
  v8[2] = *(v2 + 32);
  v8[3] = v5;
  v9 = *(v2 + 64);
  v6 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v6;
  return _s15HealthRecordsUI15DisplayCategoryV2eeoiySbAC_ACtFZ_0(v10, v8) & 1;
}

uint64_t sub_1D12A8E6C()
{
  v0 = sub_1D138D7FC();
  switch(v0)
  {
    case 2:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

LABEL_11:
      swift_once();
      return sub_1D138D1CC();
    case 1:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_11;
    case 0:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1D12A900C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D12A9060()
{
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE069F98;

  v1 = sub_1D138D1CC();
  v3 = v2;

  qword_1EC60EAD0 = v1;
  *algn_1EC60EAD8 = v3;
}

void sub_1D12A9138()
{
  v0 = objc_opt_self();
  v1 = sub_1D139012C();
  v2 = [v0 modelSpecificLocalizedStringKeyForKey_];

  if (v2)
  {
    sub_1D139016C();

    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE069F98;

    v4 = sub_1D138D1CC();
    v6 = v5;

    qword_1EC60EAE0 = v4;
    *algn_1EC60EAE8 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D12A9280()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton);
  }

  else
  {
    v4 = sub_1D12A92E4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D12A92E4(uint64_t a1)
{
  v2 = [objc_opt_self() boldButton];
  if (qword_1EE069F90 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v3 = sub_1D139012C();

  [v2 setTitle:v3 forState:{0, 0xE000000000000000}];

  [v2 addTarget:a1 action:sel_doneButtonTapped_ forControlEvents:64];
  return v2;
}

id sub_1D12A93FC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    v5 = [objc_opt_self() systemWhiteColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 startAnimating];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1D12A94D8(void *a1, void *a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___doneButton] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner] = 0;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession] = a1;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] = a2;
  *&v3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_selectedItems] = a3;
  v5 = qword_1EC608DF0;
  v6 = a1;
  v7 = a2;
  if (v5 != -1)
  {
    swift_once();
  }

  v8 = sub_1D139012C();
  if (qword_1EC608DF8 != -1)
  {
    swift_once();
  }

  sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E700;
  v10 = [v7 title];
  v11 = sub_1D139016C();
  v13 = v12;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1D1089930();
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  sub_1D13901AC();
  v14 = sub_1D139012C();

  v17.receiver = v3;
  v17.super_class = type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController();
  v15 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_icon_contentLayout_, v8, v14, 0, 3);

  return v15;
}

void sub_1D12A97D0()
{
  v0 = sub_1D12A9280();
  sub_1D10A5C9C(0, &qword_1EE06B560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D139EAB0;
  *(v1 + 32) = sub_1D139016C();
  *(v1 + 40) = v2;
  *(v1 + 48) = 0xD000000000000010;
  *(v1 + 56) = 0x80000001D13B8B50;
  *(v1 + 64) = 1701736260;
  *(v1 + 72) = 0xE400000000000000;
  v3 = sub_1D139044C();

  v4 = HKUIJoinStringsForAutomationIdentifier();

  [v0 setAccessibilityIdentifier_];
}

void sub_1D12A98D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D138F0BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE06B6C8;
  v11 = sub_1D139012C();
  v12 = [objc_opt_self() imageNamed:v11 inBundle:v10];

  if (!v12)
  {
    sub_1D138F06C();
    v45 = sub_1D138F0AC();
    v46 = sub_1D139081C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v64 = v48;
      v65 = ObjectType;
      *v47 = 136315138;
      swift_getMetatypeMetadata();
      v49 = sub_1D13901EC();
      v51 = sub_1D11DF718(v49, v50, &v64);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D101F000, v45, v46, "[%s]: couldn't find image 'HealthLink_Onboarding_SharingInProgressWithSpinnerPlaceholder'", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x1D38882F0](v48, -1, -1);
      MEMORY[0x1D38882F0](v47, -1, -1);
    }

    v52 = *(v4 + 8);
    v53 = v6;
LABEL_14:
    v52(v53, v3);
    return;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = sub_1D12A93FC();
  [v13 addSubview_];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (!v16)
  {

    sub_1D138F06C();
    v54 = sub_1D138F0AC();
    v55 = sub_1D139081C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v64 = v57;
      v65 = ObjectType;
      *v56 = 136315138;
      swift_getMetatypeMetadata();
      v58 = sub_1D13901EC();
      v60 = sub_1D11DF718(v58, v59, &v64);
      v63 = v3;
      v61 = v60;

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1D101F000, v54, v55, "[%s]: there is no customIconContainerView", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      MEMORY[0x1D38882F0](v57, -1, -1);
      MEMORY[0x1D38882F0](v56, -1, -1);

      (*(v4 + 8))(v9, v63);
      return;
    }

    v52 = *(v4 + 8);
    v53 = v9;
    goto LABEL_14;
  }

  [v16 addSubview_];
  v62 = objc_opt_self();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D13A72C0;
  v18 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner;
  v19 = [*&v1[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController____lazy_storage___spinner] centerXAnchor];
  v20 = [v13 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:106.0];

  *(v17 + 32) = v21;
  v22 = [*&v1[v18] centerYAnchor];
  v23 = [v13 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:60.5];

  *(v17 + 40) = v24;
  v25 = [*&v1[v18] heightAnchor];
  v26 = [v25 constraintEqualToConstant_];

  *(v17 + 48) = v26;
  v27 = [*&v1[v18] widthAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v17 + 56) = v28;
  v29 = [v13 centerYAnchor];
  v30 = [v16 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v17 + 64) = v31;
  v32 = [v13 centerXAnchor];
  v33 = [v16 centerXAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v17 + 72) = v34;
  v35 = [v13 heightAnchor];
  v36 = [v16 heightAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v17 + 80) = v37;
  v38 = [v13 widthAnchor];

  v39 = [v16 heightAnchor];
  [v12 size];
  v41 = v40;
  [v12 size];
  v43 = [v38 constraintEqualToAnchor:v39 multiplier:v41 / v42];

  *(v17 + 88) = v43;
  sub_1D106F934(0, &qword_1EC609690);
  v63 = sub_1D139044C();

  [v62 activateConstraints_];

  v44 = v63;
}

uint64_t sub_1D12AA0D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1D138F0BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE06B6C8;
  v7 = sub_1D139012C();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  if (v8)
  {
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v9 = sub_1D138D1CC();
    v11 = v10;
    sub_1D138D1CC();
    sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D139E700;
    v13 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] title];
    v14 = sub_1D139016C();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x1E69E6158];
    *(v12 + 64) = sub_1D1089930();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    v17 = sub_1D13901AC();
    v19 = v18;

    sub_1D12AAA74(v8, v9, v11, v17, v19, v0);
  }

  else
  {
    sub_1D138F06C();
    v21 = sub_1D138F0AC();
    v22 = sub_1D13907FC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28[0] = v24;
      v28[1] = ObjectType;
      *v23 = 136315138;
      swift_getMetatypeMetadata();
      v25 = sub_1D13901EC();
      v27 = sub_1D11DF718(v25, v26, v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D101F000, v21, v22, "[%s] Could not load image HealthLink_Onboarding_SharingCompleted", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1D38882F0](v24, -1, -1);
      MEMORY[0x1D38882F0](v23, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1D12AA510(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D138F0BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE06A528 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE06B6C8;
  v10 = sub_1D139012C();
  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    v44 = a1;
    if (qword_1EE069F90 != -1)
    {
      swift_once();
    }

    v48 = v11;
    v46 = sub_1D138D1CC();
    v47 = v12;
    v13 = objc_opt_self();
    v14 = sub_1D139012C();
    v15 = [v13 modelSpecificLocalizedStringKeyForKey_];

    if (v15)
    {
      sub_1D139016C();

      sub_1D138D1CC();

      sub_1D10C68DC(0, &qword_1EE06B080, &qword_1EE06B070, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D139E710;
      v17 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account;
      v18 = [*&v2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] title];
      v19 = sub_1D139016C();
      v21 = v20;

      v22 = MEMORY[0x1E69E6158];
      *(v16 + 56) = MEMORY[0x1E69E6158];
      v23 = sub_1D1089930();
      *(v16 + 64) = v23;
      *(v16 + 32) = v19;
      *(v16 + 40) = v21;
      v45 = v2;
      v24 = [*&v2[v17] title];
      v25 = sub_1D139016C();
      v27 = v26;

      *(v16 + 96) = v22;
      *(v16 + 104) = v23;
      *(v16 + 72) = v25;
      *(v16 + 80) = v27;
      v28 = sub_1D13901AC();
      v30 = v29;

      if ([objc_opt_self() isAppleInternalInstall])
      {
        v49 = v28;
        v50 = v30;

        MEMORY[0x1D3885C10](0xD000000000000012, 0x80000001D13C8CF0);

        v31 = v49;
        v32 = v50;
        swift_getErrorValue();
        v33 = sub_1D13916FC();
        v35 = v34;
        v49 = v31;
        v50 = v32;

        MEMORY[0x1D3885C10](v33, v35);

        v28 = v49;
        v30 = v50;
      }

      v36 = v48;
      sub_1D12AAA74(v48, v46, v47, v28, v30, v45);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D138F06C();
    v37 = sub_1D138F0AC();
    v38 = sub_1D13907FC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v40;
      *v39 = 136315138;
      v49 = ObjectType;
      swift_getMetatypeMetadata();
      v41 = sub_1D13901EC();
      v43 = sub_1D11DF718(v41, v42, &v51);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_1D101F000, v37, v38, "[%s] Could not load image HealthLink_Onboarding_Error", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x1D38882F0](v40, -1, -1);
      MEMORY[0x1D38882F0](v39, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1D12AAA74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  v6 = a6;
  v8 = [a6 headerView];
  v9 = [v8 customIconContainerView];

  if (!v9)
  {
LABEL_14:
    sub_1D13911EC();
    MEMORY[0x1D3885C10](0xD00000000000003BLL, 0x80000001D13C9EB0);
    v42 = [v6 headerView];
    v43 = [v42 description];
    v44 = sub_1D139016C();
    v46 = v45;

    MEMORY[0x1D3885C10](v44, v46);

    sub_1D13913BC();
    __break(1u);
    return;
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAlpha_];
  [v9 addSubview_];
  v11 = [v10 centerXAnchor];
  v12 = [v9 centerXAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  [v13 setActive_];
  v14 = [v10 centerYAnchor];
  v15 = [v9 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  [v16 setActive_];
  v17 = [v10 heightAnchor];
  v18 = [v9 heightAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  [v19 setActive_];
  v20 = [v10 widthAnchor];

  v21 = [v9 heightAnchor];
  [a1 size];
  v23 = v22;
  [a1 size];
  v25 = [v20 constraintEqualToAnchor:v21 multiplier:v23 / v24];

  [v25 setActive_];
  v26 = swift_allocObject();
  v26[2] = v10;
  v26[3] = v6;
  v26[4] = a2;
  v26[5] = a3;
  v26[6] = a4;
  v26[7] = a5;
  v26[8] = nullsub_1;
  v26[9] = 0;
  v27 = v10;

  v6 = v6;
  v28 = [v9 subviews];
  sub_1D106F934(0, &qword_1EC609680);
  v29 = sub_1D139045C();

  if (v29 >> 62)
  {
    if (sub_1D13910DC())
    {
      goto LABEL_4;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1D3886B70](0, v29);
      goto LABEL_7;
    }

    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v29 + 32);
LABEL_7:
      v31 = v30;

      v32 = objc_opt_self();
      v33 = swift_allocObject();
      v33[2] = v31;
      v33[3] = sub_1D12AFF70;
      v33[4] = v26;
      v56 = sub_1D12AFFD0;
      v57 = v33;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1D10CBD3C;
      v55 = &block_descriptor_116;
      v34 = _Block_copy(&aBlock);
      v35 = v31;

      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v56 = sub_1D11B6CAC;
      v57 = v36;
      aBlock = MEMORY[0x1E69E9820];
      v53 = 1107296256;
      v54 = sub_1D12A900C;
      v55 = &block_descriptor_122;
      v37 = _Block_copy(&aBlock);
      v38 = v35;

      [v32 animateWithDuration:v34 animations:v37 completion:0.3];

      _Block_release(v37);
      _Block_release(v34);

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  [v27 setAlpha_];
  v39 = [v6 headerView];
  v40 = sub_1D139012C();
  [v39 setTitle_];

  v41 = [v6 &selRef_providerServiceStore];
  v51 = sub_1D139012C();
  [v41 setDetailText_];
}

uint64_t sub_1D12AB1A8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  [a1 setAlpha_];
  v9 = [a2 headerView];
  v10 = sub_1D139012C();
  [v9 setTitle_];

  v11 = [a2 headerView];
  v12 = sub_1D139012C();
  [v11 setDetailText_];

  return a7();
}

uint64_t sub_1D12AB2A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1D12AF874(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v53 - v4;
  sub_1D12AF9CC();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12AFA8C(0);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12AFAF4(0, &qword_1EC60EB88, sub_1D12AFA8C, sub_1D12AFBE0);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v53 - v12;
  sub_1D12AFC14();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D138FF3C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1D106F934(0, &qword_1EE06B760);
  *v20 = sub_1D1390A7C();
  (*(v18 + 104))(v20, *MEMORY[0x1E69E8020], v17);
  v21 = sub_1D138FF5C();
  result = (*(v18 + 8))(v20, v17);
  if (v21)
  {
    sub_1D12A98D8();
    v23 = [v1 navigationItem];
    [v23 setRightBarButtonItem_];

    v24 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss;
    v1[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 0;
    v25 = sub_1D12A9280();
    [v25 setEnabled_];

    [v1 setModalInPresentation_];
    v26 = *&v1[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account];
    v27 = sub_1D12AC84C(v26);
    v55 = v15;
    v28 = v27;

    v66 = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D12AFD68;
    *(v30 + 24) = v29;
    v31 = v1;
    sub_1D138F61C();
    v53 = ObjectType;
    v32 = MEMORY[0x1E695BED0];
    sub_1D12AF750(0, &qword_1EC60EB68, MEMORY[0x1E695BED0]);
    sub_1D106F934(0, &qword_1EC609A00);
    v54 = v14;
    sub_1D12AF7E8(&qword_1EC60EB70, &qword_1EC60EB68, v32);
    sub_1D138F8AC();

    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1D12AFDA4;
    *(v34 + 24) = v33;
    v35 = v31;
    sub_1D138F61C();
    sub_1D12AFAC0();
    v36 = v58;
    v37 = v59;
    sub_1D138F8AC();

    (*(v57 + 8))(v8, v36);
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1D12AFDAC;
    *(v39 + 24) = v38;
    v40 = v35;
    sub_1D138F61C();
    sub_1D12AFBE0();
    v41 = v61;
    v42 = v62;
    sub_1D138F8AC();

    (*(v60 + 8))(v37, v41);
    v43 = sub_1D1390A7C();
    v66 = v43;
    v44 = sub_1D1390A2C();
    (*(*(v44 - 8) + 56))(v5, 1, 1, v44);
    sub_1D12AFCE0();
    sub_1D10EDC58();
    v45 = v64;
    v46 = v65;
    sub_1D138F8BC();
    sub_1D10D5C04(v5);

    (*(v63 + 8))(v42, v45);
    v47 = swift_allocObject();
    v48 = v53;
    *(v47 + 16) = v40;
    *(v47 + 24) = v48;
    v49 = swift_allocObject();
    *(v49 + 16) = v40;
    *(v49 + 24) = v48;
    sub_1D12AFDC4(&qword_1EC60EBA8, sub_1D12AFC14);
    v50 = v40;
    v51 = v54;
    v52 = sub_1D138F85C();

    (*(v55 + 8))(v46, v51);
    *&v50[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_cancellable] = v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D12ABB70(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF69C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = ObjectType;
  v11 = MEMORY[0x1E695C028];
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v11);
  v12 = a1;
  v13 = a2;
  sub_1D138F75C();
  sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C);
  v14 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1D12ABD48(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF69C();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a1;
  v10[4] = ObjectType;
  v11 = MEMORY[0x1E695C028];
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v11);
  v12 = a2;
  v13 = a1;
  sub_1D138F75C();
  sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C);
  v14 = sub_1D138F80C();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_1D12ABF20(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF69C();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = ObjectType;
  v9 = MEMORY[0x1E695C028];
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v9);
  v10 = a1;
  sub_1D138F75C();
  sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C);
  v11 = sub_1D138F80C();
  (*(v5 + 8))(v7, v4);
  return v11;
}

void sub_1D12AC0E4(void **a1, _BYTE *a2)
{
  v4 = sub_1D138F0BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss;
  a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 1;
  v10 = sub_1D12A9280();
  [v10 setEnabled_];

  [a2 setModalInPresentation_];
  if (v8)
  {
    sub_1D138F06C();
    v11 = v8;
    v12 = sub_1D138F0AC();
    v13 = sub_1D13907FC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v4;
      v16 = v15;
      v27 = v15;
      *v14 = 136446466;
      v17 = sub_1D139184C();
      v19 = sub_1D11DF718(v17, v18, &v27);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v26 = v8;
      v20 = v8;
      sub_1D1080EA4(0, &qword_1EE06B690);
      v21 = sub_1D139020C();
      v23 = sub_1D11DF718(v21, v22, &v27);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1D101F000, v12, v13, "[%{public}s]: Error during sharing initiation: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v16, -1, -1);
      MEMORY[0x1D38882F0](v14, -1, -1);

      (*(v5 + 8))(v7, v25);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    sub_1D12AA510(v8);
  }
}

uint64_t sub_1D12AC380(void **a1, _BYTE *a2, uint64_t a3)
{
  v42 = a3;
  v5 = sub_1D138D5EC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138F0BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1D138F04C();
  v13 = v12;
  v14 = sub_1D138F0AC();
  v15 = sub_1D139081C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = v5;
    v17 = v16;
    v41 = swift_slowAlloc();
    v45 = v41;
    *v17 = 136315394;
    v18 = sub_1D139184C();
    v20 = sub_1D11DF718(v18, v19, &v45);
    v42 = v8;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v13 identifier];
    v23 = v44;
    sub_1D138D5CC();

    sub_1D12AFDC4(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v24 = sub_1D13915CC();
    v26 = v25;
    (*(v6 + 8))(v23, v43);
    v27 = sub_1D11DF718(v24, v26, &v45);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1D101F000, v14, v15, "[%s] Successfully started sharing for account %s)", v17, 0x16u);
    v28 = v41;
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v28, -1, -1);
    v29 = v17;
    v5 = v43;
    MEMORY[0x1D38882F0](v29, -1, -1);

    (*(v9 + 8))(v11, v42);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v30 = [*(*&a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession] + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) ingestionStore];
  v31 = sub_1D139012C();
  sub_1D12AF874(0, &qword_1EC60EBB0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6F90]);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D139E700;
  v34 = [*&a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account] identifier];
  v35 = v44;
  sub_1D138D5CC();

  (*(v6 + 32))(v33 + v32, v35, v5);
  v36 = sub_1D139044C();

  [v30 ingestHealthRecordsWithOptions:0 reason:v31 accountIdentifiers:v36 completion:0];

  v37 = OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss;
  a2[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_readyToDismiss] = 1;
  v38 = sub_1D12A9280();
  [v38 setEnabled_];

  [a2 setModalInPresentation_];
  return sub_1D12AA0D8();
}

uint64_t sub_1D12AC84C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D12AF634();
  v4 = v3;
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12AF750(0, &qword_1EC60EB30, MEMORY[0x1E695C0C0]);
  v8 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  sub_1D12AF69C();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    v18[2] = v1;
    v18[3] = v17;
    v18[4] = ObjectType;
    v19 = MEMORY[0x1E695C028];
    sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
    sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v19);
    v20 = a1;
    v21 = v1;
    sub_1D138F75C();
    sub_1D12AFDC4(&qword_1EC60EB58, sub_1D12AF69C);
    v22 = sub_1D138F80C();
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    v28 = a1;
    sub_1D106F934(0, &qword_1EC609A00);
    v23 = a1;
    sub_1D138F71C();
    sub_1D1080EA4(0, &qword_1EE06B690);
    sub_1D138F6FC();
    (*(v25 + 8))(v6, v4);
    sub_1D12AF7E8(&qword_1EC60EB50, &qword_1EC60EB30, MEMORY[0x1E695C0C0]);
    v22 = sub_1D138F80C();
    (*(v26 + 8))(v10, v8);
  }

  return v22;
}

uint64_t sub_1D12ACC44(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5)
{
  sub_1D12AF874(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v36 - v11;
  v12 = sub_1D138F0BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_1D138F06C();
  v17 = sub_1D138F0AC();
  v18 = sub_1D139081C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v12;
    v21 = v20;
    v41 = v20;
    *v19 = 136315138;
    v22 = sub_1D139184C();
    v39 = a5;
    v24 = sub_1D11DF718(v22, v23, &v41);
    v38 = v16;
    v25 = v13;
    v26 = v24;
    a5 = v39;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_1D101F000, v17, v18, "[%s] Persisting newly logged in account...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1D38882F0](v21, -1, -1);
    MEMORY[0x1D38882F0](v19, -1, -1);

    (*(v25 + 8))(v15, v37);
    v16 = v38;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v27 = *&a3[OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession];
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = sub_1D12AF8D8;
  v28[4] = v16;
  v28[5] = a5;
  v29 = sub_1D13905DC();
  v30 = v40;
  (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v27;
  *(v31 + 40) = a4;
  *(v31 + 48) = 1;
  *(v31 + 56) = sub_1D12AF8E4;
  *(v31 + 64) = v28;
  v32 = a3;
  v33 = v27;
  v34 = a4;
  sub_1D107877C(0, 0, v30, &unk_1D13ADBC0, v31);
}

void sub_1D12ACFD0(void *a1, void *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v11 = sub_1D138D5EC();
  v60 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D138F0BC();
  v63 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  if (a1)
  {
    v62 = v14;
    v20 = *(a3 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account);
    *(a3 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_account) = a1;
    v21 = a1;

    sub_1D138F06C();
    v22 = v21;
    v23 = sub_1D138F0AC();
    v24 = sub_1D139081C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v59 = a4;
      v26 = v25;
      v58 = swift_slowAlloc();
      v65 = v58;
      *v26 = 136315394;
      v27 = sub_1D139184C();
      v29 = sub_1D11DF718(v27, v28, &v65);
      v61 = a5;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      v31 = [v22 identifier];
      sub_1D138D5CC();

      sub_1D12AFDC4(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
      v32 = sub_1D13915CC();
      v34 = v33;
      (*(v60 + 8))(v13, v11);
      v35 = sub_1D11DF718(v32, v34, &v65);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_1D101F000, v23, v24, "[%s] Successfully persisted newly logged in account %s", v26, 0x16u);
      v36 = v58;
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v36, -1, -1);
      v37 = v26;
      a4 = v59;
      MEMORY[0x1D38882F0](v37, -1, -1);
    }

    (*(v63 + 8))(v19, v62);
    v38 = v22;
    a4(a1, 0);
  }

  else
  {
    sub_1D138F06C();
    v39 = a2;
    v40 = sub_1D138F0AC();
    v41 = sub_1D13907FC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62 = v14;
      v43 = a4;
      v44 = v42;
      v45 = swift_slowAlloc();
      v65 = v45;
      *v44 = 136315394;
      v46 = sub_1D139184C();
      v48 = sub_1D11DF718(v46, v47, &v65);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      v64 = a2;
      v49 = a2;
      sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v50 = sub_1D139020C();
      v52 = sub_1D11DF718(v50, v51, &v65);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_1D101F000, v40, v41, "[%s] Error persisting newly logged in account: %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v45, -1, -1);
      v53 = v44;
      a4 = v43;
      MEMORY[0x1D38882F0](v53, -1, -1);

      (*(v63 + 8))(v16, v62);
    }

    else
    {

      (*(v63 + 8))(v16, v14);
    }

    v54 = a2;
    if (!a2)
    {
      v55 = objc_opt_self();
      v56 = sub_1D139012C();
      v54 = [v55 hk:11 error:v56 description:?];
    }

    v57 = a2;
    a4(v54, 1);
  }
}

void sub_1D12AD584(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v92 = sub_1D138ED5C();
  v9 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v97 = type metadata accessor for ClinicalSharingSelectableAuthorizationCategoryItem();
  v91 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v79 - v19;
  v20 = sub_1D138D5EC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v81 = v24;

  v83 = a3;
  v25 = [a3 identifier];
  sub_1D138D5CC();

  sub_1D138D59C();
  (*(v21 + 8))(v23, v20);
  v26 = objc_allocWithZone(MEMORY[0x1E696C438]);
  v27 = sub_1D139012C();

  v28 = [v26 initForClinicalAccountIdentifier_];

  v29 = [*(*(a4 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession) + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile) healthStore];
  v30 = objc_allocWithZone(MEMORY[0x1E696C430]);
  v80 = v28;
  v79 = [v30 initWithHealthStore:v29 recipientIdentifier:v28];

  v31 = *(a4 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_selectedItems);
  v89 = *(v31 + 16);
  if (v89)
  {
    v32 = 0;
    v33 = v90;
    v84 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v85 = v16;
    v87 = v31;
    v88 = v31 + v84;
    v34 = (v9 + 16);
    v96 = v9 + 32;
    v94 = MEMORY[0x1E69E7CC0];
    v35 = v93;
    v36 = v9;
    v37 = v97;
    v38 = v91;
    v86 = v11;
    while (v32 < *(v31 + 16))
    {
      v39 = *(v38 + 72);
      sub_1D111EC40(v88 + v39 * v32, v33);
      v40 = *(v33 + *(v37 + 52));
      v93 = v32;
      if (v40)
      {
        v41 = *(v40 + 16);
        if (v41)
        {
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1D10FDD9C(0, v41, 0);
          v42 = aBlock[0];
          v43 = v40 + v84;
          v44 = v92;
          do
          {
            v45 = v95;
            sub_1D111EC40(v43, v95);
            (*v34)(v35, v45 + *(v97 + 48), v44);
            sub_1D111ECA4(v45);
            aBlock[0] = v42;
            v47 = *(v42 + 16);
            v46 = *(v42 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_1D10FDD9C(v46 > 1, v47 + 1, 1);
              v42 = aBlock[0];
            }

            *(v42 + 16) = v47 + 1;
            (*(v36 + 32))(v42 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v47, v35, v44);
            v43 += v39;
            --v41;
          }

          while (v41);
          v16 = v85;
          v11 = v86;
        }

        else
        {
          v42 = MEMORY[0x1E69E7CC0];
        }

        v53 = *(v42 + 16);
        v54 = v94[2];
        v55 = v54 + v53;
        v37 = v97;
        if (__OFADD__(v54, v53))
        {
          goto LABEL_38;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v94;
        if (!isUniquelyReferenced_nonNull_native || v55 > v94[3] >> 1)
        {
          if (v54 <= v55)
          {
            v58 = v54 + v53;
          }

          else
          {
            v58 = v54;
          }

          v57 = sub_1D10F78B8(isUniquelyReferenced_nonNull_native, v58, 1, v94);
        }

        v48 = v92;
        v59 = *(v42 + 16);
        v94 = v57;
        if (v59)
        {
          if ((v57[3] >> 1) - v57[2] < v53)
          {
            goto LABEL_40;
          }

          v60 = v57;
          swift_arrayInitWithCopy();

          if (v53)
          {
            v61 = v60[2];
            v62 = __OFADD__(v61, v53);
            v63 = v61 + v53;
            if (v62)
            {
              goto LABEL_41;
            }

            v60[2] = v63;
          }
        }

        else
        {

          if (v53)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v48 = v92;
        (*v34)(v16, v33 + *(v37 + 48), v92);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v49 = v94;
        }

        else
        {
          v49 = sub_1D10F78B8(0, v94[2] + 1, 1, v94);
        }

        v51 = v49[2];
        v50 = v49[3];
        if (v51 >= v50 >> 1)
        {
          v49 = sub_1D10F78B8(v50 > 1, v51 + 1, 1, v49);
        }

        v49[2] = v51 + 1;
        v52 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v94 = v49;
        (*(v36 + 32))(v49 + v52 + *(v36 + 72) * v51, v16, v48);
      }

      v32 = (v93 + 1);
      v33 = v90;
      sub_1D111ECA4(v90);
      v38 = v91;
      v31 = v87;
      if (v32 == v89)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v94 = MEMORY[0x1E69E7CC0];
    v48 = v92;
    v36 = v9;
LABEL_33:
    v64 = v94[2];
    if (v64)
    {
      aBlock[0] = MEMORY[0x1E69E7CC0];
      v65 = v94;
      sub_1D13912DC();
      v67 = *(v36 + 16);
      v66 = v36 + 16;
      v97 = v67;
      v68 = v65 + ((*(v66 + 64) + 32) & ~*(v66 + 64));
      v69 = v11;
      v70 = *(v66 + 56);
      do
      {
        (v97)(v69, v68, v48);
        sub_1D138ED2C();
        (*(v66 - 8))(v69, v48);
        sub_1D13912AC();
        sub_1D13912EC();
        sub_1D13912FC();
        sub_1D13912BC();
        v68 += v70;
        --v64;
      }

      while (v64);
    }

    sub_1D106F934(0, &qword_1EC60B5A0);
    v71 = sub_1D139044C();

    v72 = swift_allocObject();
    v73 = v81;
    v72[2] = sub_1D12B0030;
    v72[3] = v73;
    v74 = v83;
    v75 = v82;
    v72[4] = v83;
    v72[5] = v75;
    aBlock[4] = sub_1D12AFF40;
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D112A218;
    aBlock[3] = &block_descriptor_107;
    v76 = _Block_copy(aBlock);
    v77 = v74;

    v78 = v79;
    [v79 addSharingAuthorizations:v71 completion:v76];

    _Block_release(v76);
  }
}

uint64_t sub_1D12ADE44@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  swift_allocObject();
  v9 = a1;
  v10 = a2;
  result = sub_1D138F73C();
  *a4 = result;
  return result;
}

void sub_1D12ADEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v35 = a5;
  v33 = a4;
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138D5EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v17 = *(a3 + OBJC_IVAR____TtC15HealthRecordsUI56ClinicalSharingOnboardingSharingHealthDataViewController_onboardingSession);
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v18 = *(v17 + OBJC_IVAR___WDClinicalAccountOnboardingSession_profile);

  v34 = [v18 clinicalAccountStore];
  v19 = v33;
  v20 = [v33 identifier];
  sub_1D138D5CC();

  v21 = sub_1D138D5AC();
  (*(v13 + 8))(v15, v12);
  sub_1D138D46C();
  v22 = sub_1D138D4EC();
  v23 = *(v9 + 8);
  v23(v11, v8);
  sub_1D138D46C();
  v24 = sub_1D138D4EC();
  v23(v11, v8);
  v25 = sub_1D139072C();
  v26 = sub_1D139072C();
  v27 = swift_allocObject();
  v27[2] = sub_1D12B0030;
  v27[3] = v16;
  v28 = v35;
  v27[4] = v19;
  v27[5] = v28;
  aBlock[4] = sub_1D12AFE88;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D112A218;
  aBlock[3] = &block_descriptor_91;
  v29 = _Block_copy(aBlock);
  v30 = v19;

  v31 = v34;
  [v34 updateClinicalSharingStatusForAccountWithIdentifier:v21 firstSharedDate:v22 lastSharedDate:v24 userStatus:v25 multiDeviceStatus:v26 primaryDeviceName:0 completion:v29];
  _Block_release(v29);
}

void sub_1D12AE240(uint64_t a1, void *a2, void (*a3)(void, void), const char *a4, uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  v50 = a7;
  v13 = sub_1D138F0BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  if (a2)
  {
    v20 = a2;
    sub_1D138F06C();
    v21 = a2;
    v22 = sub_1D138F0AC();
    v23 = sub_1D13907FC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = a3;
      v26 = v25;
      v52 = v25;
      *v24 = 136315394;
      v27 = sub_1D139184C();
      v29 = sub_1D11DF718(v27, v28, &v52);
      v48 = v13;
      v30 = v29;

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v51 = a2;
      v31 = a2;
      sub_1D1080EA4(0, &qword_1EE06B690);
      v32 = sub_1D139020C();
      v34 = sub_1D11DF718(v32, v33, &v52);

      *(v24 + 14) = v34;
      _os_log_impl(&dword_1D101F000, v22, v23, v50, v24, 0x16u);
      swift_arrayDestroy();
      v35 = v26;
      a3 = v49;
      MEMORY[0x1D38882F0](v35, -1, -1);
      MEMORY[0x1D38882F0](v24, -1, -1);

      (*(v14 + 8))(v19, v48);
    }

    else
    {

      (*(v14 + 8))(v19, v13);
    }

    v46 = a2;
    a3(a2, 1);
  }

  else
  {
    sub_1D138F06C();
    v36 = sub_1D138F0AC();
    v37 = sub_1D139081C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v49 = a3;
      v39 = v38;
      v40 = swift_slowAlloc();
      v50 = a4;
      v41 = v40;
      v52 = v40;
      *v39 = 136315138;
      v42 = sub_1D139184C();
      v48 = v13;
      v44 = sub_1D11DF718(v42, v43, &v52);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1D101F000, v36, v37, a8, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      MEMORY[0x1D38882F0](v41, -1, -1);
      v45 = v39;
      a3 = v49;
      MEMORY[0x1D38882F0](v45, -1, -1);

      (*(v14 + 8))(v16, v48);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    a3(a5, 0);
  }
}

uint64_t sub_1D12AE618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1D12AF750(0, &qword_1EC60EB40, MEMORY[0x1E695C028]);
  swift_allocObject();
  v7 = a1;
  result = sub_1D138F73C();
  *a3 = result;
  return result;
}

void sub_1D12AE6C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_allocWithZone(MEMORY[0x1E69A3F78]);

  v10 = [v9 init];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = sub_1D12B0030;
  v11[4] = v8;
  v11[5] = a4;
  v14[4] = sub_1D12AFE1C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D1135F2C;
  v14[3] = &block_descriptor_56;
  v12 = _Block_copy(v14);
  v13 = a3;

  [v10 shareHealthDataWithOptions:0 reason:1 completion:v12];

  _Block_release(v12);
}

void sub_1D12AE814(unint64_t a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v99 = a3;
  v98 = sub_1D138D5EC();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v85 - v12;
  v13 = sub_1D138F0BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v85 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v85 - v21;
  if (a1)
  {
    sub_1D138F06C();
    v23 = sub_1D138F0AC();
    v24 = sub_1D139081C();
    v25 = os_log_type_enabled(v23, v24);
    v89 = v13;
    v90 = a5;
    v91 = a4;
    if (v25)
    {
      v26 = swift_slowAlloc();
      LODWORD(i) = v24;
      v27 = v26;
      v93 = swift_slowAlloc();
      v101 = v93;
      *v27 = 136315138;
      v28 = sub_1D139184C();
      v30 = sub_1D11DF718(v28, v29, &v101);

      *(v27 + 4) = v30;
      _os_log_impl(&dword_1D101F000, v23, i, "[%s] Successfully completed sync to clinicalSharingClient", v27, 0xCu);
      v31 = v93;
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x1D38882F0](v31, -1, -1);
      MEMORY[0x1D38882F0](v27, -1, -1);
    }

    v86 = *(v14 + 8);
    v86(v22, v13);
    v87 = v19;
    v88 = v14;
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
    {
      v33 = 0;
      v34 = a1 & 0xC000000000000001;
      v35 = v92;
      v36 = i;
      do
      {
        if (v34)
        {
          v37 = MEMORY[0x1D3886B70](v33, a1);
        }

        else
        {
          if (v33 >= *(v32 + 16))
          {
            goto LABEL_34;
          }

          v37 = *(a1 + 8 * v33 + 32);
        }

        v38 = v37;
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v101 = v37;
        sub_1D12AF094(&v101, a2, v35);

        ++v33;
      }

      while (v39 != v36);
      v40 = 0;
      v93 = (a1 & 0xC000000000000001);
      ++v94;
      while (1)
      {
        if (v34)
        {
          v41 = MEMORY[0x1D3886B70](v40, a1);
        }

        else
        {
          if (v40 >= *(v32 + 16))
          {
            goto LABEL_36;
          }

          v41 = *(a1 + 8 * v40 + 32);
        }

        v42 = v41;
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        v44 = v32;
        v45 = a1;
        v46 = [v41 accountID];
        v47 = v96;
        sub_1D138D5CC();

        v48 = [v99 identifier];
        v49 = v97;
        sub_1D138D5CC();

        a2 = sub_1D138D5BC();
        v50 = *v94;
        v51 = v49;
        v52 = v98;
        (*v94)(v51, v98);
        v50(v47, v52);
        if (a2)
        {
          v66 = [v42 error];

          if (!v66)
          {
            goto LABEL_38;
          }

          v67 = v66;
          v91(v66, 1);

          v68 = v87;
          sub_1D138F06C();
          v69 = v67;
          v70 = sub_1D138F0AC();
          v71 = sub_1D139081C();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v101 = v73;
            *v72 = 136315394;
            v74 = sub_1D139184C();
            v76 = sub_1D11DF718(v74, v75, &v101);

            *(v72 + 4) = v76;
            *(v72 + 12) = 2080;
            v100 = v69;
            sub_1D1080EA4(0, &qword_1EE06B690);
            v77 = v69;
            v78 = sub_1D139020C();
            v80 = sub_1D11DF718(v78, v79, &v101);

            *(v72 + 14) = v80;
            _os_log_impl(&dword_1D101F000, v70, v71, "[%s] Error sharing to clinicalSharingClient: %s", v72, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D38882F0](v73, -1, -1);
            MEMORY[0x1D38882F0](v72, -1, -1);
          }

          else
          {
          }

          v86(v68, v89);
          return;
        }

        ++v40;
        a1 = v45;
        v32 = v44;
        v34 = v93;
        if (v43 == i)
        {
          goto LABEL_38;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:
    v91(v99, 0);
  }

  else
  {
    v53 = v14;
    sub_1D138F06C();
    v54 = a2;
    v55 = sub_1D138F0AC();
    v56 = sub_1D13907FC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v101 = v58;
      *v57 = 136315394;
      v59 = sub_1D139184C();
      v90 = a5;
      v91 = a4;
      v61 = sub_1D11DF718(v59, v60, &v101);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v100 = a2;
      v62 = a2;
      sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v63 = sub_1D139020C();
      v65 = sub_1D11DF718(v63, v64, &v101);

      *(v57 + 14) = v65;
      _os_log_impl(&dword_1D101F000, v55, v56, "[%s] Error sharing to clinicalSharingClient: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v58, -1, -1);
      MEMORY[0x1D38882F0](v57, -1, -1);

      a4 = v91;
    }

    else
    {
    }

    (*(v53 + 8))(v16, v13);
    v81 = a2;
    if (!a2)
    {
      v82 = objc_opt_self();
      v83 = sub_1D139012C();
      v81 = [v82 hk:11 error:v83 description:?];
    }

    v84 = a2;
    a4(v81, 1);
  }
}

uint64_t sub_1D12AF094(void **a1, void *a2, uint64_t a3)
{
  v42 = a3;
  v6 = sub_1D138D5EC();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D138F0BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_1D138F06C();
  v14 = v13;
  v15 = a2;
  v16 = sub_1D138F0AC();
  v17 = sub_1D139081C();

  v45 = v17;
  if (os_log_type_enabled(v16, v17))
  {
    v38 = v16;
    v39 = v10;
    v40 = v9;
    v41 = v3;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v19;
    *v18 = 136315650;
    v20 = sub_1D139184C();
    v22 = sub_1D11DF718(v20, v21, &v47);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = [v14 accountID];
    sub_1D138D5CC();

    sub_1D12AFDC4(&qword_1EC60D1C0, MEMORY[0x1E69695A8]);
    v24 = v44;
    v25 = sub_1D13915CC();
    v27 = v26;
    (*(v43 + 8))(v8, v24);
    v28 = sub_1D11DF718(v25, v27, &v47);

    *(v18 + 14) = v28;
    *(v18 + 22) = 2080;
    if (a2)
    {
      v46 = a2;
      v29 = a2;
      sub_1D10C68DC(0, &qword_1EE06B078, &qword_1EE06B690, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
      v30 = sub_1D13901EC();
      v32 = v31;
    }

    else
    {
      v32 = 0xEA00000000006C75;
      v30 = 0x6673736563637553;
    }

    v34 = v39;
    v35 = sub_1D11DF718(v30, v32, &v47);

    *(v18 + 24) = v35;
    v36 = v38;
    _os_log_impl(&dword_1D101F000, v38, v45, "[%s] Sync Result. Account: %s %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38882F0](v19, -1, -1);
    MEMORY[0x1D38882F0](v18, -1, -1);

    return (*(v34 + 8))(v12, v40);
  }

  else
  {

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1D12AF47C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_1D139101C();
  swift_unknownObjectRelease();
  [v2 dismissViewControllerAnimated:1 completion:0];

  return __swift_destroy_boxed_opaque_existential_1Tm(&v4);
}

id sub_1D12AF550()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClinicalSharingOnboardingSharingHealthDataViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D12AF634()
{
  if (!qword_1EC60EB28)
  {
    sub_1D106F934(255, &qword_1EC609A00);
    v0 = sub_1D138F70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EB28);
    }
  }
}

void sub_1D12AF69C()
{
  if (!qword_1EC60EB38)
  {
    v0 = MEMORY[0x1E695C028];
    sub_1D12AF750(255, &qword_1EC60EB40, MEMORY[0x1E695C028]);
    sub_1D12AF7E8(&qword_1EC60EB48, &qword_1EC60EB40, v0);
    v1 = sub_1D138F76C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60EB38);
    }
  }
}

void sub_1D12AF750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_1D106F934(255, &qword_1EC609A00);
    v7 = sub_1D1080EA4(255, &qword_1EE06B690);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D12AF7E8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D12AF750(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D12AF874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D12AF8F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D108077C;

  return sub_1D1367254(a1, v4, v5, v6, v7, v8, v10, v9);
}

void sub_1D12AF9CC()
{
  if (!qword_1EC60EB60)
  {
    v0 = MEMORY[0x1E695BED0];
    sub_1D12AF750(255, &qword_1EC60EB68, MEMORY[0x1E695BED0]);
    sub_1D12AF7E8(&qword_1EC60EB70, &qword_1EC60EB68, v0);
    v1 = sub_1D138F59C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC60EB60);
    }
  }
}

void sub_1D12AFAF4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    v7 = MEMORY[0x1E695BED0];
    sub_1D12AF750(255, &qword_1EC60EB68, MEMORY[0x1E695BED0]);
    a3(255);
    sub_1D12AF7E8(&qword_1EC60EB70, &qword_1EC60EB68, v7);
    a4();
    v8 = sub_1D138F59C();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D12AFC14()
{
  if (!qword_1EC60EB98)
  {
    sub_1D12AFAF4(255, &qword_1EC60EB88, sub_1D12AFA8C, sub_1D12AFBE0);
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D12AFCE0();
    sub_1D10EDC58();
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60EB98);
    }
  }
}

unint64_t sub_1D12AFCE0()
{
  result = qword_1EC60EBA0;
  if (!qword_1EC60EBA0)
  {
    sub_1D12AFAF4(255, &qword_1EC60EB88, sub_1D12AFA8C, sub_1D12AFBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EBA0);
  }

  return result;
}

uint64_t sub_1D12AFD70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D12AFDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_87Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_31Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

id sub_1D12B003C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView);
  }

  else
  {
    v4 = sub_1D12B009C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D12B009C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setEditable_];
  [v0 setAlwaysBounceVertical_];
  [v0 setDataDetectorTypes_];
  v1 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];
  [v1 lineHeight];
  [v0 setTextContainerInset_];

  return v0;
}

void sub_1D12B0198()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for TextViewController();
  objc_msgSendSuper2(&v29, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = sub_1D12B003C();
  [v6 addSubview_];

  v8 = OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView;
  v9 = [*&v0[OBJC_IVAR____TtC15HealthRecordsUI18TextViewController____lazy_storage___textView] leadingAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [v10 leadingAnchor];

  v13 = [v9 constraintEqualToSystemSpacingAfterAnchor:v12 multiplier:1.0];
  [v13 setActive_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [*&v0[v8] trailingAnchor];
  v18 = [v16 constraintEqualToSystemSpacingAfterAnchor:v17 multiplier:1.0];

  [v18 setActive_];
  v19 = [*&v0[v8] topAnchor];
  v20 = [v0 view];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToSystemSpacingBelowAnchor:v22 multiplier:1.0];
  [v23 setActive_];

  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 bottomAnchor];

    v27 = [*&v0[v8] bottomAnchor];
    v28 = [v26 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];

    [v28 setActive_];
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_1D12B069C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D12B0704()
{
  if ((*(v0 + 120) & 1) == 0)
  {
    return *(v0 + 112);
  }

  sub_1D12B09F0(v0);
  *(v0 + 112) = result;
  *(v0 + 120) = 0;
  return result;
}

uint64_t sub_1D12B073C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1D10FDC5C(0, v6, 0);
  result = v29;
  v28 = v4;
  v26 = a1;
  v27 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_34;
      }

      v13 = *v9;
      if (*v8 > *v9)
      {
        v13 = *v8;
      }

      if (*v8 <= 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v13;
      }

      v30 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v25 = v12;
        sub_1D10FDC5C((v15 > 1), v16 + 1, 1);
        v12 = v25;
        result = v30;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = v5;
LABEL_18:
  if (v28 > v12)
  {
    v17 = v26 + 32;
    while (v6 < v28)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_36;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_37;
        }

        v19 = *(v17 + 8 * v6);
        v20 = *(v27 + 32 + 8 * v6);
        if (v19 > v20)
        {
          v20 = *(v17 + 8 * v6);
        }

        v21 = v19 <= 0.0 ? 0.0 : v20;
        v31 = result;
        v23 = *(result + 16);
        v22 = *(result + 24);
        if (v23 >= v22 >> 1)
        {
          v24 = v12;
          sub_1D10FDC5C((v22 > 1), v23 + 1, 1);
          v12 = v24;
          result = v31;
        }

        *(result + 16) = v23 + 1;
        *(result + 8 * v23 + 32) = v21;
        ++v6;
        if (v18 != v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D12B0938(unint64_t result)
{
  v2 = result;
  v3 = *(v1 + 104);
  if (*(v3 + 16))
  {
    result = sub_1D129E4DC(result);
    if (v4)
    {
      v5 = *(*(v3 + 56) + 24 * result);

      return v5;
    }
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = sub_1D13904DC();
    *(v5 + 16) = v2;
    bzero((v5 + 32), 8 * v2);
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D12B09F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >> 62)
  {
LABEL_24:
    if (sub_1D13910DC())
    {
      result = sub_1D13910DC();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_32;
      }
    }

    v2 = sub_1D13910DC();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_14:
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  v3 = 0;
  v4 = 0.0;
  while ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D3886B70](v3, v1);
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = sub_1D121C7E4();

    v4 = v4 + v6;
    ++v3;
    if (v5 == v2)
    {
      goto LABEL_12;
    }
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  if (!(v1 >> 62))
  {
    goto LABEL_14;
  }

LABEL_13:
  result = sub_1D13910DC();
LABEL_15:
  if (!result)
  {
    return result;
  }

  if (__OFSUB__(result--, 1))
  {
    __break(1u);
LABEL_29:
    v9 = MEMORY[0x1D3886B70](result, v1);
LABEL_21:
    sub_1D1072E70(v9 + 72, v12);

    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    (*(v11 + 48))(v10, v11);
    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v1 + 8 * result + 32);

    goto LABEL_21;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D12B0C3C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D12B0CC8()
{

  v1 = sub_1D12B1958(v0, sub_1D12B192C, -INFINITY);

  return v1;
}

uint64_t sub_1D12B0D24@<X0>(unint64_t *a1@<X8>)
{

  v3 = sub_1D12B1958(v2, sub_1D12B192C, -INFINITY);

  *a1 = v3;
  return result;
}

uint64_t *sub_1D12B0D90@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v20 = *result;
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      if (v5 < 1)
      {
        goto LABEL_31;
      }

      v19 = a3;
      v6 = 0;
      a3 = a2 & 0xC000000000000001;
      v7 = MEMORY[0x1E69E7CC0];
      do
      {
        if (a3)
        {
          MEMORY[0x1D3886B70](v6, a2);
        }

        else
        {
        }

        v9 = sub_1D12B1958(v8, sub_1D12B192C, -INFINITY);

        if (*(v9 + 16) == v20)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D10F9B50(0, v7[2] + 1, 1, v7);
          }

          v11 = v7[2];
          v10 = v7[3];
          if (v11 >= v10 >> 1)
          {
            v7 = sub_1D10F9B50((v10 > 1), v11 + 1, 1, v7);
          }

          v7[2] = v11 + 1;
          v7[v11 + 4] = v9;
        }

        else
        {
        }

        ++v6;
      }

      while (v5 != v6);
      v18 = sub_1D12B1C5C(v7, -INFINITY);
      v12 = 0;
      while (a3)
      {
        v13 = MEMORY[0x1D3886B70](v12, a2);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_27;
        }

LABEL_23:

        v16 = sub_1D12B1958(v15, sub_1D12B192C, -INFINITY);

        v17 = *(v16 + 16);

        if (v17 == v20)
        {
          goto LABEL_26;
        }

        ++v12;
        if (v14 == v5)
        {
          __break(1u);
LABEL_26:

          sub_1D1072E70(v13 + 72, v21);

          *v19 = v20;
          v19[1] = v18;
          return sub_1D102CC18(v21, (v19 + 2));
        }
      }

      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v13 = *(a2 + 8 * v12 + 32);

      v14 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_23;
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_1D13910DC();
      v5 = result;
    }

    while (result);
  }

  result = sub_1D12B1C5C(MEMORY[0x1E69E7CC0], -INFINITY);
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1D12B107C(uint64_t a1, void *a2, double a3)
{
  v3 = a2;
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1Tm(a2, v6);
  v8 = 28.0;
  if ((*(v7 + 8))(v6, v7))
  {
    v9 = v3[3];
    v10 = v3[4];
    __swift_project_boxed_opaque_existential_1Tm(v3, v9);
    v8 = (*(v10 + 16))(v9, v10) + a3 + 28.0;
  }

  v11 = v3[3];
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v11);
  v13 = ((*(v12 + 56))(v11, v12) & 1) - 1;
  v14 = *(a1 + 16);
  v77 = a1;
  if (v14)
  {
    v15 = (a1 + 32);
    v16 = MEMORY[0x1E69E7CC0];
    v17 = *(a1 + 16);
    do
    {
      v20 = *v15;
      if (*v15 > 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D10FDC5C(0, *(v16 + 16) + 1, 1);
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D10FDC5C((v18 > 1), v19 + 1, 1);
        }

        *(v16 + 16) = v19 + 1;
        *(v16 + 8 * v19 + 32) = v20;
      }

      ++v15;
      --v17;
    }

    while (v17);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v21 = 540.0 - v8;
  v22 = *(v16 + 16);

  v23 = (v22 + v13);
  v24 = v3[3];
  v25 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v24);
  v26 = (*(v25 + 16))(v24, v25) * v23;
  v27 = v3[3];
  v28 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v27);
  v29 = *(v28 + 72);

  result = v29(v27, v28);
  v31 = *(result + 16);
  if (v31)
  {
    v32 = 0;
    v33 = v21 - v26;
    v34 = result + 32;
    v35 = v77;
    v78 = result + 32;
    v79 = v3;
    while (1)
    {
      if (v32 >= *(result + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v36 = *(v34 + 8 * v32);
      if (v36 < v14)
      {
        break;
      }

LABEL_16:
      if (++v32 == v31)
      {
        goto LABEL_43;
      }
    }

    if (v36 < 0)
    {
      goto LABEL_66;
    }

    if (v36 >= *(v35 + 2))
    {
      goto LABEL_67;
    }

    v37 = result;
    v38 = v35;
    v39 = v35 + 32;
    v40 = *&v35[8 * v36 + 32];
    v41 = v79[3];
    v42 = v79[4];
    __swift_project_boxed_opaque_existential_1Tm(v79, v41);
    result = (*(v42 + 80))(v41, v42);
    if (v36 >= *(result + 16))
    {
      goto LABEL_68;
    }

    v43 = *(result + 8 * v36 + 32);

    if (v43 >= v40)
    {
      v35 = v38;
      result = v37;
      v34 = v78;
      goto LABEL_16;
    }

    v35 = v38;
    v44 = *(v38 + 16);
    if (!v44)
    {
      v46 = 0.0;
      if (v33 >= 0.0)
      {
        goto LABEL_43;
      }

LABEL_34:
      if (v36 >= v44)
      {
        goto LABEL_69;
      }

      v52 = *&v39[8 * v36];
      v53 = v79[3];
      v54 = v79[4];
      __swift_project_boxed_opaque_existential_1Tm(v79, v53);
      result = (*(v54 + 80))(v53, v54);
      if (v36 >= *(result + 16))
      {
        goto LABEL_70;
      }

      v55 = v33 + v52 - v46;
      v56 = *(result + 8 * v36 + 32);

      if (v55 <= v56)
      {
        v55 = v56;
      }

      v35 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_1D12FFA8C(v38);
      }

      result = v37;
      v34 = v78;
      if (v36 >= *(v35 + 2))
      {
        goto LABEL_71;
      }

      *&v35[8 * v36 + 32] = v55;
      goto LABEL_16;
    }

    if (v44 > 3)
    {
      v45 = v44 & 0x7FFFFFFFFFFFFFFCLL;
      v47 = (v38 + 48);
      v46 = 0.0;
      v48 = v44 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v46 = v46 + *(v47 - 2) + *(v47 - 1) + *v47 + v47[1];
        v47 += 4;
        v48 -= 4;
      }

      while (v48);
      if (v44 == v45)
      {
LABEL_33:
        if (v33 >= v46)
        {
LABEL_43:

          v3 = v79;
          goto LABEL_44;
        }

        goto LABEL_34;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0.0;
    }

    v49 = v44 - v45;
    v50 = (v38 + 8 * v45 + 32);
    do
    {
      v51 = *v50++;
      v46 = v46 + v51;
      --v49;
    }

    while (v49);
    goto LABEL_33;
  }

  v35 = v77;
LABEL_44:
  v57 = *(v35 + 2);
  v58 = 0.0;
  if (v57)
  {
    if (v57 < 4)
    {
      v59 = 0;
LABEL_50:
      v62 = v57 - v59;
      v63 = &v35[8 * v59 + 32];
      do
      {
        v64 = *v63++;
        v58 = v58 + v64;
        --v62;
      }

      while (v62);
      goto LABEL_52;
    }

    v59 = v57 & 0x7FFFFFFFFFFFFFFCLL;
    v60 = (v35 + 48);
    v61 = v57 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v58 = v58 + *(v60 - 2) + *(v60 - 1) + *v60 + v60[1];
      v60 += 4;
      v61 -= 4;
    }

    while (v61);
    if (v57 != v59)
    {
      goto LABEL_50;
    }
  }

LABEL_52:
  v65 = v3[3];
  v66 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v65);
  result = (*(v66 + 88))(v65, v66);
  if (v67)
  {
    return v35;
  }

  v69 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_72;
  }

  v70 = *(v35 + 2);
  if (v70 < v69)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v68 = v35;
  if (v69 == v70)
  {
    return v68;
  }

  if (v69 >= v70)
  {
    goto LABEL_74;
  }

  if (v69 < 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v70)
  {
    v71 = ~result + v70;
    v72 = &v35[8 * result + 40];
    v73 = 0.0;
    do
    {
      v74 = *v72;
      if (*v72 > 0.0)
      {
        v75 = v3[3];
        v76 = v3[4];
        __swift_project_boxed_opaque_existential_1Tm(v3, v75);
        v73 = v73 + v74 + (*(v76 + 16))(v75, v76);
      }

      ++v72;
      --v71;
    }

    while (v71);
    return v68;
  }

LABEL_76:
  __break(1u);
  return result;
}

uint64_t sub_1D12B1680()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D13910DC())
  {
    v3 = 0;
    v24 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x1E69E7CC0];
    v22 = i;
    v23 = v1;
    while (1)
    {
      if (v24)
      {
        v5 = MEMORY[0x1D3886B70](v3, v1);
        v6 = __OFADD__(v3++, 1);
        if (v6)
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *(v21 + 16))
      {
        goto LABEL_29;
      }

      v5 = *(v20 + 8 * v3);

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

LABEL_11:
      v7 = *(v5 + 48);
      if (v7 >> 62)
      {
        v8 = sub_1D13910DC();
        if (!v8)
        {
          goto LABEL_25;
        }

LABEL_13:
        if (v8 < 1)
        {
          goto LABEL_28;
        }

        v9 = 0;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1D3886B70](v9, v7);
          }

          else
          {
            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = *(v10 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1D10F9B50(0, v4[2] + 1, 1, v4);
          }

          v13 = v4[2];
          v12 = v4[3];
          if (v13 >= v12 >> 1)
          {
            v4 = sub_1D10F9B50((v12 > 1), v13 + 1, 1, v4);
          }

          ++v9;

          v4[2] = v13 + 1;
          v4[v13 + 4] = v11;
        }

        while (v8 != v9);

        i = v22;
        v1 = v23;
        if (v3 == v22)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          goto LABEL_13;
        }

LABEL_25:

        if (v3 == i)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v14 = sub_1D12B1C5C(v4, -INFINITY);
  v15 = *(v19 + 72);
  if (v15)
  {
    v16 = *(v15 + 24);

    v17 = sub_1D12B073C(v14, v16);

    return v17;
  }

  else
  {
  }

  return v14;
}

uint64_t sub_1D12B192C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D12B1680();
  *a1 = result;
  return result;
}

unint64_t sub_1D12B1958(unint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), double a3)
{
  result = sub_1D1268740(a1, a2);
  if (!result)
  {
    goto LABEL_51;
  }

  v4 = *(result + 16);

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = sub_1D13904DC();
    v7 = v6;
    *(v6 + 16) = v4;
    v8 = (v6 + 32);
    if (v4 > 3)
    {
      v9 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v8 += v4 & 0x7FFFFFFFFFFFFFFCLL;
      v10 = a3;
      v11 = vdupq_lane_s64(*&a3, 0);
      v12 = (v6 + 48);
      v13 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v12[-1] = v11;
        *v12 = v11;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v4 == v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
      v10 = a3;
    }

    v14 = v4 - v9;
    do
    {
      *v8++ = v10;
      --v14;
    }

    while (v14);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

LABEL_11:

  v15 = sub_1D12B22B4();
  if (!v15)
  {
LABEL_44:

    return v7;
  }

  v16 = v15;
  v17 = v7;
  while (1)
  {
    v18 = *(v16 + 16) >= *(v17 + 16) ? *(v17 + 16) : *(v16 + 16);
    v19 = v17;

    sub_1D10FDC5C(0, v18, 0);
    v7 = v5;
    if (v18)
    {
      break;
    }

    result = v19;
LABEL_32:
    v28 = *(result + 16);
    if (v18 != v28)
    {
      v29 = result + 32;
      v5 = MEMORY[0x1E69E7CC0];
      while (v18 < v28)
      {
        v30 = *(v16 + 16);
        if (v18 == v30)
        {
          goto LABEL_14;
        }

        if (v18 >= v30)
        {
          goto LABEL_50;
        }

        if (*(v29 + 8 * v18) > *(v16 + 32 + 8 * v18))
        {
          v31 = *(v29 + 8 * v18);
        }

        else
        {
          v31 = *(v16 + 32 + 8 * v18);
        }

        v37 = v7;
        v33 = *(v7 + 16);
        v32 = *(v7 + 24);
        if (v33 >= v32 >> 1)
        {
          v34 = result;
          sub_1D10FDC5C((v32 > 1), v33 + 1, 1);
          result = v34;
          v7 = v37;
        }

        ++v18;
        *(v7 + 16) = v33 + 1;
        *(v7 + 8 * v33 + 32) = v31;
        v28 = *(result + 16);
        if (v18 == v28)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_49;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_14:

    swift_bridgeObjectRelease_n();
    v16 = sub_1D12B22B4();
    v17 = v7;
    if (!v16)
    {
      goto LABEL_44;
    }
  }

  v20 = 0;
  v21 = *(v19 + 16);
  v22 = v19 + 32;
  result = v19;
  while (v21 != v20)
  {
    if (v20 >= *(result + 16))
    {
      goto LABEL_46;
    }

    v23 = *(v16 + 16);
    if (v20 == v23)
    {
      goto LABEL_47;
    }

    if (v20 >= v23)
    {
      goto LABEL_48;
    }

    if (*(v22 + 8 * v20) > *(v16 + 32 + 8 * v20))
    {
      v24 = *(v22 + 8 * v20);
    }

    else
    {
      v24 = *(v16 + 32 + 8 * v20);
    }

    v36 = v7;
    v26 = *(v7 + 16);
    v25 = *(v7 + 24);
    if (v26 >= v25 >> 1)
    {
      v27 = result;
      sub_1D10FDC5C((v25 > 1), v26 + 1, 1);
      result = v27;
      v7 = v36;
    }

    ++v20;
    *(v7 + 16) = v26 + 1;
    *(v7 + 8 * v26 + 32) = v24;
    if (v18 == v20)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1D12B1C5C(uint64_t result, double a2)
{
  v31 = *(result + 16);
  if (!v31)
  {
    goto LABEL_49;
  }

  v2 = result + 32;
  v3 = *(*(result + 32) + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  result = sub_1D13904DC();
  v5 = result;
  *(result + 16) = v3;
  v6 = (result + 32);
  if (v3 <= 3)
  {
    v7 = 0;
    v8 = a2;
LABEL_9:
    v12 = v3 - v7;
    do
    {
      *v6++ = v8;
      --v12;
    }

    while (v12);
    goto LABEL_11;
  }

  v7 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v6 += v3 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = a2;
  v9 = vdupq_lane_s64(*&a2, 0);
  v10 = (result + 48);
  v11 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v10[-1] = v9;
    *v10 = v9;
    v10 += 2;
    v11 -= 4;
  }

  while (v11);
  if (v3 != v7)
  {
    goto LABEL_9;
  }

LABEL_11:
  v13 = 0;
  v30 = v2;
  while (!__OFADD__(v13, 1))
  {
    v14 = v5;
    v33 = v13 + 1;
    v15 = *(v2 + 8 * v13);
    if (*(v15 + 16) >= *(v5 + 16))
    {
      v16 = *(v5 + 16);
    }

    else
    {
      v16 = *(v15 + 16);
    }

    swift_bridgeObjectRetain_n();
    result = sub_1D10FDC5C(0, v16, 0);
    v5 = v4;
    if (v16)
    {
      v17 = 0;
      v18 = *(v14 + 16);
      v19 = v15 + 32;
      while (v18 != v17)
      {
        if (v17 >= *(v14 + 16))
        {
          goto LABEL_43;
        }

        v20 = *(v15 + 16);
        if (v17 == v20)
        {
          goto LABEL_44;
        }

        if (v17 >= v20)
        {
          goto LABEL_45;
        }

        if (*(v14 + 32 + 8 * v17) > *(v19 + 8 * v17))
        {
          v21 = *(v14 + 32 + 8 * v17);
        }

        else
        {
          v21 = *(v19 + 8 * v17);
        }

        v23 = *(v4 + 16);
        v22 = *(v4 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1D10FDC5C((v22 > 1), v23 + 1, 1);
        }

        ++v17;
        *(v4 + 16) = v23 + 1;
        *(v4 + 8 * v23 + 32) = v21;
        if (v16 == v17)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_29:
    v24 = *(v14 + 16);
    if (v16 != v24)
    {
      v25 = v15 + 32;
      while (v16 < v24)
      {
        v26 = *(v15 + 16);
        if (v16 == v26)
        {
          goto LABEL_12;
        }

        if (v16 >= v26)
        {
          goto LABEL_47;
        }

        if (*(v14 + 32 + 8 * v16) > *(v25 + 8 * v16))
        {
          v27 = *(v14 + 32 + 8 * v16);
        }

        else
        {
          v27 = *(v25 + 8 * v16);
        }

        v29 = *(v4 + 16);
        v28 = *(v4 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_1D10FDC5C((v28 > 1), v29 + 1, 1);
        }

        ++v16;
        *(v4 + 16) = v29 + 1;
        *(v4 + 8 * v29 + 32) = v27;
        v24 = *(v14 + 16);
        if (v16 == v24)
        {
          goto LABEL_12;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      break;
    }

LABEL_12:

    result = swift_bridgeObjectRelease_n();
    v13 = v33;
    v2 = v30;
    v4 = MEMORY[0x1E69E7CC0];
    if (v33 == v31)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void sub_1D12B1F1C(void *a1, char a2, void *a3)
{
  v49 = a1[2];
  if (!v49)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = *a3;
  v11 = sub_1D129E4DC(v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v11;
  v17 = v12;
  v18 = v10[3];

  if (v18 >= v15)
  {
    if (a2)
    {
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1D1182430();
      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  sub_1D117C750(v15, a2 & 1);
  v19 = sub_1D129E4DC(v7);
  if ((v17 & 1) == (v20 & 1))
  {
    v16 = v19;
    if ((v17 & 1) == 0)
    {
LABEL_12:
      v23 = *a3;
      *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      *(v23[6] + 8 * v16) = v7;
      v24 = (v23[7] + 24 * v16);
      *v24 = v6;
      v24[1] = v8;
      v24[2] = v9;
      v25 = v23[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (!v26)
      {
        v23[2] = v27;
        if (v49 != 1)
        {
          v28 = a1 + 11;
          v29 = 1;
          while (v29 < a1[2])
          {
            v31 = *(v28 - 3);
            v30 = *(v28 - 2);
            v32 = *(v28 - 1);
            v33 = *v28;
            v34 = *a3;
            v35 = sub_1D129E4DC(v31);
            v37 = v34[2];
            v38 = (v36 & 1) == 0;
            v39 = v37 + v38;
            if (__OFADD__(v37, v38))
            {
              goto LABEL_24;
            }

            v40 = v35;
            v41 = v36;
            v42 = v34[3];

            if (v42 < v39)
            {
              sub_1D117C750(v39, 1);
              v43 = sub_1D129E4DC(v31);
              if ((v41 & 1) != (v44 & 1))
              {
                goto LABEL_27;
              }

              v40 = v43;
            }

            if (v41)
            {
              goto LABEL_9;
            }

            v45 = *a3;
            *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
            *(v45[6] + 8 * v40) = v31;
            v46 = (v45[7] + 24 * v40);
            *v46 = v30;
            v46[1] = v32;
            v46[2] = v33;
            v47 = v45[2];
            v26 = __OFADD__(v47, 1);
            v48 = v47 + 1;
            if (v26)
            {
              goto LABEL_25;
            }

            ++v29;
            v45[2] = v48;
            v28 += 4;
            if (v49 == v29)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_9:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    sub_1D1080EA4(0, &qword_1EE06B690);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_1D13916CC();
  __break(1u);
LABEL_28:
  sub_1D13911EC();
  MEMORY[0x1D3885C10](0xD00000000000001BLL, 0x80000001D13B9110);
  sub_1D139133C();
  MEMORY[0x1D3885C10](39, 0xE100000000000000);
  sub_1D13913BC();
  __break(1u);
}

uint64_t sub_1D12B22B4()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1D13910DC();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 == result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1D3886B70](v0[1], v1);
    v4 = result;
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v4 = *(v1 + 8 * v3 + 32);

  v5 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  v0[1] = v5;
  v6 = v0[2];
  v8 = v4;
  v6(&v7, &v8);

  return v7;
}

uint64_t sub_1D12B239C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v4;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1D10FDC1C(0, v3, 0);
  v4 = v32;
  v28 = a1 + 56;
  v5 = sub_1D139104C();
  v6 = a1;
  v7 = 0;
  v25 = v3;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v28 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    v10 = *(v6 + 36);
    v29 = *(*(v6 + 48) + 8 * v5);
    sub_1D12B0D90(&v29, a2, v30);
    if (v2)
    {
      goto LABEL_26;
    }

    v32 = v4;
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D10FDC1C((v11 > 1), v12 + 1, 1);
      v4 = v32;
    }

    *(v4 + 16) = v12 + 1;
    v13 = v4 + 56 * v12;
    v14 = v30[0];
    v15 = v30[1];
    v16 = v30[2];
    *(v13 + 80) = v31;
    *(v13 + 48) = v15;
    *(v13 + 64) = v16;
    *(v13 + 32) = v14;
    v6 = a1;
    v8 = 1 << *(a1 + 32);
    if (v5 >= v8)
    {
      goto LABEL_23;
    }

    v17 = *(v28 + 8 * v9);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_24;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_25;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (a1 + 64 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1D1105004(v5, v10, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1D1105004(v5, v10, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    v2 = 0;
    if (v7 == v25)
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
LABEL_26:

  __break(1u);
  return result;
}

uint64_t sub_1D12B2610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 >> 62)
  {
    goto LABEL_108;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  v9 = v7 & ~(v7 >> 63);
  v123 = v7;
  if (v7)
  {
    v10 = v7;
    *&v132 = MEMORY[0x1E69E7CC0];
    sub_1D10FDC5C(0, v9, 0);
    if (v10 < 0)
    {
      goto LABEL_110;
    }

    v11 = v10;
    v12 = v132;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        MEMORY[0x1D3886B70](v13, a1);
        v14 = sub_1D121CC80();
        swift_unknownObjectRelease();
        *&v132 = v12;
        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D10FDC5C((v15 > 1), v16 + 1, 1);
          v12 = v132;
        }

        ++v13;
        *(v12 + 16) = v16 + 1;
        *(v12 + 8 * v16 + 32) = v14;
      }

      while (v123 != v13);
    }

    else
    {
      v19 = a1 + 32;
      do
      {

        v20 = sub_1D121CC80();

        *&v132 = v12;
        v22 = *(v12 + 16);
        v21 = *(v12 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D10FDC5C((v21 > 1), v22 + 1, 1);
          v12 = v132;
        }

        *(v12 + 16) = v22 + 1;
        *(v12 + 8 * v22 + 32) = v20;
        v19 += 8;
        --v11;
      }

      while (v11);
    }

    v8 = MEMORY[0x1E69E7CC0];
    v17 = *(v12 + 16);
    if (v17)
    {
      goto LABEL_18;
    }

LABEL_12:
    v18 = 0.0;
    goto LABEL_22;
  }

  v12 = MEMORY[0x1E69E7CC0];
  v17 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_18:
  v23 = (v12 + 32);
  v18 = 0.0;
  do
  {
    v24 = *v23++;
    v25 = v24;
    if (v18 <= v24)
    {
      v18 = v25;
    }

    --v17;
  }

  while (v17);
LABEL_22:

  swift_getKeyPath();
  if (v123)
  {
    *&v132 = v8;
    sub_1D10FDC3C(0, v9, 0);
    if (v123 < 0)
    {
      goto LABEL_111;
    }

    v26 = v132;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v123; ++i)
      {
        v134 = MEMORY[0x1D3886B70](i, a1);
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        v28 = v135;
        *&v132 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D10FDC3C((v29 > 1), v30 + 1, 1);
          v26 = v132;
        }

        *(v26 + 16) = v30 + 1;
        *(v26 + 8 * v30 + 32) = v28;
      }
    }

    else
    {
      v31 = (a1 + 32);
      v32 = v123;
      do
      {
        v134 = *v31;

        swift_getAtKeyPath();

        v33 = v135;
        *&v132 = v26;
        v35 = *(v26 + 16);
        v34 = *(v26 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1D10FDC3C((v34 > 1), v35 + 1, 1);
          v26 = v132;
        }

        *(v26 + 16) = v35 + 1;
        *(v26 + 8 * v35 + 32) = v33;
        ++v31;
        --v32;
      }

      while (v32);
    }

    v8 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1D12DEF2C(v26);

  v37 = sub_1D12B239C(v36, a1);

  v38 = *(v37 + 16);
  if (v38)
  {
    v135 = v8;
    sub_1D10FDBFC(0, v38, 0);
    v39 = 0;
    v40 = v135;
    v41 = v37 + 32;
    do
    {
      if (v39 >= *(v37 + 16))
      {
        goto LABEL_101;
      }

      sub_1D12B31C8(v41, &v132);
      v42 = v132;
      v43 = sub_1D12B107C(*(&v132 + 1), v133, v18);
      v45 = v44;
      v47 = v46;
      sub_1D12B322C(&v132);
      v135 = v40;
      v49 = *(v40 + 16);
      v48 = *(v40 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D10FDBFC((v48 > 1), v49 + 1, 1);
        v40 = v135;
      }

      ++v39;
      *(v40 + 16) = v49 + 1;
      v50 = (v40 + 32 * v49);
      v50[4] = v42;
      v50[5] = v43;
      v50[6] = v45;
      v50[7] = v47;
      v41 += 56;
    }

    while (v38 != v39);

    v8 = MEMORY[0x1E69E7CC0];
    if (*(v40 + 16))
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_43:
      sub_1D12B3288();
      v51 = sub_1D139144C();
      goto LABEL_46;
    }
  }

  v51 = MEMORY[0x1E69E7CC8];
LABEL_46:
  *&v132 = v51;

  sub_1D12B1F1C(v52, 1, &v132);

  v118 = v132;
  if (!v123)
  {

    v109 = MEMORY[0x1E69E7CC0];
    goto LABEL_95;
  }

  v135 = v8;
  sub_1D13912DC();
  if (v123 < 0)
  {
    goto LABEL_112;
  }

  v53 = 0;
  while (1)
  {
    if (__OFADD__(v53, 1))
    {
      goto LABEL_104;
    }

    v119 = v53 + 1;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v64 = MEMORY[0x1D3886B70]();
    }

    else
    {
      if (v53 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v64 = *(a1 + 32 + 8 * v53);
    }

    v65 = sub_1D121CDA8();
    if (!*(v118 + 16))
    {
      goto LABEL_105;
    }

    v66 = sub_1D129E4DC(v65);
    if ((v67 & 1) == 0)
    {
      goto LABEL_106;
    }

    v68 = *(v118 + 56) + 24 * v66;
    v130 = *v68;
    v69 = *(v68 + 16);
    v70 = v64[8];
    v120 = v70;
    if (v70 >> 62)
    {
      break;
    }

    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v71)
    {
      goto LABEL_60;
    }

LABEL_93:
    v54 = v8;
LABEL_50:
    v55 = v64[2];
    v56 = v64[3];
    v57 = v64[4];
    v58 = v64[5];
    v59 = v64[6];
    v60 = v64[7];
    sub_1D1072E70((v64 + 9), &v132);
    v61 = v55;
    v62 = v58;

    _s12SizedSectionCMa();
    v63 = swift_allocObject();
    *(v63 + 112) = 0;
    *(v63 + 120) = 1;
    *(v63 + 128) = 0;
    *(v63 + 136) = 1;
    *(v63 + 144) = 0;
    *(v63 + 152) = 1;
    *(v63 + 16) = v61;
    *(v63 + 24) = v56;
    *(v63 + 32) = v57;
    *(v63 + 40) = v62;
    *(v63 + 48) = v59;
    *(v63 + 56) = v60;
    *(v63 + 64) = v54;
    sub_1D102CC18(&v132, v63 + 72);
    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
    v53 = v119;
    if (v119 == v123)
    {
      goto LABEL_99;
    }
  }

  v71 = sub_1D13910DC();
  if (!v71)
  {
    goto LABEL_93;
  }

LABEL_60:
  v134 = v8;
  swift_bridgeObjectRetain_n();
  sub_1D13912DC();
  if (v71 < 0)
  {
    goto LABEL_107;
  }

  v72 = 0;
  v122 = v64;
  v121 = v71;
  while (1)
  {
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      v7 = sub_1D13910DC();
      goto LABEL_3;
    }

    v126 = v72 + 1;
    if ((v120 & 0xC000000000000001) != 0)
    {
      v74 = MEMORY[0x1D3886B70]();
      v73 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v73 = MEMORY[0x1E69E7CC0];
      if (v72 >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v74 = *(v120 + 32 + 8 * v72);
    }

    v87 = v64[12];
    v88 = v64[13];
    __swift_project_boxed_opaque_existential_1Tm(v64 + 9, v87);
    (*(v88 + 16))(v87, v88);
    v89 = v64[12];
    v90 = v64[13];
    __swift_project_boxed_opaque_existential_1Tm(v64 + 9, v89);
    v91 = (*(v90 + 88))(v89, v90);
    v93 = v92;
    v94 = v74[10];
    v127 = v94;
    if (!(v94 >> 62))
    {
      v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v95)
      {
        break;
      }

      goto LABEL_63;
    }

    v95 = sub_1D13910DC();
    if (v95)
    {
      break;
    }

LABEL_63:
    v75 = v74;
    v76 = v74[2];
    v77 = v74[3];
    v78 = v74[4];
    v79 = v74[5];
    v80 = v74[6];
    v81 = v75[7];
    v82 = *(v75 + 64);
    v83 = v75[9];
    sub_1D1072E70((v75 + 11), &v132);

    v84 = v76;
    v85 = v79;

    _s11SizedRecordCMa();
    v86 = swift_allocObject();
    *(v86 + 128) = 0;
    *(v86 + 136) = 1;
    *(v86 + 16) = v84;
    *(v86 + 24) = v77;
    *(v86 + 32) = v78;
    *(v86 + 40) = v79;
    *(v86 + 48) = v80;
    *(v86 + 56) = v81;
    *(v86 + 64) = v82;
    *(v86 + 72) = v83;
    *(v86 + 80) = v73;
    sub_1D102CC18(&v132, v86 + 88);
    sub_1D13912AC();
    sub_1D13912EC();
    sub_1D13912FC();
    sub_1D13912BC();
    v72 = v126;
    v64 = v122;
    if (v126 == v121)
    {
      swift_bridgeObjectRelease_n();
      v54 = v134;
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }
  }

  v125 = v74;
  *&v132 = v73;
  sub_1D13912DC();
  if (v95 < 0)
  {
    goto LABEL_102;
  }

  v96 = 0;
  v128 = v95;
  while (2)
  {
    v104 = v96 + 1;
    if (!__OFADD__(v96, 1))
    {
      if ((v127 & 0xC000000000000001) != 0)
      {
        v105 = MEMORY[0x1D3886B70]();
      }

      else
      {
        if (v96 >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_98;
        }

        v105 = *(v127 + 32 + 8 * v96);
      }

      v106 = *(v105 + 48);
      if (v106 >> 62)
      {
        v107 = sub_1D13910DC();
        v129 = v104;
        if (!v107)
        {
          goto LABEL_89;
        }

LABEL_82:
        v131 = MEMORY[0x1E69E7CC0];
        sub_1D13912DC();
        if (v107 < 0)
        {
          goto LABEL_97;
        }

        v108 = 0;
        do
        {
          if ((v106 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1D3886B70](v108, v106);
          }

          else
          {
          }

          ++v108;
          sub_1D121EABC(v130, v91, v93 & 1, v69);

          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
        }

        while (v107 != v108);
        v97 = v131;
      }

      else
      {
        v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v129 = v104;
        if (v107)
        {
          goto LABEL_82;
        }

LABEL_89:
        v97 = MEMORY[0x1E69E7CC0];
      }

      v98 = *(v105 + 16);
      v99 = *(v105 + 24);
      v100 = *(v105 + 32);
      v101 = *(v105 + 40);
      v102 = v98;

      _s15SizedValueGroupCMa();
      v103 = swift_allocObject();
      *(v103 + 16) = v98;
      *(v103 + 24) = v99;
      *(v103 + 32) = v100;
      *(v103 + 40) = v101;
      *(v103 + 48) = v97;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v96 = v129;
      if (v129 == v128)
      {
        v73 = v132;
        v74 = v125;
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  v109 = v135;
LABEL_95:
  v110 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) init];
  _s4PageCMa();
  result = swift_allocObject();
  *(result + 120) = 1;
  *(result + 16) = v109;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = v110;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = v18;
  *(result + 104) = v118;
  *(result + 112) = 0;
  return result;
}

uint64_t sub_1D12B31C8(uint64_t a1, uint64_t a2)
{
  sub_1D1104738();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D12B322C(uint64_t a1)
{
  sub_1D1104738();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D12B3288()
{
  if (!qword_1EC60C2B0)
  {
    v0 = sub_1D139145C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60C2B0);
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D12B3324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1D12B336C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void AccountStatusSummaryTileFeedItemData.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138D5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12336A0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  sub_1D11292FC(v14, 0, 0, 0, v13);
  v15 = type metadata accessor for ClinicalAccountLoginUpgradeAction();
  if ((*(*(v15 - 8) + 48))(v13, 1, v15) == 1)
  {

    sub_1D12B54F0(v13, sub_1D12336A0);
    v16 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  else
  {
    v48 = v7;
    sub_1D12B54F0(v13, sub_1D12336A0);
    v17 = [v14 identifier];
    sub_1D138D5CC();
    v18 = [v14 provenance];
    v19 = [v18 brand];

    if (v19)
    {

      v20 = [v19 externalID];
      v21 = sub_1D139016C();
      v46 = v22;
      v47 = v21;

      v23 = [v19 batchID];
      v24 = sub_1D139016C();
      v44 = v25;
      v45 = v24;

      v26 = [v14 provenance];
      v27 = [v26 title];

      v28 = sub_1D139016C();
      v30 = v29;

      v31 = [v14 provenance];
      v32 = [v31 subtitle];

      if (v32)
      {
        v33 = sub_1D139016C();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0xE000000000000000;
      }

      v36 = [v14 state];
      HKClinicalAccount.summaryTileType.getter(v6);

      (*(v8 + 32))(a2, v10, v48);
      v37 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
      v38 = (a2 + v37[5]);
      v39 = v46;
      *v38 = v47;
      v38[1] = v39;
      v40 = v44;
      v38[2] = v45;
      v38[3] = v40;
      v41 = (a2 + v37[6]);
      *v41 = v28;
      v41[1] = v30;
      v42 = (a2 + v37[7]);
      *v42 = v33;
      v42[1] = v35;
      *(a2 + v37[8]) = v36;
      sub_1D12B3918(v6, a2 + v37[9]);
      *(a2 + v37[10]) = 0;
      (*(*(v37 - 1) + 56))(a2, 0, 1, v37);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1D12B3868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for AccountStatusSummaryTileFeedItemData()
{
  result = qword_1EE069AB8;
  if (!qword_1EE069AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D12B3918(uint64_t a1, uint64_t a2)
{
  sub_1D12B3834(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AccountStatusSummaryTileFeedItemData.accountId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D138D5EC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AccountStatusSummaryTileFeedItemData.brandId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccountStatusSummaryTileFeedItemData() + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t AccountStatusSummaryTileFeedItemData.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountStatusSummaryTileFeedItemData() + 24));

  return v1;
}

uint64_t AccountStatusSummaryTileFeedItemData.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccountStatusSummaryTileFeedItemData() + 28));

  return v1;
}

uint64_t AccountStatusSummaryTileFeedItemData.accounts.getter()
{
  type metadata accessor for AccountStatusSummaryTileFeedItemData();
}

uint64_t sub_1D12B3B64()
{
  v1 = *v0;
  v2 = 0x49746E756F636361;
  v3 = 1701869940;
  if (v1 != 5)
  {
    v3 = 0x73746E756F636361;
  }

  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0x6574617473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6449646E617262;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_1D12B3C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D12B591C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D12B3C60(uint64_t a1)
{
  v2 = sub_1D12B53B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D12B3C9C(uint64_t a1)
{
  v2 = sub_1D12B53B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountStatusSummaryTileFeedItemData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D12B548C(0, &qword_1EC60EBC0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12B53B0();
  sub_1D139181C();
  LOBYTE(v18) = 0;
  sub_1D138D5EC();
  sub_1D12B5B64(&qword_1EC609DC8, MEMORY[0x1E69695A8]);
  sub_1D139158C();
  if (!v2)
  {
    v10 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v13 = v11[2];
    v14 = v11[3];
    v18 = *v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v17 = 1;
    sub_1D12B5404();

    sub_1D139158C();

    LOBYTE(v18) = 2;
    sub_1D139155C();
    LOBYTE(v18) = 3;
    sub_1D139155C();
    v18 = *(v3 + v10[8]);
    v17 = 4;
    type metadata accessor for HKClinicalAccountState(0);
    sub_1D12B5B64(&qword_1EC60EBD8, type metadata accessor for HKClinicalAccountState);
    sub_1D139158C();
    LOBYTE(v18) = 5;
    sub_1D138EDCC();
    sub_1D12B5B64(&qword_1EC60EBE0, MEMORY[0x1E69A3E90]);
    sub_1D139154C();
    v18 = *(v3 + v10[10]);
    v17 = 6;
    sub_1D12B5458(0);
    sub_1D12B55A4(&qword_1EC60EBE8, &qword_1EC609DC8);
    sub_1D139154C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t AccountStatusSummaryTileFeedItemData.hash(into:)()
{
  v1 = sub_1D138D5EC();
  v25 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D138EDCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B5B64(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  v9 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
  sub_1D139027C();
  v10 = v3;
  v11 = v4;
  sub_1D139027C();
  sub_1D139027C();
  sub_1D139027C();
  MEMORY[0x1D38870E0](*(v0 + v9[8]));
  sub_1D12B5634(v0 + v9[9], v8, sub_1D12B3834);
  if ((*(v4 + 48))(v8, 1, v10) == 1)
  {
    sub_1D139179C();
  }

  else
  {
    v12 = *(v4 + 32);
    v13 = v23;
    v12(v23, v8, v10);
    sub_1D139179C();
    sub_1D12B5B64(&qword_1EC60EBF0, MEMORY[0x1E69A3E90]);
    sub_1D139007C();
    (*(v11 + 8))(v13, v10);
  }

  v14 = *(v0 + v9[10]);
  if (!v14)
  {
    return sub_1D139179C();
  }

  sub_1D139179C();
  result = MEMORY[0x1D38870E0](*(v14 + 16));
  v16 = *(v14 + 16);
  v17 = v24;
  if (v16)
  {
    v18 = *(v25 + 16);
    v19 = v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v20 = *(v25 + 72);
    v21 = (v25 + 8);
    do
    {
      v18(v17, v19, v1);
      sub_1D139007C();
      result = (*v21)(v17, v1);
      v19 += v20;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t AccountStatusSummaryTileFeedItemData.hashValue.getter()
{
  sub_1D139177C();
  AccountStatusSummaryTileFeedItemData.hash(into:)();
  return sub_1D13917CC();
}

uint64_t AccountStatusSummaryTileFeedItemData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D138D5EC();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B548C(0, &qword_1EC60EBF8, MEMORY[0x1E69E6F48]);
  v33 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D12B53B0();
  v34 = v10;
  v14 = v35;
  sub_1D13917FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v35 = v5;
  v15 = v31;
  LOBYTE(v36) = 0;
  sub_1D12B5B64(&qword_1EC609DB8, MEMORY[0x1E69695A8]);
  v16 = v32;
  sub_1D13914FC();
  (*(v30 + 32))(v13, v16, v6);
  v39 = 1;
  sub_1D12B5550();
  sub_1D13914FC();
  v17 = v37;
  v18 = v38;
  v19 = &v13[v11[5]];
  *v19 = v36;
  *(v19 + 2) = v17;
  *(v19 + 3) = v18;
  LOBYTE(v36) = 2;
  v20 = sub_1D13914CC();
  v21 = &v13[v11[6]];
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v36) = 3;
  v23 = sub_1D13914CC();
  v24 = &v13[v11[7]];
  *v24 = v23;
  v24[1] = v25;
  type metadata accessor for HKClinicalAccountState(0);
  v39 = 4;
  sub_1D12B5B64(&qword_1EC60EC08, type metadata accessor for HKClinicalAccountState);
  sub_1D13914FC();
  *&v13[v11[8]] = v36;
  sub_1D138EDCC();
  LOBYTE(v36) = 5;
  sub_1D12B5B64(&qword_1EC60EC10, MEMORY[0x1E69A3E90]);
  v26 = v35;
  sub_1D13914BC();
  sub_1D12B3918(v26, &v13[v11[9]]);
  sub_1D12B5458(0);
  v39 = 6;
  sub_1D12B55A4(&qword_1EC60EC18, &qword_1EC609DB8);
  sub_1D13914BC();
  (*(v15 + 8))(v34, v33);
  *&v13[v11[10]] = v36;
  sub_1D12B5634(v13, v29, type metadata accessor for AccountStatusSummaryTileFeedItemData);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D12B54F0(v13, type metadata accessor for AccountStatusSummaryTileFeedItemData);
}

uint64_t sub_1D12B4BFC()
{
  sub_1D139177C();
  AccountStatusSummaryTileFeedItemData.hash(into:)();
  return sub_1D13917CC();
}

uint64_t sub_1D12B4C40()
{
  sub_1D139177C();
  AccountStatusSummaryTileFeedItemData.hash(into:)();
  return sub_1D13917CC();
}

uint64_t AccountStatusSummaryTileFeedItemData.init(accountId:type:accounts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D138D5EC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a4, a1, v8);
  (*(v9 + 8))(a1, v8);
  v10 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
  v11 = v10[9];
  v12 = sub_1D138EDCC();
  v13 = *(v12 - 8);
  (*(v13 + 32))(a4 + v11, a2, v12);
  result = (*(v13 + 56))(a4 + v11, 0, 1, v12);
  v15 = (a4 + v10[5]);
  *v15 = 1162760014;
  v15[1] = 0xE400000000000000;
  v15[2] = 1162760014;
  v15[3] = 0xE400000000000000;
  v16 = (a4 + v10[6]);
  *v16 = 0xD000000000000019;
  v16[1] = 0x80000001D13CA1B0;
  v17 = (a4 + v10[7]);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(a4 + v10[8]) = 3;
  *(a4 + v10[10]) = a3;
  return result;
}

uint64_t _s15HealthRecordsUI36AccountStatusSummaryTileFeedItemDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D138EDCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D12B3834(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D10C9CD0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D138D5BC() & 1) == 0)
  {
    return 0;
  }

  v47 = v5;
  v48 = v4;
  v49 = type metadata accessor for AccountStatusSummaryTileFeedItemData();
  v15 = v49[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = *(a1 + v15 + 16);
  v19 = *(a1 + v15 + 24);
  v20 = (a2 + v15);
  v22 = v20[2];
  v21 = v20[3];
  v23 = v16 == *v20 && v17 == v20[1];
  if (!v23 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v24 = v18 == v22 && v19 == v21;
  if (!v24 && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v25 = v49;
  v26 = v49[6];
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  v30 = v25[7];
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  if ((v31 != *v33 || v32 != v33[1]) && (sub_1D139162C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v25[8]) != *(a2 + v25[8]))
  {
    return 0;
  }

  v34 = v25[9];
  v35 = *(v12 + 48);
  sub_1D12B5634(a1 + v34, v14, sub_1D12B3834);
  sub_1D12B5634(a2 + v34, &v14[v35], sub_1D12B3834);
  v37 = v47;
  v36 = v48;
  v38 = *(v47 + 48);
  if (v38(v14, 1, v48) != 1)
  {
    sub_1D12B5634(v14, v10, sub_1D12B3834);
    if (v38(&v14[v35], 1, v36) != 1)
    {
      (*(v37 + 32))(v7, &v14[v35], v36);
      sub_1D12B5B64(&qword_1EC60A648, MEMORY[0x1E69A3E90]);
      v40 = sub_1D139011C();
      v41 = *(v37 + 8);
      v41(v7, v36);
      v41(v10, v36);
      sub_1D12B54F0(v14, sub_1D12B3834);
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_28;
    }

    (*(v37 + 8))(v10, v36);
LABEL_24:
    sub_1D12B54F0(v14, sub_1D10C9CD0);
    return 0;
  }

  if (v38(&v14[v35], 1, v36) != 1)
  {
    goto LABEL_24;
  }

  sub_1D12B54F0(v14, sub_1D12B3834);
LABEL_28:
  v42 = v49[10];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43)
  {
    if (v44)
    {

      v45 = sub_1D1334E2C(v43, v44);

      if (v45)
      {
        return 1;
      }
    }
  }

  else if (!v44)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1D12B53B0()
{
  result = qword_1EC60EBC8;
  if (!qword_1EC60EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EBC8);
  }

  return result;
}

unint64_t sub_1D12B5404()
{
  result = qword_1EC60EBD0;
  if (!qword_1EC60EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EBD0);
  }

  return result;
}

void sub_1D12B548C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D12B53B0();
    v7 = a3(a1, &type metadata for AccountStatusSummaryTileFeedItemData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D12B54F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D12B5550()
{
  result = qword_1EC60EC00;
  if (!qword_1EC60EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC00);
  }

  return result;
}

uint64_t sub_1D12B55A4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D12B5458(255);
    sub_1D12B5B64(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D12B5634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D12B570C()
{
  sub_1D138D5EC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKClinicalAccountState(319);
    if (v1 <= 0x3F)
    {
      sub_1D12B3834(319);
      if (v2 <= 0x3F)
      {
        sub_1D12B3868(319, &qword_1EE0695D8, sub_1D12B5458, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1D12B5818()
{
  result = qword_1EC60EC28;
  if (!qword_1EC60EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC28);
  }

  return result;
}

unint64_t sub_1D12B5870()
{
  result = qword_1EC60EC30;
  if (!qword_1EC60EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC30);
  }

  return result;
}

unint64_t sub_1D12B58C8()
{
  result = qword_1EC60EC38;
  if (!qword_1EC60EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60EC38);
  }

  return result;
}

uint64_t sub_1D12B591C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E756F636361 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449646E617262 && a2 == 0xE700000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73746E756F636361 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D139162C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D12B5B64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D12B5BAC(uint64_t a1, char a2)
{
  *(v3 + 49) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  *(v3 + 72) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D12B5BF8, 0, 0);
}

uint64_t sub_1D12B5BF8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v3 + 16);
    v6 = *(v3 + 64);
    v7 = *(v3 + 48);
    *(v0 + 16) = *(v3 + 32);
    *(v0 + 32) = v7;
    *(v0 + 48) = v6;
    v8 = v4;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = *(v0 + 56);
      v12 = swift_task_alloc();
      *(v0 + 80) = v12;
      *v12 = v0;
      v12[1] = sub_1D12B5E60;
      v13 = *(v0 + 49);

      return sub_1D12B6C70(v10, v5, v13, v0 + 16);
    }

    else
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = *(v0 + 56);
        v20 = swift_task_alloc();
        *(v0 + 104) = v20;
        *v20 = v0;
        v20[1] = sub_1D12B6034;

        return sub_1D12B9150(v18, v0 + 16);
      }

      else
      {
        v21 = swift_task_alloc();
        *(v0 + 120) = v21;
        *v21 = v0;
        v21[1] = sub_1D12B61C0;
        v22 = *(v0 + 49);

        return sub_1D12B7C10(v2, v5, v22, v0 + 16);
      }
    }
  }

  else
  {
    v15 = *(v0 + 8);
    v16 = MEMORY[0x1E69E7CC0];

    return v15(v16);
  }
}