unint64_t sub_1E6093088()
{
  result = qword_1ED074260;
  if (!qword_1ED074260)
  {
    sub_1E65E2BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074260);
  }

  return result;
}

uint64_t sub_1E60930E0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, uint64_t a8@<X8>)
{
  v13 = a1;
  ShelfDisplayStyle.sectionDensityFactor(for:dynamicTypeSize:)(a1, a2, a7, &v37);
  v15 = v37;
  switch(a7)
  {
    case 2:
      *a8 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      goto LABEL_4;
    case 3:
    case 30:
      v21 = sub_1E65DAE38();
      if (v21 == sub_1E65DAE38())
      {
        goto LABEL_41;
      }

      v22 = 1 << v13;
      if (((1 << v13) & 3) != 0)
      {
        goto LABEL_2;
      }

      goto LABEL_46;
    case 5:
      v31 = sub_1E65DAE38();
      if (v31 == sub_1E65DAE38() || v13 <= 1u)
      {
        *a8 = 3;
        goto LABEL_43;
      }

      *a8 = xmmword_1E65EFF20;
      *(a8 + 16) = 0x4034000000000000;
      goto LABEL_51;
    case 7:
      *a8 = v37;
      if (v13 <= 1u)
      {
        goto LABEL_23;
      }

      v23 = MEMORY[0x1E699D848];
      goto LABEL_19;
    case 9:
    case 20:
    case 33:
      v19 = sub_1E65DAE38();
      if (v19 == sub_1E65DAE38())
      {
        goto LABEL_26;
      }

      v20 = sub_1E65DAE38();
      if (v20 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a8 = 5;
      goto LABEL_3;
    case 10:
      v29 = sub_1E65DAE38();
      if (v29 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a8 = 0;
      goto LABEL_3;
    case 11:
    case 15:
    case 17:
    case 34:
    case 39:
      if (((1 << v13) & 3) != 0)
      {
        *a8 = v37;
LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
        goto LABEL_4;
      }

      if (((1 << v13) & 0xC) != 0)
      {
        v17 = 2;
        v18 = 0x4034000000000000;
      }

      else
      {
        v17 = 3;
        v18 = 0x4038000000000000;
      }

      *a8 = v17;
      *(a8 + 8) = v18;
      v23 = MEMORY[0x1E699D840];
LABEL_19:
      v24 = *v23;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v25 - 8) + 104))(a8, v24, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      goto LABEL_53;
    case 13:
      v26 = sub_1E65DAE38();
      if (v26 == sub_1E65DAE38())
      {
        *a8 = 2;
LABEL_43:
        *(a8 + 8) = 0;
        v34 = MEMORY[0x1E699D870];
        goto LABEL_52;
      }

      *a8 = 2;
      if (v13 <= 1u)
      {
        goto LABEL_43;
      }

      *(a8 + 8) = 2;
      *(a8 + 16) = 0x4034000000000000;
LABEL_51:
      v34 = MEMORY[0x1E699D878];
LABEL_52:
      v35 = *v34;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C8, &qword_1E65EDD58);
      (*(*(v36 - 8) + 104))(a8, v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
LABEL_53:
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
LABEL_4:

      return swift_storeEnumTagMultiPayload();
    case 22:
      v28 = sub_1E65DAE38();
      if (v28 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a8 = 3;
      goto LABEL_3;
    case 24:
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    case 31:
      v30 = sub_1E65DAE38();
      if (v30 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

      *a8 = 2;
      goto LABEL_3;
    case 35:
      v32 = sub_1E65DAE38();
      if (v32 == sub_1E65DAE38())
      {
LABEL_41:
        v33 = xmmword_1E65EFF10;
      }

      else
      {
        v22 = 1 << v13;
        if (((1 << v13) & 3) != 0)
        {
          v33 = xmmword_1E65EFF00;
        }

        else
        {
LABEL_46:
          if ((v22 & 0xC) != 0)
          {
            v33 = xmmword_1E65EFEF0;
          }

          else
          {
            v33 = xmmword_1E65EFEE0;
          }
        }
      }

      *a8 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      goto LABEL_4;
    case 38:
      v27 = sub_1E65DAE38();
      if (v27 != sub_1E65DAE38())
      {
        goto LABEL_2;
      }

LABEL_26:
      *a8 = 1;
      goto LABEL_3;
    case 44:
      *a8 = 1;
      *(a8 + 8) = a3;
      *(a8 + 16) = a4;
      *(a8 + 24) = a5;
      *(a8 + 32) = a6;
      type metadata accessor for ViewDescriptor();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      swift_storeEnumTagMultiPayload();

    default:
LABEL_2:
      *a8 = v15;
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      goto LABEL_4;
  }
}

uint64_t ShelfDisplayStyle.sectionDensityFactor(for:dynamicTypeSize:)@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v4 = 0;
  switch(a3)
  {
    case 2:
    case 4:
    case 10:
    case 14:
    case 16:
    case 36:
    case 38:
    case 44:
      goto LABEL_3;
    case 3:
    case 30:
      *a4 = 2 * (result > 3u);
      break;
    case 6:
      if (a2 >= 7u)
      {
        v5 = 3;
      }

      else
      {
        v5 = 4;
      }

      *a4 = v5;
      break;
    case 7:
    case 35:
      *a4 = 2;
      break;
    case 9:
    case 20:
    case 33:
      *a4 = 5;
      break;
    case 22:
      if (a2 < 7u)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      *a4 = v6;
      break;
    case 24:
      result = sub_1E65E69D8();
      __break(1u);
      break;
    case 31:
      *a4 = 1;
      break;
    default:
      v4 = a2 < 7u;
LABEL_3:
      *a4 = v4;
      break;
  }

  return result;
}

uint64_t sub_1E6093784@<X0>(int a1@<W1>, char a2@<W3>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  v4 = sub_1E65E0A98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1E65E07B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1E65E05C8();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v28[-v15];
  v17 = MEMORY[0x1EEE9AC00](v14);
  v20 = &v28[-v19];
  switch(a2)
  {
    case 2:
    case 24:
    case 44:
      result = sub_1E65E69D8();
      __break(1u);
      return result;
    case 3:
    case 30:
      v25 = sub_1E65DAE38();
      if (v25 == sub_1E65DAE38() || v29 > 1u)
      {
        goto LABEL_14;
      }

      sub_1E65E08E8();
      sub_1E65E03F8();
      break;
    case 5:
    case 13:
      v22 = v18;
      v23 = v17;
      sub_1E65E0598();
      (*(v22 + 16))(v16, v20, v23);
      sub_1E65E05B8();
      v27 = sub_1E65E4B48();
      if (v27)
      {
        sub_1E65DC368();
      }

      sub_1E65E0768();
      sub_1E65E0AB8();
      (*(v22 + 8))(v20, v23);
      goto LABEL_31;
    case 6:
      sub_1E65E0A48();
      sub_1E65E03F8();
      break;
    case 7:
      if (v29 > 1u)
      {
        (*(v5 + 104))(v8, *MEMORY[0x1E699DAF0], v4);
        sub_1E65E0A78();
        sub_1E65E03F8();
      }

      else
      {
        sub_1E65E0598();
        sub_1E65E0768();
        sub_1E65E0AB8();
LABEL_31:
        sub_1E65E03F8();
      }

      return swift_storeEnumTagMultiPayload();
    case 9:
    case 31:
      sub_1E65DAE38();
      sub_1E65DAE38();
      sub_1E65E0938();
      sub_1E65E03F8();
      break;
    case 10:
    case 11:
      goto LABEL_10;
    case 15:
    case 17:
    case 34:
      if (v29 <= 1u)
      {
        goto LABEL_7;
      }

      goto LABEL_2;
    case 22:
      sub_1E65E07C8();
      v26 = sub_1E65DAE38();
      if (v26 == sub_1E65DAE38())
      {
        if (sub_1E65E4B48())
        {
          sub_1E65DC388();
        }
      }

      else
      {
        if (sub_1E65E4B48())
        {
          sub_1E65DC368();
        }

        sub_1E65E07C8();
      }

      sub_1E65E0838();
      sub_1E65E03F8();
      break;
    case 28:
    case 29:
LABEL_7:
      sub_1E65E0AC8();
      sub_1E65E03F8();
      break;
    case 35:
LABEL_14:
      sub_1E65E09F8();
      sub_1E65E03F8();
      break;
    case 38:
    case 39:
      v24 = sub_1E65DAE38();
      if (v24 == sub_1E65DAE38())
      {
        goto LABEL_2;
      }

LABEL_10:
      sub_1E65E03F8();
      break;
    default:
LABEL_2:
      sub_1E65E0A68();
      sub_1E65E03F8();
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E6093FD0()
{
  v0 = sub_1E65DF6C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = sub_1E65DAE38();
  if (v8 == sub_1E65DAE38())
  {
    (*(v1 + 104))(v7, *MEMORY[0x1E699E6E0], v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0708();
    v9 = MEMORY[0x1E699E6E8];
    if (v11[15] >= 3u)
    {
      v9 = MEMORY[0x1E699E6F0];
    }

    (*(v1 + 104))(v5, *v9, v0);
    (*(v1 + 32))(v7, v5, v0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  return sub_1E65DF638();
}

char *BarButtonItem.__allocating_init<A>(presentationContextKey:rootView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1E60946F0(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v8;
}

char *BarButtonItem.init<A>(presentationContextKey:rootView:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E60946F0(a1, a2, a3);
  (*(*(a3 - 8) + 8))(a2, a3);
  return v5;
}

void sub_1E60942E4()
{
  v1 = [*&v0[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v1)
  {
    v20 = v1;
    v2 = [v0 customView];
    if (v2)
    {
      v3 = v2;
      [v20 setTranslatesAutoresizingMaskIntoConstraints_];
      v4 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1E65EFF30;
      v6 = [v20 leadingAnchor];
      v7 = [v3 leadingAnchor];
      v8 = [v6 constraintEqualToAnchor_];

      *(v5 + 32) = v8;
      v9 = [v20 trailingAnchor];
      v10 = [v3 trailingAnchor];
      v11 = [v9 constraintEqualToAnchor_];

      *(v5 + 40) = v11;
      v12 = [v20 topAnchor];
      v13 = [v3 topAnchor];
      v14 = [v12 constraintEqualToAnchor_];

      *(v5 + 48) = v14;
      v15 = [v20 bottomAnchor];
      v16 = [v3 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor_];

      *(v5 + 56) = v17;
      sub_1E6094C88();
      v18 = sub_1E65E5EF8();

      [v4 activateConstraints_];

      v19 = v18;
    }

    else
    {
      v19 = v20;
    }
  }
}

id BarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1E60946F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E65E43B8();
  v41 = *(v8 - 8);
  v9 = v41;
  v10 = *(v41 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a3);
  v15 = a1;
  v43 = sub_1E65E4AD8();
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074270, &qword_1E65EFF68));
  v17 = sub_1E65E4058();
  *&v4[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074278, &unk_1E65FBA70);
  v18 = *(v9 + 72);
  v19 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1E65EA670;
  v21 = v17;
  sub_1E65E4398();
  v43 = v20;
  sub_1E5E1F2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074280, &qword_1E65EFF70);
  sub_1E5E1F2FC();
  sub_1E65E6738();
  sub_1E65E4028();

  v22 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_presentationContextKey;
  v23 = sub_1E65D76F8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v4[v22], v15, v23);
  v25 = type metadata accessor for BarButtonItem();
  v42.receiver = v4;
  v42.super_class = v25;
  v26 = objc_msgSendSuper2(&v42, sel_init);
  v27 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v28 = v26;
  v29 = [v27 init];
  [v28 setCustomView_];

  if (sub_1E65E4B48())
  {
    v30 = [v28 customView];
    if (v30)
    {
      v31 = v30;
      v32 = [objc_opt_self() clearColor];
      [v31 setBackgroundColor_];
    }
  }

  v33 = OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController;
  v34 = [*&v28[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] view];
  if (v34)
  {
    v35 = v34;
    v36 = [v28 customView];
    v37 = v35;
    if (v36)
    {
      v37 = v36;
      [v36 addSubview_];
    }
  }

  result = [*&v28[v33] view];
  if (result)
  {
    v39 = result;
    if (sub_1E65E4B48())
    {
      v40 = [objc_opt_self() clearColor];
    }

    else
    {
      v40 = 0;
    }

    [v39 setBackgroundColor_];

    sub_1E60942E4();
    (*(v24 + 8))(v15, v23);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for BarButtonItem()
{
  result = qword_1EE2DB250;
  if (!qword_1EE2DB250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6094BBC()
{
  result = sub_1E65D76F8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E6094C88()
{
  result = qword_1EE2D45D0;
  if (!qword_1EE2D45D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D45D0);
  }

  return result;
}

uint64_t sub_1E6094CD4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RouteSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DF388();
  v7 = sub_1E65DF378();
  v9 = v8;
  swift_storeEnumTagMultiPayload();
  *a1 = v7;
  a1[1] = v9;
  if (v6 == 1)
  {
    type metadata accessor for PlaylistType();
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for RouteDestination();
  sub_1E6094E10(v5, a1 + *(v10 + 20));
  *(a1 + *(v10 + 24)) = MEMORY[0x1E69E7CD0];
  return sub_1E6069714(v5);
}

uint64_t sub_1E6094E10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RouteSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static Contributor.< infix(_:_:)()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

unint64_t sub_1E6094F04()
{
  result = qword_1ED074288;
  if (!qword_1ED074288)
  {
    sub_1E65D7D58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074288);
  }

  return result;
}

uint64_t sub_1E6094F5C()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E6094FE8()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6095088()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {

    v4 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v4 = v5 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E6095128()
{
  v0 = sub_1E65D7D48();
  v2 = v1;
  if (v0 == sub_1E65D7D48() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E60951B8()
{
  v0 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v2 = v1;
  if (v0 == _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E65E6C18();
  }

  return v4 & 1;
}

uint64_t sub_1E6095238()
{
  sub_1E65E6D28();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E6095294()
{
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();
}

uint64_t sub_1E60952E4()
{
  sub_1E65E6D28();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t MetricIdentifierType.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (_s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() == a1 && v5 == a2)
  {

    v7 = 0;
  }

  else
  {
    v8 = sub_1E65E6C18();

    v7 = v8 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

unint64_t sub_1E60953D4()
{
  result = qword_1ED074290;
  if (!qword_1ED074290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074290);
  }

  return result;
}

uint64_t sub_1E6095428@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (_s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0() == v4 && v5 == v3)
  {

    v9 = 0;
  }

  else
  {
    v7 = sub_1E65E6C18();

    v9 = v7 ^ 1;
  }

  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1E60954B4@<X0>(uint64_t *a1@<X8>)
{
  result = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1E609559C()
{
  result = qword_1EE2D9648;
  if (!qword_1EE2D9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9648);
  }

  return result;
}

uint64_t sub_1E60955F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1E65DAC98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1E60958EC(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1E609595C(a1);
    sub_1E609595C(v11);
    v20 = 1;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DFA28();
    sub_1E609595C(a1);
    v21 = *(v13 + 8);
    v21(v17, v12);
    v21(v19, v12);
    v20 = 0;
  }

  v22 = sub_1E65DFA38();
  return (*(*(v22 - 8) + 56))(a2, v20, 1, v22);
}

uint64_t sub_1E60958EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E609595C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E60959C4()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x657069636572;
  }

  *v0;
  return result;
}

uint64_t sub_1E60959F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657069636572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6095ACC(uint64_t a1)
{
  v2 = sub_1E609759C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6095B08(uint64_t a1)
{
  v2 = sub_1E609759C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6095B44()
{
  if (*v0)
  {
    result = 1936154996;
  }

  else
  {
    result = 0x786966657270;
  }

  *v0;
  return result;
}

uint64_t sub_1E6095B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E6095C4C(uint64_t a1)
{
  v2 = sub_1E60976A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6095C88(uint64_t a1)
{
  v2 = sub_1E60976A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6095CC4(uint64_t a1)
{
  v2 = sub_1E6097654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6095D00(uint64_t a1)
{
  v2 = sub_1E6097654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SectionHeaderSubtitleDescriptor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074298, &unk_1E65F00F0);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v45 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742A0, &qword_1E65F0100);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v44 - v10;
  v57 = sub_1E65D72D8();
  v11 = *(v57 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v57);
  v55 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v44 - v15;
  v16 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742A8, &qword_1E65F0108);
  v20 = *(v53 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v23 = &v44 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E609759C();
  sub_1E65E6DA8();
  sub_1E60975F0(v52, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v45;
    sub_1E6012620(v19, v45);
    v61 = 1;
    sub_1E6097654();
    v26 = v46;
    v27 = v53;
    sub_1E65E6B18();
    sub_1E5DF6BC0(&qword_1EE2D7290, MEMORY[0x1E6968848]);
    v28 = v48;
    sub_1E65E6B38();
    (*(v47 + 8))(v26, v28);
    sub_1E5DFE50C(v25, &qword_1ED072D90, &qword_1E66040F0);
    return (*(v20 + 8))(v23, v27);
  }

  else
  {
    v52 = v20;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
    v31 = v11[4];
    v32 = v57;
    v31(v51, v19, v57);
    v31(v55, &v19[v30], v32);
    v60 = 0;
    sub_1E60976A8();
    v33 = v53;
    sub_1E65E6B18();
    v59 = 0;
    sub_1E5DF6BC0(&qword_1EE2D7290, MEMORY[0x1E6968848]);
    v34 = v50;
    v35 = v54;
    sub_1E65E6B78();
    v36 = v33;
    v37 = v11;
    if (v35)
    {
      (*(v49 + 8))(v56, v34);
      v38 = v11[1];
      v39 = v57;
      v38(v55, v57);
      v38(v51, v39);
      v40 = v52;
    }

    else
    {
      v41 = v51;
      v58 = 1;
      sub_1E65E6B78();
      v40 = v52;
      (*(v49 + 8))(v56, v34);
      v42 = v37[1];
      v43 = v57;
      v42(v55, v57);
      v42(v41, v43);
    }

    return (*(v40 + 8))(v23, v36);
  }
}

uint64_t SectionHeaderSubtitleDescriptor.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = sub_1E65D72D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E60975F0(v0, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E6012620(v19, v7);
    MEMORY[0x1E694E740](1);
    sub_1E60976FC(v7, v5);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      (*(v9 + 32))(v15, v5, v8);
      sub_1E65E6D48();
      sub_1E5DF6BC0(&qword_1ED0734B0, MEMORY[0x1E6968848]);
      sub_1E65E5B48();
      (*(v9 + 8))(v15, v8);
    }

    return sub_1E5DFE50C(v7, &qword_1ED072D90, &qword_1E66040F0);
  }

  else
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
    v21 = *(v9 + 32);
    v21(v15, v19, v8);
    v21(v13, &v19[v20], v8);
    MEMORY[0x1E694E740](0);
    sub_1E5DF6BC0(&qword_1ED0734B0, MEMORY[0x1E6968848]);
    sub_1E65E5B48();
    sub_1E65E5B48();
    v22 = *(v9 + 8);
    v22(v13, v8);
    return (v22)(v15, v8);
  }
}

uint64_t SectionHeaderSubtitleDescriptor.hashValue.getter()
{
  sub_1E65E6D28();
  SectionHeaderSubtitleDescriptor.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t SectionHeaderSubtitleDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742B8, &qword_1E65F0118);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v54 = &v46 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742C0, &qword_1E65F0120);
  v52 = *(v49 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742C8, &unk_1E65F0128);
  v55 = *(v8 - 8);
  v9 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v23 = a1[3];
  v22 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E609759C();
  v24 = v56;
  sub_1E65E6D98();
  if (!v24)
  {
    v46 = v16;
    v47 = v19;
    v25 = v53;
    v26 = v54;
    v56 = v12;
    v27 = sub_1E65E6AF8();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1E5FBE3F0();
    v30 = v8;
    if (v29 == 2 || v60 != v61 >> 1)
    {
      v33 = sub_1E65E68F8();
      swift_allocError();
      v35 = v34;
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v35 = v56;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v55 + 8))(v11, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        v62 = 1;
        sub_1E6097654();
        sub_1E65E6A68();
        v31 = v8;
        v32 = v55;
        sub_1E65D72D8();
        sub_1E5DF6BC0(&qword_1ED0734A8, MEMORY[0x1E6968848]);
        v41 = v46;
        v42 = v51;
        sub_1E65E6A98();
        (*(v50 + 8))(v26, v42);
        (*(v32 + 8))(v11, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v41;
      }

      else
      {
        v62 = 0;
        sub_1E60976A8();
        sub_1E65E6A68();
        v38 = v55;
        sub_1E65D72D8();
        v62 = 0;
        sub_1E5DF6BC0(&qword_1ED0734A8, MEMORY[0x1E6968848]);
        v39 = v25;
        v40 = v49;
        sub_1E65E6AD8();
        v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
        v62 = 1;
        sub_1E65E6AD8();
        (*(v52 + 8))(v39, v40);
        (*(v38 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v45 = v47;
        swift_storeEnumTagMultiPayload();
        v43 = v45;
      }

      sub_1E609776C(v43, v21);
      sub_1E609776C(v21, v48);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1E6096EC8()
{
  sub_1E65E6D28();
  SectionHeaderSubtitleDescriptor.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E6096F0C()
{
  sub_1E65E6D28();
  SectionHeaderSubtitleDescriptor.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard31SectionHeaderSubtitleDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v50 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742E8, &qword_1E65F05A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v49 - v7;
  v8 = sub_1E65D72D8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v49 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  v20 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0742F0, &unk_1E65F05B0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v49 - v30;
  v32 = &v49 + *(v29 + 56) - v30;
  sub_1E60975F0(v53, &v49 - v30);
  sub_1E60975F0(v54, v32);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E60975F0(v31, v24);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *(v5 + 48);
      v34 = v51;
      sub_1E6012620(v24, v51);
      sub_1E6012620(v32, v34 + v33);
      v35 = v9;
      v36 = v9[6];
      if (v36(v34, 1, v8) == 1)
      {
        if (v36(v34 + v33, 1, v8) == 1)
        {
          sub_1E5DFE50C(v34, &qword_1ED072D90, &qword_1E66040F0);
LABEL_20:
          sub_1E6097B18(v31);
          v43 = 1;
          return v43 & 1;
        }
      }

      else
      {
        v44 = v50;
        sub_1E60976FC(v34, v50);
        if (v36(v34 + v33, 1, v8) != 1)
        {
          v46 = v49;
          (v35[4])(v49, v34 + v33, v8);
          sub_1E5DF6BC0(&qword_1EE2D7288, MEMORY[0x1E6968848]);
          v47 = sub_1E65E5B98();
          v48 = v35[1];
          v48(v46, v8);
          v48(v44, v8);
          sub_1E5DFE50C(v34, &qword_1ED072D90, &qword_1E66040F0);
          if (v47)
          {
            goto LABEL_20;
          }

          goto LABEL_16;
        }

        (v35[1])(v44, v8);
      }

      sub_1E5DFE50C(v34, &qword_1ED0742E8, &qword_1E65F05A8);
LABEL_16:
      sub_1E6097B18(v31);
      goto LABEL_17;
    }

    sub_1E5DFE50C(v24, &qword_1ED072D90, &qword_1E66040F0);
LABEL_9:
    sub_1E5DFE50C(v31, &qword_1ED0742F0, &unk_1E65F05B0);
LABEL_17:
    v43 = 0;
    return v43 & 1;
  }

  sub_1E60975F0(v31, v26);
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = v9[1];
    v38(&v26[v37], v8);
    v38(v26, v8);
    goto LABEL_9;
  }

  v39 = v9[4];
  v39(v19, v32, v8);
  v39(v52, &v26[v37], v8);
  v39(v15, &v32[v37], v8);
  v40 = sub_1E65D7288();
  v41 = v9[1];
  v41(v26, v8);
  if ((v40 & 1) == 0)
  {
    v41(v15, v8);
    v41(v52, v8);
    v41(v19, v8);
    goto LABEL_16;
  }

  v42 = v52;
  v43 = sub_1E65D7288();
  v41(v15, v8);
  v41(v42, v8);
  v41(v19, v8);
  sub_1E6097B18(v31);
  return v43 & 1;
}

unint64_t sub_1E609759C()
{
  result = qword_1EE2D7DC8;
  if (!qword_1EE2D7DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DC8);
  }

  return result;
}

uint64_t sub_1E60975F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6097654()
{
  result = qword_1EE2D7DB0;
  if (!qword_1EE2D7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DB0);
  }

  return result;
}

unint64_t sub_1E60976A8()
{
  result = qword_1ED0742B0;
  if (!qword_1ED0742B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742B0);
  }

  return result;
}

uint64_t sub_1E60976FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E609776C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6097804()
{
  result = qword_1ED0742D0;
  if (!qword_1ED0742D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742D0);
  }

  return result;
}

unint64_t sub_1E609785C()
{
  result = qword_1ED0742D8;
  if (!qword_1ED0742D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742D8);
  }

  return result;
}

unint64_t sub_1E60978B4()
{
  result = qword_1ED0742E0;
  if (!qword_1ED0742E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0742E0);
  }

  return result;
}

unint64_t sub_1E609790C()
{
  result = qword_1EE2D7D90;
  if (!qword_1EE2D7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7D90);
  }

  return result;
}

unint64_t sub_1E6097964()
{
  result = qword_1EE2D7D98;
  if (!qword_1EE2D7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7D98);
  }

  return result;
}

unint64_t sub_1E60979BC()
{
  result = qword_1EE2D7DA0;
  if (!qword_1EE2D7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DA0);
  }

  return result;
}

unint64_t sub_1E6097A14()
{
  result = qword_1EE2D7DA8;
  if (!qword_1EE2D7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DA8);
  }

  return result;
}

unint64_t sub_1E6097A6C()
{
  result = qword_1EE2D7DB8;
  if (!qword_1EE2D7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DB8);
  }

  return result;
}

unint64_t sub_1E6097AC4()
{
  result = qword_1EE2D7DC0;
  if (!qword_1EE2D7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7DC0);
  }

  return result;
}

uint64_t sub_1E6097B18(uint64_t a1)
{
  v2 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6097B88(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1E65D9998();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6097C48, 0, 0);
}

uint64_t sub_1E6097C48()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  v3 = v0[9];
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[5];
    sub_1E65DE128();

    return MEMORY[0x1EEE6DFA0](sub_1E6097D1C, v4, 0);
  }

  else
  {
    v6 = v0[9];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1E6097D1C()
{
  v1 = v0[9];
  v2 = sub_1E65D9978();
  if ((v3 & 1) == 0 || v2 - 3 >= 0xFFFFFFFE)
  {
    v4 = v0[10];
    sub_1E6097DD4(0);
  }

  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];

  (*(v8 + 8))(v6, v7);
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6097DD4(void *a1)
{
  v3 = type metadata accessor for AnalyticsConsentDetour.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RouteDestination();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state;
  swift_beginAccess();
  sub_1E609C080(v1 + v22, v9, type metadata accessor for AnalyticsConsentDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    return sub_1E609CA8C(v9, type metadata accessor for AnalyticsConsentDetour.State);
  }

  v32 = v14;
  v26 = v16;
  v27 = a1;
  v28 = *(v23 + 48);
  (*(v34 + 32))(v21, v9, v33);
  sub_1E5E1E048(&v9[v28], v26, type metadata accessor for RouteDestination);
  (*(v24 + 56))(v7, 1, 1, v23);
  swift_beginAccess();
  sub_1E609C5AC(v7, v1 + v22);
  swift_endAccess();
  if (v27)
  {
    v35 = v27;
    v29 = v27;
    v30 = v33;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E609C080(v26, v32, type metadata accessor for RouteDestination);
    v30 = v33;
    sub_1E65E5FF8();
  }

  sub_1E609CA8C(v26, type metadata accessor for RouteDestination);
  return (*(v34 + 8))(v21, v30);
}

void sub_1E6098154(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AppComposer();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_dependencies);

  sub_1E65D9988();
  v12 = objc_allocWithZone(sub_1E65E5868());
  v13 = sub_1E65E5848();

  sub_1E65E5858();

  sub_1E609C080(a2, v10, type metadata accessor for AppComposer);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_1E5E1E048(v10, v16 + v14, type metadata accessor for AppComposer);
  *(v16 + v15) = v3;

  sub_1E65E5838();

  v17 = *(a2 + *(v7 + 28) + 8);
  if (v17 < 2)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E65EA660;
    *(v19 + 32) = v13;
    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v20 = v13;
    v21 = sub_1E65E5EF8();

    [v18 setViewControllers:v21 animated:0];

    [a1 presentViewController:v18 animated:1 completion:0];
LABEL_5:

    return;
  }

  if (v17 == 3)
  {
    [a1 pushViewController:v13 animated:0];
    goto LABEL_5;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E6098470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1E65E6058();

  v7 = sub_1E65E6048();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1E64B80F8(0, 0, v5, &unk_1E65F0718, v8);
}

uint64_t sub_1E6098594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E6098614, a4, 0);
}

uint64_t sub_1E6098614()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E6097DD4(0);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F916A0, v5, v4);
}

uint64_t sub_1E60986A8(int a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a1;
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22[-v10];
  v12 = sub_1E65E60A8();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  sub_1E609C080(a2, v7, type metadata accessor for AppComposer);
  sub_1E65E6058();
  v14 = sub_1E65E6048();
  v15 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v14;
  *(v16 + 24) = v17;
  *(v16 + 32) = v23;
  sub_1E5E1E048(v7, v16 + v15, type metadata accessor for AppComposer);
  sub_1E6059EAC(0, 0, v11, &unk_1E65F06F8, v16);

  v13(v11, 1, 1, v12);
  v18 = v24;

  v19 = sub_1E65E6048();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v17;
  v20[4] = v18;
  sub_1E64B80F8(0, 0, v11, &unk_1E65F0708, v20);
}

uint64_t sub_1E6098928(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 96) = a4;
  v6 = sub_1E65D9998();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  sub_1E65E6058();
  *(v5 + 48) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v5 + 56) = v10;
  *(v5 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6098A20, v10, v9);
}

uint64_t sub_1E6098A20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 96);
  sub_1E65D9988();
  sub_1E65D9968();
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 92);
  v5 = PrivacyPreferenceService.updateOptInPrivacyPreference.getter();
  *(v0 + 72) = v6;
  v11 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *v8 = v0;
  v8[1] = sub_1E6098B78;
  v9 = *(v0 + 40);

  return v11(v9);
}

uint64_t sub_1E6098B78()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = v0;

  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1E6098D60;
  }

  else
  {
    v8 = sub_1E6098CD0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E6098CD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6098D60()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_1E6098DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_1E65E6058();
  v4[4] = sub_1E65E6048();

  return MEMORY[0x1EEE6DFA0](sub_1E6098E70, a4, 0);
}

uint64_t sub_1E6098E70()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1E6097DD4(0);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5F908BC, v5, v4);
}

uint64_t sub_1E6098F04()
{
  sub_1E609CA8C(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state, type metadata accessor for AnalyticsConsentDetour.State);
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_dependencies);

  v2 = *(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_eventHub);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_subscriptionToken);

  v4 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__analyticsConsentShowingEnabled;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__forceAnalyticsConsentAcknowledgement, v5);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E609903C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[287] = v5;
  v6[281] = a5;
  v6[275] = a4;
  v6[269] = a3;
  v6[263] = a2;
  v6[257] = a1;
  v7 = sub_1E65E3B68();
  v6[293] = v7;
  v8 = *(v7 - 8);
  v6[299] = v8;
  v9 = *(v8 + 64) + 15;
  v6[305] = swift_task_alloc();
  v6[311] = swift_task_alloc();
  v10 = sub_1E65D76A8();
  v6[317] = v10;
  v11 = *(v10 - 8);
  v6[323] = v11;
  v12 = *(v11 + 64) + 15;
  v6[329] = swift_task_alloc();
  v13 = sub_1E65D9998();
  v6[335] = v13;
  v14 = *(v13 - 8);
  v6[341] = v14;
  v15 = *(v14 + 64) + 15;
  v6[347] = swift_task_alloc();
  v6[353] = swift_task_alloc();
  v16 = sub_1E65D92D8();
  v6[359] = v16;
  v17 = *(v16 - 8);
  v6[365] = v17;
  v18 = *(v17 + 64) + 15;
  v6[371] = swift_task_alloc();
  v6[372] = swift_task_alloc();
  v19 = type metadata accessor for AppComposer();
  v6[373] = v19;
  v20 = *(v19 - 8);
  v6[374] = v20;
  v6[375] = *(v20 + 64);
  v6[376] = swift_task_alloc();
  v6[377] = swift_task_alloc();
  v6[378] = swift_task_alloc();
  v21 = sub_1E65D8DE8();
  v6[379] = v21;
  v22 = *(v21 - 8);
  v6[380] = v22;
  v23 = *(v22 + 64) + 15;
  v6[381] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[382] = v24;
  v25 = *(v24 - 8);
  v6[383] = v25;
  v26 = *(v25 + 64) + 15;
  v6[384] = swift_task_alloc();
  v27 = sub_1E65DE3E8();
  v6[385] = v27;
  v28 = *(v27 - 8);
  v6[386] = v28;
  v29 = *(v28 + 64) + 15;
  v6[387] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60993E4, v5, 0);
}

uint64_t sub_1E60993E4()
{
  v1 = *(v0 + 3096);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3080);
  v4 = *(v0 + 2152) + *(*(v0 + 2984) + 20);
  v5 = *(v4 + 8);
  v6 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD40], v3);
  v7 = sub_1E637C87C(v1, v6);

  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = *(v0 + 3072);
    v9 = *(v0 + 3064);
    v10 = *(v0 + 3056);
    v11 = *(v0 + 2296);
    v12 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__analyticsConsentShowingEnabled;
    v13 = *(v9 + 16);
    *(v0 + 3104) = v13;
    *(v0 + 3112) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v8, v11 + v12, v10);
    sub_1E65DDC48();
    v14 = *(v9 + 8);
    *(v0 + 3120) = v14;
    *(v0 + 3128) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v8, v10);
    if (*(v0 + 3232) == 1)
    {
      v15 = sub_1E65DAE38();
      if (v15 == sub_1E65DAE38())
      {
        v16 = v4 + *(type metadata accessor for AppEnvironment() + 100);
        active = RemoteBrowsingService.requireActiveParticipant.getter();
        *(v0 + 3136) = v18;
        v60 = (active + *active);
        v19 = active[1];
        v20 = swift_task_alloc();
        *(v0 + 3144) = v20;
        *v20 = v0;
        v20[1] = sub_1E6099A00;
        v21 = *(v0 + 3048);

        return v60(v21);
      }

      else
      {
        v45 = *(v0 + 3024);
        v46 = *(v0 + 3016);
        v47 = *(v0 + 3000);
        v48 = *(v0 + 2992);
        v55 = *(v0 + 2976);
        v57 = *(v0 + 3008);
        v54 = *(v0 + 2872);
        v59 = *(v0 + 2680);
        v62 = *(v0 + 2824);
        v49 = *(v0 + 2152);
        sub_1E609C080(v49, v45, type metadata accessor for AppComposer);
        v50 = (*(v48 + 80) + 16) & ~*(v48 + 80);
        v51 = swift_allocObject();
        *(v0 + 3160) = v51;
        sub_1E5E1E048(v45, v51 + v50, type metadata accessor for AppComposer);
        sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
        swift_asyncLet_begin();
        sub_1E609C080(v49, v46, type metadata accessor for AppComposer);
        v52 = swift_allocObject();
        *(v0 + 3168) = v52;
        sub_1E5E1E048(v46, v52 + v50, type metadata accessor for AppComposer);
        swift_asyncLet_begin();
        sub_1E609C080(v49, v57, type metadata accessor for AppComposer);
        v53 = swift_allocObject();
        *(v0 + 3176) = v53;
        sub_1E5E1E048(v57, v53 + v50, type metadata accessor for AppComposer);
        swift_asyncLet_begin();

        return MEMORY[0x1EEE6DEC0](v0 + 1296, v0 + 2008, sub_1E6099D9C, v0 + 2016);
      }
    }

    v25 = *(v0 + 2488);
    sub_1E65DE348();
    v26 = sub_1E65E3B48();
    v27 = sub_1E65E6338();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1E5DE9000, v26, v27, "Analytics Consent showing has been disabled", v28, 2u);
      MEMORY[0x1E694F1C0](v28, -1, -1);
    }

    v29 = *(v0 + 2488);
    v30 = *(v0 + 2392);
    v31 = *(v0 + 2344);
    v32 = *(v0 + 2104);
    v33 = *(v0 + 2056);

    (*(v30 + 8))(v29, v31);
    v23 = v32;
    v24 = v33;
  }

  else
  {
    v23 = *(v0 + 2104);
    v24 = *(v0 + 2056);
  }

  sub_1E609C080(v23, v24, type metadata accessor for RouteDestination);
  v34 = *(v0 + 3096);
  v35 = *(v0 + 3072);
  v36 = *(v0 + 3048);
  v37 = *(v0 + 3024);
  v38 = *(v0 + 3016);
  v39 = *(v0 + 3008);
  v40 = *(v0 + 2976);
  v41 = *(v0 + 2968);
  v42 = *(v0 + 2824);
  v43 = *(v0 + 2776);
  v56 = *(v0 + 2632);
  v58 = *(v0 + 2488);
  v61 = *(v0 + 2440);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1E6099A00()
{
  v2 = *v1;
  v3 = *(*v1 + 3144);
  v4 = *v1;
  v2[394] = v0;

  v5 = v2[392];
  if (v0)
  {
    v6 = v2[287];

    v7 = sub_1E609A7F8;
  }

  else
  {
    v6 = v2[287];
    (*(v2[380] + 8))(v2[381], v2[379]);

    v7 = sub_1E6099B64;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E6099B64()
{
  v1 = v0[378];
  v2 = v0[377];
  v3 = v0[375];
  v4 = v0[374];
  v12 = v0[372];
  v13 = v0[376];
  v11 = v0[359];
  v14 = v0[335];
  v15 = v0[353];
  v5 = v0[269];
  sub_1E609C080(v5, v1, type metadata accessor for AppComposer);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v0[395] = v7;
  sub_1E5E1E048(v1, v7 + v6, type metadata accessor for AppComposer);
  sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
  swift_asyncLet_begin();
  sub_1E609C080(v5, v2, type metadata accessor for AppComposer);
  v8 = swift_allocObject();
  v0[396] = v8;
  sub_1E5E1E048(v2, v8 + v6, type metadata accessor for AppComposer);
  swift_asyncLet_begin();
  sub_1E609C080(v5, v13, type metadata accessor for AppComposer);
  v9 = swift_allocObject();
  v0[397] = v9;
  sub_1E5E1E048(v13, v9 + v6, type metadata accessor for AppComposer);
  swift_asyncLet_begin();

  return MEMORY[0x1EEE6DEC0](v0 + 162, v0 + 251, sub_1E6099D9C, v0 + 252);
}

uint64_t sub_1E6099D9C()
{
  *(v1 + 3184) = v0;
  if (v0)
  {
    v2 = sub_1E609A9BC;
  }

  else
  {
    v2 = sub_1E6099DD0;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 2296), 0);
}

uint64_t sub_1E6099DD0()
{
  if ([*(v0 + 2008) ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:?])
  {
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  *(v0 + 1976) = v7;
  *(v0 + 1992) = v8;
  if (*(v0 + 2000))
  {
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 3234) == 1)
    {
      v1 = sub_1E65E38E8();
      sub_1E609C44C(&qword_1ED074300, MEMORY[0x1E69CADC8]);
      v2 = swift_allocError();
      (*(*(v1 - 8) + 104))(v3, *MEMORY[0x1E69CADB8], v1);
      swift_willThrow();

      sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
      v4 = *(v0 + 2824);

      return MEMORY[0x1EEE6DEB0](v0 + 656, v4, sub_1E609A944, v0 + 2064);
    }
  }

  else
  {
    sub_1E5DFE50C(v0 + 1976, &qword_1ED072B28, &unk_1E65F06A0);
  }

  v5 = *(v0 + 2976);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v5, sub_1E6099FE8, v0 + 2208);
}

uint64_t sub_1E6099FE8()
{
  *(v1 + 3192) = v0;
  if (v0)
  {
    v2 = sub_1E609AAC0;
  }

  else
  {
    v2 = sub_1E609A01C;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 2296), 0);
}

uint64_t sub_1E609A01C()
{
  v1 = v0[371];
  v2 = v0[365];
  v3 = v0[359];
  v4 = v0[329];
  v5 = v0[323];
  v6 = v0[317];
  (*(v2 + 16))(v1, v0[372], v3);
  sub_1E65D7698();
  v7 = sub_1E65D92A8();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = v0[353];

    return MEMORY[0x1EEE6DEC0](v0 + 82, v8, sub_1E609A180, v0 + 300);
  }

  else
  {
    sub_1E609C080(v0[263], v0[257], type metadata accessor for RouteDestination);
    v9 = v0[353];

    return MEMORY[0x1EEE6DEB0](v0 + 82, v9, sub_1E609AA48, v0 + 282);
  }
}

uint64_t sub_1E609A180()
{
  *(v1 + 3200) = v0;
  if (v0)
  {
    v2 = sub_1E609AB4C;
  }

  else
  {
    v2 = sub_1E609A1B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, *(v1 + 2296), 0);
}

uint64_t sub_1E609A1B4()
{
  v1 = *(v0 + 3128);
  v2 = *(v0 + 3120);
  v3 = *(v0 + 3112);
  v4 = *(v0 + 3104);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 3056);
  v7 = *(v0 + 2296);
  (*(*(v0 + 2728) + 16))(*(v0 + 2776), *(v0 + 2824), *(v0 + 2680));
  v4(v5, v7 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour__forceAnalyticsConsentAcknowledgement, v6);
  sub_1E65DDC48();
  v2(v5, v6);
  v8 = *(v0 + 2776);
  v9 = *(v0 + 2728);
  v10 = *(v0 + 2680);
  if (*(v0 + 3233) == 1)
  {
    (*(v9 + 8))(*(v0 + 2776), *(v0 + 2680));
    goto LABEL_3;
  }

  v23 = sub_1E65D9978();
  v25 = v24;
  (*(v9 + 8))(v8, v10);
  if ((v25 & 1) == 0 || v23 - 1 >= 2)
  {
LABEL_3:
    v11 = *(v0 + 2296);
    v12 = *(v0 + 2248);
    v13 = *(v0 + 2200);
    v14 = *(v0 + 2152);
    v15 = *(v0 + 2104);
    v16 = swift_task_alloc();
    *(v0 + 3208) = v16;
    v16[2] = v11;
    v16[3] = v15;
    v16[4] = v13;
    v16[5] = v12;
    v16[6] = v14;
    v17 = sub_1E609C44C(&qword_1ED0742F8, type metadata accessor for AnalyticsConsentDetour);
    v18 = *(MEMORY[0x1E69E88F0] + 4);
    v19 = swift_task_alloc();
    *(v0 + 3216) = v19;
    v20 = type metadata accessor for RouteDestination();
    *v19 = v0;
    v19[1] = sub_1E609A44C;
    v21 = *(v0 + 2296);
    v22 = *(v0 + 2056);

    return MEMORY[0x1EEE6DE18](v22, &unk_1E65F06B8, v16, sub_1E609C444, v21, v11, v17, v20);
  }

  sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
  v26 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v26, sub_1E609A764, v0 + 2928);
}

uint64_t sub_1E609A44C()
{
  v2 = *v1;
  v3 = *(*v1 + 3216);
  v8 = *v1;
  *(*v1 + 3224) = v0;

  if (v0)
  {
    v4 = v2[287];

    return MEMORY[0x1EEE6DFA0](sub_1E609AD7C, v4, 0);
  }

  else
  {
    v5 = v2[401];

    v6 = v2[353];

    return MEMORY[0x1EEE6DEB0](v2 + 82, v6, sub_1E609A594, v2 + 348);
  }
}

uint64_t sub_1E609A628()
{
  v1 = v0[397];
  v2 = v0[396];
  v3 = v0[395];

  v4 = v0[387];
  v5 = v0[384];
  v6 = v0[381];
  v7 = v0[378];
  v8 = v0[377];
  v9 = v0[376];
  v10 = v0[372];
  v11 = v0[371];
  v12 = v0[353];
  v13 = v0[347];
  v16 = v0[329];
  v17 = v0[311];
  v18 = v0[305];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E609A7F8()
{
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2056);

  sub_1E609C080(v1, v2, type metadata accessor for RouteDestination);
  v3 = *(v0 + 3096);
  v4 = *(v0 + 3072);
  v5 = *(v0 + 3048);
  v6 = *(v0 + 3024);
  v7 = *(v0 + 3016);
  v8 = *(v0 + 3008);
  v9 = *(v0 + 2976);
  v10 = *(v0 + 2968);
  v11 = *(v0 + 2824);
  v12 = *(v0 + 2776);
  v15 = *(v0 + 2632);
  v16 = *(v0 + 2488);
  v17 = *(v0 + 2440);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E609A9BC()
{
  sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
  v1 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1E609A944, v0 + 2064);
}

uint64_t sub_1E609AAC0()
{
  sub_1E609C080(*(v0 + 2104), *(v0 + 2056), type metadata accessor for RouteDestination);
  v1 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v1, sub_1E609AA48, v0 + 2256);
}

uint64_t sub_1E609AB4C()
{
  v1 = v0[400];
  v2 = v0[305];
  sub_1E65DE348();
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[400];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Analytics Consent — failed to fetch preference with error: %@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[263];
  v13 = v0[257];
  (*(v0[299] + 8))(v0[305], v0[293]);
  sub_1E609C080(v12, v13, type metadata accessor for RouteDestination);
  v14 = v0[353];

  return MEMORY[0x1EEE6DEB0](v0 + 82, v14, sub_1E609AD04, v0 + 306);
}

uint64_t sub_1E609AD7C()
{
  v1 = *(v0 + 3208);

  v2 = *(v0 + 2824);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v2, sub_1E609ADE8, v0 + 2640);
}

uint64_t sub_1E609AE7C()
{
  v1 = v0[397];
  v2 = v0[396];
  v3 = v0[395];
  v4 = v0[387];
  v5 = v0[384];
  v6 = v0[381];
  v7 = v0[378];
  v8 = v0[377];
  v9 = v0[376];
  v10 = v0[372];
  v14 = v0[371];
  v15 = v0[353];
  v16 = v0[347];
  v17 = v0[329];
  v18 = v0[311];
  v19 = v0[305];

  v11 = v0[1];
  v12 = v0[403];

  return v11();
}

uint64_t sub_1E609AFC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609AFE0, 0, 0);
}

uint64_t sub_1E609AFE0()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 24);
  v4 = AccountService.fetchCurrentAccount.getter();
  v0[4] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1610;

  return v9();
}

uint64_t sub_1E609B0F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609B114, 0, 0);
}

uint64_t sub_1E609B114()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 108);
  v4 = ServiceSubscriptionService.queryServiceSubscription.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FACF3C;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E609B230(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609B250, 0, 0);
}

uint64_t sub_1E609B250()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 92);
  v4 = PrivacyPreferenceService.queryOptInPrivacyPreference.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E609B36C;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E609B36C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_1E5FEE4E8;
  }

  else
  {
    v3 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E609B480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E609B4A4, a2, 0);
}

uint64_t sub_1E609B4A4()
{
  v1 = *(v0 + 56);
  v2 = sub_1E609C44C(&qword_1ED0742F8, type metadata accessor for AnalyticsConsentDetour);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for RouteDestination();
  *v6 = v0;
  v6[1] = sub_1E5F8E974;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E609C548, v3, v7);
}

uint64_t sub_1E609B5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v39 = a5;
  v40 = a4;
  v41 = a1;
  v8 = type metadata accessor for AppComposer();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for AnalyticsConsentDetour.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state;
  swift_beginAccess();
  sub_1E609C080(a2 + v21, v20, type metadata accessor for AnalyticsConsentDetour.State);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  sub_1E609CA8C(v20, type metadata accessor for AnalyticsConsentDetour.State);
  if (v24 == 1)
  {
    v25 = &v18[*(v22 + 48)];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v26 - 8) + 16))(v18, v41, v26);
    sub_1E609C080(a3, v25, type metadata accessor for RouteResource);
    v27 = type metadata accessor for RouteDestination();
    sub_1E609C080(a3 + *(v27 + 20), v25 + *(v27 + 20), type metadata accessor for RouteSource);
    v28 = *(a3 + *(v27 + 24));

    *(v25 + *(v27 + 24)) = sub_1E602A670(&unk_1F5FA8390, v28);
    (*(v23 + 56))(v18, 0, 1, v22);
    swift_beginAccess();
    sub_1E609C5AC(v18, a2 + v21);
    swift_endAccess();
    v29 = sub_1E65E60A8();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    v30 = v38;
    sub_1E609C080(v36, v38, type metadata accessor for AppComposer);
    v31 = sub_1E609C44C(&qword_1ED0742F8, type metadata accessor for AnalyticsConsentDetour);
    v32 = (*(v37 + 80) + 56) & ~*(v37 + 80);
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = v31;
    v34 = v39;
    v33[4] = v40;
    v33[5] = v34;
    v33[6] = a2;
    sub_1E5E1E048(v30, v33 + v32, type metadata accessor for AppComposer);
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v13, &unk_1E65F06E0, v33);
  }

  else
  {
    sub_1E609C558();
    v42 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E609BAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for AppComposer() - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E609BB8C, a6, 0);
}

uint64_t sub_1E609BB8C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v17 = v0[3];
  v6 = v0[2];
  ObjectType = swift_getObjectType();
  sub_1E609C080(v3, v1, type metadata accessor for AppComposer);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  v0[9] = v9;
  *(v9 + 16) = v5;
  sub_1E5E1E048(v1, v9 + v8, type metadata accessor for AppComposer);
  v10 = *(v17 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1E5F8F278;
  v14 = v0[2];
  v13 = v0[3];

  return v16(sub_1E609C71C, v9, ObjectType, v13);
}

uint64_t sub_1E609BD58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E65F06D0, v7);
}

uint64_t sub_1E609BE84()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E609C44C(&qword_1ED071E30, MEMORY[0x1E69E8550]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E609BF48, v1, 0);
}

uint64_t sub_1E609BF48()
{
  v1 = *(v0 + 24);
  sub_1E6097DD4(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E609BFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E609903C(a1, a2, a3, a4, a5);
}

uint64_t sub_1E609C080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E609C0E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E609AFC0(a1, v1 + v5);
}

uint64_t sub_1E609C1C4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E609B0F4(a1, v1 + v5);
}

uint64_t sub_1E609C2A0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E609B230(a1, v1 + v5);
}

uint64_t sub_1E609C37C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E609B480(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E609C44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E609C494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E609BE64(a1, v4, v5, v6);
}

unint64_t sub_1E609C558()
{
  result = qword_1ED074308;
  if (!qword_1ED074308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074308);
  }

  return result;
}

uint64_t sub_1E609C5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsConsentDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E609C610(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFA78C;

  return sub_1E609BAC0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_1E609C71C(void *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));
  v5 = *(v1 + 16);
  sub_1E6098154(a1, v4);
}

uint64_t sub_1E609C790(int a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E60986A8(a1, v1 + v4, v5);
}

uint64_t sub_1E609C82C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6098928(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E609C924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6098DF0(a1, v4, v5, v6);
}

uint64_t sub_1E609C9D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6098594(a1, v4, v5, v6);
}

uint64_t sub_1E609CA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E609CAEC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6097B88(a1, v1);
}

unint64_t sub_1E609CB98()
{
  result = qword_1ED074310;
  if (!qword_1ED074310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED074310);
  }

  return result;
}

uint64_t sub_1E609CBF0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination();
  v3[16] = v5;
  v6 = *(v5 - 8);
  v3[17] = v6;
  v7 = *(v6 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  sub_1E65E6058();
  v3[20] = sub_1E65E6048();
  v9 = sub_1E65E5FC8();
  v3[21] = v9;
  v3[22] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E609CD2C, v9, v8);
}

uint64_t sub_1E609CD2C()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  v0[23] = v2;
  if (v2)
  {
    v3 = v0[14];
    sub_1E60A1B20(v1 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * (v2 - 1), v0[19], type metadata accessor for RouteDestination);
    v4 = type metadata accessor for UIViewControllerRoutingContext();
    v0[24] = v4;
    sub_1E5DFD1CC(v3 + *(v4 + 28), (v0 + 2), &unk_1ED072050, &unk_1E65EEAB0);
    v5 = v0[5];
    if (v5)
    {
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      v7 = *(v6 + 16);
      v53 = (v7 + *v7);
      v8 = v7[1];
      v9 = swift_task_alloc();
      v0[25] = v9;
      *v9 = v0;
      v9[1] = sub_1E609D200;
      v10 = v0[19];
      v11 = v0[15];

      return v53(v11, v10, v5, v6);
    }

    else
    {
      v19 = v0[20];
      v20 = v0[16];
      v21 = v0[17];
      v22 = v0[15];

      sub_1E5DFE50C((v0 + 2), &unk_1ED072050, &unk_1E65EEAB0);
      (*(v21 + 56))(v22, 1, 1, v20);
      v23 = v0[16];
      v24 = v0[17];
      v25 = v0[15];
      sub_1E60A1B20(v0[19], v0[18], type metadata accessor for RouteDestination);
      if ((*(v24 + 48))(v25, 1, v23) != 1)
      {
        sub_1E5DFE50C(v0[15], &unk_1ED072040, &qword_1E65F0860);
      }

      v26 = v0[23];
      v27 = v0[14];
      v28 = v26 - 1;
      if (v26 == 1)
      {
        v29 = *v27;
        v30 = *v27;
      }

      else
      {
        v29 = 0;
      }

      v31 = v0[18];
      v50 = v29;
      v51 = v31;
      v52 = v0[19];
      v54 = v0[15];
      v33 = v0[12];
      v32 = v0[13];
      v34 = *(v0[24] + 20);
      v35 = v32[3];
      v36 = v32[4];
      v37 = __swift_project_boxed_opaque_existential_1(v32, v35);
      v38 = sub_1E625E57C(v27 + v34, v29, v37, v31, v35, v36);
      sub_1E5FA0A68(v28, v33);
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = swift_task_alloc();
      *(v45 + 16) = v27;
      *(v45 + 24) = v32;

      v46 = sub_1E5FAAAF4(sub_1E60A1B88, v45, v40, v42, v44);
      swift_unknownObjectRelease();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA660;
      *(inited + 32) = v38;
      v55 = v46;
      v48 = v38;
      sub_1E5FA9E14(inited);

      sub_1E5E262E0(v51, type metadata accessor for RouteDestination);
      sub_1E5E262E0(v52, type metadata accessor for RouteDestination);

      v49 = v0[1];

      return v49(v55);
    }
  }

  else
  {
    v13 = v0[20];

    sub_1E5FAA54C();
    swift_allocError();
    *v14 = 3;
    swift_willThrow();
    v16 = v0[18];
    v15 = v0[19];
    v17 = v0[15];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1E609D200()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_1E609D634;
  }

  else
  {
    v7 = sub_1E609D33C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E609D33C()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];

  (*(v3 + 56))(v4, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v37 = v0[26];
    v5 = v0[16];
    v6 = v0[17];
    v7 = v0[15];
    sub_1E60A1B20(v0[19], v0[18], type metadata accessor for RouteDestination);
    if ((*(v6 + 48))(v7, 1, v5) != 1)
    {
      sub_1E5DFE50C(v0[15], &unk_1ED072040, &qword_1E65F0860);
    }
  }

  else
  {
    sub_1E60A1BA8(v0[15], v0[18], type metadata accessor for RouteDestination);
    v38 = v0[26];
  }

  v8 = v0[23];
  v9 = v0[14];
  v10 = v8 - 1;
  if (v8 == 1)
  {
    v11 = *v9;
    v12 = *v9;
  }

  else
  {
    v11 = 0;
  }

  v13 = v0[18];
  v33 = v11;
  v34 = v13;
  v35 = v0[19];
  v36 = v0[15];
  v15 = v0[12];
  v14 = v0[13];
  v16 = *(v0[24] + 20);
  v18 = v14[3];
  v17 = v14[4];
  v19 = __swift_project_boxed_opaque_existential_1(v14, v18);
  v20 = sub_1E625E57C(v9 + v16, v11, v19, v13, v18, v17);
  sub_1E5FA0A68(v10, v15);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = swift_task_alloc();
  *(v27 + 16) = v9;
  *(v27 + 24) = v14;

  v28 = sub_1E5FAAAF4(sub_1E60A1B88, v27, v22, v24, v26);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA660;
  *(inited + 32) = v20;
  v39 = v28;
  v30 = v20;
  sub_1E5FA9E14(inited);

  sub_1E5E262E0(v34, type metadata accessor for RouteDestination);
  sub_1E5E262E0(v35, type metadata accessor for RouteDestination);

  v31 = v0[1];

  return v31(v39);
}

uint64_t sub_1E609D634()
{
  v2 = v0[19];
  v1 = v0[20];

  sub_1E5E262E0(v2, type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = v0[26];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];

  v7 = v0[1];

  return v7();
}

char *sub_1E609D6E0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(type metadata accessor for UIViewControllerRoutingContext() + 20);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1E625E57C(a2 + v8, 0, v11, a1, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1E609D768(uint64_t a1, char a2)
{
  *(v2 + 112) = a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E609D808, v4, v3);
}

uint64_t sub_1E609D808()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v0[7] = *v2;
  v0[8] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v0[9] = v5;
  v0[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E609D924, v5, v4);
}

uint64_t sub_1E609D924()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  *(v0 + 88) = sub_1E65E6048();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1E609DA3C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609DA3C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v8 = *v0;

  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E609DB9C, v6, v5);
}

uint64_t sub_1E609DB9C()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1E5FA1DB4, v2, v3);
}

uint64_t sub_1E609DC00(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 145) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = *(type metadata accessor for RouteDestination() - 8);
  *(v5 + 32) = v8;
  *(v5 + 40) = *(v8 + 64);
  *(v5 + 48) = swift_task_alloc();
  v9 = type metadata accessor for UIViewControllerRoutingContext();
  *(v5 + 56) = v9;
  v10 = *(v9 - 8);
  *(v5 + 64) = v10;
  *(v5 + 72) = *(v10 + 64);
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v5 + 80) = v11;
  *(v5 + 88) = v12;
  *(v5 + 146) = *(a2 + 8);
  *(v5 + 147) = *a4;
  sub_1E65E6058();
  *(v5 + 96) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();
  *(v5 + 104) = v14;
  *(v5 + 112) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E609DD84, v14, v13);
}

uint64_t sub_1E609DD84()
{
  v1 = *(v0 + 147);
  v2 = *(v0 + 80);
  v19 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  v16 = *(v0 + 40);
  v17 = *(v0 + 72);
  v18 = *(v0 + 145);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v7 + *(*(v0 + 56) + 24));
  v21 = *v8;
  v22 = v8[1];
  v9 = *(v0 + 146);
  ObjectType = swift_getObjectType();
  *(v0 + 144) = v1;
  sub_1E60A1B20(v7, v2, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E60A1B20(v6, v4, type metadata accessor for RouteDestination);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v17 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 120) = v12;
  sub_1E60A1BA8(v2, v12 + v10, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E60A1BA8(v4, v12 + v11, type metadata accessor for RouteDestination);
  *(v12 + v11 + v16) = v18;
  v13 = v12 + ((v11 + v16) & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = v19;
  *(v13 + 16) = v9;
  sub_1E5FA9D20(v19, v9);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_1E5FA4398;

  return sub_1E61261B8((v0 + 144), &unk_1E65F0890, v12, ObjectType, v22);
}

uint64_t sub_1E609DF8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 569) = a5;
  *(v5 + 232) = a2;
  *(v5 + 240) = a4;
  *(v5 + 568) = a3;
  *(v5 + 224) = a1;
  v6 = type metadata accessor for UIViewControllerRoutingContext();
  *(v5 + 248) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  *(v5 + 272) = swift_task_alloc();
  v8 = type metadata accessor for AppComposer();
  *(v5 + 280) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = sub_1E65E6058();
  *(v5 + 304) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();
  *(v5 + 312) = v11;
  *(v5 + 320) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E609E0AC, v11, v10);
}

uint64_t sub_1E609E0AC()
{
  v29 = *(v0 + 248);
  v1 = (*(v0 + 224) + *(v29 + 20));
  v31 = *(v0 + 280);
  sub_1E5DFD1CC(v1 + *(v31 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
  if (*(v0 + 80))
  {
    sub_1E5DF599C((v0 + 56), v0 + 16);
  }

  else
  {
    v2 = *(v0 + 224);
    *(v0 + 40) = *(v0 + 248);
    *(v0 + 48) = &off_1F5FAE3A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1E60A1B20(v2, boxed_opaque_existential_1, type metadata accessor for UIViewControllerRoutingContext);
    if (*(v0 + 80))
    {
      sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    }
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v27 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 224);
  v28 = *(v0 + 232);
  v8 = *v1;
  sub_1E60A1B20(v1 + v4[5], v5 + v4[5], type metadata accessor for AppEnvironment);
  v9 = *(v1 + v4[6]);
  sub_1E60A1B20(v1 + v4[7], v5 + v4[7], type metadata accessor for AppDataItemResolver);
  v10 = (v1 + v4[9]);
  v12 = *v10;
  v11 = v10[1];
  v13 = *(v31 + 40);
  v32 = *(v1 + v4[8]);
  sub_1E5DF650C(v0 + 16, v5 + v13);
  *v5 = v8;
  *(v5 + v4[6]) = v9;
  *(v5 + v4[8]) = v32;
  v14 = (v5 + v4[9]);
  *v14 = v12;
  v14[1] = v11;
  v15 = v12;
  v16 = *v7;
  *(v0 + 328) = *v7;
  sub_1E60A1B20(v5, v27 + *(v29 + 20), type metadata accessor for AppComposer);
  v30 = *(v7 + v6[6]);
  sub_1E5DFD1CC(v7 + v6[7], v27 + v6[7], &unk_1ED072050, &unk_1E65EEAB0);
  v17 = *(v7 + v6[8]);
  *(v0 + 336) = v17;
  *v27 = v16;
  *(v27 + v6[6]) = v30;
  *(v27 + v6[8]) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v18 = *(type metadata accessor for RouteDestination() - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v0 + 344) = v21;
  *(v21 + 16) = xmmword_1E65EA670;
  sub_1E60A1B20(v28, v21 + v20, type metadata accessor for RouteDestination);
  *(v0 + 120) = v6;
  *(v0 + 128) = &off_1F5FAE3A0;
  v22 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_1E60A1B20(v27, v22, type metadata accessor for UIViewControllerRoutingContext);

  swift_unknownObjectRetain();
  sub_1E5FA9D34(v15, v11);
  v23 = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = swift_task_alloc();
  *(v0 + 352) = v24;
  *v24 = v0;
  v24[1] = sub_1E609E47C;
  v25 = *(v0 + 224);

  return sub_1E609CBF0(v21, v0 + 96);
}

uint64_t sub_1E609E47C(uint64_t a1)
{
  v3 = *v2;
  v4 = (*v2)[44];
  v10 = *v2;
  v3[45] = a1;
  v3[46] = v1;

  v5 = v3[43];

  if (v1)
  {
    v6 = v3[39];
    v7 = v3[40];
    v8 = sub_1E609FE30;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 12);
    v6 = v3[39];
    v7 = v3[40];
    v8 = sub_1E609E5A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

id sub_1E609E5A8()
{
  v2 = *(v1 + 360);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v52 = *(v1 + 360);
    }

    if (sub_1E65E67C8())
    {
      goto LABEL_3;
    }

LABEL_36:
    v53 = *(v1 + 360);
    v54 = *(v1 + 304);
    v31 = *(v1 + 288);
    v32 = *(v1 + 272);

    sub_1E5FAA54C();
    swift_allocError();
    *v55 = 3;
    swift_willThrow();
    goto LABEL_37;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E694E2D0](0, *(v1 + 360));
    v61 = *(v1 + 360);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v3 = *(*(v1 + 360) + 32);
  }

  *(v1 + 376) = v3;

  v4 = [v3 presentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate_];
  }

  v6 = *(v1 + 328);
  v7 = v3;
  if ([v6 isViewLoaded])
  {
    result = [*(v1 + 328) view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = [result window];

    if (v10)
    {

      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      *(v1 + 384) = v11;
      if (!v11 || !v7)
      {
        v34 = swift_task_alloc();
        *(v1 + 392) = v34;
        *v34 = v1;
        v35 = sub_1E609ED64;
LABEL_30:
        v34[1] = v35;
        v50 = *(v1 + 328);
        v51 = *(v1 + 568);

        return sub_1E6394EA4(v51);
      }

      v12 = *(v1 + 328);
      *(v1 + 216) = v12;
      sub_1E5DEF094();
      v13 = v12;
      v0 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074330, &qword_1E65F08A0);
      if (swift_dynamicCast())
      {
        sub_1E5DF599C((v1 + 176), v1 + 136);
        v14 = *(v1 + 168);
        __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
        v15 = sub_1E65E51C8();
        *(v1 + 464) = v15;
        if (v15)
        {
          *(v1 + 472) = v16;
          if (qword_1EE2D7790 != -1)
          {
            swift_once();
          }

          v17 = *(v1 + 264);
          v18 = *(v1 + 224);
          v19 = sub_1E65E3B68();
          __swift_project_value_buffer(v19, qword_1EE2EA2A0);
          sub_1E60A1B20(v18, v17, type metadata accessor for UIViewControllerRoutingContext);
          v20 = v0;
          v21 = sub_1E65E3B48();
          v22 = sub_1E65E6338();

          v23 = os_log_type_enabled(v21, v22);
          v24 = *(v1 + 264);
          if (v23)
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            *v25 = 138412546;
            *(v25 + 4) = v20;
            *v26 = v20;
            *(v25 + 12) = 2112;
            v27 = *v24;
            v28 = v20;
            v29 = v27;
            sub_1E5E262E0(v24, type metadata accessor for UIViewControllerRoutingContext);
            *(v25 + 14) = v29;
            v26[1] = v29;
            _os_log_impl(&dword_1E5DE9000, v21, v22, "Presenting %@ on %@", v25, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
            swift_arrayDestroy();
            MEMORY[0x1E694F1C0](v26, -1, -1);
            MEMORY[0x1E694F1C0](v25, -1, -1);
          }

          else
          {

            sub_1E5E262E0(v24, type metadata accessor for UIViewControllerRoutingContext);
          }

          v34 = swift_task_alloc();
          *(v1 + 480) = v34;
          *v34 = v1;
          v35 = sub_1E609F468;
          goto LABEL_30;
        }

        __swift_destroy_boxed_opaque_existential_1((v1 + 136));
      }

      else
      {
        *(v1 + 208) = 0;
        *(v1 + 176) = 0u;
        *(v1 + 192) = 0u;
        sub_1E5DFE50C(v1 + 176, &unk_1ED074338, &qword_1E65F08A8);
      }

      if (qword_1EE2D7790 == -1)
      {
LABEL_24:
        v36 = *(v1 + 256);
        v37 = *(v1 + 224);
        v38 = sub_1E65E3B68();
        __swift_project_value_buffer(v38, qword_1EE2EA2A0);
        sub_1E60A1B20(v37, v36, type metadata accessor for UIViewControllerRoutingContext);
        v39 = v0;
        v40 = sub_1E65E3B48();
        v41 = sub_1E65E6328();

        v42 = os_log_type_enabled(v40, v41);
        v43 = *(v1 + 256);
        if (v42)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412546;
          v46 = *v43;
          sub_1E5E262E0(v43, type metadata accessor for UIViewControllerRoutingContext);
          *(v44 + 4) = v46;
          *(v44 + 12) = 2112;
          *(v44 + 14) = v39;
          *v45 = v46;
          v45[1] = v39;
          v47 = v39;
          _os_log_impl(&dword_1E5DE9000, v40, v41, "%@ did not provide a PiP Surrogate, presenting %@ normally", v44, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072130, &qword_1E65EA840);
          swift_arrayDestroy();
          MEMORY[0x1E694F1C0](v45, -1, -1);
          MEMORY[0x1E694F1C0](v44, -1, -1);
        }

        else
        {

          sub_1E5E262E0(v43, type metadata accessor for UIViewControllerRoutingContext);
        }

        v48 = *(v1 + 296);
        v49 = v39;
        *(v1 + 512) = sub_1E65E6048();
        v34 = swift_task_alloc();
        *(v1 + 520) = v34;
        *v34 = v1;
        v35 = sub_1E609F910;
        goto LABEL_30;
      }

LABEL_42:
      swift_once();
      goto LABEL_24;
    }
  }

  v30 = *(v1 + 304);
  v31 = *(v1 + 288);
  v32 = *(v1 + 272);

  sub_1E5FAA54C();
  swift_allocError();
  *v33 = 8;
  swift_willThrow();

LABEL_37:
  sub_1E5E262E0(v32, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v31, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  v56 = *(v1 + 288);
  v57 = *(v1 + 264);
  v58 = *(v1 + 272);
  v59 = *(v1 + 256);

  v60 = *(v1 + 8);

  return v60();
}

uint64_t sub_1E609ED64()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v6 = *v0;

  v3 = *(v1 + 320);
  v4 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E609EE84, v4, v3);
}

uint64_t sub_1E609EE84()
{
  v1 = *(v0 + 296);
  v6 = *(v0 + 240);
  v7 = *(v0 + 569);
  *(v0 + 400) = sub_1E61AAA48(*(v0 + 376));
  *(v0 + 408) = sub_1E65E6048();
  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1E609EF54;
  v3 = *(v0 + 328);
  v4 = *(v0 + 568);

  return sub_1E6394EA4(v4);
}

uint64_t sub_1E609EF54()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 296);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 424) = v6;
  *(v1 + 432) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E609F098, v6, v5);
}

uint64_t sub_1E609F098()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = *(v0 + 568);
  *(v0 + 440) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 448) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 456) = v7;
  *v7 = v0;
  v7[1] = sub_1E609F1B4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609F1B4()
{
  v1 = *v0;
  v2 = *(*v0 + 456);
  v3 = *(*v0 + 448);
  v4 = *(*v0 + 440);
  v8 = *v0;

  v5 = *(v1 + 432);
  v6 = *(v1 + 424);

  return MEMORY[0x1EEE6DFA0](sub_1E609F314, v6, v5);
}

uint64_t sub_1E609F314()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 312);
  v3 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1E609F380, v2, v3);
}

uint64_t sub_1E609F380()
{
  v1 = v0[47];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[34];

  sub_1E5E262E0(v4, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v3, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E609F468()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  v6 = *v0;

  v3 = *(v1 + 320);
  v4 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E609F588, v4, v3);
}

uint64_t sub_1E609F588()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 568);
  v7 = *(v0 + 464);
  v8 = *(v0 + 376);
  *(v0 + 488) = sub_1E65E6048();
  v3 = swift_task_alloc();
  *(v0 + 496) = v3;
  *(v3 + 16) = v7;
  *(v3 + 32) = v8;
  *(v3 + 48) = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  *v5 = v0;
  v5[1] = sub_1E609F6B0;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609F6B0()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v3 = *(*v0 + 496);
  v4 = *(*v0 + 488);
  v8 = *v0;

  v5 = *(v1 + 320);
  v6 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E609F810, v6, v5);
}

uint64_t sub_1E609F810()
{
  v1 = v0[58];
  v2 = v0[47];
  v3 = v0[38];
  v4 = v0[36];
  v5 = v0[34];

  swift_unknownObjectRelease();
  sub_1E5E262E0(v5, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v4, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[32];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E609F910()
{
  v1 = *v0;
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 512);
  v4 = *(*v0 + 296);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 528) = v6;
  *(v1 + 536) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E609FA58, v6, v5);
}

uint64_t sub_1E609FA58()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 328);
  v3 = *(v0 + 296);
  v4 = *(v0 + 568);
  *(v0 + 544) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 552) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 560) = v7;
  *v7 = v0;
  v7[1] = sub_1E609FB74;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E609FB74()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);
  v8 = *v0;

  v5 = *(v1 + 536);
  v6 = *(v1 + 528);

  return MEMORY[0x1EEE6DFA0](sub_1E609FCD4, v6, v5);
}

uint64_t sub_1E609FCD4()
{
  v1 = *(v0 + 512);

  v2 = *(v0 + 312);
  v3 = *(v0 + 320);

  return MEMORY[0x1EEE6DFA0](sub_1E609FD44, v2, v3);
}

uint64_t sub_1E609FD44()
{
  v1 = v0[47];
  v2 = v0[38];
  v3 = v0[36];
  v4 = v0[34];

  sub_1E5E262E0(v4, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v3, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[36];
  v6 = v0[33];
  v7 = v0[34];
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E609FE30()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[34];

  sub_1E5E262E0(v3, type metadata accessor for UIViewControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v4 = v0[46];
  v5 = v0[36];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E609FF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15[1] = a6;
  v16 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  swift_getObjectType();
  (*(v8 + 16))(v11, a1, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v11, v7);
  sub_1E65E5198();
}

uint64_t sub_1E60A009C(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  *(v5 + 121) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v8 = type metadata accessor for UIViewControllerRoutingContext();
  *(v5 + 32) = v8;
  v9 = *(v8 - 8);
  *(v5 + 40) = v9;
  *(v5 + 48) = *(v9 + 64);
  v10 = swift_task_alloc();
  v11 = *a2;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;
  *(v5 + 122) = *(a2 + 8);
  *(v5 + 123) = *a4;
  sub_1E65E6058();
  *(v5 + 72) = sub_1E65E6048();
  v13 = sub_1E65E5FC8();
  *(v5 + 80) = v13;
  *(v5 + 88) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1E60A01C0, v13, v12);
}

uint64_t sub_1E60A01C0()
{
  v1 = *(v0 + 123);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v15 = *(v0 + 121);
  v7 = *(v0 + 16);
  v8 = (v6 + *(*(v0 + 32) + 24));
  v17 = *v8;
  v18 = v8[1];
  v9 = *(v0 + 122);
  ObjectType = swift_getObjectType();
  *(v0 + 120) = v1;
  sub_1E60A1B20(v6, v3, type metadata accessor for UIViewControllerRoutingContext);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 96) = v11;
  *(v11 + 16) = v7;
  sub_1E60A1BA8(v3, v11 + v10, type metadata accessor for UIViewControllerRoutingContext);
  *(v11 + v10 + v5) = v15;
  v12 = v11 + ((v10 + v5) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v2;
  *(v12 + 16) = v9;

  sub_1E5FA9D20(v2, v9);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FA6F74;

  return sub_1E61261B8((v0 + 120), &unk_1E65F0858, v11, ObjectType, v18);
}

uint64_t sub_1E60A036C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  *(v5 + 353) = a5;
  *(v5 + 144) = a2;
  *(v5 + 152) = a4;
  *(v5 + 352) = a3;
  *(v5 + 136) = a1;
  v6 = type metadata accessor for NavigationControllerRoutingContext();
  *(v5 + 160) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v8 = type metadata accessor for AppComposer();
  *(v5 + 176) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 184) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = sub_1E65E6058();
  *(v5 + 208) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  *(v5 + 216) = v12;
  *(v5 + 224) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E60A04AC, v12, v11);
}

id sub_1E60A04AC()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 144);
    v5 = v2 - 1;
    v6 = type metadata accessor for RouteDestination();
    v7 = *(v6 - 8);
    sub_1E60A1B20(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v3, type metadata accessor for RouteDestination);
    (*(v7 + 56))(v3, 0, 1, v6);
    sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
    v8 = *v4;
    *(v0 + 232) = *v4;
    if ([v8 isViewLoaded])
    {
      result = [v8 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      v11 = [result window];

      if (v11)
      {
        v12 = *(v0 + 176);
        v13 = *(v0 + 144);

        v14 = type metadata accessor for UIViewControllerRoutingContext();
        v15 = (v13 + *(v14 + 20));
        v49 = v12;
        sub_1E5DFD1CC(v15 + *(v12 + 40), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
        v48 = v14;
        if (*(v0 + 80))
        {
          sub_1E5DF599C((v0 + 56), v0 + 16);
        }

        else
        {
          v26 = *(v0 + 144);
          *(v0 + 40) = v14;
          *(v0 + 48) = &off_1F5FAE3A0;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
          sub_1E60A1B20(v26, boxed_opaque_existential_1, type metadata accessor for UIViewControllerRoutingContext);
          if (*(v0 + 80))
          {
            sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
          }
        }

        v28 = *(v0 + 176);
        v29 = *(v0 + 184);
        v31 = *(v0 + 160);
        v30 = *(v0 + 168);
        v47 = *(v0 + 144);
        v32 = *v15;
        sub_1E60A1B20(v15 + v28[5], v29 + v28[5], type metadata accessor for AppEnvironment);
        v33 = *(v15 + v28[6]);
        sub_1E60A1B20(v15 + v28[7], v29 + v28[7], type metadata accessor for AppDataItemResolver);
        v34 = (v15 + v28[9]);
        v35 = *v34;
        v36 = v34[1];
        v37 = *(v49 + 40);
        v50 = *(v15 + v28[8]);
        sub_1E5DF650C(v0 + 16, v29 + v37);
        *v29 = v32;
        *(v29 + v28[6]) = v33;
        *(v29 + v28[8]) = v50;
        v38 = (v29 + v28[9]);
        *v38 = v35;
        v38[1] = v36;
        v39 = objc_allocWithZone(type metadata accessor for NavigationController());

        swift_unknownObjectRetain();
        sub_1E5FA9D34(v35, v36);
        v40 = [v39 init];
        *(v0 + 240) = v40;
        sub_1E60A1B20(v29, v30 + v31[5], type metadata accessor for AppComposer);
        v51 = *(v47 + v48[6]);
        sub_1E5DFD1CC(v47 + v48[7], v30 + v31[7], &unk_1ED072050, &unk_1E65EEAB0);
        v41 = *(v47 + v48[8]);
        *(v0 + 248) = v41;
        *v30 = v40;
        *(v30 + v31[6]) = v51;
        *(v30 + v31[8]) = v41;
        *(v0 + 120) = v31;
        *(v0 + 128) = &off_1F5FA9B10;
        v42 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
        sub_1E60A1B20(v30, v42, type metadata accessor for NavigationControllerRoutingContext);
        v43 = v40;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v44 = swift_task_alloc();
        *(v0 + 256) = v44;
        *v44 = v0;
        v44[1] = sub_1E60A0A18;
        v45 = *(v0 + 136);
        v46 = *(v0 + 144);

        return sub_1E609CBF0(v45, v0 + 96);
      }
    }

    v16 = *(v0 + 208);

    v17 = 8;
  }

  else
  {
    v18 = *(v0 + 208);
    v19 = *(v0 + 192);
    v20 = type metadata accessor for RouteDestination();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);

    sub_1E5DFE50C(v19, &unk_1ED072040, &qword_1E65F0860);
    v17 = 3;
  }

  sub_1E5FAA54C();
  swift_allocError();
  *v21 = v17;
  swift_willThrow();
  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v24 = *(v0 + 168);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1E60A0A18(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v10 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {

    v6 = *(v4 + 216);
    v7 = *(v4 + 224);
    v8 = sub_1E60A1354;
  }

  else
  {
    *(v4 + 272) = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 96));
    v6 = *(v4 + 216);
    v7 = *(v4 + 224);
    v8 = sub_1E60A0B4C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1E60A0B4C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  sub_1E5DEF094();
  v3 = sub_1E65E5EF8();

  [v2 setViewControllers:v3 animated:0];

  v4 = [v2 presentationController];
  if (v4)
  {
    v5 = v4;
    [v4 setDelegate_];
  }

  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  *v6 = v0;
  v6[1] = sub_1E60A0C64;
  v7 = *(v0 + 232);
  v8 = *(v0 + 352);

  return sub_1E6394EA4(v8);
}

uint64_t sub_1E60A0C64()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v6 = *v0;

  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E60A0D84, v4, v3);
}

uint64_t sub_1E60A0D84()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v7 = *(v0 + 152);
  v8 = *(v0 + 353);
  *(v0 + 288) = sub_1E61AAA48(v1);

  *(v0 + 296) = sub_1E65E6048();
  v3 = swift_task_alloc();
  *(v0 + 304) = v3;
  *v3 = v0;
  v3[1] = sub_1E60A0E5C;
  v4 = *(v0 + 232);
  v5 = *(v0 + 352);

  return sub_1E6394EA4(v5);
}

uint64_t sub_1E60A0E5C()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *(*v0 + 296);
  v4 = *(*v0 + 200);
  v8 = *v0;

  v6 = sub_1E65E5FC8();
  *(v1 + 312) = v6;
  *(v1 + 320) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E60A0FA0, v6, v5);
}

uint64_t sub_1E60A0FA0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 352);
  *(v0 + 328) = sub_1E65E6048();
  v5 = swift_task_alloc();
  *(v0 + 336) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  v6 = *(MEMORY[0x1E69E88D0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  *v7 = v0;
  v7[1] = sub_1E60A10BC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E60A10BC()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);
  v8 = *v0;

  v5 = *(v1 + 320);
  v6 = *(v1 + 312);

  return MEMORY[0x1EEE6DFA0](sub_1E60A121C, v6, v5);
}

uint64_t sub_1E60A121C()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 216);
  v3 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1E60A1288, v2, v3);
}

uint64_t sub_1E60A1288()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];

  sub_1E5E262E0(v4, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E60A1354()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[21];

  sub_1E5E262E0(v3, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5E262E0(v2, type metadata accessor for AppComposer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v4 = v0[33];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E60A1434()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60A1F7C, v2, v1);
}

uint64_t sub_1E60A14C8()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E60A155C, v2, v1);
}

uint64_t sub_1E60A155C()
{
  v1 = *(v0 + 16);

  sub_1E5FAA54C();
  swift_allocError();
  *v2 = 0;
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E60A15F0(char a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  *(v3 + 104) = a1;
  v4 = *(a2 - 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 + 64);
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v6 = sub_1E65E5FC8();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E60A16E0, v6, v5);
}

uint64_t sub_1E60A16E0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 104);
  v6 = (v4 + *(*(v0 + 24) + 24));
  v8 = *v6;
  v7 = v6[1];
  ObjectType = swift_getObjectType();
  sub_1E60A1B20(v4, v1, type metadata accessor for UIViewControllerRoutingContext);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v0 + 80) = v11;
  sub_1E60A1BA8(v1, v11 + v10, type metadata accessor for UIViewControllerRoutingContext);
  *(v11 + v10 + v2) = v5;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FA935C;

  return sub_1E63387E0(&unk_1E65F08B8, v11, ObjectType, v7);
}

uint64_t sub_1E60A183C(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFA78C;

  return sub_1E609DC00(a1, a2, a3, a4);
}

uint64_t sub_1E60A18F8(uint64_t a1, uint64_t *a2, char a3, _BYTE *a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E60A009C(a1, a2, a3, a4);
}

uint64_t type metadata accessor for UIViewControllerRoutingContext()
{
  result = qword_1ED074348;
  if (!qword_1ED074348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E60A1A00()
{
  v2 = *(type metadata accessor for UIViewControllerRoutingContext() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + 16);
  v7 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E60A036C(v6, v0 + v3, v5, v8, v9);
}

uint64_t sub_1E60A1B20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E60A1BA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E60A1C10()
{
  v2 = *(type metadata accessor for UIViewControllerRoutingContext() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for RouteDestination() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v0 + v7);
  v9 = v0 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1E5DFA78C;

  return sub_1E609DF8C(v0 + v3, v0 + v6, v8, v10, v11);
}

uint64_t sub_1E60A1D98()
{
  v2 = *(type metadata accessor for UIViewControllerRoutingContext() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E609D768(v3, v4);
}

void sub_1E60A1EB0()
{
  sub_1E5DEF094();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppComposer();
    if (v1 <= 0x3F)
    {
      sub_1E5E04B54();
      if (v2 <= 0x3F)
      {
        sub_1E5E05158();
        if (v3 <= 0x3F)
        {
          sub_1E5E051BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E60A1F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601C548(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601C548((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E5F87098(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60A219C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v26 = *(a1 + 16);
  sub_1E601C17C(0, v1, 0);
  v2 = v27;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v7 = v26;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(a1 + 48) + result);
    v13 = *(a1 + 36);
    v15 = *(v27 + 16);
    v14 = *(v27 + 24);
    if (v15 >= v14 >> 1)
    {
      v24 = *(a1 + 36);
      v25 = result;
      sub_1E601C17C((v14 > 1), v15 + 1, 1);
      v7 = v26;
      v13 = v24;
      result = v25;
    }

    *(v27 + 16) = v15 + 1;
    v16 = v27 + 24 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (result & 0x3F));
    if (v18)
    {
      v9 = __clz(__rbit64(v18)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (a1 + 64 + 8 * v10);
      while (v20 < (v9 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          sub_1E5F87098(result, v13, 0);
          v7 = v26;
          v9 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v13, 0);
      v7 = v26;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60A23CC(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), char a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v30 = a2;
  v33 = MEMORY[0x1E69E7CC0];
  v31 = *(a1 + 16);
  a2(0, v4, 0);
  v5 = v33;
  v7 = a1 + 56;
  v8 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v10 = v31;
  v11 = 0;
  v12 = a3;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v14 = result >> 6;
    v15 = 1 << result;
    if ((*(v7 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(*(a1 + 48) + result);
    v17 = *(a1 + 36);
    v19 = *(v33 + 16);
    v18 = *(v33 + 24);
    if (v19 >= v18 >> 1)
    {
      v28 = *(a1 + 36);
      v29 = result;
      v30(v18 > 1, v19 + 1, 1);
      v10 = v31;
      v12 = a3;
      v17 = v28;
      result = v29;
    }

    *(v33 + 16) = v19 + 1;
    v20 = v33 + 24 * v19;
    *(v20 + 32) = v16;
    *(v20 + 40) = 0;
    *(v20 + 48) = v12;
    v13 = 1 << *(a1 + 32);
    if (result >= v13)
    {
      goto LABEL_22;
    }

    v21 = *(v7 + 8 * v14);
    if ((v21 & v15) == 0)
    {
      goto LABEL_23;
    }

    if (v17 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (result & 0x3F));
    if (v22)
    {
      v13 = __clz(__rbit64(v22)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v14 << 6;
      v24 = v14 + 1;
      v25 = (a1 + 64 + 8 * v14);
      while (v24 < (v13 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          sub_1E5F87098(result, v17, 0);
          v10 = v31;
          v12 = a3;
          v13 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v17, 0);
      v10 = v31;
      v12 = a3;
    }

LABEL_4:
    ++v11;
    result = v13;
    if (v11 == v10)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E60A2620@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a4;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074358, &qword_1E65F08E8);
  v128 = *(v126 - 8);
  v8 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v104 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729C8, &qword_1E65EC1A0);
  v10 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v125 = &v104 - v11;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729C0, &qword_1E65EC198);
  v133 = *(v132 - 8);
  v12 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v127 = &v104 - v13;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729B8, &qword_1E65EC190);
  v135 = *(v134 - 8);
  v14 = *(v135 + 64);
  v15 = MEMORY[0x1EEE9AC00](v134);
  v129 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v131 = &v104 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074360, &qword_1E65F08F0);
  v122 = *(v123 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v119 = &v104 - v19;
  v118 = sub_1E65DF488();
  v121 = *(v118 - 8);
  v20 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v146 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AppComposer();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22 - 8);
  v114 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v112 = &v104 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v108 = &v104 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v107 = &v104 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v104 - v32;
  v34 = sub_1E65DF518();
  v148 = *(v34 - 8);
  v149 = v34;
  v35 = *(v148 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v115 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v145 = &v104 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  v120 = *(v39 - 8);
  v117 = *(v120 + 64);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v116 = &v104 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v147 = &v104 - v42;
  v109 = *a2;
  v43 = *(a2 + 8);
  v106 = (a2 + 8);
  v150 = v43;
  v156 = *(a2 + 16);
  v44 = *(a2 + 32);
  v144 = *(a2 + 40);
  v45 = *(a2 + 48);
  v151 = v44;
  v152 = v45;
  v46 = *(a2 + 56);
  v140 = *(a2 + 64);
  v142 = *(a2 + 72);
  v143 = v46;
  v141 = *(a2 + 80);
  sub_1E60A36E8(v109, a3, a2 + 8, &v104 - v42);
  v47 = v4;
  v113 = v33;
  sub_1E5E1D41C(v4, v33, type metadata accessor for AppComposer);
  v48 = *(v23 + 80);
  v49 = (v48 + 16) & ~v48;
  v50 = swift_allocObject();
  v111 = v50;
  sub_1E5E1E0B0(v33, v50 + v49, type metadata accessor for AppComposer);
  v139 = a1;
  *(v50 + v49 + v24) = a1;
  v51 = v107;
  sub_1E5E1D41C(v47, v107, type metadata accessor for AppComposer);
  v104 = v49 + v24;
  v110 = swift_allocObject();
  v137 = v49;
  sub_1E5E1E0B0(v51, v110 + v49, type metadata accessor for AppComposer);
  v52 = v108;
  sub_1E5E1D41C(v47, v108, type metadata accessor for AppComposer);
  v107 = swift_allocObject();
  sub_1E5E1E0B0(v52, v107 + v49, type metadata accessor for AppComposer);
  v138 = v47;
  v53 = v112;
  sub_1E5E1D41C(v47, v112, type metadata accessor for AppComposer);
  v54 = swift_allocObject();
  *(v54 + 16) = a1;
  sub_1E5E1E0B0(v53, v54 + ((v48 + 17) & ~v48), type metadata accessor for AppComposer);
  v55 = swift_allocObject();
  v56 = *(a2 + 24);
  v57 = *(a2 + 56);
  v55[3] = *(a2 + 40);
  v55[4] = v57;
  v55[5] = *(a2 + 72);
  v55[1] = *v106;
  v55[2] = v56;
  v58 = v114;
  sub_1E5E1D41C(v47, v114, type metadata accessor for AppComposer);
  v59 = v104;
  v60 = swift_allocObject();
  v61 = v137;
  v105 = type metadata accessor for AppComposer;
  sub_1E5E1E0B0(v58, v60 + v137, type metadata accessor for AppComposer);
  swift_retain_n();
  swift_unknownObjectRetain();

  v62 = v145;
  sub_1E65DF508();
  v63 = v138;
  v114 = *v138;
  (*(v148 + 16))(v115, v62, v149);
  sub_1E65DF478();
  v64 = v113;
  sub_1E5E1D41C(v63, v113, type metadata accessor for AppComposer);
  v65 = swift_allocObject();
  sub_1E5E1E0B0(v64, v65 + v61, type metadata accessor for AppComposer);
  LOBYTE(v62) = v139;
  *(v65 + v59) = v139;
  *(swift_allocObject() + 16) = v62;
  type metadata accessor for AppFeature();
  sub_1E60C330C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v115 = sub_1E60C330C(&qword_1EE2D67B0, MEMORY[0x1E699E660]);
  v66 = v119;
  v67 = v118;
  sub_1E65E4DE8();
  sub_1E5E1D41C(v138, v64, type metadata accessor for AppComposer);
  v68 = swift_allocObject();
  sub_1E5E1E0B0(v64, v68 + v137, v105);
  v69 = v68 + ((v59 + 7) & 0xFFFFFFFFFFFFFFF8);
  v70 = v151;
  *v69 = v150;
  *(v69 + 8) = v156;
  v71 = v143;
  v72 = v144;
  *(v69 + 24) = v70;
  *(v69 + 32) = v72;
  *(v69 + 40) = v152;
  *(v69 + 48) = v71;
  v73 = v140;
  v74 = v141;
  v75 = v142;
  *(v69 + 56) = v140;
  *(v69 + 64) = v75;
  *(v69 + 72) = v74;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1E60AB358;
  *(v76 + 24) = v68;

  v77 = v146;
  v78 = v66;
  v79 = sub_1E65E4F08();

  (*(v122 + 8))(v78, v123);
  (*(v121 + 8))(v77, v67);
  v80 = v116;
  sub_1E5E7D318(v147, v116);
  v81 = (*(v120 + 80) + 16) & ~*(v120 + 80);
  v82 = (v117 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  sub_1E5E7D50C(v80, v83 + v81);
  v84 = v83 + v82;
  v85 = v151;
  *v84 = v150;
  *(v84 + 8) = v156;
  v86 = v143;
  v87 = v144;
  *(v84 + 24) = v85;
  *(v84 + 32) = v87;
  *(v84 + 40) = v152;
  *(v84 + 48) = v86;
  v88 = v142;
  *(v84 + 56) = v73;
  *(v84 + 64) = v88;
  *(v84 + 72) = v74;
  swift_unknownObjectRetain();

  v138 = v79;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074388, &qword_1E65F0978);
  sub_1E60BDF64();
  v89 = v124;
  sub_1E65DF358();
  v154 = 0;
  v155 = 0xE000000000000000;
  sub_1E65E68A8();
  MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6610EC0);
  LOBYTE(v73) = v139;
  v153 = v139;
  sub_1E65E69B8();
  sub_1E5FED46C(&qword_1ED0743B8, &qword_1ED074358, &qword_1E65F08E8);
  v90 = v125;
  v91 = v126;
  sub_1E65E48C8();

  (*(v128 + 8))(v89, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1E65EA670;
  v154 = 0;
  v155 = 0xE000000000000000;
  v153 = v73;
  sub_1E65E69B8();
  v93 = v155;
  *(v92 + 32) = v154;
  *(v92 + 40) = v93;
  v94 = sub_1E5FED46C(&qword_1ED0729D0, &qword_1ED0729C8, &qword_1E65EC1A0);
  v95 = v127;
  v96 = v130;
  sub_1E65E4708();

  sub_1E5DFE50C(v90, &qword_1ED0729C8, &qword_1E65EC1A0);
  v154 = v96;
  v155 = v94;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v98 = v129;
  v99 = v132;
  sub_1E65E46D8();

  (*(v133 + 8))(v95, v99);
  (*(v148 + 8))(v145, v149);
  sub_1E5DFE50C(v147, &qword_1ED074368, &qword_1E65F08F8);
  v154 = v99;
  v155 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v100 = v131;
  v101 = v134;
  sub_1E5FEE4C8(v98);
  v102 = *(v135 + 8);
  v102(v98, v101);
  sub_1E5FEE4C8(v100);
  return (v102)(v100, v101);
}

uint64_t sub_1E60A36E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v169 = a2;
  v168 = a1;
  v161 = a4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v7 = *(v141 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v163 = v129 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v162 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v164 = v129 - v14;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v146 = *(v160 - 8);
  v15 = *(v146 + 64);
  v16 = MEMORY[0x1EEE9AC00](v160);
  v142 = v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v143 = v129 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v145 = v129 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v144 = v129 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743A8, &qword_1E65F0980);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v129 - v25;
  v27 = type metadata accessor for AppComposer();
  v28 = v27 - 8;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v154 = v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v129 - v32;
  v170 = sub_1E65D76F8();
  v165 = *(v170 - 8);
  v34 = *(v165 + 64);
  v35 = MEMORY[0x1EEE9AC00](v170);
  v167 = v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v171 = v129 - v36;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  v37 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v39 = v129 - v38;
  v40 = *(v5 + *(v28 + 28) + 8);
  v159 = v26;
  v158 = v23;
  v156 = v39;
  v155 = v34;
  v166 = v5;
  if (v40 < 2)
  {
    v149 = type metadata accessor for AppComposer;
    sub_1E5E1D41C(v5, v33, type metadata accessor for AppComposer);
    sub_1E5DF650C(v169, &v178);
    v136 = *a3;
    v137 = *(a3 + 24);
    v151 = *(a3 + 40);
    v152 = *(a3 + 56);
    v153 = *(a3 + 72);
    v41 = *(v29 + 80);
    v42 = (v41 + 16) & ~v41;
    v150 = v42 + v30;
    v147 = v41 | 7;
    v43 = (v42 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v135 = v43;
    v148 = (v43 + 47) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v140 = v44;
    sub_1E5E1E0B0(v33, v44 + v42, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v178, v44 + v43);
    v45 = (v44 + ((v43 + 47) & 0xFFFFFFFFFFFFFFF8));
    v46 = *(a3 + 48);
    v45[2] = *(a3 + 32);
    v45[3] = v46;
    v45[4] = *(a3 + 64);
    v47 = *(a3 + 16);
    *v45 = *a3;
    v45[1] = v47;
    v48 = sub_1E65E3E08();
    (*(*(v48 - 8) + 56))(v164, 1, 1, v48);
    swift_unknownObjectRetain();

    v49 = v171;
    sub_1E65D76E8();
    (*(v7 + 104))(v163, *MEMORY[0x1E699D720], v141);
    v50 = v166;
    v51 = v154;
    v52 = v149;
    sub_1E5E1D41C(v166, v154, v149);
    v141 = swift_allocObject();
    sub_1E5E1E0B0(v51, v141 + v42, type metadata accessor for AppComposer);
    sub_1E5E1D41C(v50, v51, v52);
    v139 = swift_allocObject();
    sub_1E5E1E0B0(v51, v139 + v42, type metadata accessor for AppComposer);
    sub_1E5E1D41C(v50, v51, v52);
    v138 = swift_allocObject();
    v53 = v42;
    v131 = v42;
    v130 = type metadata accessor for AppComposer;
    sub_1E5E1E0B0(v51, v138 + v42, type metadata accessor for AppComposer);
    sub_1E5E1D41C(v50, v51, v52);
    sub_1E5DF650C(v169, &v176);
    v54 = v165;
    v55 = *(v165 + 16);
    v133 = v165 + 16;
    v134 = v55;
    v55(v167, v49, v170);
    v56 = v148;
    v57 = (v148 + 87) & 0xFFFFFFFFFFFFFFF8;
    v132 = v57;
    v58 = (v57 + 8 + *(v54 + 80)) & ~*(v54 + 80);
    v59 = swift_allocObject();
    sub_1E5E1E0B0(v51, v59 + v53, type metadata accessor for AppComposer);
    v60 = v135;
    sub_1E5DF599C(&v176, v59 + v135);
    v155 = v59;
    v61 = (v59 + v56);
    v62 = *(a3 + 48);
    v61[2] = *(a3 + 32);
    v61[3] = v62;
    v61[4] = *(a3 + 64);
    v63 = *(a3 + 16);
    *v61 = *a3;
    v61[1] = v63;
    *(v59 + v57) = v168;
    v64 = *(v54 + 32);
    v65 = v59 + v58;
    v66 = v167;
    v67 = v170;
    v64(v65, v167, v170);
    v68 = v149;
    sub_1E5E1D41C(v166, v51, v149);
    sub_1E5DF650C(v169, &v176);
    v69 = swift_allocObject();
    v70 = v131;
    v71 = v130;
    sub_1E5E1E0B0(v51, v69 + v131, v130);
    sub_1E5DF599C(&v176, v69 + v60);
    v72 = (v69 + v148);
    v169 = v69;
    v73 = *(a3 + 48);
    v72[2] = *(a3 + 32);
    v72[3] = v73;
    v72[4] = *(a3 + 64);
    v74 = *(a3 + 16);
    *v72 = *a3;
    v72[1] = v74;
    *(v69 + v132) = v168;
    sub_1E5E1D41C(v166, v51, v68);
    v166 = swift_allocObject();
    sub_1E5E1E0B0(v51, v166 + v70, v71);
    sub_1E5DFD1CC(v164, v162, &qword_1ED074410, &qword_1E65F0B78);
    v134(v66, v171, v67);
    v154 = type metadata accessor for ActionButtonDescriptor(0);
    swift_retain_n();
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    v152 = type metadata accessor for ArtworkDescriptor();
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
    v148 = type metadata accessor for ContextMenu(0);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
    v136 = type metadata accessor for ItemContext();
    v135 = type metadata accessor for ItemMetrics();
    v134 = type metadata accessor for SectionHeaderSubtitleDescriptor();
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
    v132 = type metadata accessor for SectionMetrics();
    v131 = type metadata accessor for ViewDescriptor();
    v130 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    v129[6] = sub_1E60731B0();
    v129[5] = sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    v129[4] = sub_1E5FEB2FC();
    v129[3] = sub_1E60C08DC();
    v129[2] = sub_1E60C15C0();
    v129[1] = sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
    v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v77 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
    *&v176 = v76;
    *(&v176 + 1) = v77;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v176 = v75;
    *(&v176 + 1) = OpaqueTypeConformance2;
    v129[0] = swift_getOpaqueTypeConformance2();
    sub_1E60728B0();
    sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E60C330C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
    sub_1E60C217C();
    sub_1E60C330C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E5DF1338();
    sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    v79 = v142;
    sub_1E65DC198();
    (*(v165 + 8))(v171, v170);
    sub_1E5DFE50C(v164, &qword_1ED074410, &qword_1E65F0B78);
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
    v80 = v143;
    v81 = v160;
    sub_1E5FEE4C8(v79);
    v82 = *(v146 + 8);
    v82(v79, v81);
    v83 = v145;
    sub_1E5FEE4C8(v80);
    v82(v80, v81);
    v84 = v144;
    sub_1E5FEE4C8(v83);
    v82(v83, v81);
    sub_1E5FEE4C8(v84);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
    sub_1E5FEAB1C();
    v86 = v159;
    sub_1E62DFB74(v83, v85, v81);
    sub_1E60BE0B8();
    v87 = v156;
    sub_1E62DFC6C(v86, v158);
    sub_1E5DFE50C(v86, &qword_1ED0743A8, &qword_1E65F0980);
    v82(v83, v81);
    v82(v84, v81);
LABEL_7:
    sub_1E60BE02C();
    sub_1E5FEE4C8(v87);
    return sub_1E5DFE50C(v87, &qword_1ED074368, &qword_1E65F08F8);
  }

  v88 = v169;
  if (v40 == 3)
  {
    sub_1E65D76E8();
    sub_1E5E1D41C(v5, v33, type metadata accessor for AppComposer);
    sub_1E5DF650C(v88, &v178);
    v89 = *a3;
    v90 = *(a3 + 24);
    v91 = *(a3 + 40);
    v163 = *(a3 + 56);
    v164 = *(a3 + 72);
    v92 = *(v29 + 80);
    v149 = ~v92;
    v93 = (v92 + 16) & ~v92;
    v148 = v30 + 7;
    v94 = (v30 + 7 + v93) & 0xFFFFFFFFFFFFFFF8;
    v150 = v92 | 7;
    v95 = swift_allocObject();
    sub_1E5E1E0B0(v33, v95 + v93, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v178, v95 + v94);
    v162 = v95;
    v96 = (v95 + ((v94 + 47) & 0xFFFFFFFFFFFFFFF8));
    v97 = *(a3 + 48);
    v96[2] = *(a3 + 32);
    v96[3] = v97;
    v96[4] = *(a3 + 64);
    v98 = *(a3 + 16);
    *v96 = *a3;
    v96[1] = v98;
    v151 = v89;
    swift_unknownObjectRetain();
    v152 = v90;

    v153 = v91;

    LODWORD(v147) = sub_1E65E4418();
    if (qword_1ED071B28 != -1)
    {
      swift_once();
    }

    v99 = sub_1E65E3C48();
    __swift_project_value_buffer(v99, qword_1ED0966C0);
    v100 = v154;
    sub_1E5E1D41C(v166, v154, type metadata accessor for AppComposer);
    sub_1E5DF650C(v169, &v176);
    v101 = v165;
    v102 = v167;
    (*(v165 + 16))(v167, v171, v170);
    v103 = (v92 + 17) & v149;
    v104 = (v148 + v103) & 0xFFFFFFFFFFFFFFF8;
    v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 47) & 0xFFFFFFFFFFFFFFF8;
    v107 = (v106 + 87) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + *(v101 + 80) + 16) & ~*(v101 + 80);
    v109 = swift_allocObject();
    *(v109 + 16) = v147;
    sub_1E5E1E0B0(v100, v109 + v103, type metadata accessor for AppComposer);
    *(v109 + v104) = v168;
    sub_1E5DF599C(&v176, v109 + v105);
    v110 = (v109 + v106);
    v111 = *(a3 + 48);
    v110[2] = *(a3 + 32);
    v110[3] = v111;
    v110[4] = *(a3 + 64);
    v112 = *(a3 + 16);
    *v110 = *a3;
    v110[1] = v112;
    v113 = (v109 + v107);
    v114 = v162;
    *v113 = sub_1E60C34A0;
    v113[1] = v114;
    v115 = v165;
    v116 = v170;
    (*(v165 + 32))(v109 + v108, v102, v170);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727B0, &qword_1E65EBC30);
    v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727B8, &qword_1E65EBC38);
    v118 = sub_1E65E0AA8();
    v119 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727C0, &qword_1E65EBC40);
    v120 = sub_1E5FED46C(&qword_1ED0727C8, &qword_1ED0727C0, &qword_1E65EBC40);
    *&v173 = v119;
    *(&v173 + 1) = v120;
    v121 = swift_getOpaqueTypeConformance2();
    v122 = sub_1E60C330C(&qword_1EE2D6550, MEMORY[0x1E699DB08]);
    *&v173 = v117;
    *(&v173 + 1) = v118;
    v174 = v121;
    v175 = v122;
    swift_getOpaqueTypeConformance2();
    *&v176 = sub_1E65E3E28();
    *(&v176 + 1) = v123;
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FED46C(&qword_1ED072750, &qword_1ED072758, &qword_1E65EBBF0);
    sub_1E5FEE4C8(&v176);

    v176 = v173;
    sub_1E5FEE4C8(&v176);
    v172[0] = v172[2];
    v172[1] = v172[3];

    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072748, &qword_1E65EBBE8);
    sub_1E5FED46C(&qword_1ED072740, &qword_1ED072748, &qword_1E65EBBE8);
    sub_1E62DFB74(v172, v125, v124);

    (*(v115 + 8))(v171, v116);

    v173 = v176;
    LOBYTE(v174) = v177;
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072720, &qword_1E65EBBD0);
    sub_1E5FEAB1C();
    sub_1E5FEE4C8(&v173);
    sub_1E5FEBB58();
    sub_1E5FEE4C8(&v176);
    sub_1E5FEBB58();
    v173 = v178;
    LOBYTE(v174) = v179;
    sub_1E5FEE4C8(&v173);
    v173 = v176;
    LOBYTE(v174) = v177;
    sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
    v127 = v159;
    sub_1E62DFC6C(&v173, v126);
    sub_1E60BE0B8();
    v87 = v156;
    sub_1E62DFC6C(v127, v158);
    sub_1E5DFE50C(v127, &qword_1ED0743A8, &qword_1E65F0980);
    sub_1E5FEBB58();
    sub_1E5FEBB58();
    goto LABEL_7;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E60A5184(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E60A5304@<X0>(uint64_t a1@<X0>, char *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v94 = a2;
  v87 = a4;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v5 = *(*(v85 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v85);
  v88 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v75 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = &v75 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = &v75 - v14;
  v15 = sub_1E65D7848();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v79 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v75 = sub_1E65DF4B8();
  v19 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C0, &qword_1E65F0988);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v75 - v22;
  v24 = sub_1E65DF438();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v92 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v93 = &v75 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v83 = &v75 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v82 = &v75 - v33;
  v34 = sub_1E65DF658();
  v89 = *(v34 - 8);
  v90 = v34;
  v35 = *(v89 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v75 - v39;
  v41 = type metadata accessor for AppState();
  v42 = *(v41 + 24);
  v43 = v94[*(type metadata accessor for AppComposer() + 20) + 8];
  v94 = v40;
  v44 = v76;
  sub_1E6093FD0();
  v91 = v41;
  v45 = *(v41 + 172);
  v86 = a1;
  v46 = *(a1 + v45 + 8);
  if (*(v46 + 16) && (v47 = sub_1E6416C34(v44), (v48 & 1) != 0))
  {
    (*(v25 + 16))(v23, *(v46 + 56) + *(v25 + 72) * v47, v24);
    (*(v25 + 56))(v23, 0, 1, v24);
    v49 = v82;
    (*(v25 + 32))(v82, v23, v24);
  }

  else
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    (*(v89 + 16))(v38, v94, v90);
    swift_storeEnumTagMultiPayload();
    sub_1E65D77C8();
    v49 = v82;
    sub_1E65DF3E8();
    if ((*(v25 + 48))(v23, 1, v24) != 1)
    {
      sub_1E5DFE50C(v23, &qword_1ED0743C0, &qword_1E65F0988);
    }
  }

  sub_1E65DF418();
  v50 = *(v91 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v51 = v78;
  sub_1E65E4C98();
  v52 = v77;
  sub_1E5E1F544(v77);
  sub_1E5DFE50C(v51, &qword_1ED071F78, &unk_1E65EA3F0);
  v54 = v80;
  v53 = v81;
  v55 = *(v80 + 48);
  v56 = v55(v52, 1, v81);
  v57 = v88;
  if (v56 == 1)
  {
    v58 = v24;
    v59 = v49;
    v60 = v79;
    sub_1E65D77C8();
    v61 = v55(v52, 1, v53);
    v62 = v60;
    v49 = v59;
    v24 = v58;
    v57 = v88;
    if (v61 != 1)
    {
      sub_1E5DFE50C(v52, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v62 = v79;
    (*(v54 + 32))(v79, v52, v53);
  }

  v63 = v92;
  sub_1E65DF3F8();
  (*(v54 + 8))(v62, v53);
  v64 = *(v25 + 8);
  v64(v63, v24);
  v65 = *(v91 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v66 = v84;
  sub_1E65E4C98();
  sub_1E5FAB460(v66, v57, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    v69 = *v57;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v57, &qword_1ED072910, &qword_1E65EC030);
LABEL_16:
    v69 = MEMORY[0x1E69E7CD0];
    goto LABEL_17;
  }

  v68 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
  v69 = *v57;
  v70 = sub_1E65D76A8();
  (*(*(v70 - 8) + 8))(v57 + v68, v70);
LABEL_17:
  v71 = sub_1E60A1F80(v69);

  sub_1E600BD5C(v71);

  v72 = v83;
  v73 = v93;
  sub_1E65DF3C8();

  v64(v73, v24);
  sub_1E63969B4();
  sub_1E65DF428();
  v64(v72, v24);
  v64(v49, v24);
  return (*(v89 + 8))(v94, v90);
}

uint64_t sub_1E60A5BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C0, &qword_1E65F0988);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_1E65DF438();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a2, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = a1 + *(type metadata accessor for AppState() + 172) + 8;
  return sub_1E6407998(v9, a3);
}

uint64_t sub_1E60A5CDC(uint64_t a1)
{
  v2 = sub_1E65DF468();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  result = (*(v3 + 88))(v6, v2);
  if (result == *MEMORY[0x1E699E630])
  {
    return (*(v3 + 8))(v6, v2);
  }

  v8 = result == *MEMORY[0x1E699E648] || result == *MEMORY[0x1E699E640];
  v9 = v8 || result == *MEMORY[0x1E699E650];
  if (!v9 && result != *MEMORY[0x1E699E638])
  {
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_1E60A5E2C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074388, &qword_1E65F0978);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074368, &qword_1E65F08F8);
  v11 = sub_1E60BE02C();
  sub_1E630FCD8(a2, v10, v11, v7);
  sub_1E60BDF64();
  sub_1E5FEE4C8(v7);
  sub_1E5DFE50C(v7, &qword_1ED074388, &qword_1E65F0978);
  sub_1E5FEE4C8(v9);
  return sub_1E5DFE50C(v9, &qword_1ED074388, &qword_1E65F0978);
}

uint64_t sub_1E60A5F7C(uint64_t a1, char a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E60C34A4;

  return sub_1E60A6108(a2);
}

uint64_t sub_1E60A6018()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E5FE99E8;

  return sub_1E60A5F7C(v3, v4);
}

uint64_t sub_1E60A6108(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 520) = a1;
  v3 = sub_1E65D7B58();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_1E65D8BD8();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v9 = sub_1E65DAEB8();
  *(v2 + 88) = v9;
  v10 = *(v9 - 8);
  *(v2 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v12 = sub_1E65D86C8();
  *(v2 + 112) = v12;
  v13 = *(v12 - 8);
  *(v2 + 120) = v13;
  v14 = *(v13 + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v15 = sub_1E65DADD8();
  *(v2 + 136) = v15;
  v16 = *(v15 - 8);
  *(v2 + 144) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v18 = sub_1E65DF3B8();
  *(v2 + 160) = v18;
  v19 = *(v18 - 8);
  *(v2 + 168) = v19;
  v20 = *(v19 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  v21 = sub_1E65D8438();
  *(v2 + 224) = v21;
  v22 = *(v21 - 8);
  *(v2 + 232) = v22;
  v23 = *(v22 + 64) + 15;
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  *(v2 + 256) = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  *(v2 + 280) = v26;
  v27 = *(v26 - 8);
  *(v2 + 288) = v27;
  v28 = *(v27 + 64) + 15;
  *(v2 + 296) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60A64EC, 0, 0);
}

uint64_t sub_1E60A64EC()
{
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = **(v0 + 32);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = **(v0 + 264);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 264);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v11 = *v9;
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 264), &qword_1ED072910, &qword_1E65EC030);
  }

  v11 = MEMORY[0x1E69E7CD0];
LABEL_8:
  v13 = *(v0 + 520);
  if (v13 > 3)
  {
    if (*(v0 + 520) > 5u)
    {
      if (v13 == 6)
      {

        v39 = swift_task_alloc();
        *(v0 + 512) = v39;
        *v39 = v0;
        v39[1] = sub_1E60A91E4;
        v40 = *(v0 + 32);

        return sub_1E60B3068();
      }
    }

    else if (v13 == 4)
    {
      v20 = *(v0 + 32);

      v21 = v20 + *(type metadata accessor for AppComposer() + 20);
      v22 = v21 + *(type metadata accessor for AppEnvironment() + 44);
      v23 = BookmarkService.queryBookmarksByReferenceTypes.getter();
      *(v0 + 440) = v24;
      v25 = sub_1E5F9B84C(&unk_1F5FA83E0);
      *(v0 + 448) = v25;
      v76 = (v23 + *v23);
      v26 = v23[1];
      v27 = swift_task_alloc();
      *(v0 + 456) = v27;
      *v27 = v0;
      v28 = sub_1E60A86AC;
      goto LABEL_28;
    }

    v42 = *(v0 + 80);
    v43 = *(v0 + 32);
    v44 = v43 + *(type metadata accessor for AppComposer() + 20);
    v45 = v44 + *(type metadata accessor for AppEnvironment() + 36);
    v46 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
    *(v0 + 480) = v47;
    v48 = sub_1E60A23CC(v11, sub_1E601C600, 0);

    sub_1E5FA9F88(&unk_1F5FA8408);
    sub_1E600BE38(v48);

    sub_1E65D8BC8();
    v77 = (v46 + *v46);
    v49 = v46[1];
    v50 = swift_task_alloc();
    *(v0 + 488) = v50;
    *v50 = v0;
    v50[1] = sub_1E60A8C0C;
    v51 = *(v0 + 80);
LABEL_34:
    v38 = v51;
LABEL_35:
    v69 = v77;

    return v69(v38);
  }

  if (*(v0 + 520) > 1u)
  {
    if (v13 == 2)
    {
      v29 = *(v0 + 128);
      v30 = *(v0 + 32);
      v31 = v30 + *(type metadata accessor for AppComposer() + 20);
      v32 = v31 + *(type metadata accessor for AppEnvironment() + 44);
      v33 = BookmarkService.filterPlaylists.getter();
      *(v0 + 368) = v34;
      v35 = sub_1E60A219C(v11);

      sub_1E600AAA0(v35);

      sub_1E65D86B8();
      v77 = (v33 + *v33);
      v36 = v33[1];
      v37 = swift_task_alloc();
      *(v0 + 376) = v37;
      *v37 = v0;
      v37[1] = sub_1E60A7ACC;
      v38 = *(v0 + 128);
      goto LABEL_35;
    }

    v63 = *(v0 + 32);

    v64 = v63 + *(type metadata accessor for AppComposer() + 20);
    v65 = v64 + *(type metadata accessor for AppEnvironment() + 44);
    v66 = BookmarkService.queryBookmarksByReferenceTypes.getter();
    *(v0 + 400) = v67;
    v25 = sub_1E5F9B84C(&unk_1F5FA83B8);
    *(v0 + 408) = v25;
    v76 = (v66 + *v66);
    v68 = v66[1];
    v27 = swift_task_alloc();
    *(v0 + 416) = v27;
    *v27 = v0;
    v28 = sub_1E60A814C;
LABEL_28:
    v27[1] = v28;
    v38 = v25;
    v69 = v76;

    return v69(v38);
  }

  if (*(v0 + 520))
  {
    v52 = *(v0 + 32);
    v53 = v52 + *(type metadata accessor for AppComposer() + 20);
    v54 = v53 + *(type metadata accessor for AppEnvironment() + 44);
    v55 = BookmarkService.filterBookmarks.getter();
    *(v0 + 336) = v56;
    if (qword_1ED071890 != -1)
    {
      swift_once();
    }

    v57 = *(v0 + 240);

    v59 = sub_1E60A23CC(v58, sub_1E601C638, 1);

    v60 = sub_1E60A23CC(v11, sub_1E601C638, 0);

    sub_1E5FA9FA8(v60);
    sub_1E600BD90(v59);

    sub_1E65D8428();
    v77 = (v55 + *v55);
    v61 = v55[1];
    v62 = swift_task_alloc();
    *(v0 + 344) = v62;
    *v62 = v0;
    v62[1] = sub_1E60A74F8;
    v51 = *(v0 + 240);
    goto LABEL_34;
  }

  v14 = *(v0 + 32);
  v15 = v14 + *(type metadata accessor for AppComposer() + 20);
  v16 = v15 + *(type metadata accessor for AppEnvironment() + 44);
  v17 = BookmarkService.filterBookmarks.getter();
  *(v0 + 304) = v18;
  v19 = &unk_1F5FA7FD0;
  if (*(v15 + 8) <= 1u)
  {
    if (!*(v15 + 8))
    {
      v19 = &unk_1F5FA7FA8;
    }

    goto LABEL_33;
  }

  if (*(v15 + 8) != 2)
  {
LABEL_33:
    v70 = *(v0 + 248);
    v71 = sub_1E5F9B388(v19);
    v72 = sub_1E60A23CC(v71, sub_1E601C638, 1);

    v73 = sub_1E60A23CC(v11, sub_1E601C638, 0);

    sub_1E5FA9FA8(v73);
    sub_1E600BD90(v72);

    sub_1E65D8428();
    v77 = (v17 + *v17);
    v74 = v17[1];
    v75 = swift_task_alloc();
    *(v0 + 312) = v75;
    *v75 = v0;
    v75[1] = sub_1E60A6F24;
    v51 = *(v0 + 248);
    goto LABEL_34;
  }

  return sub_1E65E69D8();
}

uint64_t sub_1E60A6F24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 248);
  v7 = *(*v2 + 232);
  v8 = *(*v2 + 224);
  v11 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E60A94E4;
  }

  else
  {
    v9 = sub_1E60A70BC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E60A70BC()
{
  v49 = v0;
  v1 = v0[40];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v48, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    result = sub_1E5E24EE4();
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v7 = v0[41];
  v48 = v3;
  sub_1E60BB100(&v48);
  if (v7)
  {
  }

  v8 = v0[40];

  v9 = v48;
  v10 = *(v48 + 2);
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v48 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v48;
    v14 = *(v12 + 16);
    v12 += 16;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v43 = *(v12 + 56);
    v45 = v14;
    v16 = (v12 - 8);
    do
    {
      v17 = v0[27];
      v18 = v0[19];
      v19 = v0[17];
      v45(v18, v15, v19);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*v16)(v18, v19);
      v48 = v13;
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C5BC(v20 > 1, v21 + 1, 1);
        v13 = v48;
      }

      v22 = v0[27];
      v23 = v0[20];
      *(v13 + 2) = v21 + 1;
      (*(v11 + 32))(&v13[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21], v22, v23);
      v15 += v43;
      --v10;
    }

    while (v10);

    if (*(v13 + 2))
    {
      goto LABEL_13;
    }

LABEL_15:

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  v24 = *(sub_1E65DF4F8() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v47 = v27;
  sub_1E65DF4C8();
LABEL_16:
  v28 = v0[37];
  v30 = v0[33];
  v29 = v0[34];
  v32 = v0[30];
  v31 = v0[31];
  v34 = v0[26];
  v33 = v0[27];
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[23];
  v39 = v0[22];
  v40 = v0[19];
  v41 = v0[16];
  v42 = v0[13];
  v44 = v0[10];
  v46 = v0[7];

  v38 = v0[1];

  return v38(v47);
}

uint64_t sub_1E60A74F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 344);
  v5 = *(*v2 + 336);
  v6 = *(*v2 + 240);
  v7 = *(*v2 + 232);
  v8 = *(*v2 + 224);
  v11 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E60A961C;
  }

  else
  {
    v9 = sub_1E60A7690;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E60A7690()
{
  v49 = v0;
  v1 = v0[44];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v48, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    result = sub_1E5E24EE4();
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v7 = v0[45];
  v48 = v3;
  sub_1E60BB100(&v48);
  if (v7)
  {
  }

  v8 = v0[44];

  v9 = v48;
  v10 = *(v48 + 2);
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v48 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v48;
    v14 = *(v12 + 16);
    v12 += 16;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v43 = *(v12 + 56);
    v45 = v14;
    v16 = (v12 - 8);
    do
    {
      v17 = v0[26];
      v18 = v0[19];
      v19 = v0[17];
      v45(v18, v15, v19);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*v16)(v18, v19);
      v48 = v13;
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C5BC(v20 > 1, v21 + 1, 1);
        v13 = v48;
      }

      v22 = v0[26];
      v23 = v0[20];
      *(v13 + 2) = v21 + 1;
      (*(v11 + 32))(&v13[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21], v22, v23);
      v15 += v43;
      --v10;
    }

    while (v10);

    if (*(v13 + 2))
    {
      goto LABEL_13;
    }

LABEL_15:

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  v24 = *(sub_1E65DF4F8() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v47 = v27;
  sub_1E65DF4C8();
LABEL_16:
  v28 = v0[37];
  v30 = v0[33];
  v29 = v0[34];
  v32 = v0[30];
  v31 = v0[31];
  v34 = v0[26];
  v33 = v0[27];
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[23];
  v39 = v0[22];
  v40 = v0[19];
  v41 = v0[16];
  v42 = v0[13];
  v44 = v0[10];
  v46 = v0[7];

  v38 = v0[1];

  return v38(v47);
}

uint64_t sub_1E60A7ACC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 376);
  v6 = *v2;
  v4[48] = v1;

  v7 = v4[46];
  v8 = v4[16];
  v9 = v4[15];
  v10 = v4[14];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E60A9754;
  }

  else
  {
    v4[49] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E60A7C78;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

size_t sub_1E60A7C78()
{
  v0[2] = v0[49];
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743D0, &qword_1E660C9D0);
  sub_1E5FED46C(&qword_1ED0743D8, &qword_1ED0743D0, &qword_1E660C9D0);
  sub_1E60C330C(&qword_1ED073FD8, MEMORY[0x1E6969530]);
  v1 = sub_1E65E5E78();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[21];
    v4 = v0[12];
    v41 = MEMORY[0x1E69E7CC0];
    result = sub_1E601C5BC(0, v2, 0);
    v30 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v33 = v3;
    v35 = v1;
    v6 = *(v1 + 16) - 1;
    do
    {
      if (v6 == -1)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

      if (v6 >= *(v1 + 16))
      {
        goto LABEL_16;
      }

      v39 = v0[25];
      v7 = v0[13];
      v8 = v0[11];
      (*(v4 + 16))(v7, v30 + *(v4 + 72) * v6, v8);
      sub_1E65DAE48();
      sub_1E65DAE78();
      MEMORY[0x1E694D7C0](45, 0xE100000000000000);
      v9 = *(sub_1E65DAE88() + 16);

      v0[3] = v9;
      v10 = sub_1E65E6BC8();
      MEMORY[0x1E694D7C0](v10);

      sub_1E65DF368();
      (*(v4 + 8))(v7, v8);
      v12 = *(v41 + 16);
      v11 = *(v41 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E601C5BC(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[25];
      v14 = v0[20];
      *(v41 + 16) = v12 + 1;
      result = (*(v33 + 32))(v41 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v12, v13, v14);
      --v6;
      --v2;
      v1 = v35;
    }

    while (v2);

    if (!*(v41 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_11:

      v40 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  v15 = *(sub_1E65DF4F8() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v40 = v18;
  sub_1E65DF4C8();
LABEL_12:
  v19 = v0[37];
  v21 = v0[33];
  v20 = v0[34];
  v23 = v0[30];
  v22 = v0[31];
  v25 = v0[26];
  v24 = v0[27];
  v27 = v0[24];
  v26 = v0[25];
  v28 = v0[23];
  v31 = v0[22];
  v32 = v0[19];
  v34 = v0[16];
  v36 = v0[13];
  v37 = v0[10];
  v38 = v0[7];

  v29 = v0[1];

  return v29(v40);
}

uint64_t sub_1E60A814C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 416);
  v9 = *v2;
  v3[53] = a1;
  v3[54] = v1;

  if (v1)
  {
    v5 = sub_1E60A988C;
  }

  else
  {
    v6 = v3[50];
    v7 = v3[51];

    v5 = sub_1E60A8270;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60A8270()
{
  v49 = v0;
  v1 = v0[53];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v48, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    result = sub_1E5E24EE4();
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v7 = v0[54];
  v48 = v3;
  sub_1E60BB100(&v48);
  if (v7)
  {
  }

  v8 = v0[53];

  v9 = v48;
  v10 = *(v48 + 2);
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v48 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v48;
    v14 = *(v12 + 16);
    v12 += 16;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v43 = *(v12 + 56);
    v45 = v14;
    v16 = (v12 - 8);
    do
    {
      v17 = v0[24];
      v18 = v0[19];
      v19 = v0[17];
      v45(v18, v15, v19);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*v16)(v18, v19);
      v48 = v13;
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C5BC(v20 > 1, v21 + 1, 1);
        v13 = v48;
      }

      v22 = v0[24];
      v23 = v0[20];
      *(v13 + 2) = v21 + 1;
      (*(v11 + 32))(&v13[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21], v22, v23);
      v15 += v43;
      --v10;
    }

    while (v10);

    if (*(v13 + 2))
    {
      goto LABEL_13;
    }

LABEL_15:

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  v24 = *(sub_1E65DF4F8() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v47 = v27;
  sub_1E65DF4C8();
LABEL_16:
  v28 = v0[37];
  v30 = v0[33];
  v29 = v0[34];
  v32 = v0[30];
  v31 = v0[31];
  v34 = v0[26];
  v33 = v0[27];
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[23];
  v39 = v0[22];
  v40 = v0[19];
  v41 = v0[16];
  v42 = v0[13];
  v44 = v0[10];
  v46 = v0[7];

  v38 = v0[1];

  return v38(v47);
}

uint64_t sub_1E60A86AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 456);
  v9 = *v2;
  v3[58] = a1;
  v3[59] = v1;

  if (v1)
  {
    v5 = sub_1E60A99D4;
  }

  else
  {
    v6 = v3[55];
    v7 = v3[56];

    v5 = sub_1E60A87D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60A87D0()
{
  v49 = v0;
  v1 = v0[58];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[18];
    v3 = sub_1E64F72CC(*(v1 + 16), 0);
    v5 = sub_1E62594B8(&v48, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    result = sub_1E5E24EE4();
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v7 = v0[59];
  v48 = v3;
  sub_1E60BB100(&v48);
  if (v7)
  {
  }

  v8 = v0[58];

  v9 = v48;
  v10 = *(v48 + 2);
  if (v10)
  {
    v11 = v0[21];
    v12 = v0[18];
    v48 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v48;
    v14 = *(v12 + 16);
    v12 += 16;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v43 = *(v12 + 56);
    v45 = v14;
    v16 = (v12 - 8);
    do
    {
      v17 = v0[23];
      v18 = v0[19];
      v19 = v0[17];
      v45(v18, v15, v19);
      sub_1E65DADA8();
      sub_1E65DF368();
      (*v16)(v18, v19);
      v48 = v13;
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C5BC(v20 > 1, v21 + 1, 1);
        v13 = v48;
      }

      v22 = v0[23];
      v23 = v0[20];
      *(v13 + 2) = v21 + 1;
      (*(v11 + 32))(&v13[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21], v22, v23);
      v15 += v43;
      --v10;
    }

    while (v10);

    if (*(v13 + 2))
    {
      goto LABEL_13;
    }

LABEL_15:

    v47 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  v24 = *(sub_1E65DF4F8() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v47 = v27;
  sub_1E65DF4C8();
LABEL_16:
  v28 = v0[37];
  v30 = v0[33];
  v29 = v0[34];
  v32 = v0[30];
  v31 = v0[31];
  v34 = v0[26];
  v33 = v0[27];
  v36 = v0[24];
  v35 = v0[25];
  v37 = v0[23];
  v39 = v0[22];
  v40 = v0[19];
  v41 = v0[16];
  v42 = v0[13];
  v44 = v0[10];
  v46 = v0[7];

  v38 = v0[1];

  return v38(v47);
}

uint64_t sub_1E60A8C0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 488);
  v5 = *(*v2 + 480);
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 72);
  v8 = *(*v2 + 64);
  v11 = *v2;
  *(v3 + 496) = a1;
  *(v3 + 504) = v1;

  (*(v7 + 8))(v6, v8);

  if (v1)
  {
    v9 = sub_1E60A9B1C;
  }

  else
  {
    v9 = sub_1E60A8DA4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E60A8DA4()
{
  v50 = v0;
  v1 = *(v0 + 496);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 48);
    v3 = sub_1E64F72A4(*(v1 + 16), 0);
    v5 = sub_1E62594A0(&v49, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);

    result = sub_1E5E24EE4();
    if (v5 != v2)
    {
      __break(1u);
      return result;
    }
  }

  v7 = *(v0 + 504);
  v49 = v3;
  sub_1E60BB008(&v49);
  if (v7)
  {
  }

  v8 = *(v0 + 496);

  v9 = v49;
  v10 = *(v49 + 2);
  if (v10)
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 48);
    v49 = MEMORY[0x1E69E7CC0];
    sub_1E601C5BC(0, v10, 0);
    v13 = v49;
    v14 = *(v12 + 16);
    v12 += 16;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v44 = *(v12 + 56);
    v46 = v14;
    v16 = (v12 - 8);
    do
    {
      v17 = *(v0 + 176);
      v18 = *(v0 + 56);
      v19 = *(v0 + 40);
      v46(v18, v15, v19);
      sub_1E65D7B38();
      sub_1E65DF368();
      (*v16)(v18, v19);
      v49 = v13;
      v21 = *(v13 + 2);
      v20 = *(v13 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1E601C5BC(v20 > 1, v21 + 1, 1);
        v13 = v49;
      }

      v22 = *(v0 + 176);
      v23 = *(v0 + 160);
      *(v13 + 2) = v21 + 1;
      (*(v11 + 32))(&v13[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21], v22, v23);
      v15 += v44;
      --v10;
    }

    while (v10);

    if (*(v13 + 2))
    {
      goto LABEL_13;
    }

LABEL_15:

    v48 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_15;
  }

LABEL_13:
  v24 = *(v0 + 520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0743C8, &qword_1E65F0AB0);
  v25 = *(sub_1E65DF4F8() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E65EA670;
  sub_1E65DF568();
  v48 = v28;
  sub_1E65DF4C8();
LABEL_16:
  v29 = *(v0 + 296);
  v31 = *(v0 + 264);
  v30 = *(v0 + 272);
  v33 = *(v0 + 240);
  v32 = *(v0 + 248);
  v35 = *(v0 + 208);
  v34 = *(v0 + 216);
  v37 = *(v0 + 192);
  v36 = *(v0 + 200);
  v38 = *(v0 + 184);
  v40 = *(v0 + 176);
  v41 = *(v0 + 152);
  v42 = *(v0 + 128);
  v43 = *(v0 + 104);
  v45 = *(v0 + 80);
  v47 = *(v0 + 56);

  v39 = *(v0 + 8);

  return v39(v48);
}

uint64_t sub_1E60A91E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v25 = *v1;

  v4 = v2[37];
  v5 = v2[34];
  v6 = v2[33];
  v7 = v2[31];
  v8 = v2[30];
  v9 = v2[27];
  v10 = v2[26];
  v11 = v2[25];
  v12 = v2[24];
  v18 = v2[23];
  v19 = v2[22];
  v20 = v2[19];
  v21 = v2[16];
  v22 = v2[13];
  v23 = v2[10];
  v13 = v2[7];

  v15 = *(v25 + 8);
  if (!v24)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_1E60A94E4()
{
  v19 = v0[41];
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E60A961C()
{
  v19 = v0[45];
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E60A9754()
{
  v19 = v0[48];
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E60A988C()
{
  v2 = v0[50];
  v1 = v0[51];

  v21 = v0[54];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E60A99D4()
{
  v2 = v0[55];
  v1 = v0[56];

  v21 = v0[59];
  v3 = v0[37];
  v5 = v0[33];
  v4 = v0[34];
  v7 = v0[30];
  v6 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[16];
  v18 = v0[13];
  v19 = v0[10];
  v20 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E60A9B1C()
{
  v19 = v0[63];
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[23];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[10];
  v18 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E60A9C54(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E60A9C74, 0, 0);
}

uint64_t sub_1E60A9C74()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 32);
  v4 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FE1030;
  v8 = v0[2];

  return v10(v8);
}

uint64_t sub_1E60A9D90(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60A9C54(a1, v1 + v5);
}

uint64_t sub_1E60A9E6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E60A9E8C, 0, 0);
}

uint64_t sub_1E60A9E8C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE4EC4;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E60AA014(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E60A9E6C(a1, v1 + v5);
}

uint64_t sub_1E60AA0F0(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() + 20);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E622F45C(a1, a3 + v7, a2);
}

uint64_t sub_1E60AA1AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E60AA0F0(a1, v6, v1 + v5);
}

uint64_t sub_1E60AA290(uint64_t a1)
{
  v2 = *(a1 + 24);
  v6 = (*(a1 + 16) + **(a1 + 16));
  v3 = *(*(a1 + 16) + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return v6();
}

uint64_t sub_1E60AA378()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E60AA290(v0 + 16);
}

uint64_t sub_1E60AA40C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E5DFE50C(v3, &qword_1ED072828, &qword_1E65EBE20);
}

uint64_t sub_1E60AA4E0()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.requestCatalogSync.getter();
  v0[3] = v5;
  v6 = sub_1E65D98C8();
  v10 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_1E60102EC;

  return v10(v6);
}

uint64_t sub_1E60AA610()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60AA4C0(v0 + v3);
}

uint64_t sub_1E60AA6DC(void *a1, uint64_t a2)
{
  v116 = a1;
  v94 = sub_1E65DF3B8();
  v101 = *(v94 - 8);
  v3 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for LibraryItemContext();
  v5 = *(*(v97 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v97);
  v96 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v108 = &v90 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v9 = *(*(v90 - 8) + 64);
  MEMORY[0x1EEE9AC00](v90);
  v91 = (&v90 - v10);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v100 = *(v119 - 8);
  v11 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v13 = &v90 - v12;
  v113 = type metadata accessor for ItemContext();
  v120 = *(v113 - 8);
  v14 = *(v120 + 64);
  v15 = MEMORY[0x1EEE9AC00](v113);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v90 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v90 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v90 - v29;
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v121;
  if (v122)
  {
    return sub_1E5FED3F8(v121, v122);
  }

  v114 = v30;
  v107 = v27;
  v99 = v26;
  v98 = v25;
  v111 = v23;
  v112 = v20;
  v92 = v17;
  v95 = a2;
  v32 = MEMORY[0x1E69E7CC0];
  v106 = *(v121 + 16);
  if (v106)
  {
    v33 = 0;
    v34 = v107;
    v105 = v121 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v104 = v107 + 16;
    v117 = (v100 + 8);
    v118 = v100 + 16;
    v103 = (v107 + 8);
    v35 = v119;
    v36 = v120;
    v37 = v101;
    v38 = v99;
    v102 = v121;
    while (v33 < *(result + 16))
    {
      v41 = *(v34 + 72);
      v115 = v33;
      v42 = v114;
      (*(v34 + 16))(v114, v105 + v41 * v33, v38);
      v43 = sub_1E65E0518();
      swift_getKeyPath();
      v44 = *(v43 + 16);
      if (v44)
      {
        v110 = v32;
        v121 = MEMORY[0x1E69E7CC0];
        sub_1E601BFA8(0, v44, 0);
        v45 = v121;
        v46 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v109 = v43;
        v47 = v43 + v46;
        v48 = *(v100 + 72);
        v49 = *(v100 + 16);
        v50 = v98;
        do
        {
          v49(v13, v47, v35);
          swift_getAtKeyPath();
          (*v117)(v13, v35);
          v121 = v45;
          v52 = *(v45 + 16);
          v51 = *(v45 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1E601BFA8(v51 > 1, v52 + 1, 1);
            v45 = v121;
          }

          *(v45 + 16) = v52 + 1;
          v36 = v120;
          sub_1E5E1E0B0(v50, v45 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v120 + 72) * v52, type metadata accessor for ItemContext);
          v47 += v48;
          --v44;
          v35 = v119;
        }

        while (v44);
        v38 = v99;
        (*v103)(v114, v99);

        v32 = v110;
        v37 = v101;
      }

      else
      {

        result = (*v103)(v42, v38);
        v45 = MEMORY[0x1E69E7CC0];
      }

      v53 = *(v45 + 16);
      v54 = v32[2];
      v55 = v54 + v53;
      if (__OFADD__(v54, v53))
      {
        goto LABEL_57;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v55 > v32[3] >> 1)
      {
        if (v54 <= v55)
        {
          v56 = v54 + v53;
        }

        else
        {
          v56 = v54;
        }

        result = sub_1E64F6184(result, v56, 1, v32);
        v32 = result;
      }

      v35 = v119;
      if (*(v45 + 16))
      {
        if ((v32[3] >> 1) - v32[2] < v53)
        {
          goto LABEL_59;
        }

        v57 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v58 = *(v36 + 72);
        swift_arrayInitWithCopy();

        v34 = v107;
        result = v102;
        v39 = v115;
        if (v53)
        {
          v59 = v32[2];
          v60 = __OFADD__(v59, v53);
          v61 = v59 + v53;
          if (v60)
          {
            goto LABEL_60;
          }

          v32[2] = v61;
        }
      }

      else
      {

        v34 = v107;
        result = v102;
        v39 = v115;
        if (v53)
        {
          goto LABEL_58;
        }
      }

      v33 = (v39 + 1);
      v40 = v112;
      if (v33 == v106)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    v40 = v112;
    v37 = v101;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v119 = v32[2];
    if (!v119)
    {
      v118 = MEMORY[0x1E69E7CC0];
LABEL_54:

      v88 = sub_1E600A878(v118);

      v89 = v91;
      *v91 = v88;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v89, &qword_1ED072828, &qword_1E65EBE20);
    }

    v62 = 0;
    v117 = (v37 + 32);
    v115 = (v37 + 8);
    v63 = v116 + 7;
    v118 = MEMORY[0x1E69E7CC0];
    while (v62 < v32[2])
    {
      v64 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v65 = v32;
      v66 = *(v120 + 72);
      v67 = v32 + v64 + v66 * v62;
      v68 = v111;
      sub_1E5E1D41C(v67, v111, type metadata accessor for ItemContext);
      sub_1E5E1D41C(v68, v40, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v69 = v108;
        sub_1E5E1E0B0(v40, v108, type metadata accessor for LibraryItemContext);
        v70 = v96;
        sub_1E5E1D41C(v69, v96, type metadata accessor for LibraryItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v71 = v93;
          v72 = v94;
          (*v117)(v93, v70, v94);
          v73 = sub_1E65DF378();
          v75 = v74;
          (*v115)(v71, v72);
        }

        else
        {
          v73 = *v70;
          v75 = v70[1];
        }

        v32 = v65;
        if (v116[2] && (v76 = v116, v77 = v116[5], sub_1E65E6D28(), sub_1E65E5D78(), v78 = sub_1E65E6D78(), v79 = -1 << *(v76 + 32), v80 = v78 & ~v79, ((*(v63 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0))
        {
          v81 = ~v79;
          while (1)
          {
            v82 = (v116[6] + 16 * v80);
            v83 = *v82 == v73 && v82[1] == v75;
            if (v83 || (sub_1E65E6C18() & 1) != 0)
            {
              break;
            }

            v80 = (v80 + 1) & v81;
            if (((*(v63 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          sub_1E60C3430(v108, type metadata accessor for LibraryItemContext);

          sub_1E5E1E0B0(v111, v92, type metadata accessor for ItemContext);
          v84 = v118;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = v84;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E601BFA8(0, *(v84 + 16) + 1, 1);
            v84 = v123;
          }

          v87 = *(v84 + 16);
          v86 = *(v84 + 24);
          if (v87 >= v86 >> 1)
          {
            sub_1E601BFA8(v86 > 1, v87 + 1, 1);
            v84 = v123;
          }

          *(v84 + 16) = v87 + 1;
          v118 = v84;
          result = sub_1E5E1E0B0(v92, v84 + v64 + v87 * v66, type metadata accessor for ItemContext);
        }

        else
        {
LABEL_46:
          sub_1E60C3430(v108, type metadata accessor for LibraryItemContext);

          result = sub_1E60C3430(v111, type metadata accessor for ItemContext);
        }

        v40 = v112;
      }

      else
      {
        sub_1E60C3430(v68, type metadata accessor for ItemContext);
        result = sub_1E60C3430(v40, type metadata accessor for ItemContext);
        v32 = v65;
      }

      if (++v62 == v119)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1E60AB2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = v6[*(v5 + 64)];

  return sub_1E60A5304(a1, v6, v7, a2);
}

uint64_t sub_1E60AB358(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E60A5CDC(a1);
}

uint64_t sub_1E60AB404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v62 = a3;
  v55 = type metadata accessor for CanvasTaskIdentifier();
  v4 = *(*(v55 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v55);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v50 - v8;
  v10 = type metadata accessor for RouteDestination();
  v56 = *(v10 - 8);
  v11 = *(v56 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = (&v50 - v13);
  v61 = sub_1E65DF3B8();
  v59 = *(v61 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ItemContext();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LibraryItemContext();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  sub_1E5E1D41C(a1, v20, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1E5E1E0B0(v20, v27, type metadata accessor for LibraryItemContext);
    sub_1E5E1D41C(v27, v25, type metadata accessor for LibraryItemContext);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v59;
      v29 = *(v59 + 32);
      v54 = v16;
      v29(v16, v25, v61);
      v30 = v57;
      sub_1E6094CD4(v57);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
      v32 = v31[12];
      v33 = v31[16];
      v51 = v31[20];
      v34 = v62;
      v52 = (v62 + v31[24]);
      v53 = v32;
      sub_1E5E1D41C(v30, v9, type metadata accessor for RouteDestination);
      sub_1E5E1D41C(v9, v7, type metadata accessor for CanvasTaskIdentifier);
      sub_1E60C330C(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier);
      sub_1E65E6848();
      sub_1E60C3430(v9, type metadata accessor for CanvasTaskIdentifier);
      v35 = *MEMORY[0x1E6999B50];
      v36 = sub_1E65E4EB8();
      (*(*(v36 - 8) + 104))(v34 + v33, v35, v36);
      v37 = *MEMORY[0x1E6999B48];
      v38 = sub_1E65E4EA8();
      (*(*(v38 - 8) + 104))(v34 + v51, v37, v38);
      sub_1E5DF650C(v60, v63);
      v39 = v58;
      sub_1E5E1D41C(v30, v58, type metadata accessor for RouteDestination);
      v40 = (*(v56 + 80) + 56) & ~*(v56 + 80);
      v41 = swift_allocObject();
      sub_1E5DF599C(v63, v41 + 16);
      sub_1E5E1E0B0(v39, v41 + v40, type metadata accessor for RouteDestination);
      v42 = v52;
      *v52 = &unk_1E65F0DE0;
      v42[1] = v41;
      sub_1E65E6068();
      sub_1E60C3430(v30, type metadata accessor for RouteDestination);
      (*(v28 + 8))(v54, v61);
      sub_1E60C3430(v27, type metadata accessor for LibraryItemContext);
      v43 = *MEMORY[0x1E6999AD8];
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
      v45 = *(v44 - 8);
      (*(v45 + 104))(v34, v43, v44);
      return (*(v45 + 56))(v34, 0, 1, v44);
    }

    sub_1E60C3430(v27, type metadata accessor for LibraryItemContext);
    v48 = v25;
    v47 = type metadata accessor for LibraryItemContext;
  }

  else
  {
    v47 = type metadata accessor for ItemContext;
    v48 = v20;
  }

  sub_1E60C3430(v48, v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
  return (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
}

uint64_t sub_1E60ABAC4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1E60ABB70;

  return sub_1E60ABC70(a3);
}

uint64_t sub_1E60ABB70(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1E60ABC70(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 160) = a1;
  v3 = sub_1E65DF6C8();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = swift_task_alloc();
  v6 = sub_1E65DF658();
  *(v2 + 64) = v6;
  v7 = *(v6 - 8);
  *(v2 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v9 = sub_1E65DF4B8();
  *(v2 + 88) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v11 = sub_1E65D7848();
  *(v2 + 104) = v11;
  v12 = *(v11 - 8);
  *(v2 + 112) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v14 = sub_1E65DF438();
  *(v2 + 128) = v14;
  v15 = *(v14 - 8);
  *(v2 + 136) = v15;
  v16 = *(v15 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60ABE90, 0, 0);
}

uint64_t sub_1E60ABE90()
{
  v1 = **(v0 + 24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 16);
  if (*(v2 + 16) && (v3 = sub_1E6416C34(*(v0 + 160)), (v4 & 1) != 0))
  {
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 88);
    v9 = *(v0 + 96);
    (*(v8 + 16))(v6, *(v2 + 56) + *(v8 + 72) * v3, v7);

    (*(v8 + 32))(v5, v6, v7);
    sub_1E65DF3D8();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = *(v0 + 136);
    if (EnumCaseMultiPayload < 2)
    {
      v14 = *(v0 + 112);
      v13 = *(v0 + 120);
      v15 = *(v0 + 96);
      v16 = *(v0 + 104);
      v36 = *(v0 + 152);
      v34 = *(v0 + 80);
      v43 = *(v0 + 72);
      v17 = *(v0 + 64);
      v35 = *(v0 + 56);
      v18 = *(v0 + 40);
      v19 = *(v0 + 48);
      v37 = *(v0 + 32);
      v38 = *(v0 + 24);
      v39 = *(v0 + 160);
      v41 = *v15;
      v42 = *(v0 + 128);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074560, &qword_1E65F0DD0);
      v21 = *(v20 + 48);
      (*(v14 + 32))(v13, v15 + *(v20 + 64), v16);
      v40 = *(v43 + 8);
      v40(v15 + v21, v17);
      sub_1E65DF408();
      sub_1E65DF648();
      (*(v18 + 104))(v19, *MEMORY[0x1E699E6E8], v37);
      LOBYTE(v15) = sub_1E65DF6B8();
      v22 = *(v18 + 8);
      v22(v19, v37);
      v22(v35, v37);
      v23 = swift_task_alloc();
      *(v23 + 16) = v38;
      *(v23 + 24) = v15 & 1;
      *(v23 + 25) = v39;
      *(v23 + 32) = v34;
      *(v23 + 40) = v13;
      v24 = sub_1E5F9F73C(sub_1E60C32B4, v23, v41);

      (*(v12 + 8))(v36, v42);
      v40(v34, v17);
      (*(v14 + 8))(v13, v16);
      goto LABEL_7;
    }

    (*(v12 + 8))(*(v0 + 152), *(v0 + 128));
  }

  else
  {
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);
  v27 = *(v0 + 120);
  v28 = *(v0 + 96);
  v29 = *(v0 + 80);
  v31 = *(v0 + 48);
  v30 = *(v0 + 56);

  v32 = *(v0 + 8);

  return v32(v24);
}

uint64_t sub_1E60AC228(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E60C34A4;

  return sub_1E60AC2D4(a3, a1);
}

uint64_t sub_1E60AC2D4(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 312) = a1;
  v4 = sub_1E65D9CC8();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v7 = sub_1E65DF3B8();
  *(v3 + 56) = v7;
  v8 = *(v7 - 8);
  *(v3 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v10 = type metadata accessor for ItemContext();
  *(v3 + 88) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v12 = type metadata accessor for LibraryItemContext();
  *(v3 + 120) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  *(v3 + 176) = v14;
  v15 = *(v14 - 8);
  *(v3 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60AC540, 0, 0);
}

unint64_t sub_1E60AC540()
{
  v1 = *(v0 + 184);
  v146 = *(v0 + 160);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v156 = (v1 + 8);
  v141 = (v2 + 8);
  v142 = (v2 + 32);
  v136 = (v1 + 40);
  v138 = (v1 + 32);

  v10 = 0;
  v152 = v1;
  v154 = v3 + 56;
  v150 = v3;
LABEL_4:
  v143 = v4;
  *(v0 + 224) = v4;
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = *(v0 + 112);
    v13 = *(v0 + 88);
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = *(v3 + 48);
    v16 = *(v1 + 72);
    v17 = *(v1 + 16);
    v17(*(v0 + 216), v15 + v16 * (v14 | (v10 << 6)), *(v0 + 176));
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v20 = *(v0 + 160);
      v19 = *(v0 + 168);
      v21 = *(v0 + 120);
      sub_1E5E1E0B0(*(v0 + 112), v19, type metadata accessor for LibraryItemContext);
      sub_1E5E1D41C(v19, v20, type metadata accessor for LibraryItemContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = *(v0 + 160);
      if (EnumCaseMultiPayload == 1)
      {
        v24 = *(v0 + 80);
        v25 = *(v0 + 56);
        (*v142)(v24, v23, v25);
        v26 = sub_1E65DF378();
        v132 = v27;
        (*v141)(v24, v25);
      }

      else
      {
        v26 = *v23;
        v132 = *(v146 + 8);
      }

      v17(*(v0 + 208), *(v0 + 216), *(v0 + 176));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v143;
      result = sub_1E6215038(v26, v132);
      v31 = v143[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
LABEL_85:
        __break(1u);
      }

      else
      {
        v35 = v30;
        v130 = v26;
        if (v143[3] >= v34)
        {
          v37 = v132;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = result;
            sub_1E6424B84();
            result = v44;
          }
        }

        else
        {
          sub_1E641BE8C(v34, isUniquelyReferenced_nonNull_native);
          result = sub_1E6215038(v26, v132);
          if ((v35 & 1) != (v36 & 1))
          {
LABEL_81:

            return sub_1E65E6C68();
          }

          v37 = v132;
        }

        v38 = *(v0 + 208);
        v144 = *(v0 + 216);
        v39 = *(v0 + 176);
        v133 = *(v0 + 168);
        if (v35)
        {
          v40 = result;

          v4 = v160;
          (*v136)(v160[7] + v40 * v16, v38, v39);
          sub_1E60C3430(v133, type metadata accessor for LibraryItemContext);
          (*v156)(v144, v39);
LABEL_25:
          v3 = v150;
          v1 = v152;
          v5 = v154;
          goto LABEL_4;
        }

        v4 = v160;
        v160[(result >> 6) + 8] |= 1 << result;
        v41 = (v160[6] + 16 * result);
        *v41 = v130;
        v41[1] = v37;
        (*v138)(v160[7] + result * v16, v38, v39);
        sub_1E60C3430(v133, type metadata accessor for LibraryItemContext);
        result = (*v156)(v144, v39);
        v42 = v160[2];
        v33 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (!v33)
        {
          v160[2] = v43;
          goto LABEL_25;
        }
      }

      __break(1u);
      return result;
    }

    v18 = *(v0 + 112);
    (*v156)(*(v0 + 216), *(v0 + 176));
    sub_1E60C3430(v18, type metadata accessor for ItemContext);
    v11 = v10;
    v3 = v150;
    v1 = v152;
    v5 = v154;
  }

  while (v8);
  while (1)
  {
LABEL_6:
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  v45 = *(v0 + 16);
  v46 = *(v0 + 312);

  if (((1 << v46) & 0xBB) != 0)
  {
    v47 = *(v0 + 16);
    v48 = -1;
    v49 = -1 << *(v3 + 32);
    if (-v49 < 64)
    {
      v48 = ~(-1 << -v49);
    }

    v50 = v48 & *(v3 + 56);
    v51 = (63 - v49) >> 6;
    v139 = *(v0 + 40);

    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v54 = v52;
    for (i = v53; ; v53 = i)
    {
      *(v0 + 232) = v53;
      if (!v50)
      {
        break;
      }

      v52 = v54;
LABEL_38:
      v58 = *(v0 + 104);
      v59 = *(v0 + 88);
      v60 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      (*(v1 + 16))(*(v0 + 200), *(v3 + 48) + *(v1 + 72) * (v60 | (v52 << 6)), *(v0 + 176));
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v62 = *(v0 + 144);
        v61 = *(v0 + 152);
        v63 = *(v0 + 120);
        sub_1E5E1E0B0(*(v0 + 104), v61, type metadata accessor for LibraryItemContext);
        sub_1E5E1D41C(v61, v62, type metadata accessor for LibraryItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v142)(*(v0 + 72), *(v0 + 144), *(v0 + 56));
          sub_1E65DF378();
          v67 = qword_1E65F0DE8[sub_1E65DF388()];
          v131 = *(v0 + 176);
          v134 = *(v0 + 200);
          v129 = *(v0 + 152);
          v68 = *(v0 + 72);
          v69 = *(v0 + 48);
          v70 = *(v0 + 56);
          sub_1E65D9C88();
          (*v141)(v68, v70);
          sub_1E60C3430(v129, type metadata accessor for LibraryItemContext);
          (*v156)(v134, v131);
          v53 = i;
          v71 = v1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v53 = sub_1E64F610C(0, i[2] + 1, 1, i);
          }

          v5 = v154;
          v73 = v53[2];
          v72 = v53[3];
          if (v73 >= v72 >> 1)
          {
            v53 = sub_1E64F610C(v72 > 1, v73 + 1, 1, v53);
          }

          v74 = *(v0 + 48);
          v75 = *(v0 + 32);
          v53[2] = v73 + 1;
          (*(v139 + 32))(v53 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v73, v74, v75);
          v1 = v71;
          goto LABEL_30;
        }

        v64 = *(v0 + 200);
        v65 = *(v0 + 176);
        v66 = *(v0 + 144);
        sub_1E60C3430(*(v0 + 152), type metadata accessor for LibraryItemContext);
        (*v156)(v64, v65);
        v57 = v66;
        v56 = type metadata accessor for LibraryItemContext;
      }

      else
      {
        v55 = *(v0 + 104);
        (*v156)(*(v0 + 200), *(v0 + 176));
        v56 = type metadata accessor for ItemContext;
        v57 = v55;
      }

      sub_1E60C3430(v57, v56);
      v54 = v52;
      v5 = v154;
    }

    while (1)
    {
      v52 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_80;
      }

      if (v52 >= v51)
      {
        v76 = *(v0 + 16);

        if (v53[2])
        {
          v77 = *(v0 + 24);
          v78 = v77 + *(type metadata accessor for AppComposer() + 20);
          v79 = v78 + *(type metadata accessor for AppEnvironment() + 48);
          v80 = CatalogService.fetchRemoteCatalogLockups.getter();
          *(v0 + 240) = v81;
          v158 = (v80 + *v80);
          v82 = v80[1];
          v83 = swift_task_alloc();
          *(v0 + 248) = v83;
          *v83 = v0;
          v83[1] = sub_1E60AD388;

          return (v158)(20, v53);
        }

        else
        {

          v85 = *(v0 + 208);
          v84 = *(v0 + 216);
          v87 = *(v0 + 192);
          v86 = *(v0 + 200);
          v89 = *(v0 + 160);
          v88 = *(v0 + 168);
          v91 = *(v0 + 144);
          v90 = *(v0 + 152);
          v92 = *(v0 + 128);
          v93 = *(v0 + 136);
          v148 = *(v0 + 112);
          v151 = *(v0 + 104);
          v153 = *(v0 + 96);
          v155 = *(v0 + 80);
          v157 = *(v0 + 72);
          v159 = *(v0 + 48);

          v94 = *(v0 + 8);
          v95 = MEMORY[0x1E69E7CD0];

          return v94(v95);
        }
      }

      v50 = *(v5 + 8 * v52);
      ++v54;
      if (v50)
      {
        goto LABEL_38;
      }
    }
  }

  if (v46 == 2)
  {
    v145 = *(v0 + 128);
    v96 = *(v0 + 16);
    v97 = -1;
    v98 = -1 << *(v3 + 32);
    if (-v98 < 64)
    {
      v97 = ~(-1 << -v98);
    }

    v99 = v97 & *(v3 + 56);
    v100 = (63 - v98) >> 6;

    v101 = 0;
    v102 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v149 = v102;
    *(v0 + 280) = v102;
    v103 = v101;
    if (!v99)
    {
      goto LABEL_59;
    }

    do
    {
      v101 = v103;
LABEL_62:
      v105 = *(v0 + 88);
      v104 = *(v0 + 96);
      v106 = __clz(__rbit64(v99));
      v99 &= v99 - 1;
      (*(v1 + 16))(*(v0 + 192), *(v3 + 48) + *(v1 + 72) * (v106 | (v101 << 6)), *(v0 + 176));
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v109 = *(v0 + 128);
        v108 = *(v0 + 136);
        v110 = *(v0 + 120);
        sub_1E5E1E0B0(*(v0 + 96), v108, type metadata accessor for LibraryItemContext);
        sub_1E5E1D41C(v108, v109, type metadata accessor for LibraryItemContext);
        v111 = swift_getEnumCaseMultiPayload();
        v112 = *(v0 + 192);
        v113 = *(v0 + 176);
        v114 = *(v0 + 128);
        v115 = *(v0 + 136);
        if (v111 == 1)
        {
          v135 = *(v0 + 176);
          v137 = *(v0 + 192);
          v116 = *(v0 + 80);
          v117 = *(v0 + 56);
          (*v142)(v116, v114, v117);
          v140 = sub_1E65DF378();
          v119 = v118;
          (*v141)(v116, v117);
          sub_1E60C3430(v115, type metadata accessor for LibraryItemContext);
          (*v156)(v137, v135);
        }

        else
        {
          sub_1E60C3430(*(v0 + 136), type metadata accessor for LibraryItemContext);
          (*v156)(v112, v113);
          v140 = *v114;
          v119 = *(v145 + 8);
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v5 = v154;
        if ((result & 1) == 0)
        {
          result = sub_1E64F6718(0, *(v149 + 16) + 1, 1, v149);
          v149 = result;
        }

        v121 = *(v149 + 16);
        v120 = *(v149 + 24);
        if (v121 >= v120 >> 1)
        {
          result = sub_1E64F6718((v120 > 1), v121 + 1, 1, v149);
          v149 = result;
        }

        *(v149 + 16) = v121 + 1;
        v122 = v149 + 16 * v121;
        *(v122 + 32) = v140;
        *(v122 + 40) = v119;
        v102 = v149;
        goto LABEL_57;
      }

      v107 = *(v0 + 96);
      (*v156)(*(v0 + 192), *(v0 + 176));
      result = sub_1E60C3430(v107, type metadata accessor for ItemContext);
      v103 = v101;
      v5 = v154;
    }

    while (v99);
    while (1)
    {
LABEL_59:
      v101 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v101 >= v100)
      {
        break;
      }

      v99 = *(v5 + 8 * v101);
      ++v103;
      if (v99)
      {
        goto LABEL_62;
      }
    }

    v126 = *(v0 + 16);

    v127 = swift_task_alloc();
    *(v0 + 288) = v127;
    *v127 = v0;
    v127[1] = sub_1E60AD958;
    v128 = *(v0 + 24);

    return sub_1E60AE8FC(v149);
  }

  else
  {

    v123 = swift_task_alloc();
    *(v0 + 272) = v123;
    *v123 = v0;
    v123[1] = sub_1E60AD658;
    v124 = *(v0 + 16);
    v125 = *(v0 + 24);

    return sub_1E60ADEB0(v124);
  }
}

uint64_t sub_1E60AD388(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = sub_1E60ADD64;
  }

  else
  {
    v9 = v4[29];
    v8 = v4[30];

    v4[33] = a1;
    v7 = sub_1E60AD4C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60AD4C0()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[28];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_1E6404CB8(sub_1E60C22D8, v5, v1);

  v25 = sub_1E600A848(v6);

  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v14 = v0[19];
  v16 = v0[16];
  v15 = v0[17];
  v19 = v0[14];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[6];

  v17 = v0[1];

  return v17(v25);
}

uint64_t sub_1E60AD658(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v25 = *v1;

  v4 = v2[27];
  v5 = v2[26];
  v6 = v2[25];
  v7 = v2[24];
  v8 = v2[21];
  v9 = v2[20];
  v10 = v2[19];
  v11 = v2[18];
  v12 = v2[17];
  v18 = v2[16];
  v19 = v2[14];
  v20 = v2[13];
  v21 = v2[12];
  v22 = v2[10];
  v23 = v2[9];
  v13 = v2[6];

  v15 = *(v25 + 8);
  if (!v24)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_1E60AD958(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = sub_1E60ADC20;
  }

  else
  {
    v8 = *(v4 + 280);

    *(v4 + 304) = a1;
    v7 = sub_1E60ADA88;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60ADA88()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[28];
  v4 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = sub_1E6404414(sub_1E60C22B4, v5, v1);

  v25 = sub_1E600A848(v6);

  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[18];
  v14 = v0[19];
  v16 = v0[16];
  v15 = v0[17];
  v19 = v0[14];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[6];

  v17 = v0[1];

  return v17(v25);
}

uint64_t sub_1E60ADC20()
{
  v1 = v0[35];
  v2 = v0[28];

  v21 = v0[37];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v10 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[10];
  v19 = v0[9];
  v20 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E60ADD64()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];

  v22 = v0[32];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[24];
  v6 = v0[25];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[18];
  v11 = v0[19];
  v13 = v0[16];
  v12 = v0[17];
  v16 = v0[14];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E60ADEB0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65DF3B8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for ItemContext();
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for LibraryItemContext();
  v2[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60AE050, 0, 0);
}

uint64_t sub_1E60AE050()
{
  v1 = v0[14];
  v62 = v0[11];
  v2 = v0[6];
  v3 = v0[3];
  v4 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v5 = v3 + 56;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v68 = v1;
  v66 = (v1 + 8);
  v67 = v3;
  v60 = (v2 + 8);
  v61 = (v2 + 32);
  v58 = (v1 + 40);
  v59 = (v1 + 32);

  v10 = 0;
  v65 = v3 + 56;
  while (2)
  {
    v63 = v4;
    v0[17] = v4;
    v11 = v10;
    if (!v8)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v10 = v11;
LABEL_9:
      v13 = v0[8];
      v12 = v0[9];
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = *(v68 + 72);
      v16 = *(v68 + 16);
      v16(v0[16], *(v67 + 48) + v15 * (v14 | (v10 << 6)), v0[13]);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        break;
      }

      v17 = v0[9];
      (*v66)(v0[16], v0[13]);
      sub_1E60C3430(v17, type metadata accessor for ItemContext);
      v11 = v10;
      v5 = v65;
      if (!v8)
      {
        while (1)
        {
LABEL_6:
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          if (v10 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v10);
          ++v11;
          if (v8)
          {
            goto LABEL_9;
          }
        }

        v69 = *(v0 + 3);

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074540, &qword_1E65F0D20);
        v53 = swift_task_alloc();
        v0[18] = v53;
        *(v53 + 16) = v69;
        v54 = *(MEMORY[0x1E69E88A0] + 4);
        v55 = swift_task_alloc();
        v0[19] = v55;
        *v55 = v0;
        v55[1] = sub_1E60AE5D8;
        v34 = &unk_1E65F0D30;
        v29 = (v0 + 2);
        v30 = v52;
        v31 = v52;
        v32 = 0;
        v33 = 0;
        v35 = v53;
        v36 = v52;

        return MEMORY[0x1EEE6DD58](v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    v57 = v15;
    v19 = v0[11];
    v18 = v0[12];
    v20 = v0[10];
    sub_1E5E1E0B0(v0[9], v18, type metadata accessor for LibraryItemContext);
    sub_1E5E1D41C(v18, v19, type metadata accessor for LibraryItemContext);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = v0[11];
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v0[7];
      v24 = v0[5];
      (*v61)(v23, v22, v24);
      v25 = sub_1E65DF378();
      v27 = v26;
      (*v60)(v23, v24);
    }

    else
    {
      v25 = *v22;
      v27 = *(v62 + 8);
    }

    v16(v0[15], v0[16], v0[13]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v63;
    v29 = sub_1E6215038(v25, v27);
    v37 = v63[2];
    v38 = (v30 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return MEMORY[0x1EEE6DD58](v29, v30, v31, v32, v33, v34, v35, v36);
    }

    v41 = v30;
    if (v63[3] >= v40)
    {
      v43 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v29;
        sub_1E6424B84();
        v29 = v51;
      }

LABEL_21:
      v44 = v0[15];
      v64 = v0[16];
      v45 = v0[12];
      v46 = v0[13];
      if (v41)
      {
        v47 = v29;

        (*v58)(v71[7] + v47 * v57, v44, v46);
        sub_1E60C3430(v45, type metadata accessor for LibraryItemContext);
        (*v66)(v64, v46);
        v4 = v71;
        v5 = v65;
        continue;
      }

      v71[(v29 >> 6) + 8] |= 1 << v29;
      v48 = (v71[6] + 16 * v29);
      *v48 = v43;
      v48[1] = v27;
      (*v59)(v71[7] + v29 * v57, v44, v46);
      sub_1E60C3430(v45, type metadata accessor for LibraryItemContext);
      v29 = (*v66)(v64, v46);
      v49 = v71[2];
      v39 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (!v39)
      {
        v71[2] = v50;
        v4 = v71;
        v5 = v65;
        continue;
      }

      goto LABEL_33;
    }

    break;
  }

  sub_1E641BE8C(v40, isUniquelyReferenced_nonNull_native);
  v29 = sub_1E6215038(v25, v27);
  if ((v41 & 1) == (v42 & 1))
  {
    v43 = v25;
    goto LABEL_21;
  }

LABEL_29:

  return sub_1E65E6C68();
}

uint64_t sub_1E60AE5D8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  v2[20] = v0;

  v5 = v2[18];
  if (v0)
  {
    v6 = v2[17];

    v7 = sub_1E60AE854;
  }

  else
  {

    v7 = sub_1E60AE720;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60AE720()
{
  v1 = v0[20];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v6 = v0[12];
  v14 = v0[9];
  v15 = v0[7];
  v7 = v0[4];
  v8 = v0[2];
  v9 = swift_task_alloc();
  *(v9 + 16) = v2;
  *(v9 + 24) = v7;
  v10 = sub_1E6404414(sub_1E60C23B0, v9, v8);

  v11 = sub_1E600A848(v10);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1E60AE854()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[7];

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_1E60AE8FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1E65D7F88();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_1E65DAEB8();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_1E65D86C8();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v12 = sub_1E65D82F8();
  v2[14] = v12;
  v13 = *(v12 - 8);
  v2[15] = v13;
  v14 = *(v13 + 64) + 15;
  v2[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[17] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[20] = v17;
  v18 = *(v17 - 8);
  v2[21] = v18;
  v19 = *(v18 + 64) + 15;
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60AEB80, 0, 0);
}

uint64_t sub_1E60AEB80()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 184) = v1;
  v2 = *(v0 + 176);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = **(v0 + 32);
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E4C98();
    (*(v4 + 8))(v2, v3);
    sub_1E5FAB460(v5, v6, &qword_1ED072910, &qword_1E65EC030);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v12 = **(v0 + 144);
        goto LABEL_12;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v10 = *(v0 + 144);
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
        v12 = *v10;
        v13 = sub_1E65D76A8();
        (*(*(v13 - 8) + 8))(&v10[v11], v13);
LABEL_12:
        *(v0 + 192) = v12;
        v24 = *(v0 + 32);
        v25 = *(type metadata accessor for AppComposer() + 20);
        *(v0 + 304) = v25;
        v26 = v24 + v25;
        v27 = type metadata accessor for AppEnvironment();
        *(v0 + 200) = v27;
        v28 = v26 + *(v27 + 52);
        v29 = ConfigurationService.queryConfiguration.getter();
        *(v0 + 208) = v30;
        v34 = (v29 + *v29);
        v31 = v29[1];
        v32 = swift_task_alloc();
        *(v0 + 216) = v32;
        *v32 = v0;
        v32[1] = sub_1E60AEE90;
        v33 = *(v0 + 128);

        return v34(v33);
      }

      sub_1E5DFE50C(*(v0 + 144), &qword_1ED072910, &qword_1E65EC030);
    }

    v12 = MEMORY[0x1E69E7CD0];
    goto LABEL_12;
  }

  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 128);
  v17 = *(v0 + 104);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = *(v0 + 176);

  v21 = *(v0 + 8);
  v22 = MEMORY[0x1E69E7CD0];

  return v21(v22);
}

uint64_t sub_1E60AEE90()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v8 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = *(v2 + 208);
    v5 = *(v2 + 192);

    v6 = sub_1E60AFBB8;
  }

  else
  {
    v6 = sub_1E60AEFB8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E60AEFB8()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 304);
  v4 = *(v0 + 184);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);

  v7 = v5 + v3 + *(v2 + 44);
  v28 = BookmarkService.filterPlaylists.getter();
  v29 = v8;
  v30 = MEMORY[0x1E69E7CC0];
  sub_1E601C17C(0, v4, 0);
  v9 = 0;
  v10 = *(v30 + 16);
  v11 = 24 * v10 + 48;
  v12 = (v6 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = v10 + 1;
    v16 = *(v30 + 24);

    if (v10 >= v16 >> 1)
    {
      sub_1E601C17C((v16 > 1), v15, 1);
    }

    v17 = *(v0 + 184);
    ++v9;
    *(v30 + 16) = v15;
    v18 = (v30 + v11);
    *(v18 - 2) = v13;
    *(v18 - 1) = v14;
    *v18 = 1;
    v11 += 24;
    v12 += 2;
    ++v10;
  }

  while (v9 != v17);
  v19 = *(v0 + 224);
  v20 = *(v0 + 192);
  v21 = *(v0 + 104);
  *(v0 + 232) = v29;
  v22 = sub_1E60A219C(v20);

  sub_1E5FA9FC8(v22);
  sub_1E600AAA0(v30);

  sub_1E65D86B8();
  v27 = (v28 + *v28);
  v23 = v28[1];
  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  v24[1] = sub_1E60AF208;
  v25 = *(v0 + 104);

  return v27(v25);
}

uint64_t sub_1E60AF208(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  v7 = v3[29];
  (*(v3[12] + 8))(v3[13], v3[11]);

  if (v1)
  {
    v8 = sub_1E60AFC78;
  }

  else
  {
    v8 = sub_1E60AF394;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E60AF394()
{
  v1 = *(v0 + 248);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 248) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v52 = *(v0 + 72);
  v53 = (v52 + 8);
  v50 = *(v0 + 48);
  v54 = *(v0 + 248);

  v10 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    (*(v52 + 16))(*(v0 + 80), *(v54 + 48) + *(v52 + 72) * (v12 | (v10 << 6)), *(v0 + 64));
    *(v0 + 16) = sub_1E65DAE88();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074550, &qword_1E65F0D90);
    sub_1E5FED46C(&qword_1ED074558, &qword_1ED074550, &qword_1E65F0D90);
    v13 = sub_1E65E5E78();

    v14 = v13;
    v15 = *(v0 + 80);
    v16 = *(v0 + 64);
    if (*(v13 + 16))
    {
      v17 = *(v0 + 56);
      v18 = *(v0 + 40);
      (*(v50 + 16))(v17, v14 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), v18);

      v48 = sub_1E65D7F38();
      v49 = v19;
      (*v53)(v15, v16);
      (*(v50 + 8))(v17, v18);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E64F6718(0, *(v51 + 16) + 1, 1, v51);
        v51 = result;
      }

      v21 = *(v51 + 16);
      v20 = *(v51 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1E64F6718((v20 > 1), v21 + 1, 1, v51);
        v51 = result;
      }

      *(v51 + 16) = v21 + 1;
      v22 = v51 + 16 * v21;
      *(v22 + 32) = v48;
      *(v22 + 40) = v49;
    }

    else
    {

      result = (*v53)(v15, v16);
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v23 = *(v0 + 248);

  if (*(v51 + 16))
  {
    v24 = *(v0 + 32) + *(v0 + 304) + *(*(v0 + 200) + 48);
    v25 = CatalogService.fetchRemoteCatalogWorkouts.getter();
    *(v0 + 264) = v26;
    v27 = sub_1E600AA08(v51);
    *(v0 + 272) = v27;

    v55 = (v25 + *v25);
    v28 = v25[1];
    v29 = swift_task_alloc();
    *(v0 + 280) = v29;
    *v29 = v0;
    v29[1] = sub_1E60AF8DC;

    return v55(v27);
  }

  else
  {

    v30 = *(v0 + 248);
    v31 = *(v0 + 256);
    v33 = *(v0 + 120);
    v32 = *(v0 + 128);
    v34 = *(v0 + 112);
    v35 = *(v0 + 32);
    v36 = swift_task_alloc();
    v37 = MEMORY[0x1E69E7CD0];
    v36[2] = v32;
    v36[3] = v37;
    v36[4] = v35;
    v38 = sub_1E640486C(sub_1E60C3294, v36, v30);

    v39 = sub_1E600BEE0(v38);

    (*(v33 + 8))(v32, v34);
    v40 = *(v0 + 176);
    v42 = *(v0 + 144);
    v41 = *(v0 + 152);
    v43 = *(v0 + 128);
    v44 = *(v0 + 104);
    v45 = *(v0 + 80);
    v46 = *(v0 + 56);

    v47 = *(v0 + 8);

    return v47(v39);
  }
}

uint64_t sub_1E60AF8DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 280);
  v6 = *v2;
  v4[36] = v1;

  v7 = v4[34];
  v8 = v4[33];
  if (v1)
  {
    v9 = v4[31];

    v10 = sub_1E60AFD50;
  }

  else
  {

    v4[37] = a1;
    v10 = sub_1E60AFA5C;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1E60AFA5C()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[31];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v8[2] = v4;
  v8[3] = v1;
  v8[4] = v7;
  v9 = sub_1E640486C(sub_1E60C3294, v8, v3);

  v10 = sub_1E600BEE0(v9);

  (*(v5 + 8))(v4, v6);
  v11 = v0[22];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[10];
  v17 = v0[7];

  v18 = v0[1];

  return v18(v10);
}

uint64_t sub_1E60AFBB8()
{
  v1 = v0[28];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E60AFC78()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[32];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E60AFD50()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[36];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E60AFE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v211 = a4;
  v210 = a3;
  v244 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v191 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v224 = &v191 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v223 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v232 = &v191 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v231 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v242 = &v191 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v233 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v243 = &v191 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v191 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v205 = &v191 - v35;
  v204 = sub_1E65DAC98();
  v202 = *(v204 - 8);
  v36 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v199 = &v191 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1E65DB268();
  v38 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v200 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_1E65DA0B8();
  v201 = *(v203 - 8);
  v40 = *(v201 + 64);
  v41 = MEMORY[0x1EEE9AC00](v203);
  v198 = &v191 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v216 = &v191 - v43;
  v197 = sub_1E65D9D58();
  v196 = *(v197 - 8);
  v44 = *(v196 + 64);
  v45 = MEMORY[0x1EEE9AC00](v197);
  v195 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v194 = &v191 - v47;
  v212 = sub_1E65D8BB8();
  v48 = *(*(v212 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v212);
  v213 = &v191 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v225 = &v191 - v51;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v52 = *(*(v215 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v215);
  v214 = &v191 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v241 = (&v191 - v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v227 = &v191 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v235 = &v191 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v240 = &v191 - v62;
  v248 = sub_1E65D72D8();
  v239 = *(v248 - 8);
  v63 = *(v239 + 64);
  MEMORY[0x1EEE9AC00](v248);
  v247 = &v191 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v68 = &v191 - v67;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v207 = *(v208 - 1);
  v69 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v71 = &v191 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v73 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v75 = &v191 - v74;
  v230 = sub_1E65D9AC8();
  v246 = *(v230 - 8);
  v76 = v246[8];
  v77 = MEMORY[0x1EEE9AC00](v230);
  v209 = &v191 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v234 = &v191 - v79;
  v222 = sub_1E65D7848();
  v221 = *(v222 - 8);
  v80 = *(v221 + 64);
  MEMORY[0x1EEE9AC00](v222);
  v249 = &v191 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for ItemContext();
  v82 = *(*(v218 - 8) + 64);
  v83 = MEMORY[0x1EEE9AC00](v218);
  v217 = &v191 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83);
  v238 = &v191 - v85;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v219 = *(v220 - 8);
  v86 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v220);
  v237 = &v191 - v87;
  v88 = sub_1E65E03F8();
  v89 = *(*(v88 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v236 = &v191 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v228 = *(v229 - 8);
  v91 = *(v228 + 64);
  v92 = MEMORY[0x1EEE9AC00](v229);
  v94 = &v191 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v226 = &v191 - v95;
  v245 = a1;
  v96 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v193 = v10;
  v98 = sub_1E6215038(v96, v97);
  v100 = v99;

  if ((v100 & 1) == 0)
  {
LABEL_7:
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v110 - 8) + 56))(v244, 1, 1, v110);
  }

  v191 = v32;
  v101 = v228;
  v102 = v229;
  (*(v228 + 16))(v94, *(a2 + 56) + *(v228 + 72) * v98, v229);
  (*(v101 + 32))(v226, v94, v102);
  sub_1E65E04F8();
  v103 = v210;
  v104 = *v210;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v105 = v103 + *(type metadata accessor for AppComposer() + 20);
  v253 = v105[8];
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v106 = v208;
  sub_1E65E4C98();
  sub_1E60EEE88(v75);
  sub_1E5DFE50C(v68, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v207 + 8))(v71, v106);
  v107 = v246;
  v108 = v246[6];
  v109 = v230;
  if (v108(v75, 1, v230) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v108(v75, 1, v109) != 1)
    {
      sub_1E5DFE50C(v75, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (v107[4])(v234, v75, v109);
  }

  v112 = *(type metadata accessor for AppEnvironment() + 136);
  v113 = sub_1E5F9B6D0(v211);
  v114 = sub_1E65D8248();
  v211 = v112;
  sub_1E63C4134(v249, &v105[v112], v114, v247);

  v115 = sub_1E65D80A8();
  v116 = sub_1E65D9AA8();
  v118 = v117;
  v119 = v209;
  MEMORY[0x1E6941490]();
  v120 = sub_1E65D9AA8();
  v122 = v121;
  v123 = v246[1];
  ++v246;
  v210 = v123;
  (v123)(v119, v109);
  if (v116 == v120 && v118 == v122)
  {
  }

  else
  {
    v124 = sub_1E65E6C18();

    if ((v124 & 1) == 0)
    {
      v126 = sub_1E65D8198();
      v127 = sub_1E65D9AA8();
      v129 = sub_1E637CA94(v127, v128, v126);

      v125 = v249;
      if (v129)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v130 = *(sub_1E65DADF8() - 8);
        v131 = *(v130 + 72);
        v132 = (*(v130 + 80) + 32) & ~*(v130 + 80);
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_1E65EB9E0;
        v134 = (v133 + v132);
        *v134 = sub_1E65D9AA8();
        v134[1] = v135;
        swift_storeEnumTagMultiPayload();
        *(v134 + v131) = 1;
        swift_storeEnumTagMultiPayload();
        v136 = sub_1E65D80A8();
        v250 = v133;
        sub_1E5FA9E2C(v136);
        v115 = v250;
      }

      goto LABEL_16;
    }
  }

  v125 = v249;
LABEL_16:
  v137 = *(sub_1E65D8068() + 16);

  v138 = v240;
  if (v137)
  {
    v139 = sub_1E65D8068();
    sub_1E63C4134(v125, &v105[v211], v139, v138);

    v140 = 0;
  }

  else
  {
    v140 = 1;
  }

  v209 = v115;
  v141 = v239 + 56;
  v207 = *(v239 + 56);
  (v207)(v138, v140, 1, v248);
  v208 = sub_1E63B0704(v113);

  v142 = v225;
  sub_1E65D8128();
  v143 = v142;
  v144 = v213;
  sub_1E5E1D41C(v143, v213, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v192 = v105;
  if (EnumCaseMultiPayload == 1)
  {
    v146 = v201;
    v147 = v216;
    v148 = v203;
    (*(v201 + 32))(v216, v144, v203);
    v149 = v198;
    (*(v146 + 16))(v198, v147, v148);
    v213 = v141;
    v150 = v199;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v202 + 8))(v150, v204);
    sub_1E65DA0A8();
    sub_1E60C330C(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v151 = v214;
    sub_1E65DC438();
    v152 = *(v146 + 8);
    v152(v149, v148);
    v152(v216, v148);
    v125 = v249;
  }

  else
  {
    v153 = v196;
    v154 = v194;
    v155 = v144;
    v156 = v197;
    (*(v196 + 32))(v194, v155, v197);
    v157 = v195;
    (*(v153 + 16))(v195, v154, v156);
    v151 = v214;
    sub_1E6134678(v157, v214);
    (*(v153 + 8))(v154, v156);
  }

  sub_1E60C3430(v225, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v151, v241, &qword_1ED074530, &qword_1E65F0CA8);
  v158 = sub_1E65D81E8();
  v161 = v209;
  if (v160 == -1)
  {
    v165 = 4;
  }

  else
  {
    v250 = v158;
    v251 = v159;
    v252 = v160 & 1;
    v162 = v158;
    v163 = v159;
    v164 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v162, v163, v164);
    v165 = v254;
  }

  LODWORD(v216) = v165;
  v166 = v207;
  v167 = v235;
  v168 = v248;
  (*(v239 + 16))(v235, v247, v248);
  v169 = 1;
  v166(v167, 0, 1, v168);
  sub_1E65D8158();
  v170 = v227;
  if (*(v161 + 16))
  {
    sub_1E63C4134(v125, &v192[v211], v161, v227);
    v169 = 0;
  }

  v166(v170, v169, 1, v248);
  sub_1E65D8178();
  v171 = type metadata accessor for ActionButtonDescriptor(0);
  v225 = v171;
  v172 = *(*(v171 - 8) + 56);
  v173 = v232;
  v172();
  v174 = v223;
  (v172)(v223, 1, 1, v171);
  v175 = sub_1E65D8088();
  v177 = v176;
  v215 = v176;
  v178 = sub_1E65D80C8();
  v180 = v179;
  v182 = v181;
  v183 = sub_1E65D81B8();
  v182 &= 1u;
  v190 = v175;
  v189 = v173;
  v184 = v227;
  v185 = v231;
  sub_1E63A0574(v237, v241, v208, v216, v235, v242, v227, v231, v243, v240, v253, v189, v174, v190, v177, v178, v180, v182, v183, v186, 7u);

  sub_1E5F87058(v178, v180, v182);

  sub_1E5DFE50C(v174, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v232, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v185, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v184, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v242, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v235, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D41C(v238, v217, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v243, v233, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v224);
  sub_1E622BB88(v247, v193);
  v245 = type metadata accessor for ArtworkDescriptor();
  v242 = type metadata accessor for ContextMenu(0);
  v235 = type metadata accessor for ItemMetrics();
  v232 = type metadata accessor for ViewDescriptor();
  v231 = sub_1E60C330C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E60C330C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E60C330C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E60C330C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E60C330C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E60C330C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v187 = v244;
  sub_1E65E0488();
  sub_1E5DFE50C(v243, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v241, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v240, &qword_1ED072D90, &qword_1E66040F0);
  (*(v239 + 8))(v247, v248);
  (v210)(v234, v230);
  (*(v221 + 8))(v249, v222);
  sub_1E60C3430(v238, type metadata accessor for ItemContext);
  (*(v219 + 8))(v237, v220);
  sub_1E60C3430(v236, MEMORY[0x1E699D780]);
  (*(v228 + 8))(v226, v229);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v188 - 8) + 56))(v187, 0, 1, v188);
}