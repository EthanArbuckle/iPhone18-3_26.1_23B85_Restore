void sub_1B9F64E60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B9F64EDC()
{
  if (!qword_1EDC6AE88)
  {
    sub_1BA4A1728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6AE88);
    }
  }
}

void sub_1B9F64F44()
{
  if (!qword_1EDC6B790)
  {
    type metadata accessor for UIPluginInfo();
    sub_1B9F650B4();
    v0 = sub_1BA4A3BA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B790);
    }
  }
}

unint64_t sub_1B9F64FA8()
{
  result = qword_1EDC69CD8;
  if (!qword_1EDC69CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69CD8);
  }

  return result;
}

uint64_t type metadata accessor for UIPluginInfo()
{
  result = qword_1EDC6DC38;
  if (!qword_1EDC6DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B9F650B4()
{
  result = qword_1EDC6DC50;
  if (!qword_1EDC6DC50)
  {
    type metadata accessor for UIPluginInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC50);
  }

  return result;
}

uint64_t sub_1B9F6512C(uint64_t a1)
{
  v2 = sub_1B9F2F8B0(&qword_1EDC66498);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1B9F652B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v4);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9F65364()
{
  v1 = v0;
  sub_1B9F655A8();
  sub_1B9F657C0();
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v2, v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, qword_1EDC61778);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1B9F374E8(&v15, v12, &qword_1EDC61770, qword_1EDC61778);
  v3 = v13;
  if (!v13)
  {
    sub_1B9F43A50(v12, &qword_1EDC61770, qword_1EDC61778);
    goto LABEL_9;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v7)
  {
LABEL_9:
    [v1 setAccessibilityIdentifier_];
    return sub_1B9F43A50(&v15, &qword_1EDC61770, qword_1EDC61778);
  }

  sub_1B9F25350();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1BA4A6AE8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  [v1 setAccessibilityIdentifier_];
  return sub_1B9F43A50(&v15, &qword_1EDC61770, qword_1EDC61778);
}

uint64_t sub_1B9F655C8(uint64_t *a1, void (*a2)(__int128 *))
{
  v4 = *a1;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v4, v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v12)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC62258);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        sub_1B9F1134C(&v8, v11);
        v5 = v12;
        v6 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v6 + 16))(&v8, v5, v6);
        a2(&v8);
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  return sub_1B9F43A50(&v8, &qword_1EBBF0088, &qword_1EDC62258);
}

uint64_t sub_1B9F6575C(uint64_t a1)
{
  result = sub_1B9F2F8B0(&qword_1EDC66498);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F657C0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v9)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC60098);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        sub_1B9F1134C(&v5, v8);
        v2 = v9;
        v3 = v10;
        __swift_project_boxed_opaque_existential_1(v8, v9);
        (*(v3 + 16))(v2, v3);
        sub_1BA4A75F8();
        return __swift_destroy_boxed_opaque_existential_1(v8);
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  return sub_1B9F43A50(&v5, &qword_1EBBF00A0, &qword_1EDC60098);
}

uint64_t sub_1B9F65944()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1B9F65A5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A40A8();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ContentConfigurationCollectionViewListCell();
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v4);

  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v5, v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0);
    sub_1B9F0D950(0, &qword_1EDC62258);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1B9F1134C(&v9, v12);
        v6 = v13;
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v7 + 24))(v2, a1, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F43A50(&v9, &qword_1EBBF0088, &qword_1EDC62258);
}

void sub_1B9F65DE4()
{
  if (!qword_1EDC6B770)
  {
    sub_1BA4A4168();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B770);
    }
  }
}

uint64_t sub_1B9F65E3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1B9F65DE4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v7, v18, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v19)
  {
    sub_1B9F43A50(v18, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1B9F0D950(0, &qword_1EDC600A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    goto LABEL_8;
  }

  if (!*(&v21 + 1))
  {
LABEL_8:
    v12 = sub_1B9F43A50(&v20, &qword_1EBBF0080, &qword_1EDC600A0);
    goto LABEL_9;
  }

  sub_1B9F1134C(&v20, v23);
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v9 + 16))(v8, v9);
  v10 = sub_1BA4A4168();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) != 1)
  {
    (*(v11 + 32))(a1, v6, v10);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  sub_1B9F66560(v6);
  v12 = __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_9:
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(v12);
  v13 = [v2 viewController];
  if (v13)
  {
    v14 = v13;
    UIViewController.resolvedPresentation.getter(v23);

    v15 = v23[0];
  }

  else
  {
    v15 = 0;
  }

  LOBYTE(v23[0]) = v15;
  Presentation.cellBackgroundColor(for:)();
  return sub_1BA4A4118();
}

uint64_t sub_1B9F66128(uint64_t a1, uint64_t a2)
{
  sub_1B9F6621C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F661B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6621C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F66270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F662D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F66328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6638C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F663F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F66454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F664A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F664FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F66560(uint64_t a1)
{
  sub_1B9F65DE4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F665BC@<X0>(void *a1@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x50))(a1);
  v2 = [v1 viewController];
  if (v2)
  {
    v3 = v2;
    UIViewController.resolvedPresentation.getter(v6);

    v4 = v6[0];
  }

  else
  {
    v4 = 0;
  }

  v6[1] = v4;
  Presentation.cellBackgroundColor(for:)();
  return sub_1BA4A4118();
}

void UIViewController.resolvedPresentation.getter(_BYTE *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F668A8(&v25);
  v8 = v25;
  if (v25 == 15)
  {
    sub_1BA4A3DD8();
    v9 = v1;
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v24 = v14;
      v25 = ObjectType;
      *v13 = 136446466;
      swift_getMetatypeMetadata();
      v15 = sub_1BA4A6808();
      v17 = sub_1B9F0B82C(v15, v16, &v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = UIViewController.resolutionDebugDescription.getter();
      v20 = sub_1B9F0B82C(v18, v19, &v24);

      *(v13 + 14) = v20;
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%{public}s]: No Presentation could be resolved in hierarchy: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      v21 = v13;
      a1 = v23;
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v8 = 0;
  }

  *a1 = v8;
}

void sub_1B9F668A8(char *a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  v26 = v3;
  v25[0] = v1;
  sub_1B9F0AD9C(v25, v21 + 1);
  sub_1B9F66B64();
  v4 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(&v23 + 1);
    v6 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    (*(v6 + 8))(v21, v5, v6);
    v7 = v21[0];
    __swift_destroy_boxed_opaque_existential_1(&v22);
    __swift_destroy_boxed_opaque_existential_1(v25);
    goto LABEL_24;
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1BA38B5C0(&v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v8 = sub_1BA096838();
  v9 = v8;
  v20 = a1;
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_5:
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFAF2860](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          v14 = *(&v23 + 1);
          v15 = v24;
          __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
          (*(v15 + 8))(v21, v14, v15);
          v7 = v21[0];
          __swift_destroy_boxed_opaque_existential_1(&v22);
          __swift_destroy_boxed_opaque_existential_1(v25);
          goto LABEL_23;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1BA4A7CC8();
          if (!v10)
          {
            break;
          }

          goto LABEL_5;
        }

        v12 = *(v9 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      v26 = v3;
      v25[0] = v12;
      sub_1B9F0AD9C(v25, v21 + 1);
      if (swift_dynamicCast())
      {
        goto LABEL_15;
      }

      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      sub_1BA38B5C0(&v22);
      __swift_destroy_boxed_opaque_existential_1(v25);
      ++v11;
    }

    while (v13 != v10);
  }

  v16 = [v4 parentViewController];
  if (v16)
  {
    v17 = v16;
    UIViewController.resolvedPresentation.getter(&v22);

    v7 = v22;
  }

  else
  {
    v18 = [v4 presentingViewController];
    if (v18)
    {
      v19 = v18;
      UIViewController.resolvedPresentation.getter(&v22);

      v7 = v22;
    }

    else
    {
      v7 = 15;
    }
  }

LABEL_23:
  a1 = v20;
LABEL_24:
  *a1 = v7;
}

unint64_t sub_1B9F66B64()
{
  result = qword_1EDC6C150;
  if (!qword_1EDC6C150)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6C150);
  }

  return result;
}

uint64_t sub_1B9F66BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 44));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

void *HostViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange] = 1;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  v11 = type metadata accessor for SectionContext(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HostViewCell(0);
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xD0);
  v14 = v12;
  v15 = v13();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v17 = *(v14 + v16);
  *(v14 + v16) = v15;

  result = [v14 contentView];
  if (*(v14 + v16))
  {
    v19 = result;
    [result addSubview_];

    sub_1B9F67380();
    v20 = v14;
    if ([objc_opt_self() isAppleInternalInstall])
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v14 action:sel_didLongPress_];
      [v21 setNumberOfTouchesRequired_];
      v20 = [v14 contentView];
      [v20 addGestureRecognizer_];
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F66EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1BA4A1998();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

id sub_1B9F66F60()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for ChromeHostView());

  return [v9 initWithFrame_];
}

uint64_t type metadata accessor for ChromeHostView()
{
  result = qword_1EDC6DC00;
  if (!qword_1EDC6DC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HostView()
{
  result = qword_1EDC6B878;
  if (!qword_1EDC6B878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F670B4()
{
  sub_1B9F6719C(319, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B9F6719C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id HostView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = -1;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentFeedItemUniqueIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] = 1;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem] = 0;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  v12 = type metadata accessor for SectionContext(0);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView] = 0;
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier];
  v15 = type metadata accessor for HostView();
  *v14 = 0;
  v14[1] = 0;
  v17.receiver = v4;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1B9F6738C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5890;
  v5 = *&v1[v2];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = *&v1[v2];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = [v10 trailingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v14;
  v15 = *&v1[v2];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = [v15 topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v19;
  v20 = *&v1[v2];
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = [v20 bottomAnchor];
    v23 = [v1 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v4 + 56) = v25;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v26 = sub_1BA4A6AE8();

    [v21 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1B9F676E0(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for ChromeHostView();
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = sub_1BA4A74F8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_1BA4A74F8();
  if (a1 && ((v4 ^ v7) & 1) != 0)
  {
    v8 = &v1[OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header];
    swift_beginAccess();
    if (*v8)
    {
      [*v8 removeFromSuperview];
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    *v8 = 0;
    *(v8 + 1) = 0;

    sub_1B9F6CECC();
    v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView];
    if (v10)
    {
      v11 = [v10 topAnchor];
      if (*v8)
      {
        v12 = *v8;
      }

      else
      {
        v12 = v1;
      }

      v13 = &selRef_bottomAnchor;
      if (!*v8)
      {
        v13 = &selRef_topAnchor;
      }

      v14 = [v12 *v13];
      v15 = [v11 constraintEqualToAnchor:v14 constant:0.0];

      [v15 setActive_];
    }
  }
}

void sub_1B9F678B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (v7)
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v8 = v7;
    sub_1B9F67948();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F67948()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (!v4 || (v5 = v4, swift_beginAccess(), v6 = swift_unknownObjectWeakLoadStrong(), v7 = *(v5 + 16), v8 = v2, v7(v6, ObjectType, v5), v8, (v2 = *v1) != 0))
    {
      v9 = *(v1 + 8);
      v10 = swift_getObjectType();
      v11 = *(v9 + 16);
      v12 = v2;
      v13 = v11(v10, v9);

      if (v13)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          [Strong addChildViewController_];
          v16 = v15;
          [v13 didMoveToParentViewController_];
        }

        else
        {
          [v13 willMoveToParentViewController_];
          [v13 removeFromParentViewController];
        }
      }
    }
  }
}

uint64_t sub_1B9F67B0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v4);
  return sub_1B9F43AAC(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1B9F67BD4()
{
  sub_1B9F67DC4();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  if (!*(v0 + v1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14[0] = Strong, sub_1B9F21ADC(), sub_1B9F75874(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      sub_1B9F1134C(&v11, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      result = (*(v5 + 8))(v4, v5);
      if (result == 2 || (result & 1) != 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v14);
      }

      v6 = *(v0 + v1);
      if (v6)
      {
        type metadata accessor for ChromeHostView();
        v7 = swift_dynamicCastClassUnconditional();
        v8 = v6;
        v9 = [v7 layer];
        [v9 setCornerCurve_];

        v10 = [v7 layer];
        [v10 setCornerRadius_];

        [v7 setClipsToBounds_];
        return __swift_destroy_boxed_opaque_existential_1(v14);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  return sub_1B9F758D8(&v11);
}

void sub_1B9F67DC4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v0, v21);
  if (!v21[3])
  {
LABEL_11:
    sub_1B9F43AAC(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    goto LABEL_12;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange;
      swift_beginAccess();
      v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] = *(v0 + v5);
      v6 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
      swift_beginAccess();
      v7 = *&v4[v6];
      *&v4[v6] = v20;
      v2 = v20;
      v8 = v4;
      sub_1B9F681A0(v7);

      v9 = [v2 baseAutomationIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v13 = v12;

        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))(v11, v13);
LABEL_8:

        return;
      }

      v14 = *(v1 + v3);
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
        swift_beginAccess();
        v17 = *v15;
        v16 = v15[1];
        v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x120);

        v18(v17, v16);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  sub_1B9F68124(v2 + v1, v21);
  sub_1B9F0CE40(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v19 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v19);

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1B9F68124(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F681A0(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v12 = *&v2[v11];
  if (v12)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_1BA4A27B8();
    v13 = v12;
    v14 = a1;
    v15 = sub_1BA4A7798();

    if (v15)
    {
      return;
    }

    v12 = *&v2[v11];
    if (!v12)
    {
      v41 = v5;
      v17 = 0;
    }

    else
    {
LABEL_5:
      v41 = v5;
      v16 = [v12 uniqueIdentifier];
      v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v12 = v18;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v41 = v5;
    v17 = 0;
    v12 = 0;
  }

  v19 = &v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentFeedItemUniqueIdentifier];
  *v19 = v17;
  v19[1] = v12;

  v20 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver;
  v21 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver] = 0;

  v22 = *&v2[v11];
  if (v22)
  {
    v23 = v22;
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v24 = v2;
      v25 = sub_1BA4A3E88();
      v26 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138543362;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_1B9F07000, v25, v26, "%{public}@ Updating hostedViewable", v27, 0xCu);
        sub_1B9F8C6C8(v28);
        MEMORY[0x1BFAF43A0](v28, -1, -1);
        MEMORY[0x1BFAF43A0](v27, -1, -1);
      }

      (*(v41 + 8))(v10, v4);
    }

    sub_1B9F68654(v23);
    v42 = v23;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = sub_1BA4A14E8();

    v31 = *&v2[v20];
    *&v2[v20] = v30;
  }

  else
  {
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v32 = v2;
      v33 = sub_1BA4A3E88();
      v34 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        *(v35 + 4) = v32;
        *v36 = v32;
        v37 = v32;
        _os_log_impl(&dword_1B9F07000, v33, v34, "%{public}@ Clearing view controller, hostedFeedItem is nil", v35, 0xCu);
        sub_1B9F8C6C8(v36);
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        MEMORY[0x1BFAF43A0](v35, -1, -1);
      }

      (*(v41 + 8))(v8, v4);
    }

    v38 = &v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
    swift_beginAccess();
    v31 = *v38;
    v39 = *(v38 + 1);
    *v38 = 0;
    *(v38 + 1) = 0;
    sub_1B9F6B084(v31, v39);
  }
}

uint64_t sub_1B9F6861C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B9F68654(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v64 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v13 = *v12;
  if (*v12 && *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange) != 1)
  {
    v16 = *(v12 + 1);
    v67 = v5;
    v68 = v16;
    v14 = v13;
  }

  else
  {
    v14 = sub_1B9F68F90(a1);
    if (!v14)
    {
      sub_1BA4A3DD8();
      v29 = v2;
      v30 = a1;
      v31 = sub_1BA4A3E88();
      v32 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        LODWORD(v67) = v32;
        v34 = v33;
        v35 = swift_slowAlloc();
        v65 = v35;
        v68 = swift_slowAlloc();
        v69[0] = v68;
        *v34 = 138543618;
        *(v34 + 4) = v29;
        *v35 = v29;
        *(v34 + 12) = 2082;
        v64[1] = "secondaryDataSource";
        sub_1B9F75364(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_1BA4B5460;
        v37 = v29;
        v38 = [v30 uniqueIdentifier];
        v66 = v4;
        v39 = v38;
        v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v64[0] = v31;
        v41 = v5;
        v42 = v40;
        v44 = v43;

        *(v36 + 56) = MEMORY[0x1E69E6158];
        *(v36 + 64) = sub_1B9F1BE20();
        *(v36 + 32) = v42;
        *(v36 + 40) = v44;
        v45 = [v30 dateSubmitted];
        *(v36 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
        *(v36 + 104) = sub_1B9F6A24C();
        *(v36 + 72) = v45;
        v46 = sub_1BA4A67D8();
        v48 = sub_1B9F0B82C(v46, v47, v69);

        *(v34 + 14) = v48;
        v49 = v64[0];
        _os_log_impl(&dword_1B9F07000, v64[0], v67, "%{public}@ Failed to load viewable from feedItem %{public}s", v34, 0x16u);
        v50 = v65;
        sub_1B9F8C6C8(v65);
        MEMORY[0x1BFAF43A0](v50, -1, -1);
        v51 = v68;
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x1BFAF43A0](v51, -1, -1);
        MEMORY[0x1BFAF43A0](v34, -1, -1);

        (*(v41 + 8))(v8, v66);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v63 = *v12;
      v62 = *(v12 + 1);
      *v12 = 0;
      *(v12 + 1) = 0;
      sub_1B9F6B084(v63, v62);

      [v29 setAccessibilityLabel_];
      return;
    }

    v67 = v5;
    v68 = v15;
    v13 = v14;
  }

  v17 = v14;
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = v18;
    v66 = v4;
    v20 = v17;
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA20749C(v2, a1, v20);
    }

    sub_1B9F6A2F0(a1, v69);
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(v69, ObjectType, v19);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))(1);
  }

  else if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA4A3DD8();
    v21 = v2;
    v22 = sub_1BA4A3E88();
    v23 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v66 = v4;
      v25 = v24;
      v26 = swift_slowAlloc();
      *v25 = 138543362;
      *(v25 + 4) = v21;
      *v26 = v21;
      v27 = v21;
      _os_log_impl(&dword_1B9F07000, v22, v23, "%{public}@ hostedViewable is not a context consumer", v25, 0xCu);
      sub_1B9F8C6C8(v26);
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      v28 = v25;
      v4 = v66;
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v67 + 8))(v11, v4);
  }

  v53 = sub_1BA4A2718();
  v54 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface;
  v55 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface);
  v56 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 8);
  *v54 = v53;
  *(v54 + 1) = v57;
  v58 = v54[16];
  v54[16] = v59;
  sub_1B9F6B070(v55, v56, v58);
  sub_1B9F6AE74(v17, v68);
  v60 = [a1 uniqueIdentifier];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();

  v61 = sub_1BA4A6758();

  [v2 setAccessibilityLabel_];
}

char *sub_1B9F68F90(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v147 = v2;
  v148 = v3;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v143 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v143 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v143 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v143 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v143 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v143 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v143 - v25;
  result = FeedItem.pluginInfo.getter();
  if (!result)
  {
    return result;
  }

  v145 = v26;
  v146 = v21;
  v28 = v12;
  v149 = result;
  v29 = sub_1BA4A2718();
  v32 = v29;
  v33 = v30;
  if (v31 > 2u)
  {
    if (v31 == 3)
    {
      sub_1BA4A3DD8();

      v75 = sub_1BA4A3E88();
      v76 = sub_1BA4A6FB8();
      sub_1B9F244F4(v32, v33, 3u);
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v150 = v78;
        *v77 = 136315138;
        v79 = sub_1B9F0B82C(v32, v33, &v150);
        sub_1B9F244F4(v32, v33, 3u);
        *(v77 + 4) = v79;
        _os_log_impl(&dword_1B9F07000, v75, v76, "Attempted to load a content configuration as Viewable %s. This is not supported", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v78);
        MEMORY[0x1BFAF43A0](v78, -1, -1);
        MEMORY[0x1BFAF43A0](v77, -1, -1);
      }

      else
      {

        sub_1B9F244F4(v32, v33, 3u);
      }

      (*(v148 + 8))(v9, v147);
      return 0;
    }

    if (v31 == 4)
    {
      sub_1BA4A3DD8();

      v51 = sub_1BA4A3E88();
      v52 = sub_1BA4A6FB8();
      sub_1B9F244F4(v32, v33, 4u);
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v150 = v54;
        *v53 = 136315138;
        v55 = sub_1B9F0B82C(v32, v33, &v150);
        sub_1B9F244F4(v32, v33, 4u);
        *(v53 + 4) = v55;
        _os_log_impl(&dword_1B9F07000, v51, v52, "Attempted to load a content configuration as Viewable %s. This is not supported", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x1BFAF43A0](v54, -1, -1);
        MEMORY[0x1BFAF43A0](v53, -1, -1);
      }

      else
      {

        sub_1B9F244F4(v32, v33, 4u);
      }

      (*(v148 + 8))(v6, v147);
      return 0;
    }

    goto LABEL_32;
  }

  if (!v31)
  {
    v56 = sub_1BA1D56FC();
    if (v56)
    {
      v57 = v56;
      v58 = sub_1BA4A6758();
      sub_1B9F244F4(v32, v33, 0);
      v59 = [v57 tryToInstantiateViewControllerWithIdentifier_];

      if (v59)
      {
        v146 = v59;
        v60 = v145;
        sub_1BA4A3E28();
        v61 = a1;
        v62 = sub_1BA4A3E88();
        v63 = sub_1BA4A6FC8();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          v150 = v144;
          *v64 = 136315138;
          v143 = "secondaryDataSource";
          sub_1B9F2EAC0();
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1BA4B5460;
          v66 = [v61 uniqueIdentifier];
          v67 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v69 = v68;

          *(v65 + 56) = MEMORY[0x1E69E6158];
          *(v65 + 64) = sub_1B9F1BE20();
          *(v65 + 32) = v67;
          *(v65 + 40) = v69;
          v70 = [v61 dateSubmitted];
          *(v65 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
          *(v65 + 104) = sub_1B9F6A24C();
          *(v65 + 72) = v70;
          v71 = sub_1BA4A67D8();
          v73 = sub_1B9F0B82C(v71, v72, &v150);

          *(v64 + 4) = v73;
          _os_log_impl(&dword_1B9F07000, v62, v63, "FeedItem STORYBOARD makeViewController(): %s", v64, 0xCu);
          v74 = v144;
          __swift_destroy_boxed_opaque_existential_1(v144);
          MEMORY[0x1BFAF43A0](v74, -1, -1);
          MEMORY[0x1BFAF43A0](v64, -1, -1);
        }

        else
        {
        }

        (*(v148 + 8))(v60, v147);
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          return v146;
        }

        return 0;
      }

      sub_1BA4A3DD8();
      v124 = a1;
      v98 = v57;
      v125 = sub_1BA4A3E88();
      v126 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        v150 = v146;
        *v127 = 136446466;
        v128 = [v98 debugDescription];
        v129 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v131 = v130;

        v132 = sub_1B9F0B82C(v129, v131, &v150);

        *(v127 + 4) = v132;
        *(v127 + 12) = 2080;
        v145 = "secondaryDataSource";
        sub_1B9F2EAC0();
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_1BA4B5460;
        v134 = [v124 uniqueIdentifier];
        v135 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v137 = v136;

        *(v133 + 56) = MEMORY[0x1E69E6158];
        *(v133 + 64) = sub_1B9F1BE20();
        *(v133 + 32) = v135;
        *(v133 + 40) = v137;
        v138 = [v124 dateSubmitted];
        *(v133 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
        *(v133 + 104) = sub_1B9F6A24C();
        *(v133 + 72) = v138;
        v139 = sub_1BA4A67D8();
        v141 = sub_1B9F0B82C(v139, v140, &v150);

        *(v127 + 14) = v141;
        _os_log_impl(&dword_1B9F07000, v125, v126, "Cannot resolve viewController from storyboard %{public}s for feedItem %s", v127, 0x16u);
        v142 = v146;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v142, -1, -1);
        MEMORY[0x1BFAF43A0](v127, -1, -1);

LABEL_48:

        (*(v148 + 8))(v24, v147);
        return 0;
      }

LABEL_47:
      goto LABEL_48;
    }

    sub_1B9F244F4(v32, v33, 0);
LABEL_32:

    return 0;
  }

  if (v31 == 1)
  {
    v34 = v29;
    if (sub_1B9F6A168(v29, v30, v149, &qword_1EDC6B5D0))
    {
      sub_1B9F244F4(v32, v33, 1u);
      v35 = v146;
      sub_1BA4A3E28();
      v36 = a1;
      v37 = sub_1BA4A3E88();
      v38 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v150 = v145;
        *v39 = 136315138;
        v144 = "secondaryDataSource";
        sub_1B9F2EAC0();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1BA4B5460;
        v41 = [v36 uniqueIdentifier];
        v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v44 = v43;

        *(v40 + 56) = MEMORY[0x1E69E6158];
        *(v40 + 64) = sub_1B9F1BE20();
        *(v40 + 32) = v42;
        *(v40 + 40) = v44;
        v45 = [v36 dateSubmitted];
        *(v40 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
        *(v40 + 104) = sub_1B9F6A24C();
        *(v40 + 72) = v45;
        v46 = sub_1BA4A67D8();
        v48 = sub_1B9F0B82C(v46, v47, &v150);

        *(v39 + 4) = v48;
        _os_log_impl(&dword_1B9F07000, v37, v38, "FeedItem CLASS makeViewController(): %s", v39, 0xCu);
        v49 = v145;
        __swift_destroy_boxed_opaque_existential_1(v145);
        MEMORY[0x1BFAF43A0](v49, -1, -1);
        MEMORY[0x1BFAF43A0](v39, -1, -1);
      }

      (*(v148 + 8))(v35, v147);
      v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      goto LABEL_23;
    }

    sub_1BA4A3DD8();
    v97 = a1;
    sub_1BA1EB37C(v32, v33, 1u);
    v98 = sub_1BA4A3E88();
    v99 = sub_1BA4A6FB8();
    sub_1B9F244F4(v32, v33, 1u);

    if (!os_log_type_enabled(v98, v99))
    {

      sub_1B9F244F4(v32, v33, 1u);

      (*(v148 + 8))(v18, v147);
      return 0;
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v150 = v101;
    *v100 = 136446466;
    v24 = v18;
    v102 = sub_1B9F0B82C(v32, v33, &v150);
    sub_1B9F244F4(v34, v33, 1u);
    *(v100 + 4) = v102;
    *(v100 + 12) = 2080;
    v146 = "secondaryDataSource";
    sub_1B9F2EAC0();
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1BA4B5460;
    v104 = [v97 uniqueIdentifier];
    v105 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v107 = v106;

    *(v103 + 56) = MEMORY[0x1E69E6158];
    *(v103 + 64) = sub_1B9F1BE20();
    *(v103 + 32) = v105;
    *(v103 + 40) = v107;
    v108 = [v97 dateSubmitted];
    *(v103 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
    *(v103 + 104) = sub_1B9F6A24C();
    *(v103 + 72) = v108;
    v109 = sub_1BA4A67D8();
    v111 = sub_1B9F0B82C(v109, v110, &v150);

    *(v100 + 14) = v111;
    v112 = "Cannot resolve viewController from class name %{public}s for feedItem %s";
    goto LABEL_37;
  }

  if (!sub_1B9F6A168(v29, v30, v149, &qword_1EDC6B4A0))
  {
    sub_1BA4A3DD8();
    v113 = a1;
    sub_1BA1EB37C(v32, v33, 2u);
    v98 = sub_1BA4A3E88();
    v99 = sub_1BA4A6FB8();
    sub_1B9F244F4(v32, v33, 2u);

    if (!os_log_type_enabled(v98, v99))
    {

      sub_1B9F244F4(v32, v33, 2u);

      (*(v148 + 8))(v28, v147);
      return 0;
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v150 = v101;
    *v100 = 136446466;
    v24 = v28;
    v114 = sub_1B9F0B82C(v32, v33, &v150);
    sub_1B9F244F4(v32, v33, 2u);
    *(v100 + 4) = v114;
    *(v100 + 12) = 2080;
    v146 = "secondaryDataSource";
    sub_1B9F2EAC0();
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1BA4B5460;
    v116 = [v113 uniqueIdentifier];
    v117 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v119 = v118;

    *(v115 + 56) = MEMORY[0x1E69E6158];
    *(v115 + 64) = sub_1B9F1BE20();
    *(v115 + 32) = v117;
    *(v115 + 40) = v119;
    v120 = [v113 dateSubmitted];
    *(v115 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
    *(v115 + 104) = sub_1B9F6A24C();
    *(v115 + 72) = v120;
    v121 = sub_1BA4A67D8();
    v123 = sub_1B9F0B82C(v121, v122, &v150);

    *(v100 + 14) = v123;
    v112 = "Cannot resolve view from class name %{public}s for feedItem %s";
LABEL_37:
    _os_log_impl(&dword_1B9F07000, v98, v99, v112, v100, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v101, -1, -1);
    MEMORY[0x1BFAF43A0](v100, -1, -1);
    goto LABEL_47;
  }

  sub_1B9F244F4(v32, v33, 2u);
  v80 = v15;
  sub_1BA4A3E28();
  v81 = a1;
  v82 = sub_1BA4A3E88();
  v83 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v150 = v146;
    *v84 = 136315138;
    v145 = "secondaryDataSource";
    sub_1B9F2EAC0();
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_1BA4B5460;
    v86 = [v81 uniqueIdentifier];
    v87 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v89 = v88;

    *(v85 + 56) = MEMORY[0x1E69E6158];
    *(v85 + 64) = sub_1B9F1BE20();
    *(v85 + 32) = v87;
    *(v85 + 40) = v89;
    v90 = [v81 dateSubmitted];
    *(v85 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0);
    *(v85 + 104) = sub_1B9F6A24C();
    *(v85 + 72) = v90;
    v91 = sub_1BA4A67D8();
    v93 = sub_1B9F0B82C(v91, v92, &v150);

    *(v84 + 4) = v93;
    _os_log_impl(&dword_1B9F07000, v82, v83, "FeedItem CLASS makeView(): %s", v84, 0xCu);
    v94 = v146;
    __swift_destroy_boxed_opaque_existential_1(v146);
    MEMORY[0x1BFAF43A0](v94, -1, -1);
    MEMORY[0x1BFAF43A0](v84, -1, -1);
  }

  (*(v148 + 8))(v80, v147);
  v50 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_23:
  v95 = v50;

  swift_getObjectType();
  v96 = swift_conformsToProtocol2();
  result = v95;
  if (!v96 || !v95)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1B9F6A168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if ([v4 usesPlatformView])
  {
    v6 = sub_1BA4A6758();
    v7 = NSClassFromString(v6);

    result = v7;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    v9 = sub_1BA4A3AD8();
    v10 = sub_1BA4A6758();
    v11 = [v9 classNamed_];

    result = v11;
    if (!v11)
    {
      return result;
    }
  }

  swift_getObjCClassMetadata();
  sub_1B9F0ADF8(0, a4);
  return swift_dynamicCastMetatype();
}

unint64_t sub_1B9F6A24C()
{
  result = qword_1EDC6B4B0;
  if (!qword_1EDC6B4B0)
  {
    sub_1B9F6A2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B4B0);
  }

  return result;
}

unint64_t sub_1B9F6A2A4()
{
  result = qword_1EDC6B4C0;
  if (!qword_1EDC6B4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B4C0);
  }

  return result;
}

void sub_1B9F6A2F0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B9F6A8B8(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 faultingState])
  {
    sub_1BA207F84();
    swift_allocError();
    *v10 = 0;
LABEL_3:
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1BA207F84();
    swift_allocError();
    *v23 = 1;
    goto LABEL_3;
  }

  v12 = Strong;
  v13 = UIViewController.resolvedHealthStore.getter();
  if (v13)
  {
    v49 = v13;
    UIViewController.resolvedPinnedContentManager.getter(v52);
    UIViewController.resolvedPresentation.getter(&v54);
    v53 = v54;
    a2[3] = v7;
    a2[4] = &protocol witness table for BasicFeedItemViewControllerContext;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    *v9 = xmmword_1BA4B7EA0;
    *(v9 + 1) = xmmword_1BA4B7EA0;
    v14 = v7[11];
    v15 = sub_1BA4A22F8();
    v16 = *(*(v15 - 8) + 56);
    v50 = v14;
    v16(&v9[v14], 1, 1, v15);
    v17 = &v9[v7[13]];
    *v17 = 0;
    *(v17 + 1) = 0;
    v48 = v17;
    v18 = [a1 userData];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1BA4A1608();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xF000000000000000;
    }

    sub_1B9F6AC8C(*v9, *(v9 + 1));
    *v9 = v20;
    *(v9 + 1) = v22;
    v25 = [a1 actionHandlerUserData];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1BA4A1608();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0xF000000000000000;
    }

    sub_1B9F6AC8C(*(v9 + 2), *(v9 + 3));
    *(v9 + 2) = v27;
    *(v9 + 3) = v29;
    *(v9 + 4) = v49;
    sub_1B9F0A534(v52, (v9 + 48));
    v30 = [a1 uniqueIdentifier];
    v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v33 = v32;

    *(v9 + 11) = v31;
    *(v9 + 12) = v33;
    sub_1BA4A26B8();
    sub_1BA4A2788();
    sub_1B9F6ACA0(v6, &v9[v50]);
    v9[40] = v53;
    v34 = [a1 baseAutomationIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = &v9[v7[12]];
    *v39 = v36;
    v39[1] = v38;
    if (FeedItem.pluginInfo.getter())
    {
      v40 = sub_1BA4A3AD8();

      v41 = [a1 actionHandlerClassName];
      if (v41)
      {
        v42 = v41;
        v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v45 = v44;

        __swift_destroy_boxed_opaque_existential_1(v52);
        v46 = swift_allocObject();
        *(v46 + 2) = v40;
        *(v46 + 3) = v43;
        *(v46 + 4) = v45;
        v47 = v48;
        *v48 = sub_1BA028D88;
        v47[1] = v46;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v52);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    sub_1B9F6AD20(v9, boxed_opaque_existential_1);
  }

  else
  {
    sub_1BA207F84();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1B9F6A770()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B9F6A7B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6A804(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6A85C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F6A8B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6A90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6A970(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F6A9F8()
{
  sub_1B9F6AB84(319, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B9F2ACE8();
    if (v1 <= 0x3F)
    {
      sub_1B9F6ABD4();
      if (v2 <= 0x3F)
      {
        sub_1BA4A1C68();
        if (v3 <= 0x3F)
        {
          sub_1B9F6AC38(319, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
          if (v4 <= 0x3F)
          {
            sub_1B9F6AB84(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1B9F6AC38(319, &qword_1EDC5DB48, sub_1B9F37BB8);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B9F6AB84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F6ABD4()
{
  result = qword_1EDC6ADC0;
  if (!qword_1EDC6ADC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6ADC0);
  }

  return result;
}

void sub_1B9F6AC38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F6AC8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9F2BB4C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B9F6ACA0(uint64_t a1, uint64_t a2)
{
  sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F6AD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F6AD84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9F206D4(a1, a2);
  }

  return a1;
}

uint64_t sub_1B9F6AD98()
{
  v1 = *v0;
  sub_1B9F6AD84(*v0, *(v0 + 8));
  return v1;
}

void sub_1B9F6ADFC(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  if (*(v1 + v3) && *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange) != 1 || (a1 & 1) == 0)
  {
    sub_1B9F6CECC();
  }
}

void sub_1B9F6AE74(void *a1, uint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  swift_beginAccess();
  v10 = *v9;
  v11 = *(v9 + 1);
  if (*v9 && v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] != 1)
  {
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v13 = v2;
      v14 = sub_1BA4A3E88();
      v15 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138543362;
        *(v16 + 4) = v13;
        *v17 = v13;
        v18 = v13;
        _os_log_impl(&dword_1B9F07000, v14, v15, "%{public}@ We are re-using the view controller so no need to update the hosted viewable", v16, 0xCu);
        sub_1B9F8C6C8(v17);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
        MEMORY[0x1BFAF43A0](v16, -1, -1);
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    *v9 = a1;
    *(v9 + 1) = a2;
    v12 = a1;
    sub_1B9F6B084(v10, v11);
  }
}

uint64_t sub_1B9F6B070(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B9F244F4(a1, a2, a3);
  }

  return a1;
}

void sub_1B9F6B084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - v11;
  v13 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  if (*v13)
  {
    if (*v13 != a1)
    {
      if (!a1)
      {
LABEL_8:
        v17 = *v13;
        if (*v13)
        {
          v69 = *(v13 + 1);
          v18 = v17;
          v19 = HAFeatureFlagViewLoggingEnabled();
          v68 = v18;
          if (v19)
          {
            v67 = a1;
            sub_1BA4A3DD8();
            v20 = v3;
            v21 = sub_1BA4A3E88();
            v22 = sub_1BA4A6FC8();

            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              v66 = v7;
              v24 = v23;
              v25 = swift_slowAlloc();
              *v24 = 138543362;
              *(v24 + 4) = v20;
              *v25 = v20;
              v26 = v20;
              _os_log_impl(&dword_1B9F07000, v21, v22, "%{public}@ Updating non-nil and not loaded viewable", v24, 0xCu);
              sub_1B9F8C6C8(v25);
              MEMORY[0x1BFAF43A0](v25, -1, -1);
              v27 = v24;
              v7 = v66;
              MEMORY[0x1BFAF43A0](v27, -1, -1);
            }

            (*(v7 + 8))(v12, v6);
            a1 = v67;
            v18 = v68;
          }

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v29 = Strong;
            v30 = *v13;
            if (*v13)
            {
              v66 = a2;
              v67 = a1;
              v31 = *(v13 + 1);
              ObjectType = swift_getObjectType();
              v33 = *(v31 + 16);
              v34 = v30;
              v35 = v33(ObjectType, v31);

              if (v35)
              {
                [v29 addChildViewController_];

                v29 = v35;
              }

              a2 = v66;
              a1 = v67;
              v18 = v68;
            }
          }

          v36 = swift_getObjectType();
          v37 = (*(v69 + 24))(v36);
          v38 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView;
          v39 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
          if (v39)
          {
            [v39 removeFromSuperview];
            v40 = *(v3 + v38);
          }

          else
          {
            v40 = 0;
          }

          *(v3 + v38) = v37;
          v52 = v37;

          sub_1B9F6C98C();
          v53 = swift_unknownObjectWeakLoadStrong();
          if (v53)
          {
            v54 = v53;
            v55 = *v13;
            if (*v13)
            {
              v56 = *(v13 + 1);
              v57 = swift_getObjectType();
              v58 = *(v56 + 16);
              v59 = v55;
              v60 = v58(v57, v56);

              if (v60)
              {
                [v60 didMoveToParentViewController_];

                v54 = v60;
              }

              v18 = v68;
            }
          }

          if (a1)
          {
            v61 = swift_getObjectType();
            v62 = (*(a2 + 16))(v61, a2);
            [v62 removeFromParentViewController];
          }

          v70 = v18;
          v71 = v69;
          sub_1B9F0D9AC(0, qword_1EDC6B7C0);
          sub_1B9F0D9AC(0, qword_1EDC61778);
          v63 = v18;
          if ((swift_dynamicCast() & 1) == 0)
          {
            v73 = 0;
            memset(v72, 0, sizeof(v72));
          }

          (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1E8))(v72);

          sub_1B9F752DC(v72);
        }

        else
        {
          if (HAFeatureFlagViewLoggingEnabled())
          {
            sub_1BA4A3DD8();
            v41 = v3;
            v42 = sub_1BA4A3E88();
            v43 = sub_1BA4A6FC8();

            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              v66 = v7;
              v45 = v44;
              v46 = swift_slowAlloc();
              *v45 = 138543362;
              *(v45 + 4) = v41;
              *v46 = v41;
              v47 = v41;
              _os_log_impl(&dword_1B9F07000, v42, v43, "%{public}@ Removing hosted view, hostedViewable.", v45, 0xCu);
              sub_1B9F8C6C8(v46);
              MEMORY[0x1BFAF43A0](v46, -1, -1);
              v48 = v45;
              v7 = v66;
              MEMORY[0x1BFAF43A0](v48, -1, -1);
            }

            (*(v7 + 8))(v10, v6);
          }

          v49 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView;
          v50 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
          if (v50)
          {
            [v50 removeFromSuperview];
            v51 = *(v3 + v49);
          }

          else
          {
            v51 = 0;
          }

          *(v3 + v49) = 0;

          sub_1B9F6C98C();
          if (a1)
          {
            v64 = swift_getObjectType();
            v65 = (*(a2 + 16))(v64, a2);
            [v65 removeFromParentViewController];
          }
        }

        return;
      }

LABEL_6:
      v14 = swift_getObjectType();
      v15 = (*(a2 + 16))(v14, a2);
      if (v15)
      {
        v16 = v15;
        [v15 willMoveToParentViewController_];
      }

      goto LABEL_8;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA2DB3EC(v2);
  }
}

void *Viewable<>.viewController.getter()
{
  v0 = sub_1B9F6B730();
  v1 = v0;
  return v0;
}

{
  v1 = v0;
  return v0;
}

id _s18HealthExperienceUI8ViewablePAA05SwiftC019UIHostingControllerCyAD7AnyViewVGRbzrlE010presentingI0So6UIViewCvg_0()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B9F6B774(void *a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, char a7)
{
  v64 = a3;
  v63 = a2;
  v12 = sub_1BA4A3EA8();
  v62 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  if ((a7 & 1) == 0)
  {
    v15 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  }

  if (!a6)
  {
    v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v15];
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v16 = objc_opt_self();
  v17 = a6;
  v18 = [v16 _preferredFontForTextStyle_maximumContentSizeCategory_compatibleWithTraitCollection_];
  if (v18)
  {
    v19 = v18;
    v20 = [v19 fontDescriptor];

    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v21 = [v20 fontDescriptorWithSymbolicTraits_];

    v20 = v21;
    goto LABEL_9;
  }

  v20 = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v59 = a4;
  if ((v64 & 1) == 0)
  {
    v60 = a5;
    v61 = v14;
    v22 = MEMORY[0x1E69E6F90];
    sub_1B9F6C0D8(0, &qword_1EDC6E320, sub_1B9F6BEB8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v58 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    v24 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    sub_1B9F6C0D8(0, &qword_1EDC6E328, sub_1B9F6C24C, v22);
    v25 = swift_initStackObject();
    v26 = MEMORY[0x1E69DB990];
    *(v25 + 16) = v58;
    v27 = *v26;
    *(v25 + 32) = *v26;
    *(v25 + 40) = v63;
    v28 = v24;
    v29 = v27;
    v30 = sub_1B9F6C37C(v25);
    swift_setDeallocating();
    sub_1B9F6C460(v25 + 32, sub_1B9F6C24C);
    sub_1B9F6C4C0();
    *(inited + 64) = v31;
    *(inited + 40) = v30;
    sub_1B9F6C6E0(inited);
    swift_setDeallocating();
    sub_1B9F6C460(inited + 32, sub_1B9F6BEB8);
    if (!v20)
    {

      v14 = v61;
      a5 = v60;
      goto LABEL_20;
    }

    type metadata accessor for AttributeName(0);
    sub_1B9F6C56C(&qword_1EDC6E3A8, type metadata accessor for AttributeName);
    v32 = sub_1BA4A6618();

    v33 = [v20 fontDescriptorByAddingAttributes_];

    v20 = v33;
    v14 = v61;
    a5 = v60;
  }

  if (a5)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

    v34 = [v20 fontDescriptorWithDesign_];

    v20 = v34;
  }

  if (v20)
  {
    v35 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    goto LABEL_24;
  }

LABEL_20:
  *&v58 = v12;
  sub_1BA4A3DD8();
  v36 = a1;
  v37 = sub_1BA4A3E88();
  v38 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v60 = a5;
    v40 = v39;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67[0] = v42;
    *v40 = 136315906;
    v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v45 = sub_1B9F0B82C(v43, v44, v67);
    v61 = v14;
    v46 = v45;

    *(v40 + 4) = v46;
    *(v40 + 12) = 2080;
    v65 = v63;
    v66 = v64 & 1;
    sub_1B9F6C0D8(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
    v47 = sub_1BA4A6808();
    v49 = sub_1B9F0B82C(v47, v48, v67);

    *(v40 + 14) = v49;
    *(v40 + 22) = 2080;
    LODWORD(v65) = v59;
    type metadata accessor for SymbolicTraits(0);
    v50 = sub_1BA4A6808();
    v52 = sub_1B9F0B82C(v50, v51, v67);

    *(v40 + 24) = v52;
    *(v40 + 32) = 2112;
    v53 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v54 = [v53 initWithBool_];
    *(v40 + 34) = v54;
    *v41 = v54;
    _os_log_impl(&dword_1B9F07000, v37, v38, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v40, 0x2Au);
    sub_1B9F8C6C8(v41);
    MEMORY[0x1BFAF43A0](v41, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    MEMORY[0x1BFAF43A0](v40, -1, -1);

    (*(v62 + 8))(v61, v58);
  }

  else
  {

    (*(v62 + 8))(v14, v58);
  }

  v55 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v35 = [objc_opt_self() fontWithDescriptor:v55 size:0.0];
  v20 = v15;
  v15 = v55;
LABEL_24:
  v56 = v35;

  return v56;
}

void sub_1B9F6BEB8()
{
  if (!qword_1EDC6E388)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E388);
    }
  }
}

void sub_1B9F6BF24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6BF78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6BFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6C030(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C084(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6C13C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C190(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C1E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C24C()
{
  if (!qword_1EDC6E3B0)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E3B0);
    }
  }
}

void sub_1B9F6C2D0()
{
  if (!qword_1EDC6E340)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1B9F28EB8(&qword_1EDC6E3D8, type metadata accessor for TraitKey);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E340);
    }
  }
}

unint64_t sub_1B9F6C37C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F6C2D0();
    v3 = sub_1BA4A8098();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1B9F4E590(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B9F6C460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B9F6C4C0()
{
  if (!qword_1EDC6E428)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1B9F6C56C(&qword_1EDC6E3D8, type metadata accessor for TraitKey);
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E428);
    }
  }
}

uint64_t sub_1B9F6C56C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9F6C5B4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_1BA4A8098();
    v9 = a1 + 32;

    while (1)
    {
      sub_1B9F6C7B4(v9, &v16, a3, a4, sub_1B9F6C824);
      v10 = v16;
      result = sub_1B9F4E590(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_1B9F46920(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B9F6C714()
{
  if (!qword_1EDC6E338)
  {
    type metadata accessor for AttributeName(255);
    sub_1B9F28EB8(&qword_1EDC6E3A8, type metadata accessor for AttributeName);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E338);
    }
  }
}

uint64_t sub_1B9F6C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B9F6C824(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B9F6C88C()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x3265756C6176;
  }

  if (*v0)
  {
    v1 = 0x65746E4965746164;
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

uint64_t sub_1B9F6C904()
{
  v0 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BA4A8338();
  }

  return v5 & 1;
}

void sub_1B9F6C98C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = [v0 addSubview_];
    v4 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))(v3);
    v5 = objc_opt_self();
    sub_1B9F64098(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5890;
    v7 = [v2 leadingAnchor];
    v8 = [v0 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

    *(v6 + 32) = v9;
    v10 = [v2 trailingAnchor];
    v11 = [v0 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

    *(v6 + 40) = v12;
    v13 = [v2 topAnchor];
    v14 = (*((*v4 & *v0) + 0x110))();
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

    *(v6 + 48) = v15;
    v16 = [v2 bottomAnchor];
    v17 = [v0 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

    *(v6 + 56) = v18;
    sub_1B9F0ADF8(0, &qword_1EDC6B570);
    v19 = sub_1BA4A6AE8();

    [v5 activateConstraints_];

    sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
    sub_1B9F0D9AC(0, qword_1EDC61778);
    v20 = v2;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
    }

    (*((*v4 & *v0) + 0x1E8))(v21);

    sub_1B9F752DC(v21);
  }
}

void sub_1B9F6CD5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView];
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = *(v5 + 16);
      v8 = v2;
      v7(Strong, ObjectType, v5);
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    UIViewController.resolvedPresentation.getter(&v14);

    LOBYTE(v10) = v14 - 4;
    v11 = objc_opt_self();
    v12 = &selRef_tertiarySystemBackgroundColor;
    if ((v10 & 0xF7) != 0)
    {
      v12 = &selRef_secondarySystemGroupedBackgroundColor;
    }

    v13 = [v11 *v12];
    [v1 setBackgroundColor_];
  }

  sub_1B9F6CECC();
}

void sub_1B9F6CECC()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  swift_beginAccess();
  v2 = *v1;
  if (*v1 && (v3 = *(v1 + 1), v16[0] = *v1, v16[1] = v3, sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, qword_1EDC65D70), v4 = v2, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v14 + 1))
    {
      sub_1B9F1134C(&v13, v16);
      v5 = v17;
      v6 = v18;
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v7 = *(v6 + 16);
      v8 = v0;
      v7(v0, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v9 = *v1;
      if (!*v1)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  sub_1B9F43AAC(&v13, &qword_1EDC65D68, qword_1EDC65D70);
  v9 = *v1;
  if (!*v1)
  {
LABEL_11:
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_12;
  }

LABEL_8:
  sub_1B9F0D9AC(0, qword_1EDC6B7C0);
  sub_1B9F0D9AC(0, qword_1EDC6CD18);
  v10 = v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(&v14 + 1))
  {
    sub_1B9F1134C(&v13, v16);
    sub_1B9F6D244(v16);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return;
  }

LABEL_12:
  sub_1B9F43AAC(&v13, &qword_1EDC6CD10, qword_1EDC6CD18);
  v11 = &v0[OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header];
  swift_beginAccess();
  if (*v11)
  {
    [*v11 removeFromSuperview];
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  *v11 = 0;
  *(v11 + 1) = 0;
}

id sub_1B9F6D140(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(&v7, v1, v2);
  v4 = v7;
  if (v7)
  {
    if (v7 == 1)
    {
      type metadata accessor for DismissibleTileHeaderView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    else
    {
      v5 = v7(v3);
      sub_1BA2AD424(v4);
    }
  }

  else
  {
    type metadata accessor for DataTypeTileHeaderView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  return v5;
}

void sub_1B9F6D244(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  swift_beginAccess();
  v5 = *v4;
  if (!*v4)
  {
    v11 = sub_1B9F6D140(a1);
    v13 = v12;
    v14 = *v4;
    *v4 = v11;
    *(v4 + 8) = v12;
    v15 = v11;

    sub_1B9F6D95C(v15, v13, a1);
    v10 = *v4;
    if (!*v4)
    {
      return;
    }

LABEL_5:
    v16 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v32 = v10;
    v18 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {
      sub_1B9F0D9AC(0, qword_1EDC6B7C0);
      sub_1B9F0D9AC(0, qword_1EDC61778);
      v20 = v10;
      v21 = v19;
      if (swift_dynamicCast())
      {
        v22 = *(&v30 + 1);
        if (*(&v30 + 1))
        {
          v23 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
          v24 = (*(v23 + 8))(v22, v23);
          v26 = v25;
          __swift_destroy_boxed_opaque_existential_1(&v29);
          v27 = v24;
LABEL_12:
          (*(*(v16 + 16) + 8))(v27, v26, ObjectType);

          return;
        }
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v28 = v10;
    }

    sub_1B9F43AAC(&v29, &qword_1EDC61770, qword_1EDC61778);
    v27 = 0;
    v26 = 0;
    goto LABEL_12;
  }

  v6 = *(v4 + 8);
  v7 = swift_getObjectType();
  sub_1B9F0A534(a1, &v29);
  v8 = *(v6 + 128);
  v9 = v5;
  v8(&v29, v7, v6);

  sub_1B9F43AAC(&v29, &qword_1EDC6CD10, qword_1EDC6CD18);
  v10 = *v4;
  if (*v4)
  {
    goto LABEL_5;
  }
}

uint64_t type metadata accessor for DataTypeTileHeaderView()
{
  result = qword_1EDC6E928;
  if (!qword_1EDC6E928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F6D524()
{
  sub_1B9F0A9A4(319, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for TileHeaderDetailKind()
{
  result = qword_1EDC6EAA0;
  if (!qword_1EDC6EAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F6D66C()
{
  sub_1B9F6D6D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B9F6D6D8()
{
  if (!qword_1EDC6EA28[0])
  {
    sub_1BA4A1728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC6EA28);
    }
  }
}

id DataTypeTileHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  v10 = type metadata accessor for TileHeaderDetailKind();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToBottom] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToAccessory] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToDetail] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailToAccessory] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_glyphBaselineOffset] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for DataTypeTileHeaderView();
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_updateTitleText name:*MEMORY[0x1E69A40A0] object:0];

  return v14;
}

void sub_1B9F6D95C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  [v4 addSubview_];
  sub_1B9F0A534(a3, v23);
  (*(a2 + 120))(v23, ObjectType, a2);
  sub_1B9F43AAC(v23, &qword_1EDC6CD10, qword_1EDC6CD18);
  v9 = *(a2 + 32);
  v10 = v4;
  v9(v4, ObjectType, a2);
  v11 = objc_opt_self();
  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B8B60;
  v13 = [a1 leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

  *(v12 + 32) = v15;
  v16 = [a1 trailingAnchor];
  v17 = [v10 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

  *(v12 + 40) = v18;
  v19 = [a1 topAnchor];
  v20 = [v10 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];

  *(v12 + 48) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v11 activateConstraints_];
}

uint64_t sub_1B9F6DBC8(uint64_t a1)
{
  v2 = v1;
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  sub_1B9F6DEE0(a1, v21);
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v21, v2 + v10);
  swift_endAccess();
  sub_1B9F6DEE0(a1, v21);
  v11 = v22;
  if (v22)
  {
    v12 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v12 + 40))(v11, v12);
    v13 = type metadata accessor for TileHeaderDetailKind();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1B9F6F238(v21, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v14 = type metadata accessor for TileHeaderDetailKind();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  v15 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  swift_beginAccess();
  sub_1B9F6E0FC(v9, v2 + v15);
  swift_endAccess();
  sub_1B9F6E190(a1);
  sub_1B9F73D48(v2 + v15, v7);
  sub_1B9F73E30(v7);
  sub_1B9F6FBF4(v7, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind);
  sub_1B9F0A9A4(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  v17 = sub_1BA4A4858();
  v18 = MEMORY[0x1E69DC2B0];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x1BFAF2130](v16, sel_updateForTraitChanges);
  swift_unknownObjectRelease();
}

uint64_t sub_1B9F6DEE0(uint64_t a1, uint64_t a2)
{
  sub_1B9F6DF70(0, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F6DF70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F6DFCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B9F6E028(uint64_t a1, uint64_t a2)
{
  sub_1B9F6DF70(0, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TileHeaderDataSource.detail.getter()
{
  type metadata accessor for TileHeaderDetailKind();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B9F6E0FC(uint64_t a1, uint64_t a2)
{
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F6E190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v104 - v9;
  sub_1B9F6DEE0(a1, v113);
  if (v114)
  {
    sub_1B9F0D950(0, qword_1EDC6CD18);
    sub_1B9F0D950(0, qword_1EDC6E100);
    if (swift_dynamicCast())
    {
      if (*(&v116 + 1))
      {
        sub_1B9F6F238(&v115, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
        [v2 setUserInteractionEnabled_];
        LODWORD(v11) = 1148846080;
        [v2 setContentCompressionResistancePriority:1 forAxis:v11];
        type metadata accessor for DynamicFontLabel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        [v13 setNumberOfLines_];
        [v13 setLineBreakMode_];
        [v13 setTranslatesAutoresizingMaskIntoConstraints_];
        LODWORD(v14) = 1148846080;
        [v13 setContentCompressionResistancePriority:1 forAxis:v14];
        v15 = sub_1B9F6B774(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
        [v13 setFont_];

        [v2 addSubview_];
        v16 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
        swift_beginAccess();
        v17 = *&v2[v16];
        v110 = v16;
        *&v2[v16] = v13;

        sub_1B9F6F658();
        if (v18)
        {
          v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
          [v19 setNumberOfLines_];
          [v19 setTranslatesAutoresizingMaskIntoConstraints_];
          [v19 setAdjustsFontSizeToFitWidth_];
          v20 = sub_1BA4A6758();

          [v19 setText_];

          v21 = [objc_opt_self() secondaryLabelColor];
          [v19 setTextColor_];

          LODWORD(v22) = 1148846080;
          [v19 setContentHuggingPriority:0 forAxis:v22];
          LODWORD(v23) = 1148846080;
          [v19 setContentCompressionResistancePriority:0 forAxis:v23];
          LODWORD(v24) = 1148846080;
          [v19 setContentCompressionResistancePriority:1 forAxis:v24];
          v25 = *MEMORY[0x1E69DDD28];
          v109 = objc_opt_self();
          v26 = [v109 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
          v27 = &selRef_createHKUnitPreferenceController;
          if (v26)
          {
            v28 = v26;
            v29 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
          }

          else
          {
            sub_1BA4A3DD8();
            v33 = v25;
            v34 = sub_1BA4A3E88();
            v35 = sub_1BA4A6FB8();
            v108 = v33;

            v106 = v35;
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              v107 = v34;
              v37 = v36;
              v104 = swift_slowAlloc();
              v105 = swift_slowAlloc();
              v111[0] = v105;
              *v37 = 136315906;
              v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v40 = sub_1B9F0B82C(v38, v39, v111);

              *(v37 + 4) = v40;
              *(v37 + 12) = 2080;
              *&v115 = 0;
              BYTE8(v115) = 1;
              sub_1B9F0A9A4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
              v41 = sub_1BA4A6808();
              v43 = sub_1B9F0B82C(v41, v42, v111);

              *(v37 + 14) = v43;
              *(v37 + 22) = 2080;
              LODWORD(v115) = 0;
              type metadata accessor for SymbolicTraits(0);
              v44 = sub_1BA4A6808();
              v46 = sub_1B9F0B82C(v44, v45, v111);

              *(v37 + 24) = v46;
              v27 = &selRef_createHKUnitPreferenceController;
              *(v37 + 32) = 2112;
              v47 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
              *(v37 + 34) = v47;
              v48 = v104;
              *v104 = v47;
              _os_log_impl(&dword_1B9F07000, v107, v106, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v37, 0x2Au);
              sub_1B9F6F238(v48, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
              MEMORY[0x1BFAF43A0](v48, -1, -1);
              v49 = v105;
              swift_arrayDestroy();
              MEMORY[0x1BFAF43A0](v49, -1, -1);
              MEMORY[0x1BFAF43A0](v37, -1, -1);
            }

            else
            {
            }

            (*(v5 + 8))(v10, v4);
            v28 = [v109 preferredFontDescriptorWithTextStyle_];
            v29 = [objc_opt_self() v27[99]];
          }

          v50 = v29;

          [v19 setFont_];
          v51 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
          swift_beginAccess();
          v52 = *&v2[v51];
          *&v2[v51] = v19;
        }

        sub_1B9F6FCD0();
        sub_1B9F70798();
        sub_1B9F6DEE0(a1, &v115);
        v53 = *(&v116 + 1);
        if (*(&v116 + 1))
        {
          v54 = v117;
          __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
          v55 = (*(v54 + 16))(v53, v54);
          v53 = v56;
          __swift_destroy_boxed_opaque_existential_1(&v115);
        }

        else
        {
          sub_1B9F6F238(&v115, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
          v55 = 0;
        }

        sub_1B9F709C4(v55, v53, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel);

        sub_1B9F711CC();
        v57 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
        swift_beginAccess();
        v58 = *&v2[v57];
        if (v58)
        {
          v59 = v58;
          sub_1B9F6F658();
          if (v60)
          {
            v61 = sub_1BA4A6758();
          }

          else
          {
            v61 = 0;
          }

          [v59 setText_];
        }

        sub_1B9F71D38();
        v112 = MEMORY[0x1E69E7CC0];
        v62 = sub_1B9F725CC();
        if (v62)
        {
          sub_1B9F73B50(v62);
        }

        v63 = *&v2[v110];
        if (v63)
        {
          v64 = v63;
          v65 = [v64 topAnchor];
          v66 = [v2 safeAreaLayoutGuide];
          v67 = [v66 topAnchor];

          v68 = [v65 constraintEqualToAnchor:v67 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v69 = [v64 leadingAnchor];
          v70 = [v2 safeAreaLayoutGuide];
          v71 = [v70 leadingAnchor];

          v72 = [v69 constraintEqualToAnchor:v71 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v73 = [v2 traitCollection];
          v74 = [v73 preferredContentSizeCategory];

          LOBYTE(v73) = sub_1BA4A74F8();
          if ((v73 & 1) == 0 || !*&v2[v57])
          {
            v75 = [v64 bottomAnchor];
            v76 = [v2 safeAreaLayoutGuide];
            v77 = [v76 bottomAnchor];

            v78 = [v75 constraintEqualToAnchor:v77 constant:-12.0];
            MEMORY[0x1BFAF1510]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          v79 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
          swift_beginAccess();
          if (*&v2[v79])
          {
          }

          else
          {
            v80 = [v64 trailingAnchor];

            v81 = [v2 safeAreaLayoutGuide];
            v82 = [v81 trailingAnchor];

            v83 = [v80 constraintEqualToAnchor:v82 constant:-16.0];
            MEMORY[0x1BFAF1510]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v84 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
        swift_beginAccess();
        v85 = *&v2[v84];
        if (v85)
        {
          v86 = *&v2[v110];
          if (v86)
          {
            v87 = v85;
            v88 = v86;
            v89 = [v88 trailingAnchor];
            v90 = [v87 leadingAnchor];
            v91 = [v89 constraintEqualToAnchor:v90 constant:-8.0];

            MEMORY[0x1BFAF1510]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          else
          {
            v92 = [v85 bottomAnchor];
            v93 = [v2 safeAreaLayoutGuide];
            v94 = [v93 bottomAnchor];

            v95 = [v92 constraintEqualToAnchor:v94 constant:-12.0];
            MEMORY[0x1BFAF1510]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v96 = [v2 heightAnchor];
        v97 = [v96 constraintEqualToConstant_];

        if (*&v2[v110])
        {
          LODWORD(v98) = 1132068864;
        }

        else
        {
          LODWORD(v98) = 1132068864;
          if (!*&v2[v84])
          {
            *&v98 = 750.0;
          }
        }

        [v97 setPriority_];
        v99 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint];
        *&v2[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint] = v97;
        v100 = v97;

        v101 = v100;
        MEMORY[0x1BFAF1510]();
        if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v102 = objc_opt_self();
        sub_1B9F0ADF8(0, &qword_1EDC6B570);
        v103 = sub_1BA4A6AE8();

        [v102 activateConstraints_];

        return;
      }
    }

    else
    {
      v117 = 0;
      v116 = 0u;
      v115 = 0u;
    }
  }

  else
  {
    sub_1B9F6F238(v113, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
  }

  sub_1B9F6F238(&v115, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v30 = sub_1BA4A3E88();
  v31 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1B9F07000, v30, v31, "Incorrect configuration: expecting a DataTypeTileHeaderDataSource", v32, 2u);
    MEMORY[0x1BFAF43A0](v32, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B9F6F238(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F6DF70(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F6F294(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F6DFCC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F6F2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DynamicFontLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = *MEMORY[0x1E69DDDC8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle] = *MEMORY[0x1E69DDDC8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits] = 2;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for DynamicFontLabel();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x98);
  v13 = v11;
  v12(v13, v14);
  v15 = [objc_opt_self() labelColor];
  [v13 setTextColor_];

  [v13 setAdjustsFontForContentSizeCategory_];
  return v13;
}

void sub_1B9F6F4D0()
{
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  v4 = [v1 hk:v3 scalableFontForTextStyle:(*((*v2 & *v0) + 0x78))() symbolicTraits:?];

  [v0 setFont_];
}

id sub_1B9F6F5C0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1B9F6F614()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B9F6F658()
{
  v1 = type metadata accessor for TileHeaderDetailKind();
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0A9A4(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v14, v34);
  if (!v35)
  {
    sub_1B9F6F238(v34, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v31 = 0u;
    v32 = 0u;
    v33 = 0;
    goto LABEL_13;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, qword_1EDC6E100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_13;
  }

  if (!*(&v32 + 1))
  {
LABEL_13:
    sub_1B9F6F238(&v31, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v31, v34);
  v15 = v35;
  v16 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v16 + 32))(v15, v16);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B9F6FBF4(v6, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    v18 = v35;
    v17 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    (*(*(v17 + 8) + 40))(v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v27 = *v3;
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v27;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1B9F6D6D8();
      v21 = *(v3 + *(v20 + 48));
      (*(v8 + 32))(v11, v3, v7);
      v22 = sub_1BA4A16B8();
      if (v21)
      {
        if (qword_1EDC6E3F8 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1EDC6E3F8 != -1)
      {
        swift_once();
      }

      v28 = HKMostRecentSampleEndDateText();

      if (v28)
      {
        v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      }

      else
      {
        v29 = 0;
      }

      (*(v8 + 8))(v11, v7);
      __swift_destroy_boxed_opaque_existential_1(v34);
      return v29;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  v24 = sub_1BA4A16B8();
  if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v25 = HKMostRecentSampleEndDateText();

  if (v25)
  {
    v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v26 = 0;
  }

  (*(v8 + 8))(v13, v7);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v26;
}

uint64_t sub_1B9F6FBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0A9A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DataTypeTileHeaderDataSource.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A1728();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1B9F6FCD0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v2, v21);
  v3 = v22;
  if (v22)
  {
    v4 = v23;
    v5 = __swift_project_boxed_opaque_existential_1(v21, v22);
    v6 = *(v3 - 8);
    MEMORY[0x1EEE9AC00](v5);
    v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    sub_1B9F6F238(v21, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v4) = (*(v4 + 48))(v3, v4);
    (*(v6 + 8))(v8, v3);
    if ((v4 & 1) == 0)
    {
      type metadata accessor for DynamicFontLabel();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 tertiaryLabelColor];
      [v11 setTextColor_];

      [v11 setTextAlignment_];
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
      [v11 setAdjustsFontSizeToFitWidth_];
      LODWORD(v13) = 1148846080;
      [v11 setContentCompressionResistancePriority:0 forAxis:v13];
      LODWORD(v14) = 1148846080;
      [v11 setContentCompressionResistancePriority:1 forAxis:v14];
      LODWORD(v15) = 1148846080;
      [v11 setContentHuggingPriority:0 forAxis:v15];
      v16 = [objc_opt_self() _preferredFontForTextStyle_variant_];
      if (v16)
      {
        v17 = v16;
        [v11 setFont_];

        [v11 setAdjustsFontForContentSizeCategory_];
        v18 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
        swift_beginAccess();
        v19 = *(v1 + v18);
        *(v1 + v18) = v11;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1B9F6F238(v21, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }
}

uint64_t sub_1B9F70028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A5D68();
  v68 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {

LABEL_8:
    v13 = MEMORY[0x1E6980F00];
LABEL_9:
    (*(v68 + 104))(v6, *v13, v4);
    (*(v68 + 32))(a2, v6, v4);
    return (*(v68 + 56))(a2, 0, 1, v4);
  }

  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = v16;
  if (v15 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v17 == v18)
  {

    goto LABEL_17;
  }

  v20 = sub_1BA4A8338();

  if (v20)
  {

LABEL_17:
    v13 = MEMORY[0x1E6980F08];
    goto LABEL_9;
  }

  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;
  if (v21 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v23 == v24)
  {

LABEL_23:
    v13 = MEMORY[0x1E6980F10];
    goto LABEL_9;
  }

  v25 = sub_1BA4A8338();

  if (v25)
  {

    goto LABEL_23;
  }

  v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v28 = v27;
  if (v26 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v28 == v29)
  {

LABEL_29:
    v13 = MEMORY[0x1E6980EF8];
    goto LABEL_9;
  }

  v30 = sub_1BA4A8338();

  if (v30)
  {

    goto LABEL_29;
  }

  v31 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v33 = v32;
  if (v31 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v33 == v34)
  {

LABEL_35:
    v13 = MEMORY[0x1E6980F20];
    goto LABEL_9;
  }

  v35 = sub_1BA4A8338();

  if (v35)
  {

    goto LABEL_35;
  }

  v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v38 = v37;
  if (v36 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v38 == v39)
  {

LABEL_41:
    v13 = MEMORY[0x1E6980F28];
    goto LABEL_9;
  }

  v40 = sub_1BA4A8338();

  if (v40)
  {

    goto LABEL_41;
  }

  v41 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v43 = v42;
  if (v41 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v43 == v44)
  {

LABEL_47:
    v13 = MEMORY[0x1E6980F18];
    goto LABEL_9;
  }

  v45 = sub_1BA4A8338();

  if (v45)
  {

    goto LABEL_47;
  }

  v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v48 = v47;
  if (v46 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v48 == v49)
  {

LABEL_53:
    v13 = MEMORY[0x1E6980F38];
    goto LABEL_9;
  }

  v50 = sub_1BA4A8338();

  if (v50)
  {

    goto LABEL_53;
  }

  v51 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v53 = v52;
  if (v51 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v53 == v54)
  {

LABEL_59:
    v13 = MEMORY[0x1E6980F30];
    goto LABEL_9;
  }

  v55 = sub_1BA4A8338();

  if (v55)
  {

    goto LABEL_59;
  }

  v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v58 = v57;
  if (v56 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v58 == v59)
  {

LABEL_65:
    v13 = MEMORY[0x1E6980EE8];
    goto LABEL_9;
  }

  v60 = sub_1BA4A8338();

  if (v60)
  {

    goto LABEL_65;
  }

  v61 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v63 = v62;
  if (v61 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v63 == v64)
  {

LABEL_70:
    v13 = MEMORY[0x1E6980EF0];
    goto LABEL_9;
  }

  v65 = sub_1BA4A8338();

  if (v65)
  {
    goto LABEL_70;
  }

  v66 = *(v68 + 56);

  return v66(a2, 1, 1, v4);
}

void sub_1B9F70798()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  if (*&v0[v1] || (v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel, swift_beginAccess(), *&v0[v2]))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    LODWORD(v4) = 1148846080;
    [v3 setContentHuggingPriority:1 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v3 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v3 setContentCompressionResistancePriority:1 forAxis:v6];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setIsAccessibilityElement_];
    [v0 addSubview_];
    v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
    swift_beginAccess();
    v8 = *&v0[v7];
    *&v0[v7] = v3;
  }
}

void sub_1B9F708DC()
{
  if (!qword_1EDC5E870)
  {
    type metadata accessor for TraitKey(255);
    sub_1B9F4E47C(&qword_1EDC6E3D8, type metadata accessor for TraitKey);
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E870);
    }
  }
}

void sub_1B9F709C4(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = v7;
  v16 = type metadata accessor for TileHeaderDetailKind();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v56 - v21;
  if (a2)
  {
    v58 = a5;
    v59 = a6;
    v56 = v20;
    v57 = a7;
    v62 = a1;
    v63 = a2;

    v23 = a1;
    MEMORY[0x1BFAF1350](0x7265646165482ELL, 0xE700000000000000);
    v24 = sub_1BA4A6758();

    [v13 setAccessibilityIdentifier_];

    v25 = *a3;
    swift_beginAccess();
    v26 = *&v13[v25];
    if (v26)
    {
      v62 = v23;
      v63 = a2;

      v27 = v26;
      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xED0000656C746954);
      v28 = sub_1BA4A6758();

      [v27 setAccessibilityIdentifier_];
    }

    v29 = *a4;
    swift_beginAccess();
    v30 = *&v13[v29];
    if (v30)
    {
      v62 = 0;
      v63 = 0xE000000000000000;
      v31 = v30;
      sub_1BA4A7DF8();

      v62 = v23;
      v63 = a2;

      MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4FB900);
      v32 = sub_1BA4A6758();

      [v31 setAccessibilityIdentifier_];
    }

    v33 = *v58;
    swift_beginAccess();
    v34 = *&v13[v33];
    if (v34)
    {
      v62 = 0;
      v63 = 0xE000000000000000;
      v35 = v34;
      sub_1BA4A7DF8();

      v62 = v23;
      v63 = a2;

      MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FB8E0);
      v36 = sub_1BA4A6758();

      [v35 setAccessibilityIdentifier_];
    }

    v37 = *v59;
    swift_beginAccess();
    sub_1B9F6DEE0(&v13[v37], &v62);
    v38 = v64;
    if (!v64)
    {
      sub_1B9F6F238(&v62, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      return;
    }

    v39 = v65;
    __swift_project_boxed_opaque_existential_1(&v62, v64);
    (*(v39 + 40))(v38, v39);
    sub_1B9F70FE4(v22, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v41 = v57;
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B9F71048(v22, type metadata accessor for TileHeaderDetailKind);
        __swift_destroy_boxed_opaque_existential_1(&v62);
        return;
      }

      sub_1B9F71048(v22, type metadata accessor for TileHeaderDetailKind);
      v42 = sub_1BA4A1728();
      (*(*(v42 - 8) + 8))(v19, v42);
      v43 = 0xE400000000000000;
      v44 = 1702125892;
    }

    else
    {
      sub_1B9F71048(v19, type metadata accessor for TileHeaderDetailKind);
      sub_1B9F71048(v22, type metadata accessor for TileHeaderDetailKind);
      v43 = 0xE600000000000000;
      v44 = 0x6C6961746544;
      v41 = v57;
    }

    __swift_destroy_boxed_opaque_existential_1(&v62);
    v52 = *v41;
    swift_beginAccess();
    v53 = *&v13[v52];
    if (v53)
    {
      v60 = v23;
      v61 = a2;

      v54 = v53;
      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xE800000000000000);
      MEMORY[0x1BFAF1350](v44, v43);

      v55 = sub_1BA4A6758();

      [v54 setAccessibilityIdentifier_];
    }

    else
    {
    }
  }

  else
  {
    [v13 setAccessibilityIdentifier_];
    v45 = *a3;
    swift_beginAccess();
    v46 = *&v13[v45];
    if (v46)
    {
      [v46 setAccessibilityIdentifier_];
    }

    v47 = *a5;
    swift_beginAccess();
    v48 = *&v13[v47];
    if (v48)
    {
      [v48 setAccessibilityIdentifier_];
    }

    v49 = *a7;
    swift_beginAccess();
    v50 = *&v13[v49];
    if (v50)
    {
      [v50 setAccessibilityIdentifier_];
    }

    v51 = *a4;
    swift_beginAccess();
    [*&v13[v51] setAccessibilityIdentifier_];
  }
}

uint64_t sub_1B9F70FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileHeaderDetailKind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F71048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F710A8(double a1)
{
  if (*MEMORY[0x1E69DB950] == a1)
  {
    sub_1BA4A5C68();
    return v1;
  }

  if (*MEMORY[0x1E69DB958] == a1)
  {
    sub_1BA4A5C48();
    return v1;
  }

  if (*MEMORY[0x1E69DB960] == a1)
  {
    sub_1BA4A5C78();
    return v1;
  }

  if (*MEMORY[0x1E69DB968] == a1)
  {
    sub_1BA4A5C88();
    return v1;
  }

  if (*MEMORY[0x1E69DB970] == a1)
  {
    sub_1BA4A5C98();
    return v1;
  }

  if (*MEMORY[0x1E69DB978] == a1)
  {
    sub_1BA4A5CA8();
    return v1;
  }

  if (*MEMORY[0x1E69DB980] == a1)
  {
    sub_1BA4A5CB8();
    return v1;
  }

  if (*MEMORY[0x1E69DB988] == a1)
  {
    sub_1BA4A5C58();
    return v1;
  }

  if (*MEMORY[0x1E69DB998] == a1)
  {
    sub_1BA4A5C38();
    return v1;
  }

  return 0;
}

void sub_1B9F711CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x250);
    v5 = v3;
    v6 = v4();
    if (!v7)
    {
LABEL_17:

      return;
    }

    v8 = v6;
    v9 = v7;
    sub_1B9F717D4();
    if (v10)
    {
      v11 = v10;
      v12 = v5;
      v13 = [v12 font];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [objc_opt_self() configurationWithFont_];

      v16 = [v11 imageByApplyingSymbolConfiguration_];
      if (v16)
      {
        v17 = sub_1BA4A7748();
        if (v18)
        {
          v19 = -0.0;
        }

        else
        {
          *&v19 = v17 ^ 0x8000000000000000;
        }

        [v16 size];
        v21 = v20;
        v23 = v22;
        v24 = [v16 imageWithRenderingMode_];
        v25 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
        if (([v16 isSymbolImage] & 1) == 0)
        {
          [v25 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
        }

        [v25 setImage_];
        [v25 setBounds_];
        sub_1B9F0ADF8(0, &qword_1EDC6B520);
        v26 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

        MEMORY[0x1BFAF1350](v8, v9);

        v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v28 = sub_1BA4A6758();

        v29 = [v27 initWithString_];

        [v26 appendAttributedString_];
        if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
        {
          v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v31 = sub_1BA4A6758();
          v32 = [v30 initWithString_];

          [v26 insertAttributedString:v32 atIndex:0];
        }

        [v12 setAttributedText_];

        goto LABEL_16;
      }
    }

    v26 = v5;
    v12 = sub_1BA4A6758();

    [v26 setText_];
LABEL_16:

    v33 = v5;
    v5 = sub_1B9F71A70();
    [v33 setTextColor_];

    goto LABEL_17;
  }
}

uint64_t sub_1B9F715D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v14);
  if (!v15)
  {
    sub_1B9F6F238(v14, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, qword_1EDC6E100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  if (!*(&v12 + 1))
  {
LABEL_8:
    sub_1B9F6F238(&v11, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v11, v14);
  v2 = v15;
  v3 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v4 = (*(v3 + 24))(v2, v3);
  if (v4)
  {
    v5 = v4;
    sub_1BA2D126C(v4);
    v7 = v6;
  }

  else
  {
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = (*(*(v10 + 8) + 32))(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v7;
}

void sub_1B9F717D4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v18);
  if (!v19)
  {
    sub_1B9F6F238(v18, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_11;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, qword_1EDC6E100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_11;
  }

  if (!*(&v16 + 1))
  {
LABEL_11:
    sub_1B9F6F238(&v15, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    return;
  }

  sub_1B9F1134C(&v15, v18);
  v2 = v19;
  v3 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v4 = (*(v3 + 24))(v2, v3);
  if (!v4)
  {
LABEL_14:
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(v14 + 8) + 24))(v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return;
  }

  v5 = v4;
  v6 = v19;
  v7 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v8 = (*(v7 + 40))(v6, v7);
  if (!v8)
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 displayTypeController];

  if (v10)
  {
    v11 = [v10 displayTypeForObjectType_];

    if (v11)
    {
      v12 = [v11 displayCategory];
      [v12 listIcon];

      __swift_destroy_boxed_opaque_existential_1(v18);
      return;
    }

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1B9F71A70()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v13);
  if (!v14)
  {
    sub_1B9F6F238(v13, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_10;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18);
  sub_1B9F0D950(0, qword_1EDC6E100);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_1B9F6F238(&v15, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_11;
  }

  sub_1B9F1134C(&v15, v18);
  v2 = v19;
  v3 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v4 = (*(v3 + 24))(v2, v3);
  if (v4)
  {
    v5 = v4;
    sub_1BA2D0F04(v4);
    if (!v6)
    {
      v6 = [objc_opt_self() systemBlackColor];
    }

    v7 = v6;

    goto LABEL_16;
  }

  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v12 = (*(v11 + 16))(v10, v11);
  if (v12)
  {
    v7 = v12;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_11:
  v8 = [objc_opt_self() systemBlackColor];

  return v8;
}

uint64_t sub_1B9F71CB8(uint64_t a1, id *a2)
{
  v3 = sub_1BA4A6788();
  *a2 = 0;
  return v3 & 1;
}

void sub_1B9F71D38()
{
  v1 = sub_1B9F7220C();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = v4;
      v6 = [v2 imageWithRenderingMode_];
      v7 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (([v2 isSymbolImage] & 1) == 0)
      {
        [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v7 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520);
      v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v5 setAttributedText_];
    }
  }
}

uint64_t sub_1B9F71E7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A5C28();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;
  if (v7 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_1BA4A8338();

  if (v12)
  {

LABEL_8:
    v13 = MEMORY[0x1E6980E20];
LABEL_9:
    (*(v33 + 104))(v6, *v13, v4);
    (*(v33 + 32))(a2, v6, v4);
    return (*(v33 + 56))(a2, 0, 1, v4);
  }

  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v17 = v16;
  if (v15 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v17 == v18)
  {

    goto LABEL_17;
  }

  v20 = sub_1BA4A8338();

  if (v20)
  {

LABEL_17:
    v13 = MEMORY[0x1E6980E08];
    goto LABEL_9;
  }

  v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v23 = v22;
  if (v21 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v23 == v24)
  {

LABEL_23:
    v13 = MEMORY[0x1E6980E28];
    goto LABEL_9;
  }

  v25 = sub_1BA4A8338();

  if (v25)
  {

    goto LABEL_23;
  }

  v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v28 = v27;
  if (v26 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v28 == v29)
  {

LABEL_28:
    v13 = MEMORY[0x1E6980E10];
    goto LABEL_9;
  }

  v30 = sub_1BA4A8338();

  if (v30)
  {
    goto LABEL_28;
  }

  v31 = *(v33 + 56);

  return v31(a2, 1, 1, v4);
}

id sub_1B9F7220C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (v6 && (v7 = [v6 font]) != 0)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v10 = objc_opt_self();
    v9 = *MEMORY[0x1E69DDCF8];
    result = [v10 _preferredFontForTextStyle_variant_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v8 = result;
  }

  v12 = objc_opt_self();
  v13 = [v12 configurationWithFont:v8 scale:1];
  v14 = [v12 configurationWithTextStyle:v9 scale:-1];
  v15 = sub_1BA4A6758();
  v16 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

  if (v16 && (v17 = [v16 imageWithConfiguration_], v16, v17))
  {
  }

  else
  {
    sub_1BA4A3DD8();
    v18 = sub_1BA4A3E88();
    v19 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create symbol chevron.forward", v20, 2u);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v17;
}

uint64_t sub_1B9F724F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B9F47C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F7254C(uint64_t a1, uint64_t a2)
{
  sub_1B9F47C10(0, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F725CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v40 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = sub_1B9F72B74();
  if (v5)
  {
    sub_1B9F73B50(v5);
  }

  v6 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v6], v37);
  v7 = v38;
  if (v38)
  {
    v8 = v39;
    v9 = __swift_project_boxed_opaque_existential_1(v37, v38);
    v10 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v10 + 16))(v12);
    sub_1B9F6F238(v37, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v8) = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v12, v7);
    if ((v8 & 1) == 0)
    {
      v13 = sub_1B9F732EC();
      if (v13)
      {
        sub_1B9F73B50(v13);
      }
    }
  }

  else
  {
    sub_1B9F6F238(v37, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  v15 = [v4 topAnchor];
  v16 = [v1 safeAreaLayoutGuide];
  v17 = [v16 topAnchor];

  v18 = [v15 constraintEqualToAnchor:v17 constant:16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v19 = [v4 trailingAnchor];
  v20 = [v1 safeAreaLayoutGuide];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v23 = [v4 widthAnchor];
  v24 = [v1 widthAnchor];
  v25 = [v23 constraintLessThanOrEqualToAnchor:v24 multiplier:0.37];

  MEMORY[0x1BFAF1510]();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v14 = v40;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  if (*&v1[v26] && (v27 = [v1 traitCollection], v28 = objc_msgSend(v27, sel_preferredContentSizeCategory), v27, LOBYTE(v27) = sub_1BA4A74F8(), v28, (v27 & 1) == 0))
  {
    v30 = *&v1[v26];
    if (!v30)
    {
LABEL_25:

      return v14;
    }
  }

  else
  {
    v29 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
    swift_beginAccess();
    v30 = *&v1[v29];
    if (!v30)
    {
      goto LABEL_25;
    }
  }

  v31 = [v30 heightAnchor];
  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v4 heightAnchor];
  v34 = [v33 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v40;
}

uint64_t sub_1B9F72B74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    return 0;
  }

  v47 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1BA4A74F8();
  if (v5)
  {
    v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
    swift_beginAccess();
    v8 = *&v1[v7];
    if (v8)
    {
      v9 = v4;
      v10 = v8;
      [v1 addSubview_];
      v11 = [v9 leadingAnchor];
      v12 = [v1 safeAreaLayoutGuide];
      v13 = [v12 leadingAnchor];

      v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
      MEMORY[0x1BFAF1510]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v15 = [v10 bottomAnchor];
      v16 = [v9 topAnchor];

      v17 = [v15 constraintEqualToAnchor:v16 constant:-8.0];
      MEMORY[0x1BFAF1510]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v18 = [v9 bottomAnchor];

      v19 = [v1 safeAreaLayoutGuide];
      v20 = [v19 bottomAnchor];

      v21 = [v18 constraintEqualToAnchor:v20 constant:-12.0];
      goto LABEL_22;
    }
  }

  v22 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v23 = *&v1[v22];
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = v4;
  v10 = v23;
  [v10 addSubview_];
  v24 = [v9 leadingAnchor];
  v25 = [v10 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v27 = v47;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29)
  {
    v30 = v29;
    v31 = [v9 firstBaselineAnchor];

    v32 = [v30 firstBaselineAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v27 = v47;
  }

  else
  {
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v35], v44);
  v36 = v45;
  if (!v45)
  {

    sub_1B9F6F238(v44, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    return v27;
  }

  v37 = v46;
  v38 = __swift_project_boxed_opaque_existential_1(v44, v45);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v44 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  (*(v39 + 16))(v41);
  sub_1B9F6F238(v44, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  LOBYTE(v37) = (*(v37 + 48))(v36, v37);
  (*(v39 + 8))(v41, v36);
  if ((v37 & 1) == 0)
  {

    return v27;
  }

  v18 = [v9 trailingAnchor];

  v20 = [v10 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor_];
LABEL_22:
  v42 = v21;

  MEMORY[0x1BFAF1510]();
  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v47;
}

unint64_t sub_1B9F73298()
{
  result = qword_1EDC6AEE0;
  if (!qword_1EDC6AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AEE0);
  }

  return result;
}

uint64_t sub_1B9F732EC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    return 0;
  }

  v33 = MEMORY[0x1E69E7CC0];
  v5 = v2;
  v6 = v4;
  [v6 addSubview_];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v0 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    LOBYTE(v10) = sub_1BA4A74F8();
    if ((v10 & 1) == 0)
    {

      v23 = [v5 leadingAnchor];
      v19 = v9;
      v24 = [v19 trailingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:8.0];

      MEMORY[0x1BFAF1510]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v20 = [v5 centerYAnchor];

      v21 = [v19 centerYAnchor];
      v22 = [v20 constraintEqualToAnchor_];
      goto LABEL_15;
    }

    v12 = v0;
  }

  else
  {
    v12 = v0;

    v9 = v5;
  }

  v14 = [v5 leadingAnchor];
  v15 = [v6 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v18 = *&v12[v17];
  if (!v18)
  {

    v27 = [v5 centerYAnchor];
    v28 = [v6 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    goto LABEL_21;
  }

  v19 = v18;

  v20 = [v5 firstBaselineAnchor];
  v21 = [v19 firstBaselineAnchor];
  v22 = [v20 constraintEqualToAnchor_];
LABEL_15:
  v26 = v22;

  MEMORY[0x1BFAF1510]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

LABEL_21:
  v30 = [v5 trailingAnchor];

  v31 = [v6 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v33;
}

unint64_t sub_1B9F73860()
{
  result = qword_1EDC63460;
  if (!qword_1EDC63460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63460);
  }

  return result;
}

void sub_1B9F738B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t AnimatedSnidgetCurrentValueText.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1B9F738B4(0, &qword_1EDC5DEA0, sub_1B9F73DDC, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F73DDC();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v18;
  v22 = 0;
  v10 = sub_1BA4A8188();
  v12 = v11;
  v13 = v10;
  v21 = 1;
  sub_1B9F748E8();
  sub_1BA4A81C8();
  (*(v6 + 8))(v8, v5);
  v14 = v19;
  v15 = v20;
  *v9 = v13;
  *(v9 + 8) = v12;
  *(v9 + 16) = v14;
  *(v9 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B9F73B80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9A28, &qword_1EDC6B570, 0x1E696ACD8, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE9A30, &qword_1EBBE9A28, &qword_1EDC6B570, 0x1E696ACD8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1B9F0ADF8(0, &qword_1EDC6B570);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F73D48(uint64_t a1, uint64_t a2)
{
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F73DDC()
{
  result = qword_1EDC6BE88[0];
  if (!qword_1EDC6BE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6BE88);
  }

  return result;
}

void sub_1B9F73E30(uint64_t a1)
{
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  v8 = *MEMORY[0x1E69DDB88];
  [v7 removeObserver:v1 name:*MEMORY[0x1E69DDB88] object:0];

  sub_1B9F73D48(a1, v5);
  v9 = type metadata accessor for TileHeaderDetailKind();
  if ((*(*(v9 - 8) + 48))(v5, 1, v9) == 1)
  {
    sub_1B9F6FBF4(v5, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1BA4A1728();
    (*(*(v10 - 8) + 8))(v5, v10);
    v11 = [v6 defaultCenter];
    [v11 addObserver:v1 selector:sel_didReceiveSignificantTimeChangeNotification_ name:v8 object:0];
  }

  else
  {
    sub_1B9F71048(v5, type metadata accessor for TileHeaderDetailKind);
  }
}

void sub_1B9F74054(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

unint64_t sub_1B9F740B0()
{
  result = qword_1EDC6B570;
  if (!qword_1EDC6B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B570);
  }

  return result;
}

unint64_t sub_1B9F740FC()
{
  result = qword_1EDC6BE78;
  if (!qword_1EDC6BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE78);
  }

  return result;
}

Swift::Void __swiftcall TileHeader.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v4 = v2;
  v5 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v8 = type metadata accessor for TileHeaderDetailKind();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  if (object)
  {
    v41 = v10;
    v42 = v11;
    v44 = countAndFlagsBits;
    v45 = object;

    MEMORY[0x1BFAF1350](0x7265646165482ELL, 0xE700000000000000);
    v14 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    v15 = (*(v4 + 72))(v5, v4);
    if (v15)
    {
      v16 = v15;
      v44 = countAndFlagsBits;
      v45 = object;

      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xED0000656C746954);
      v17 = sub_1BA4A6758();

      [v16 setAccessibilityIdentifier_];
    }

    v43 = countAndFlagsBits;
    v18 = (*(v4 + 88))(v5, v4);
    if (v18)
    {
      v19 = v18;
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v44 = v43;
      v45 = object;
      MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4FB900);
      v20 = sub_1BA4A6758();

      [v19 &selRef_tertiarySystemFillColor];
    }

    v21 = (*(v4 + 80))(v5, v4);
    if (v21)
    {
      v22 = v21;
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v44 = v43;
      v45 = object;
      MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FB8E0);
      v23 = sub_1BA4A6758();

      [v22 &selRef_tertiarySystemFillColor];
    }

    (*(v4 + 112))(&v44, v5, v4);
    v24 = v46;
    if (!v46)
    {
      sub_1B9F6F2F0(&v44, sub_1BA434C74);
      return;
    }

    v25 = v47;
    __swift_project_boxed_opaque_existential_1(&v44, v46);
    (*(v25 + 40))(v24, v25);
    v26 = v42;
    sub_1B9F70FE4(v13, v42);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B9F6F2F0(v13, type metadata accessor for TileHeaderDetailKind);
        __swift_destroy_boxed_opaque_existential_1(&v44);
        return;
      }

      sub_1B9F6F2F0(v13, type metadata accessor for TileHeaderDetailKind);
      v28 = sub_1BA4A1728();
      (*(*(v28 - 8) + 8))(v26, v28);
      v29 = 0xE400000000000000;
      v30 = 1702125892;
    }

    else
    {
      sub_1B9F6F2F0(v26, type metadata accessor for TileHeaderDetailKind);
      sub_1B9F6F2F0(v13, type metadata accessor for TileHeaderDetailKind);
      v29 = 0xE600000000000000;
      v30 = 0x6C6961746544;
    }

    __swift_destroy_boxed_opaque_existential_1(&v44);
    v38 = (*(v4 + 64))(v5, v4);
    if (v38)
    {
      v39 = v38;
      v44 = v43;
      v45 = object;

      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xE800000000000000);
      MEMORY[0x1BFAF1350](v30, v29);

      v40 = sub_1BA4A6758();

      [v39 &selRef_tertiarySystemFillColor];
    }

    else
    {
    }
  }

  else
  {
    [v3 setAccessibilityIdentifier_];
    v31 = (*(v4 + 72))(v5, v4);
    if (v31)
    {
      v32 = v31;
      [v31 setAccessibilityIdentifier_];
    }

    v33 = (*(v4 + 80))(v5, v4);
    if (v33)
    {
      v34 = v33;
      [v33 setAccessibilityIdentifier_];
    }

    v35 = (*(v4 + 64))(v5, v4);
    if (v35)
    {
      v36 = v35;
      [v35 setAccessibilityIdentifier_];
    }

    v43 = (*(v4 + 88))(v5, v4);
    [v43 setAccessibilityIdentifier_];
    v37 = v43;
  }
}

unint64_t sub_1B9F747C4()
{
  result = qword_1EDC6BE80;
  if (!qword_1EDC6BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE80);
  }

  return result;
}

void *sub_1B9F74818()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B9F74864()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

void *sub_1B9F7489C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t sub_1B9F748E8()
{
  result = qword_1EDC63470;
  if (!qword_1EDC63470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63470);
  }

  return result;
}

void *sub_1B9F7493C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B9F7498C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v1 + v3, a1);
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B9F738B4(0, &qword_1EDC5DE90, sub_1B9F74FD4, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.StringCodingKeys, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33[-v5];
  sub_1B9F738B4(0, &qword_1EDC5DE88, sub_1B9F75434, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.NumericCodingKeys, v3);
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33[-v8];
  sub_1B9F738B4(0, &qword_1EDC5DE98, sub_1B9F759E0, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.CodingKeys, v3);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-v12];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F759E0();
  v14 = v41;
  sub_1BA4A8528();
  if (v14)
  {
    goto LABEL_7;
  }

  v15 = v37;
  v16 = v38;
  v41 = a1;
  v17 = v39;
  v18 = sub_1BA4A81D8();
  v19 = (2 * *(v18 + 16)) | 1;
  v43 = v18;
  v44 = v18 + 32;
  v45 = 0;
  v46 = v19;
  v20 = sub_1B9F4BD44();
  v21 = v13;
  if (v20 == 2 || v45 != v46 >> 1)
  {
    v24 = sub_1BA4A7E68();
    swift_allocError();
    v26 = v25;
    sub_1B9FFFD90();
    *v26 = &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style;
    sub_1BA4A8128();
    sub_1BA4A7E48();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v40 + 8))(v13, v11);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v34 = v20;
  if (v20)
  {
    v42 = 1;
    sub_1B9F74FD4();
    v22 = v15;
    sub_1BA4A8118();
    v23 = v40;
    v30 = v17;
    (*(v16 + 8))(v22, v36);
    (*(v23 + 8))(v21, v11);
    swift_unknownObjectRelease();
    v31 = 0;
  }

  else
  {
    v42 = 0;
    sub_1B9F75434();
    sub_1BA4A8118();
    v29 = v40;
    v30 = v17;
    sub_1BA4A81A8();
    v31 = v32;
    (*(v35 + 8))(v9, v7);
    (*(v29 + 8))(v13, v11);
    swift_unknownObjectRelease();
  }

  *v30 = v31;
  *(v30 + 8) = v34 & 1;
  v27 = v41;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id sub_1B9F74F58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = *&v0[v1];
  }

  else
  {
    v4 = v0;
  }

  v5 = &selRef_topAnchor;
  if (!v3)
  {
    v5 = &selRef_bottomAnchor;
  }

  v6 = [v4 *v5];

  return v6;
}

unint64_t sub_1B9F74FD4()
{
  result = qword_1EDC6BE48;
  if (!qword_1EDC6BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE48);
  }

  return result;
}

uint64_t sub_1B9F75028(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CE40(0, &qword_1EDC61770, qword_1EDC61778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F750A4(uint64_t a1)
{
  v2 = v1;
  sub_1B9F75028(a1, v21);
  v4 = v22;
  if (v22)
  {
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v6 = (*(v5 + 8))(v4, v5);
    v4 = v7;
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1B9F43AAC(v21, &qword_1EDC61770, qword_1EDC61778);
    v6 = 0;
  }

  v8 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  *v8 = v6;
  v8[1] = v4;

  v9 = v2 + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_1B9F75028(a1, v21);
    v14 = v22;
    if (v22)
    {
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = *(v15 + 8);
      v17 = v11;
      v18 = v16(v14, v15);
      v14 = v19;
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v20 = v11;
      sub_1B9F43AAC(v21, &qword_1EDC61770, qword_1EDC61778);
      v18 = 0;
    }

    (*(*(v12 + 16) + 8))(v18, v14, ObjectType);
  }

  return result;
}

unint64_t sub_1B9F75288()
{
  result = qword_1EDC6BE58;
  if (!qword_1EDC6BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE58);
  }

  return result;
}

uint64_t sub_1B9F752DC(uint64_t a1)
{
  sub_1B9F75364(0, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F75364(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B9F753E0()
{
  result = qword_1EDC6BE50;
  if (!qword_1EDC6BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE50);
  }

  return result;
}

unint64_t sub_1B9F75434()
{
  result = qword_1EDC6BE40;
  if (!qword_1EDC6BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE40);
  }

  return result;
}

void sub_1B9F75494(uint64_t a1, uint64_t a2)
{
  sub_1B9F75488(a1, a2);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  if (*(v2 + v5))
  {
    type metadata accessor for ChromeHostView();
    v6 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = *(v10 + 8);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B9F755A4()
{
  result = qword_1EDC6BE30;
  if (!qword_1EDC6BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE30);
  }

  return result;
}

uint64_t sub_1B9F755F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  if (a2)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  v9 = *a3;
  result = swift_beginAccess();
  v11 = *&v5[v9];
  if (!v11)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = *(v11 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
  if (v12 && (sub_1B9F0ADF8(0, &qword_1EDC6B4A0), sub_1B9F0D9AC(0, qword_1EDC65F98), v13 = v12, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v21 + 1))
    {
LABEL_14:
      sub_1B9F1134C(&v20, v23);
      v18 = v24;
      v19 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v19 + 8))(a1, a2, v18, v19);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  result = sub_1B9F43AAC(&v20, &qword_1EDC65F90, qword_1EDC65F98);
  v14 = *&v5[v9];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
  swift_beginAccess();
  v16 = *v15;
  if (*v15 && (sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, qword_1EDC65F98), v17 = v16, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v21 + 1))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  return sub_1B9F43AAC(&v20, &qword_1EDC65F90, qword_1EDC65F98);
}

unint64_t sub_1B9F75874()
{
  result = qword_1EDC61330;
  if (!qword_1EDC61330)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC61330);
  }

  return result;
}

uint64_t sub_1B9F758D8(uint64_t a1)
{
  sub_1B9F75988();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B9F75934()
{
  result = qword_1EDC6BE38;
  if (!qword_1EDC6BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE38);
  }

  return result;
}

void sub_1B9F75988()
{
  if (!qword_1EDC61328)
  {
    sub_1B9F75874();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC61328);
    }
  }
}

unint64_t sub_1B9F759E0()
{
  result = qword_1EDC6BE70;
  if (!qword_1EDC6BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE70);
  }

  return result;
}

uint64_t sub_1B9F75A34(uint64_t a1)
{
  sub_1B9F35130();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  swift_beginAccess();
  sub_1B9F75B30(v1 + v6, v5);
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v6);
  swift_endAccess();
  sub_1B9F75D30(v5);
  sub_1B9F76220(a1, sub_1B9F35130);
  return sub_1B9F76220(v5, sub_1B9F35130);
}

uint64_t sub_1B9F75B30(uint64_t a1, uint64_t a2)
{
  sub_1B9F35130();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F75B94()
{
  result = qword_1EDC6BE60;
  if (!qword_1EDC6BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE60);
  }

  return result;
}

uint64_t sub_1B9F75BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1BA4A1998();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_1B9F75C78()
{
  result = qword_1EDC6BE68;
  if (!qword_1EDC6BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE68);
  }

  return result;
}

uint64_t sub_1B9F75CCC(uint64_t a1, uint64_t a2)
{
  sub_1B9F35130();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1B9F75D30(uint64_t a1)
{
  v3 = type metadata accessor for SectionContext(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F35130();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28[-v11];
  sub_1B9F76184();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_1B9F75B30(a1, v16);
  sub_1B9F75B30(v1 + v17, &v16[v18]);
  v19 = *(v4 + 48);
  if (v19(v16, 1, v3) == 1)
  {
    if (v19(&v16[v18], 1, v3) == 1)
    {
      sub_1B9F76220(v16, sub_1B9F35130);
      return;
    }

    v23 = sub_1B9F76184;
  }

  else
  {
    sub_1B9F75B30(v16, v12);
    v20 = v19(&v16[v18], 1, v3);
    v21 = sub_1B9F76184;
    if (v20 != 1)
    {
      sub_1B9FE1020(&v16[v18], v6);
      if (*v12 == *v6)
      {
        v22 = sub_1BA4A1908();
        sub_1B9F76220(v6, type metadata accessor for SectionContext);
        sub_1B9F76220(v12, type metadata accessor for SectionContext);
        sub_1B9F76220(v16, sub_1B9F35130);
        if (v22)
        {
          return;
        }

        goto LABEL_12;
      }

      sub_1B9F76220(v6, type metadata accessor for SectionContext);
      v21 = sub_1B9F35130;
    }

    v24 = v21;
    sub_1B9F76220(v12, type metadata accessor for SectionContext);
    v23 = v24;
  }

  sub_1B9F76220(v16, v23);
LABEL_12:
  v25 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v26 = *(v1 + v25);
  if (v26)
  {
    sub_1B9F75B30(v1 + v17, v10);
    v27 = v26;
    sub_1B9F76294(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F760AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636972656D756ELL && a2 == 0xE700000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

void sub_1B9F76184()
{
  if (!qword_1EDC69270[0])
  {
    sub_1B9F35130();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC69270);
    }
  }
}

uint64_t sub_1B9F761E8()
{
  if (*v0)
  {
    return 0x676E69727473;
  }

  else
  {
    return 0x636972656D756ELL;
  }
}

uint64_t sub_1B9F76220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F76294(uint64_t a1)
{
  sub_1B9F6719C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v9);
  swift_endAccess();
  v10 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
  swift_beginAccess();
  v11 = *v10;
  if (!*v10)
  {
    v18 = a1;
    return sub_1B9F778E4(v18);
  }

  sub_1B9F75B30(v1 + v9, v8);
  ObjectType = swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (!v13)
  {
    v20 = v11;
    v17 = HAFeatureFlagViewLoggingEnabled();
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v14 = v13;
  sub_1B9F75B30(v8, v6);
  v15 = *(v14 + 16);
  v16 = v11;
  v15(v6, ObjectType, v14);
  v17 = HAFeatureFlagViewLoggingEnabled();
  if (v17)
  {
LABEL_4:
    v17 = sub_1BA20775C(v1, v11);
  }

LABEL_5:
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(v17);

  sub_1B9F778E4(a1);
  v18 = v8;
  return sub_1B9F778E4(v18);
}

uint64_t sub_1B9F764B4(uint64_t a1)
{
  v2 = v1;
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  if (sub_1B9F771B0(a1))
  {
    sub_1B9F6DEE0(a1, &v26);
    v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
    swift_beginAccess();
    sub_1B9F6E028(&v26, v2 + v7);
    swift_endAccess();
    sub_1B9F6DEE0(a1, &v26);
    if (v27)
    {
      sub_1B9F1134C(&v26, v23);
      v8 = v24;
      v9 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v9 + 40))(v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v10 = type metadata accessor for TileHeaderDetailKind();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v12 = type metadata accessor for TileHeaderDetailKind();
      (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    }

    v13 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
    swift_beginAccess();
    sub_1B9F6E0FC(v6, v2 + v13);
    swift_endAccess();
    sub_1B9F711CC();
    v14 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = v15;
      sub_1B9F6F658();
      if (v17)
      {
        v18 = sub_1BA4A6758();
      }

      else
      {
        v18 = 0;
      }

      [v16 setText_];
    }

    sub_1B9F71D38();
    sub_1B9F6DEE0(a1, &v26);
    v19 = v27;
    if (v27)
    {
      v20 = v28;
      __swift_project_boxed_opaque_existential_1(&v26, v27);
      v21 = (*(v20 + 16))(v19, v20);
      v19 = v22;
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    else
    {
      sub_1B9F6F238(&v26, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      v21 = 0;
    }

    sub_1B9F709C4(v21, v19, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel);
  }

  else
  {
    sub_1BA2D03A4();

    return sub_1B9F6DBC8(a1);
  }
}

uint64_t sub_1B9F7682C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  v5 = swift_allocObject();
  result = SnidgetSwiftChartViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t SnidgetSwiftChartViewModel.init(from:)(void *a1)
{
  v2 = sub_1BA4A1898();
  v3 = *(v2 - 8);
  v44 = v2;
  v45 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A0FA8();
  v46 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  sub_1B9F77148(0, &qword_1EDC5DEC0, sub_1B9F77770, &type metadata for SnidgetSwiftChartViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  v16 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B9F77770();
  v49 = v15;
  v17 = v50;
  sub_1BA4A8528();
  if (v17)
  {
    v18 = v51;
    type metadata accessor for SnidgetSwiftChartViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v11;
    v20 = v47;
    v50 = v9;
    v21 = v13;
    LOBYTE(v53) = 0;
    sub_1B9F77B54();
    sub_1BA4A81C8();
    v18 = v51;
    *(v51 + 16) = v54;
    sub_1B9F47FD8(0, &qword_1EDC6B678, type metadata accessor for SwiftChartPoint, MEMORY[0x1E69E62F8]);
    LOBYTE(v53) = 1;
    sub_1B9F78C44(&qword_1EDC5E6E0, &qword_1EDC68EA0);
    sub_1BA4A81C8();
    *(v18 + 24) = v54;
    LOBYTE(v54) = 2;
    sub_1B9F796F4(&qword_1EDC6AF10, MEMORY[0x1E6968130]);
    v22 = v6;
    sub_1BA4A81C8();
    v23 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
    (*(v46 + 32))(v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval, v19, v22);
    LOBYTE(v54) = 3;
    sub_1B9F796F4(&qword_1EDC652F0, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
    sub_1BA4A81C8();
    sub_1B9F7B908(v20, v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight);
    sub_1B9F7B9A0();
    LOBYTE(v53) = 4;
    sub_1B9F7B9F8(&qword_1EDC5E850);
    v47 = 0;
    sub_1BA4A81C8();
    v24 = v44;
    *(v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange) = v54;
    LOBYTE(v54) = 5;
    v25 = sub_1BA4A8198();
    v27 = v45;
    v26 = v46;
    *(v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis) = v25 & 1;
    swift_beginAccess();
    v28 = v50;
    (*(v26 + 16))(v50, v18 + v23, v22);
    sub_1BA4A0F98();
    v30 = v29;
    (*(v26 + 8))(v28, v22);
    v31 = 4.0;
    if (v30 > 86400.0)
    {
      v31 = 6.0;
    }

    v32 = v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
    v33 = vdup_n_s32(v30 > 86400.0);
    v34.i64[0] = v33.u32[0];
    v34.i64[1] = v33.u32[1];
    v35 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v34, 0x3FuLL)), xmmword_1BA4D3280, xmmword_1BA4D3270);
    *v32 = v35.i64[0];
    *(v32 + 8) = v35;
    *(v32 + 24) = v31;
    *(v32 + 32) = 0x4000000000000000;
    swift_beginAccess();
    sub_1BA4A0F98();
    v37 = v36;
    swift_endAccess();
    v38 = MEMORY[0x1E6969A48];
    if (v37 <= 86400.0)
    {
      v38 = MEMORY[0x1E6969A58];
    }

    v39 = v42;
    (*(v27 + 104))(v42, *v38, v24);
    (*(v27 + 32))(v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep, v39, v24);
    v55 = 6;
    sub_1B9F7BE68();
    sub_1BA4A8178();
    (*(v21 + 8))(v49, v48);
    *(v18 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration) = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v18;
}

void sub_1B9F77148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1B9F771B0(uint64_t a1)
{
  sub_1B9F777C4();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - v9;
  v11 = type metadata accessor for TileHeaderDetailKind();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  swift_beginAccess();
  sub_1B9F73D48(v1 + v20, v10);
  v21 = *(v12 + 48);
  if (v21(v10, 1, v11) != 1)
  {
    sub_1B9F77828(v10, v19);
    sub_1B9F6DEE0(a1, v41);
    v23 = v42;
    if (!v42)
    {
      sub_1B9F71048(v19, type metadata accessor for TileHeaderDetailKind);
      sub_1B9F6F238(v41, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      (*(v12 + 56))(v8, 1, 1, v11);
      goto LABEL_7;
    }

    v24 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v24 + 40))(v23, v24);
    (*(v12 + 56))(v8, 0, 1, v11);
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (v21(v8, 1, v11) == 1)
    {
      sub_1B9F71048(v19, type metadata accessor for TileHeaderDetailKind);
LABEL_7:
      v22 = v8;
      goto LABEL_8;
    }

    sub_1B9F77828(v8, v17);
    v26 = v40;
    v27 = *(v39 + 48);
    sub_1B9F77828(v19, v40);
    sub_1B9F77828(v17, v26 + v27);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v29 = v38;
        sub_1B9F70FE4(v26, v38);
        v30 = swift_getEnumCaseMultiPayload();
        if (!v30)
        {
          sub_1B9F71048(v26 + v27, type metadata accessor for TileHeaderDetailKind);
          v35 = sub_1BA4A1728();
          (*(*(v35 - 8) + 8))(v29, v35);
          goto LABEL_24;
        }

        if (v30 == 1)
        {
          v31 = sub_1BA4A1728();
          v32 = *(*(v31 - 8) + 8);
          v32(v26 + v27, v31);
          v32(v29, v31);
LABEL_24:
          sub_1B9F71048(v26, type metadata accessor for TileHeaderDetailKind);
          return 1;
        }

        v36 = sub_1BA4A1728();
        (*(*(v36 - 8) + 8))(v29, v36);
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v33 = swift_getEnumCaseMultiPayload();
      if (!v33)
      {
        sub_1B9F71048(v26 + v27, type metadata accessor for TileHeaderDetailKind);
        goto LABEL_24;
      }

      if (v33 == 1)
      {
        v34 = sub_1BA4A1728();
        (*(*(v34 - 8) + 8))(v26 + v27, v34);
        goto LABEL_24;
      }
    }

    sub_1B9F71048(v26, sub_1B9F777C4);
    return 0;
  }

  v22 = v10;
LABEL_8:
  sub_1B9F6FBF4(v22, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind);
  return 0;
}

unint64_t sub_1B9F77770()
{
  result = qword_1EDC6C528;
  if (!qword_1EDC6C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C528);
  }

  return result;
}

void sub_1B9F777C4()
{
  if (!qword_1EDC6CD08)
  {
    type metadata accessor for TileHeaderDetailKind();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6CD08);
    }
  }
}

uint64_t sub_1B9F77828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileHeaderDetailKind();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F77890()
{
  result = qword_1EDC6C518;
  if (!qword_1EDC6C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C518);
  }

  return result;
}

uint64_t sub_1B9F778E4(uint64_t a1)
{
  sub_1B9F6719C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B9F77984()
{
  result = qword_1EDC6C520;
  if (!qword_1EDC6C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C520);
  }

  return result;
}

uint64_t sub_1B9F779D8(char a1, char a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v9 = *v8;
    if (*v8 && (v10 = *(v8 + 8), v17[0] = *v8, v17[1] = v10, sub_1B9F0D9AC(0, qword_1EDC6B7C0), sub_1B9F0D9AC(0, &qword_1EDC67CE0), v11 = v9, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v15 + 1))
      {
        sub_1B9F1134C(&v14, v17);
        v12 = v18;
        v13 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v13 + 8))(a1 & 1, a2 & 1, v12, v13);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    return sub_1B9F43AAC(&v14, &qword_1EDC67CD8, &qword_1EDC67CE0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B9F77B54()
{
  result = qword_1EDC65310;
  if (!qword_1EDC65310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65310);
  }

  return result;
}

id sub_1B9F77BA8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HostViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_1B9F77BF8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696F507472616863;
    if (v1 != 1)
    {
      v5 = 0x65746E4965746164;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x536D617267616964;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0x615265756C615679;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t storeEnumTagSinglePayload for SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1B9F77F18(double a1, double a2, float a3, float a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
    if (!v11 || (swift_getObjectType(), !swift_conformsToProtocol2()))
    {
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ChromeHostViewCell(0);
      *&v19 = a3;
      *&v20 = a4;
      objc_msgSendSuper2(&v22, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a1, a2, v19, v20);
      return;
    }

    type metadata accessor for ChromeHostView();
    v12 = swift_dynamicCastClassUnconditional();
    v13 = OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
    swift_beginAccess();
    v14 = *(v12 + v13);
    if (v14)
    {
      v15 = v11;
      *&v16 = a3;
      *&v17 = a4;
      [v14 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v16, v17}];
      if (*&v4[v9])
      {
        goto LABEL_6;
      }
    }

    else
    {
      v21 = v11;
      if (*&v4[v9])
      {
LABEL_6:
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          [v18 sizeThatFits_];

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:

    return;
  }

  __break(1u);
}

unint64_t sub_1B9F781A4()
{
  result = qword_1EDC6C510;
  if (!qword_1EDC6C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C510);
  }

  return result;
}

uint64_t sub_1B9F781F8@<X0>(_BYTE *a1@<X8>)
{
  result = _s18HealthExperienceUI26SnidgetSwiftChartViewModelC12DiagramStyleO8rawValueAESgSS_tcfC_0();
  *a1 = result;
  return result;
}

void sub_1B9F78228(uint64_t *a1, uint64_t (*a2)(void), double a3, double a4, float a5, float a6)
{
  v12 = *a1;
  swift_beginAccess();
  v13 = *&v6[v12];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
    if (v14 && (swift_getObjectType(), swift_conformsToProtocol2()))
    {
      v15 = UIEdgeInsetsInsetRect(0.0, 0.0, a3);
      v16 = v14;
      [v16 sizeThatFits_];
    }

    else
    {
      v19.receiver = v6;
      v19.super_class = a2(0);
      *&v17 = a5;
      *&v18 = a6;
      objc_msgSendSuper2(&v19, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a3, a4, v17, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s18HealthExperienceUI26SnidgetSwiftChartViewModelC12DiagramStyleO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1BA4A8108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_1B9F783AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v55 = sub_1BA4A3EA8();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1BA4A3428();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unownedRetainStrong();
  v16 = *(a5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  v17 = *(a5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 16);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v61[0] = v16;
  (*(v17 + 8))(v64, a2, a3, a4, ObjectType, v17);
  swift_unknownObjectRelease();
  sub_1B9F0A534(v64, v61);
  sub_1B9F0D950(0, &qword_1EDC6AD50);
  if (swift_dynamicCast())
  {

    v19 = sub_1BA4A6758();
    v61[0] = type metadata accessor for FakeCollectionViewHeader();
    sub_1B9F37450(0, qword_1EDC66158, type metadata accessor for FakeCollectionViewHeader);
    sub_1BA4A6808();
    v20 = sub_1BA4A6758();

    v21 = sub_1BA4A18F8();
    v22 = [a1 dequeueReusableSupplementaryViewOfKind:v19 withReuseIdentifier:v20 forIndexPath:v21];
  }

  else
  {
    v52 = a4;
    __swift_project_boxed_opaque_existential_1(v64, v64[3]);
    sub_1BA4A2D48();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BA4A3D88();
      sub_1B9F0A534(v64, v61);
      v23 = sub_1BA4A3E88();
      v24 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v50 = v24;
        v26 = v25;
        v51 = swift_slowAlloc();
        *&v59[0] = v51;
        *v26 = 136315394;
        v27 = sub_1BA4A85D8();
        v29 = sub_1B9F0B82C(v27, v28, v59);

        *(v26 + 4) = v29;
        *(v26 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(v61, v62);
        v30 = sub_1BA4A2D58();
        v32 = v31;
        __swift_destroy_boxed_opaque_existential_1(v61);
        v33 = sub_1B9F0B82C(v30, v32, v59);

        *(v26 + 14) = v33;
        _os_log_impl(&dword_1B9F07000, v23, v50, "[%s]: Item %s registered as a supplementary view but is attempting to use a cell provider which is unsupported.", v26, 0x16u);
        v34 = v51;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v34, -1, -1);
        MEMORY[0x1BFAF43A0](v26, -1, -1);

        (*(v54 + 8))(v12, v55);
      }

      else
      {

        (*(v54 + 8))(v12, v55);
        __swift_destroy_boxed_opaque_existential_1(v61);
      }

      v41 = sub_1BA4A6758();
      v42 = sub_1BA4A6758();
      v43 = sub_1BA4A18F8();
      v44 = [a1 dequeueReusableSupplementaryViewOfKind:v41 withReuseIdentifier:v42 forIndexPath:v43];

      v21 = v44;
      sub_1B9F5DBCC(v15, MEMORY[0x1E69A3458]);
    }

    else
    {
      v35 = sub_1BA4A6758();
      v36 = sub_1BA4A6758();

      v37 = sub_1BA4A18F8();
      v38 = [a1 dequeueReusableSupplementaryViewOfKind:v35 withReuseIdentifier:v36 forIndexPath:v37];

      v58[0] = v38;
      sub_1B9F0ADF8(0, &unk_1EDC6B538);
      sub_1B9F0D950(0, &qword_1EDC6C6D0);
      v21 = v38;
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v59, v61);
        sub_1B9F0A534(v64, v58);
        sub_1B9F0D950(0, &qword_1EDC6E1B0);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v56, v59);
          sub_1B9F0A534(v59, v58);
          v39 = v62;
          v40 = v63;
          __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
          (*(v40 + 16))(v58, v39, v40);
          __swift_destroy_boxed_opaque_existential_1(v59);
        }

        else
        {
          v57 = 0;
          memset(v56, 0, sizeof(v56));
          sub_1B9F5F198(v56, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
        }

        __swift_destroy_boxed_opaque_existential_1(v61);
      }

      else
      {
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        sub_1B9F5F198(v59, &unk_1EBBEC060, &qword_1EDC6C6D0, &protocol descriptor for SupplementaryViewAdaptor, sub_1B9F0CDE8);
      }
    }

    swift_getObjectType();
    v45 = swift_conformsToProtocol2();
    if (!v45 || !v21)
    {
      v22 = v21;
      goto LABEL_19;
    }

    v46 = v45;
    v47 = swift_getObjectType();
    v20 = v21;
    v22 = v20;
    (*(v46 + 16))([a1 viewController], v47, v46);
    v21 = v20;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v64);
  return v22;
}

void sub_1B9F78B84()
{
  sub_1BA4A0FA8();
  if (v0 <= 0x3F)
  {
    sub_1B9F482E4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9F78C44(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F47FD8(255, &qword_1EDC6B678, type metadata accessor for SwiftChartPoint, MEMORY[0x1E69E62F8]);
    sub_1B9F796F4(a2, type metadata accessor for SwiftChartPoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CompoundSectionedDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v65 = a2;
  v63 = a1;
  v70 = a4;
  v5 = sub_1BA4A3EA8();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v59 - v8;
  v9 = sub_1BA4A1998();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v23 = *(v10 + 16);
  v72 = v24;
  v23(&v59 - v21, a3);
  v25 = sub_1BA4A1978();
  v71 = v22;
  if (v25 == 1)
  {
    sub_1B9F261DC(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BA4B5460;
    *(v26 + 32) = sub_1BA4A18D8();
    *(v26 + 40) = 0;
    v27 = v26;
    v22 = v71;
    MEMORY[0x1BFAEC3C0](v27);
    v28 = v72;
    (*(v10 + 8))(v22, v72);
    (*(v10 + 32))(v22, v20, v28);
  }

  v29 = sub_1B9F55C08(v15, v22);
  v31 = v30;
  v32 = v67;
  v33 = v15;
  v34 = v72;
  (*(v10 + 32))(v67, v33, v72);
  v75 = v29;
  v76 = v31;
  v61 = v31;
  v35 = sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC648F8);
  swift_unknownObjectRetain();
  v62 = v35;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v73, v77);
    v36 = v78;
    v37 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v37 + 8))(v63, v65, v32, v36, v37);
    swift_unknownObjectRelease();
    v38 = *(v10 + 8);
    v38(v32, v34);
    v38(v71, v34);
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  else
  {
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    sub_1B9F3B8FC(v73, &qword_1EBBEBD40, qword_1EDC648F8);
    sub_1BA4A3DD8();
    (v23)(v64, v32, v34);
    swift_unknownObjectRetain();
    v40 = v65;

    v41 = sub_1BA4A3E88();
    v42 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();

    v60 = v42;
    v43 = v42;
    v44 = v41;
    if (os_log_type_enabled(v41, v43))
    {
      v45 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v73[0] = v59;
      *v45 = 136315650;
      *(v45 + 4) = sub_1B9F0B82C(v63, v40, v73);
      *(v45 + 12) = 2080;
      v46 = v64;
      (v23)(v20, v64, v34);
      v47 = sub_1BA4A6828();
      v49 = v48;
      v50 = *(v10 + 8);
      v50(v46, v72);
      v51 = sub_1B9F0B82C(v47, v49, v73);
      v34 = v72;

      *(v45 + 14) = v51;
      *(v45 + 22) = 2080;
      v77[0] = v29;
      v77[1] = v61;
      swift_unknownObjectRetain();
      v52 = sub_1BA4A6828();
      v54 = sub_1B9F0B82C(v52, v53, v73);

      *(v45 + 24) = v54;
      v55 = v44;
      _os_log_impl(&dword_1B9F07000, v44, v60, "supplementaryItem requested of CompoundSectionedDataSource but childDataSource does not implement SupplementaryItemDataSource.  kind: %s, local index path %s, source: %s. Returning fake header item", v45, 0x20u);
      v56 = v59;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v56, -1, -1);
      v57 = v45;
      v32 = v67;
      MEMORY[0x1BFAF43A0](v57, -1, -1);
    }

    else
    {

      v50 = *(v10 + 8);
      v50(v64, v34);
    }

    (*(v68 + 8))(v66, v69);
    v58 = v70;
    v70[3] = &type metadata for FallbackHeaderItem;
    v58[4] = sub_1BA1BA0F8();
    *v58 = swift_allocObject();
    FallbackHeaderItem.init()();
    swift_unknownObjectRelease();
    v50(v32, v34);
    return (v50)(v71, v34);
  }
}

uint64_t sub_1B9F796B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F796F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SwiftChartPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1BA4A0FA8();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F79BD0(0, &qword_1EDC5DF18, MEMORY[0x1E69E6F48]);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for SwiftChartPoint();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F79C98();
  v30 = v8;
  v12 = v31;
  sub_1BA4A8528();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v9;
  v13 = v28;
  v14 = v29;
  v36 = 0;
  v15 = v11;
  *v11 = sub_1BA4A8188();
  v11[1] = v16;
  v25[1] = v16;
  v35 = 1;
  sub_1B9F79F10(&qword_1EDC6AF10);
  sub_1BA4A81C8();
  (*(v27 + 32))(v11 + *(v31 + 20), v5, v3);
  v34 = 2;
  v25[0] = 0;
  sub_1BA4A81A8();
  v17 = a1;
  v18 = v31;
  *(v11 + *(v31 + 24)) = v19;
  v33 = 3;
  v20 = sub_1BA4A8158();
  v32 = v21;
  v22 = v20;
  v23 = v11 + *(v18 + 28);
  (*(v13 + 8))(v30, v14);
  *v23 = v22;
  v23[8] = v32 & 1;
  sub_1B9F79F54(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_1B9F79FB8(v15);
}

void sub_1B9F79BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F79C98();
    v7 = a3(a1, &type metadata for SwiftChartPoint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B9F79C34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1B9F79C98()
{
  result = qword_1EDC6D9B8[0];
  if (!qword_1EDC6D9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6D9B8);
  }

  return result;
}

unint64_t sub_1B9F79D24()
{
  result = qword_1EDC6D9A8;
  if (!qword_1EDC6D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D9A8);
  }

  return result;
}

id DefaultHeaderCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item];
  v10 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

unint64_t sub_1B9F79E28()
{
  result = qword_1EDC6D9B0;
  if (!qword_1EDC6D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D9B0);
  }

  return result;
}

uint64_t sub_1B9F79F10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BA4A0FA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F79F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftChartPoint();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F79FB8(uint64_t a1)
{
  v2 = type metadata accessor for SwiftChartPoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B9F7A014()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton);
  }

  else
  {
    v4 = sub_1BA344BF0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1B9F47FD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = &v25 - v4;
  v5 = sub_1BA4A2B98();
  v26 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F77148(0, &qword_1EDC5DEB8, sub_1B9F7A5D4, &type metadata for SnidgetSwiftChartViewModel.DiagramHighlight.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  v15 = sub_1BA4A1728();
  v16 = *(*(v15 - 8) + 56);
  v33 = v13;
  v34 = v14;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7A5D4();
  v30 = v9;
  v17 = v32;
  sub_1BA4A8528();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BA05DB44(&v33[v34]);
  }

  else
  {
    v18 = v26;
    v39 = 0;
    sub_1B9F796F4(&qword_1EDC6E1D8, MEMORY[0x1E69A3260]);
    sub_1BA4A81C8();
    v19 = v33;
    (*(v18 + 32))(v33, v29, v5);
    v37 = 1;
    sub_1B9F7B168();
    sub_1BA4A81C8();
    *(v19 + *(v10 + 20)) = v38;
    v36 = 2;
    sub_1B9F796F4(&qword_1EDC6AE70, MEMORY[0x1E6969530]);
    sub_1BA4A8178();
    sub_1B9F7B4F4(v28, v19 + v34);
    v35 = 3;
    v20 = sub_1BA4A8158();
    v22 = v21;
    v23 = v19 + *(v10 + 28);
    (*(v27 + 8))(v30, v31);
    *v23 = v20;
    *(v23 + 8) = v22 & 1;
    sub_1B9F7B750(v19, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B9F7B8AC(v19);
  }
}

unint64_t sub_1B9F7A5D4()
{
  result = qword_1EDC6C500;
  if (!qword_1EDC6C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C500);
  }

  return result;
}

unint64_t sub_1B9F7A62C()
{
  result = qword_1EDC6B5E0;
  if (!qword_1EDC6B5E0)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B5E0);
  }

  return result;
}

void sub_1B9F7A684()
{
  if (!qword_1EDC5DC30)
  {
    sub_1B9F3BF3C();
    v0 = sub_1BA4A82E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DC30);
    }
  }
}

unint64_t sub_1B9F7A6DC()
{
  result = qword_1EDC6C4F0;
  if (!qword_1EDC6C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C4F0);
  }

  return result;
}

uint64_t sub_1B9F7A730(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1B9F7A7A4();
  return sub_1B9F7B644(a1);
}

uint64_t sub_1B9F7A7A4()
{
  v1 = v0;
  sub_1B9F0D598(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_1BA4A3FD8();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A3F98();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A4428();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v16, &aBlock);
  if (!v55)
  {
LABEL_9:
    sub_1B9F7B644(&aBlock);
    goto LABEL_10;
  }

  v48 = v11;
  v49 = v7;
  v50 = v9;
  sub_1B9FCD918();
  type metadata accessor for HeaderItem();
  if (swift_dynamicCast())
  {
    v17 = v58;
    v16 = v13 + 16;
    v51 = *(v13 + 16);
    v51(v15, v58 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration, v12);

    sub_1BA4A43B8();
    swift_beginAccess();
    if (*(v17 + 64) != 1)
    {
      sub_1BA4A75F8();
      goto LABEL_7;
    }

    v42 = v8;
    v43 = v4;
    v44 = v13;
    v18 = sub_1B9F7A014();
    v20 = *(v17 + 48);
    v19 = *(v17 + 56);
    v45 = objc_opt_self();
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v20;
    v21[4] = v19;
    v21[5] = 0;
    v22 = swift_allocObject();
    v41 = v1;
    *(v22 + 16) = sub_1B9F7B15C;
    *(v22 + 24) = v21;
    v56 = sub_1B9F7B0CC;
    v57 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v53 = 1107296256;
    v54 = sub_1B9F7B0FC;
    v55 = &block_descriptor_92;
    v23 = _Block_copy(&aBlock);
    v1 = v57;
    swift_bridgeObjectRetain_n();
    v24 = v18;

    [v45 performWithoutAnimation_];
    _Block_release(v23);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if ((v23 & 1) == 0)
    {
      sub_1B9F0D598(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
      sub_1BA4A3FE8();
      v25 = swift_allocObject();
      v45 = v12;
      *(v25 + 16) = xmmword_1BA4B5480;
      v26 = *(v41 + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton);
      sub_1B9FD7EE0();
      v28 = v49;
      v29 = &v49[*(v27 + 48)];
      v30 = *MEMORY[0x1E69DBF28];
      v31 = sub_1BA4A3F18();
      (*(*(v31 - 8) + 104))(v28, v30, v31);
      *v29 = sub_1B9FF87F0;
      v29[1] = 0;
      (*(v46 + 104))(v28, *MEMORY[0x1E69DBF60], v47);
      v32 = sub_1BA4A3F48();
      (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
      v33 = v26;
      v34 = v48;
      sub_1BA4A3F88();
      sub_1BA4A3EE8();
      (*(v50 + 8))(v34, v42);
      v12 = v45;
      sub_1BA4A75F8();
      v13 = v44;
LABEL_7:
      v55 = v12;
      v56 = MEMORY[0x1E69DC110];
      v35 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v51(v35, v15, v12);
      MEMORY[0x1BFAF1EF0](&aBlock);
      v36 = (v17 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
      swift_beginAccess();
      v37 = *v36;
      v38 = v36[1];

      sub_1B9F7B558(v37, v38);

      return (*(v13 + 8))(v15, v12);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  aBlock = 0;
  v53 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v58 = 0xD000000000000026;
  v59 = 0x80000001BA501790;
  sub_1B9F68124(v1 + v16, &aBlock);
  sub_1B9F0D598(0, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720]);
  v40 = sub_1BA4A6828();
  MEMORY[0x1BFAF1350](v40);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1B9F7AFA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B9F7AFF4()
{
  result = qword_1EDC6C4F8;
  if (!qword_1EDC6C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C4F8);
  }

  return result;
}

uint64_t sub_1B9F7B048()
{
  v1 = 0x436D617267616964;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x65756C615679;
  }

  if (*v0)
  {
    v1 = 0x6867696C68676968;
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

unint64_t sub_1B9F7B168()
{
  result = qword_1EDC65300;
  if (!qword_1EDC65300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65300);
  }

  return result;
}

id sub_1B9F7B1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = sub_1BA4A6758();
    a4 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [a1 setTitle:v7 forState:a4];

  result = [a1 window];
  if (result)
  {

    return [a1 layoutIfNeeded];
  }

  return result;
}

unint64_t sub_1B9F7B2C0()
{
  result = qword_1EDC6C508;
  if (!qword_1EDC6C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C508);
  }

  return result;
}

uint64_t sub_1B9F7B320()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v6);
  if (v6[3])
  {
    sub_1B9FCD918();
    type metadata accessor for HeaderItem();
    if (swift_dynamicCast())
    {
      return v5;
    }

    v3 = v0;
  }

  else
  {
    v3 = v0;
    sub_1B9F7B644(v6);
  }

  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  sub_1B9F68124(v3 + v1, v6);
  sub_1B9F0D598(0, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720]);
  v4 = sub_1BA4A6828();
  MEMORY[0x1BFAF1350](v4);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

HealthExperienceUI::SnidgetSwiftChartViewModel::DiagramHighlight::HighlightStyle_optional __swiftcall SnidgetSwiftChartViewModel.DiagramHighlight.HighlightStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B9F7B4F4(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F7B558(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_1B9F7A014();

    MEMORY[0x1BFAF1350](0x6C69617465442ELL, 0xE700000000000000);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v5 = sub_1B9F7A014();
    [v5 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1B9F7B644(uint64_t a1)
{
  sub_1B9F7B6F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F7B6A0()
{
  if (!qword_1EDC6E440)
  {
    sub_1BA4A1728();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E440);
    }
  }
}

void sub_1B9F7B6F8()
{
  if (!qword_1EDC6E1A0)
  {
    sub_1B9FCD918();
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E1A0);
    }
  }
}

uint64_t sub_1B9F7B750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HideableDataSource<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1B9F35348();
  v11 = *(v9 + 80);
  if (v13 == 1)
  {
    swift_beginAccess();
    v12 = *(a4 + 8);
    swift_unknownObjectRetain();
    v12(a1, a2, a3, v11, a4);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F7B8AC(uint64_t a1)
{
  v2 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F7B908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B9F7B9A0()
{
  if (!qword_1EDC6B698)
  {
    v0 = sub_1BA4A6718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B698);
    }
  }
}

uint64_t sub_1B9F7B9F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F7B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PrimarySecondaryDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = *v4;
  v34 = sub_1BA4A3EA8();
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1B9F1E2C4();
  v38 = v12;
  sub_1B9F0D9AC(0, &qword_1EDC67F10);
  sub_1B9F0D9AC(0, qword_1EDC648F8);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v35, v39);
    v13 = v40;
    v14 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v14 + 8))(a1, a2, a3, v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    sub_1BA1EAFD0(v35);
    sub_1BA4A3D88();
    swift_retain_n();
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v35[0] = v32;
      *v18 = 136315650;
      v19 = sub_1BA4A85D8();
      v21 = sub_1B9F0B82C(v19, v20, v35);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v39[0] = sub_1B9F1E2C4();
      v39[1] = v22;
      swift_unknownObjectRetain();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, v35);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      v26 = PrimarySecondaryDataSource.description.getter();
      v28 = v27;

      v29 = sub_1B9F0B82C(v26, v28, v35);

      *(v18 + 24) = v29;
      _os_log_impl(&dword_1B9F07000, v16, v17, "%s asked for a supplementaryItem, but currentDataSource=%s does not conform to SupplementaryItemDataSource. %s", v18, 0x20u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v34);
    a4[3] = &type metadata for FallbackHeaderItem;
    a4[4] = sub_1BA1BA0F8();
    *a4 = swift_allocObject();
    return FallbackHeaderItem.init()();
  }
}

uint64_t sub_1B9F7BE04()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B9F7BE68()
{
  result = qword_1EDC652E0;
  if (!qword_1EDC652E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC652E0);
  }

  return result;
}

uint64_t SnidgetSwiftChartViewModel.AnimationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1B9F77148(0, &qword_1EDC5DEB0, sub_1B9F7C07C, &type metadata for SnidgetSwiftChartViewModel.AnimationConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7C07C();
  sub_1BA4A8528();
  if (!v2)
  {
    v9 = v15;
    v10 = sub_1BA4A8188();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
    v9[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B9F7C07C()
{
  result = qword_1EDC6C450[0];
  if (!qword_1EDC6C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6C450);
  }

  return result;
}

unint64_t sub_1B9F7C0D4()
{
  result = qword_1EDC6C440;
  if (!qword_1EDC6C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C440);
  }

  return result;
}

unint64_t sub_1B9F7C12C()
{
  result = qword_1EDC6C448;
  if (!qword_1EDC6C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C448);
  }

  return result;
}

uint64_t sub_1B9F7C194(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v8[5] = *v1;
  sub_1B9F63EF0(v1, v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1B9F6307C(v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
  sub_1B9F53A5C(0);
  sub_1B9F7C3E8();
  sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C);
  v6 = sub_1BA4A49F8();

  v8[1] = v6;
  v8[2] = MEMORY[0x1E69815C0];
  v8[3] = MEMORY[0x1E695B228];
  v8[4] = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1B9F48334(&qword_1EDC68E98, type metadata accessor for SwiftChartPoint);
  return sub_1BA4A62E8();
}

void sub_1B9F7C3E8()
{
  if (!qword_1EDC5F818)
  {
    sub_1BA4A49F8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F818);
    }
  }
}

uint64_t sub_1B9F7C508@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B9F7C514(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1B9F7C668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v23 = a1;
  v32 = a3;
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1728();
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v24 = &v22 - v12;
  v13 = sub_1BA4A49F8();
  v14 = *(v13 - 8);
  v29 = v13;
  v30 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A57F8();
  v17 = type metadata accessor for SwiftChartPoint();
  sub_1BA4A0F88();
  v25 = type metadata accessor for SnidgetSwiftChartView.BarChartMarks(0);
  v18 = sub_1BA4A18A8();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_1BA4A4978();

  sub_1B9F617A8(v7, sub_1B9F7CBC0);
  (*(v26 + 8))(v10, v27);
  sub_1BA4A57F8();
  v19 = v23;
  v33 = *(v23 + *(v17 + 24));
  sub_1BA4A4988();

  sub_1BA4A49E8();
  v33 = sub_1B9F7CBF4(v19, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
  v20 = v29;
  sub_1BA4A4918();
  return (*(v30 + 8))(v16, v20);
}

uint64_t sub_1B9F7CACC(uint64_t a1, uint64_t a2)
{
  sub_1B9F7CE88(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_1B9F7CB04()
{
  if (!qword_1EDC5F770)
  {
    v0 = sub_1BA4A4998();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F770);
    }
  }
}

uint64_t sub_1B9F7CBF4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1B9F7B6A0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1728();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = a2(0);
  v15 = v2 + *(v14 + 20);
  v16 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  v17 = *(v15 + *(v16 + 20));
  if (v17 >= 2)
  {
    if (v17 != 2)
    {
      v18 = (v2 + *(v14 + 28));
      return *v18;
    }

    sub_1B9F63EF0(v15 + *(v16 + 24), v6, sub_1B9F7B6A0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1B9F617A8(v6, sub_1B9F7B6A0);
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
      type metadata accessor for SwiftChartPoint();
      sub_1BA4A0F88();
      v20 = sub_1BA4A16E8();
      v21 = *(v8 + 8);
      v21(v11, v7);
      v21(v13, v7);
      if (v20)
      {
        v18 = (v2 + *(v14 + 28));
        return *v18;
      }
    }
  }

  if (qword_1EDC67350 != -1)
  {
    swift_once();
  }

  v18 = &qword_1EDC84C20;
  return *v18;
}

uint64_t sub_1B9F7CE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SnidgetAnimation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[2] = a1;
  v17[3] = a3;
  swift_getWitnessTable();
  sub_1BA4A5978();
  v17[1] = sub_1BA4A5828();
  v5 = sub_1BA4A5418();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  if (*(v3 + *(a2 + 40)) == 1)
  {
  }

  WitnessTable = swift_getWitnessTable();
  sub_1BA4A6008();

  v13 = swift_getWitnessTable();
  v17[4] = WitnessTable;
  v17[5] = v13;
  v14 = swift_getWitnessTable();
  sub_1B9F51AA8(v9, v5, v14);
  v15 = *(v6 + 8);
  v15(v9, v5);
  sub_1B9F51AA8(v11, v5, v14);
  return (v15)(v11, v5);
}

uint64_t sub_1B9F7D204(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0);
  v57[2] = *(v2 - 8);
  v57[3] = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57[1] = v57 - v3;
  v4 = sub_1BA4A3EA8();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v57[4] = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = v57 - v7;
  v8 = sub_1BA4A40C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v57 - v13;
  v58 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_cellState;
  v15 = *(v9 + 16);
  v15(v57 - v13, a1, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v12, v14, v8);

  sub_1BA4A4F38();
  (*(v9 + 8))(v14, v8);
  v16 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  v17 = v63;
  swift_beginAccess();
  v18 = v17;
  v19 = *&v17[v16];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider;
    swift_beginAccess();
    sub_1B9F374E8(&v17[v20], &v64, &qword_1EDC66650, &qword_1EDC66658);
    if (!v65)
    {
      return sub_1B9F4A1F4(&v64, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
    }

    sub_1B9F1134C(&v64, v69);
    v21 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel;
    swift_beginAccess();
    sub_1B9F374E8(&v17[v21], &v64, &qword_1EDC68F40, &qword_1EDC68F50);
    if (v65)
    {
      sub_1B9F1134C(&v64, v68);
      v22 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
      swift_beginAccess();
      sub_1B9F374E8(&v17[v22], &v64, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
      if (v65)
      {
        sub_1B9F0D950(0, &qword_1EDC6E1B0);
        sub_1BA4A27B8();

        if (swift_dynamicCast())
        {
          v23 = v67[0];
          v25 = v70;
          v24 = v71;
          v26 = __swift_project_boxed_opaque_existential_1(v69, v70);
          v62 = v23;
          v27 = [v23 uniqueIdentifier];
          v28 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v30 = v29;

          v31 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel;
          swift_beginAccess();
          sub_1B9F374E8(&v18[v31], v66, &qword_1EDC68F40, &qword_1EDC68F50);
          v32 = *&v18[v58];

          sub_1B9F7E154(&OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item, &OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext, &OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel, &v64);
          (*(v24 + 24))(v67, v28, v30, v68, v66, v19, v32, &v64, v25, v24);

          sub_1B9F4A1F4(&v64, &qword_1EDC6BB70, &type metadata for ConfigurationFeedItemActionContent, MEMORY[0x1E69E6720], sub_1B9F23348);
          sub_1B9F4A1F4(v66, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0CDE8);
          MEMORY[0x1BFAF1EF0](v67);

          __swift_destroy_boxed_opaque_existential_1(v68);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v68);
        }

        return __swift_destroy_boxed_opaque_existential_1(v69);
      }

      __swift_destroy_boxed_opaque_existential_1(v68);
      v53 = &qword_1EDC6E1A0;
      v54 = &qword_1EDC6E1B0;
      v55 = MEMORY[0x1E69A3348];
    }

    else
    {
      v53 = &qword_1EDC68F40;
      v54 = &qword_1EDC68F50;
      v55 = &protocol descriptor for PluginViewModel;
    }

    sub_1B9F4A1F4(&v64, v53, v54, v55, sub_1B9F0CDE8);
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v33 = v62;
  sub_1BA4A3DD8();
  v34 = v17;
  v35 = sub_1BA4A3E88();
  v36 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v68[0] = v38;
    *v37 = 136315395;
    v39 = sub_1BA4A85D8();
    v41 = sub_1B9F0B82C(v39, v40, v68);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2081;
    v42 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
    swift_beginAccess();
    sub_1B9F374E8(&v34[v42], &v64, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v43 = v65;
    if (v65)
    {
      v44 = __swift_project_boxed_opaque_existential_1(&v64, v65);
      v63 = v57;
      v45 = v38;
      v46 = *(v43 - 8);
      MEMORY[0x1EEE9AC00](v44);
      v48 = v57 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v46 + 16))(v48);
      sub_1B9F4A1F4(&v64, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v49 = sub_1BA4A2D58();
      v51 = v50;
      (*(v46 + 8))(v48, v43);
      v38 = v45;
      v33 = v62;
    }

    else
    {
      sub_1B9F4A1F4(&v64, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v51 = 0x80000001BA4FACA0;
      v49 = 0xD00000000000002FLL;
    }

    v56 = sub_1B9F0B82C(v49, v51, v68);

    *(v37 + 14) = v56;
    _os_log_impl(&dword_1B9F07000, v35, v36, "[%s]: observableViewEnvironment was unexpectedly nil on %{private}s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v38, -1, -1);
    MEMORY[0x1BFAF43A0](v37, -1, -1);
  }

  return (*(v60 + 8))(v33, v61);
}

void sub_1B9F7E0A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1BA4A59C8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B9F7E10C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

void sub_1B9F7E154(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  sub_1B9F374E8(v4 + v8, v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v22)
  {
    sub_1B9F4A1F4(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    goto LABEL_10;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = Strong;
  v11 = *a2;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (!v12)
  {

    goto LABEL_9;
  }

  v13 = [v20 objectID];
  v14 = *a3;
  swift_beginAccess();
  sub_1B9F374E8(v4 + v14, v21, &qword_1EDC68F40, &qword_1EDC68F50);
  v15 = [v20 actionHandlerUserData];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BA4A1608();
    v19 = v18;
  }

  else
  {

    v17 = 0;
    v19 = 0xF000000000000000;
  }

  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *(a4 + 56) = 0xF000000000000000;
  *a4 = v13;
  sub_1B9F4A184(v21, a4 + 8, &qword_1EDC68F40, &qword_1EDC68F50);
  sub_1B9F6AC8C(*(a4 + 48), *(a4 + 56));
  *(a4 + 48) = v17;
  *(a4 + 56) = v19;
  *(a4 + 64) = v12;
  *(a4 + 72) = v10;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI15PluginViewModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_1B9F7E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a7;
  v61 = a6;
  v59 = a5;
  v50 = a4;
  v56 = a1;
  v57 = a2;
  v58 = a8;
  v48 = *v8;
  v10 = sub_1BA4A3EA8();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v48 + 88);
  v54 = *(v48 + 80);
  v55 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for ViewModelState();
  v52 = *(v14 - 8);
  v53 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v47 - v15;
  v67 = sub_1BA4A7AA8();
  v65 = *(v67 - 8);
  v16 = MEMORY[0x1EEE9AC00](v67);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = MEMORY[0x1EEE9AC00](v21);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v47 - v28;
  sub_1B9F0A534(a3, v66);
  sub_1B9F7EABC();
  v30 = swift_dynamicCast();
  v31 = *(v24 + 56);
  if (v30)
  {
    v31(v23, 0, 1, AssociatedTypeWitness);
    (*(v24 + 32))(v29, v23, AssociatedTypeWitness);
    sub_1B9F7EB2C(v50, v66);
    sub_1B9F7ECC4();
    v32 = swift_dynamicCast();
    v31(v20, v32 ^ 1u, 1, AssociatedTypeWitness);
    (*(v24 + 16))(v27, v29, AssociatedTypeWitness);
    v33 = v65;
    v34 = v49;
    (*(v65 + 16))(v49, v20, v67);
    v35 = v57;

    v36 = v51;
    ViewModelState.init(id:viewModel:previousViewModel:)(v56, v35, v27, v34, AssociatedTypeWitness, v51);
    (*(v55 + 40))(v36, v59, v61, v62, v54);
    (*(v52 + 8))(v36, v53);
    (*(v24 + 8))(v29, AssociatedTypeWitness);
    return (*(v33 + 8))(v20, v67);
  }

  else
  {
    v31(v23, 1, 1, AssociatedTypeWitness);
    (*(v65 + 8))(v23, v67);
    v38 = v60;
    sub_1BA4A3E28();
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66[0] = v42;
      *v41 = 136315138;
      v43 = sub_1BA4A85D8();
      v45 = sub_1B9F0B82C(v43, v44, v66);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1B9F07000, v39, v40, "Model for %s is unable to cast to required type", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
    }

    (*(v63 + 8))(v38, v64);
    sub_1B9F21374();
    swift_allocError();
    *v46 = 0x8000000000000000;
    return swift_willThrow();
  }
}