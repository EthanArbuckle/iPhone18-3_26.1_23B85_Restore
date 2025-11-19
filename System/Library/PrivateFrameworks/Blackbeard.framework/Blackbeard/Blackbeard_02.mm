uint64_t sub_1E5E1E9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EB40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1EBCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5E1EC14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v12 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1E65E4FD8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v9 = sub_1E65E5018();
  __swift_project_value_buffer(v9, qword_1EE2D49E8);
  v10 = sub_1E65E2E78();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_1E65E4728();
  sub_1E5DFE50C(v3, &unk_1ED077730, &unk_1E65EA310);
  return sub_1E5DFE50C(v7, &qword_1ED071EF8, &unk_1E65FA470);
}

uint64_t sub_1E5E1EE1C()
{
  v0 = sub_1E65E5178();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E65E4FF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E65E5018();
  __swift_allocate_value_buffer(v4, qword_1EE2D49E8);
  __swift_project_value_buffer(v4, qword_1EE2D49E8);
  v5 = sub_1E65E5C48();
  v6 = sub_1E65E5C48();
  v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6];

  sub_1E65E5168();
  sub_1E5E1EF9C();
  sub_1E65E4FE8();
  return sub_1E65E5008();
}

unint64_t sub_1E5E1EF9C()
{
  result = qword_1EE2DBC50[0];
  if (!qword_1EE2DBC50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2DBC50);
  }

  return result;
}

uint64_t sub_1E5E1F010()
{
  result = sub_1E65DEEA8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1E5E1F174(uint64_t a1)
{
  v3 = *(v1 + qword_1EE2D87B0);
  v4 = *(v1 + qword_1EE2D87B0 + 8);
  v5 = objc_allocWithZone(type metadata accessor for ScrollHostingController());
  return sub_1E5E1F1BC(a1);
}

uint64_t sub_1E5E1F1BC(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x1E69E7D40] & *v1) + qword_1EE2D87B0) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_1E65E4058();
}

unint64_t sub_1E5E1F2A4()
{
  result = qword_1EE2D4BC0;
  if (!qword_1EE2D4BC0)
  {
    sub_1E65E43B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4BC0);
  }

  return result;
}

unint64_t sub_1E5E1F2FC()
{
  result = qword_1EE2D4850;
  if (!qword_1EE2D4850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED074280, &qword_1E65EFF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4850);
  }

  return result;
}

uint64_t sub_1E5E1F360@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v9);
  sub_1E5DFE50C(v5, &qword_1ED071F78, &unk_1E65EA3F0);
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1E65D77C8();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1E5DFE50C(v9, &qword_1ED071F80, &unk_1E65F4310);
  }

  return result;
}

uint64_t sub_1E5E1F544@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFD1CC(v2, v7, &qword_1ED071F78, &unk_1E65EA3F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v15 = *(v9 + 32);
    v15(v12, v7, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5DFE50C(v7, &qword_1ED071F78, &unk_1E65EA3F0);
LABEL_8:
    v17 = 1;
    return (*(v9 + 56))(a1, v17, 1, v8);
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075378, &qword_1E65F1A00) + 48);
  v15 = *(v9 + 32);
  v15(v12, v7, v8);
  v16 = sub_1E65D76A8();
  (*(*(v16 - 8) + 8))(&v7[v14], v16);
LABEL_6:
  v15(a1, v12, v8);
  v17 = 0;
  return (*(v9 + 56))(a1, v17, 1, v8);
}

void sub_1E5E1F788(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1E5E1F7F4(a3);
}

id sub_1E5E1F7F4(unint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_willMoveToParentViewController_, a1);
  result = [v1 parentViewController];
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a1)
  {
LABEL_15:
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v5 = result;
      v4 = *&v1[qword_1EE2D9140];
      if (v4 >> 62)
      {
        goto LABEL_34;
      }

      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

    return result;
  }

  v4 = *&v1[qword_1EE2D9140];
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v16 = *&v1[qword_1EE2D9140];
    }

    v5 = sub_1E65E67C8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    a1 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E694E2D0](a1, v4);
      }

      else
      {
        if (a1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v6 = *(v4 + 8 * a1 + 32);
      }

      v7 = v6;
      v8 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [*&v6[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] removeFromParentViewController];

      ++a1;
      if (v8 == v5)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v9 = sub_1E65E67C8();
LABEL_18:
      v17 = a1;

      if (!v9)
      {
        break;
      }

      v10 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E694E2D0](v10, v4);
        }

        else
        {
          if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_31;
          }

          v11 = *(v4 + 8 * v10 + 32);
        }

        v12 = v11;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        [*&v11[OBJC_IVAR____TtC10Blackbeard13BarButtonItem_hostingController] setParentViewController_];

        ++v10;
        if (a1 == v9)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
    }

LABEL_27:
  }

  else
  {
LABEL_28:

    v14 = *&v1[qword_1EE2D9108];
    v15 = *&v1[qword_1EE2D9108 + 8];
    return v14(v13);
  }
}

uint64_t sub_1E5E1FA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E1FAE4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  sub_1E65E4EE8();
  sub_1E5E263A0(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E5E012CC, 0, 0);
}

void WindowSceneObserver.bounds.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 effectiveGeometry];
    v6 = [v5 coordinateSpace];

    [v6 bounds];
    v14 = v7;
    v15 = v8;
    v13 = v9;
    v16 = v10;

    swift_unknownObjectRelease();
    *&v12 = v13;
    *&v11 = v14;
    *(&v11 + 1) = v15;
    *(&v12 + 1) = v16;
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v3 == 0;
}

uint64_t sub_1E5E1FC4C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v0 = sub_1E65E3B68();
  __swift_project_value_buffer(v0, qword_1EE2EA2A0);
  sub_1E65E3B18();
  sub_1E5E20198(2, v30);
  v1 = v31;
  v2 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v2 + 16))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(0, v30);
  v3 = v31;
  v4 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v4 + 16))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(15, v30);
  v5 = v31;
  v6 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(22, v30);
  v7 = v31;
  v8 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v8 + 8))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(3, v30);
  v9 = v31;
  v10 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(24, v30);
  v11 = v31;
  v12 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v12 + 8))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(26, v30);
  v13 = v31;
  v14 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v14 + 8))(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v15 = sub_1E65DDF08();
  v31 = v15;
  v32 = sub_1E5E041A4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(v15 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF8], v15);
  LOBYTE(v15) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (v15)
  {
    sub_1E5E20198(4, v30);
    v17 = v31;
    v18 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1E5E20198(5, v30);
    v19 = v31;
    v20 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    (*(v20 + 8))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  sub_1E5E20198(11, v30);
  v21 = v31;
  v22 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v22 + 8))(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(8, v30);
  v23 = v31;
  v24 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v24 + 8))(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(1, v30);
  v25 = v31;
  v26 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v26 + 8))(v25, v26);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1E5E20198(20, v30);
  v27 = v31;
  v28 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v28 + 8))(v27, v28);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t _s10Blackbeard12AppSizeClassO11canvasWidthAC12CoreGraphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 460.0)
  {
    return 1;
  }

  if (a1 > 1194.0)
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  if (a1 > 981.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 3;
  }

  if (a1 > 726.0)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E5E20198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1E64290E4(a1), (v8 & 1) != 0))
  {
    sub_1E635A034(*(v6 + 56) + 48 * v7, v10);
    v11[0] = v10[0];
    v11[1] = v10[1];
    v11[2] = v10[2];
  }

  else
  {
    swift_endAccess();
    sub_1E5E2029C(a1, v11);
    sub_1E635A034(v11, v10);
    swift_beginAccess();
    sub_1E64075B0(v10, a1);
  }

  swift_endAccess();
  sub_1E5DF650C(v11, a2);
  return sub_1E635A06C(v11);
}

uint64_t sub_1E5E2029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_resolvers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1E64290E4(a1), (v8 & 1) != 0))
  {
    sub_1E635A034(*(v6 + 56) + 48 * v7, v11);
    v9 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v11[2];
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    switch(a1)
    {
      case 1:
        result = sub_1E6370194(a2);
        break;
      case 2:
        result = sub_1E5FC564C(a2);
        break;
      case 3:
        result = sub_1E61281E0(a2);
        break;
      case 4:
        result = sub_1E60267F8(a2);
        break;
      case 5:
        result = sub_1E5FAC608(a2);
        break;
      case 6:
        result = sub_1E63CA394(a2);
        break;
      case 7:
        result = sub_1E608537C(a2);
        break;
      case 8:
        result = sub_1E6060D28(a2);
        break;
      case 9:
        result = sub_1E64616D0(a2);
        break;
      case 10:
        result = sub_1E63D132C(a2);
        break;
      case 11:
        result = sub_1E602B6BC(a2);
        break;
      case 12:
        result = sub_1E636B310(a2);
        break;
      case 13:
        result = sub_1E63FFE64(a2);
        break;
      case 14:
        result = sub_1E6186428(a2);
        break;
      case 15:
        result = sub_1E5E20534(a2);
        break;
      case 16:
        result = sub_1E616E60C(a2);
        break;
      case 17:
        result = sub_1E616BAEC(a2);
        break;
      case 18:
        result = sub_1E64521C0(a2);
        break;
      case 19:
        result = sub_1E60EB890(a2);
        break;
      case 20:
        result = sub_1E61C6D40(a2);
        break;
      case 21:
        result = sub_1E642B340(a2);
        break;
      case 22:
        result = sub_1E6396E04(a2);
        break;
      case 23:
        result = sub_1E6314DF0(a2);
        break;
      case 24:
        result = sub_1E612E624(a2);
        break;
      case 25:
        result = sub_1E64F3DE0(a2);
        break;
      case 26:
        result = sub_1E617FE94(a2);
        break;
      case 27:
        result = sub_1E64D80D0(a2);
        break;
      default:
        result = sub_1E6001E7C(a2);
        break;
    }
  }

  return result;
}

uint64_t sub_1E5E20534@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v33 - v5;
  v34 = type metadata accessor for ContentAvailabilityService();
  Description = v34[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v34);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v35 = v12;
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - v13;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v15 = sub_1E65E3B68();
  __swift_project_value_buffer(v15, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v16 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v17 = v1 + *(type metadata accessor for AppEnvironment() + 56);
  v18 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v33 = v2;
  v19 = v17 + v16;
  v20 = v34;
  (Description[2])(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v34);
  v21 = (*(Description + 80) + 16) & ~*(Description + 80);
  v22 = swift_allocObject();
  (Description[4])(v22 + v21, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);

  sub_1E65E4E08();
  v23 = v38;
  v38[3] = v8;
  v23[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  v25 = *(v9 + 16);
  v25(boxed_opaque_existential_1, v14, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1E65EA670;
  v27 = sub_1E65E60A8();
  v28 = v37;
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  v29 = v36;
  v25(v36, v14, v8);
  v30 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v33;
  (*(v9 + 32))(&v31[v30], v29, v8);

  *(v26 + 32) = sub_1E6059EAC(0, 0, v28, &unk_1E65FD648, v31);
  result = (*(v9 + 8))(v14, v8);
  v23[5] = v26;
  return result;
}

uint64_t sub_1E5E209A8()
{
  v1 = type metadata accessor for ContentAvailabilityService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E20A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E20BC8(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_1E5E20C10(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10)
{
  v33 = a7;
  v32 = a6;
  v31[2] = a5;
  v34 = a2;
  v13 = a10;
  v35 = a9;
  v14 = sub_1E65E3B68();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v19 = sub_1E65E3B48();
  v20 = sub_1E65E6338();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v31[1] = a8;
    v22 = v21;
    v23 = swift_slowAlloc();
    v31[0] = a10;
    v24 = v23;
    v36 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    v25 = sub_1E65E68B8();
    v27 = sub_1E5DFD4B0(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v33;
    _os_log_impl(&dword_1E5DE9000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v24;
    v13 = v31[0];
    MEMORY[0x1E694F1C0](v28, -1, -1);
    MEMORY[0x1E694F1C0](v22, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  v36 = a1;
  if (v34)
  {
    v29 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FE8();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v13);
    return sub_1E65E5FF8();
  }
}

uint64_t objectdestroy_5Tm()
{
  v1 = (type metadata accessor for AppEnvironment() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);
  swift_unknownObjectRelease();
  v6 = v1[8];
  v7 = type metadata accessor for AccountService();
  (*(v7[-1].Description + 1))(v4 + v6, v7);
  v8 = v1[9];
  v9 = type metadata accessor for AppStateService();
  (*(v9[-1].Description + 1))(v4 + v8, v9);
  v10 = v1[10];
  v11 = type metadata accessor for ArchivedSessionService();
  (*(v11[-1].Description + 1))(v4 + v10, v11);
  v12 = v1[11];
  v13 = type metadata accessor for AssetService();
  (*(v13[-1].Description + 1))(v4 + v12, v13);
  v14 = v1[12];
  v15 = type metadata accessor for AwardsService();
  (*(v15[-1].Description + 1))(v4 + v14, v15);
  v16 = v1[13];
  v17 = type metadata accessor for BookmarkService();
  (*(v17[-1].Description + 1))(v4 + v16, v17);
  v18 = v1[14];
  v19 = type metadata accessor for CatalogService();
  (*(v19[-1].Description + 1))(v4 + v18, v19);
  v20 = v1[15];
  v21 = type metadata accessor for ConfigurationService();
  (*(v21[-1].Description + 1))(v4 + v20, v21);
  v22 = v1[16];
  v23 = type metadata accessor for ContentAvailabilityService();
  (*(v23[-1].Description + 1))(v4 + v22, v23);
  v24 = v1[17];
  v25 = type metadata accessor for EngagementService();
  (*(v25[-1].Description + 1))(v4 + v24, v25);
  v26 = v1[18];
  v27 = type metadata accessor for HealthDataService();
  (*(v27[-1].Description + 1))(v4 + v26, v27);
  v28 = v1[19];
  v29 = type metadata accessor for InteropService();
  (*(v29[-1].Description + 1))(v4 + v28, v29);
  v30 = v1[20];
  v31 = type metadata accessor for LocalizationService();
  (*(v31[-1].Description + 1))(v4 + v30, v31);
  v32 = v1[21];
  v33 = type metadata accessor for MarketingService();
  (*(v33[-1].Description + 1))(v4 + v32, v33);
  v34 = v1[22];
  v35 = type metadata accessor for MetricService();
  (*(v35[-1].Description + 1))(v4 + v34, v35);
  v36 = v1[23];
  v37 = type metadata accessor for PersonalizationService();
  (*(v37[-1].Description + 1))(v4 + v36, v37);
  v38 = v1[24];
  v39 = type metadata accessor for PlayerService();
  (*(v39[-1].Description + 1))(v4 + v38, v39);
  v40 = v1[25];
  v41 = type metadata accessor for PrivacyPreferenceService();
  (*(v41[-1].Description + 1))(v4 + v40, v41);
  v42 = v1[26];
  v43 = type metadata accessor for RecommendationService();
  (*(v43[-1].Description + 1))(v4 + v42, v43);
  v44 = v1[27];
  v45 = type metadata accessor for RemoteBrowsingService();
  (*(v45[-1].Description + 1))(v4 + v44, v45);
  v46 = v1[28];
  v47 = type metadata accessor for SearchService();
  (*(v47[-1].Description + 1))(v4 + v46, v47);
  v48 = v1[29];
  v49 = type metadata accessor for ServiceSubscriptionService();
  (*(v49[-1].Description + 1))(v4 + v48, v49);
  v50 = v1[30];
  v51 = type metadata accessor for SessionService();
  (*(v51[-1].Description + 1))(v4 + v50, v51);
  v52 = v1[31];
  v53 = type metadata accessor for SharePlayService();
  (*(v53[-1].Description + 1))(v4 + v52, v53);
  v54 = v1[32];
  v55 = type metadata accessor for SiriService();
  (*(v55[-1].Description + 1))(v4 + v54, v55);
  v56 = v1[33];
  v57 = type metadata accessor for SyncService();
  (*(v57[-1].Description + 1))(v4 + v56, v57);
  v58 = (v4 + v1[34]);
  v59 = v58[1];

  v60 = v58[3];

  v61 = v58[5];

  v62 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(v4 + v62, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v4 + v1[36]));
  v64 = *(v4 + v1[37]);

  v65 = v1[38];
  v66 = type metadata accessor for WorkoutPlanService();
  (*(v66[-1].Description + 1))(v4 + v65, v66);
  v67 = *(v0 + v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_153Tm()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  v115 = v0;
  v113 = (v114 + 48) & ~v114;
  v109 = v0 + v113;
  v3 = *(v0 + v113);

  v4 = (v0 + v113 + v116[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v4[v7], v111);
  v8 = v6[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v8], v108);
  v9 = v6[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v9], v106);
  v10 = v6[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v10], v104);
  v11 = v6[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v11], v102);
  v12 = v6[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v12], v100);
  v13 = v6[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v13], v98);
  v14 = v6[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v14], v96);
  v15 = v6[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v15], v94);
  v16 = v6[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v16], v92);
  v17 = v6[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v17], v90);
  v18 = v6[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v18], v88);
  v19 = v6[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v19], v86);
  v20 = v6[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v20], v84);
  v21 = v6[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v21], v82);
  v22 = v6[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v22], v80);
  v23 = v6[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v23], v78);
  v24 = v6[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v24], v76);
  v25 = v6[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v25], v74);
  v26 = v6[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v26], v72);
  v27 = v6[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v4[v27], v70);
  v28 = v6[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v4[v28], v68);
  v29 = v6[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v4[v29], v61);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v65 = *(v31[-1].Description + 1);
  v65(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v64 = *(v33[-1].Description + 1);
  v64(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v63 = *(v35[-1].Description + 1);
  v63(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v60 = *(v44[-1].Description + 1);
  v60(&v4[v43], v44);
  v45 = *(v109 + v116[6]);

  v46 = (v109 + v116[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v110(&v49[v6[6]], v111);
  v107(&v49[v6[7]], v108);
  v105(&v49[v6[8]], v106);
  v103(&v49[v6[9]], v104);
  v101(&v49[v6[10]], v102);
  v99(&v49[v6[11]], v100);
  v97(&v49[v6[12]], v98);
  v95(&v49[v6[13]], v96);
  v93(&v49[v6[14]], v94);
  v91(&v49[v6[15]], v92);
  v89(&v49[v6[16]], v90);
  v87(&v49[v6[17]], v88);
  v85(&v49[v6[18]], v86);
  v83(&v49[v6[19]], v84);
  v81(&v49[v6[20]], v82);
  v79(&v49[v6[21]], v80);
  v77(&v49[v6[22]], v78);
  v75(&v49[v6[23]], v76);
  v73(&v49[v6[24]], v74);
  v71(&v49[v6[25]], v72);
  v69(&v49[v6[26]], v70);
  v67(&v49[v6[27]], v68);
  v66(&v49[v6[28]], v61);
  v65(&v49[v6[29]], v31);
  v64(&v49[v6[30]], v33);
  v63(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v62(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v60(&v49[v6[36]], v44);
  v56 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v109 + v116[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = *(v115 + ((v113 + v112) & 0xFFFFFFFFFFFFFFF8) + 16);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = v1[2];
  swift_unknownObjectRelease();
  if (v1[5] >= 0xCuLL)
  {
  }

  if (v1[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 12);
  (*(v3 + 8))(v1 + ((v4 + 136) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  v7 = *(v1 + v5);

  return swift_deallocObject();
}

uint64_t sub_1E5E224F8()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_1E65E4CF8();

  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5E22578(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E5E225D8(v2);
  }

  return result;
}

uint64_t sub_1E5E225D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - v6;
  v8 = type metadata accessor for NavigationControllerRoutingContext();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v12 = *(v1 + v11);

  v14 = sub_1E5E22A94(v13);
  if (*(v14 + 16) <= *(a1 + 16) >> 3)
  {
    *&v60 = a1;

    sub_1E5E22C9C(v14);

    v57 = v60;
  }

  else
  {

    v57 = sub_1E5E22DDC(v14, a1);
  }

  v15 = *(v1 + v11);

  v17 = sub_1E5E22A94(v16);
  v18 = *(a1 + 16);
  v19 = *(v17 + 16);
  v54 = v7;
  if (v18 <= v19 >> 3)
  {
    *&v60 = v17;
    sub_1E5E22C9C(a1);
    v56 = v60;
  }

  else
  {
    v56 = sub_1E5E22DDC(a1, v17);
  }

  v20 = v57 + 56;
  v21 = 1 << *(v57 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v57 + 56);
  v24 = (v21 + 63) >> 6;

  v26 = 0;
  v27 = v55;
  if (v23)
  {
    while (1)
    {
      v28 = v26;
LABEL_15:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v60 = *(*(v57 + 48) + ((v28 << 10) | (16 * v29)));
      v30 = *(&v60 + 1);
      v31 = v60;
      sub_1E5E05374(v60, *(&v60 + 1));
      sub_1E5E24114(&v60, v27);
      sub_1E5E263A0(v27, type metadata accessor for NavigationControllerRoutingContext);
      result = sub_1E5E0476C(v31, v30);
      if (!v23)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v28 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v26 = v28;
      goto LABEL_15;
    }
  }

  v32 = v56 + 56;
  v33 = 1 << *(v56 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v56 + 56);
  v36 = (v33 + 63) >> 6;
  v57 = v52 + 56;

  v37 = 0;
  v58 = v11;
  while (v35)
  {
LABEL_27:
    v41 = (*(v56 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v35)))));
    v42 = *v41;
    v43 = v41[1];
    swift_beginAccess();
    v44 = *(v2 + v11);
    sub_1E5E05374(v42, v43);
    v45 = sub_1E5E2575C(v42, v43);
    if (v46)
    {
      v47 = v45;
      v48 = *(v2 + v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = *(v2 + v11);
      v59 = v50;
      *(v2 + v11) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1E6423C40();
        v50 = v59;
      }

      sub_1E5E0476C(*(*(v50 + 48) + 16 * v47), *(*(v50 + 48) + 16 * v47 + 8));
      v39 = v54;
      sub_1E5E24844(*(v50 + 56) + *(v52 + 72) * v47, v54, type metadata accessor for NavigationControllerRoutingContext);
      sub_1E641F10C(v47, v50);
      v51 = *(v2 + v58);
      *(v2 + v58) = v50;

      v38 = 0;
    }

    else
    {
      v38 = 1;
      v39 = v54;
    }

    v35 &= v35 - 1;
    (*v57)(v39, v38, 1, v53);
    sub_1E5DFE50C(v39, &qword_1ED072A30, &qword_1E65EEA70);
    swift_endAccess();
    result = sub_1E5E0476C(v42, v43);
    v11 = v58;
  }

  while (1)
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v40 >= v36)
    {
    }

    v35 = *(v32 + 8 * v40);
    ++v37;
    if (v35)
    {
      v37 = v40;
      goto LABEL_27;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E5E22A94(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E5DFCE18();
  result = MEMORY[0x1E694DC60](v2, &type metadata for RootItem, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1E5E0476C(v15[0], v15[1]))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_1E5E05374(*v12, v14);
    sub_1E60F4FA8(v15, v13, v14);
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v16;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5E22BB8(uint64_t a1)
{
  v2 = sub_1E65E39E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppState();
  (*(v3 + 16))(v6, a1 + *(v7 + 280), v2);
  return sub_1E65E3A98();
}

uint64_t sub_1E5E22C9C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_1E5E05374(*v11, v13);
        sub_1E5FCC8BC(v12, v13, &v14);
        sub_1E5E0476C(v12, v13);
        result = sub_1E5E07DA0(v14, *(&v14 + 1));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1E5E22DDC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v87 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
    goto LABEL_139;
  }

  v64 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v69 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v77 = (a2 + 56);

  v15 = 0;
  v71 = v13;
  v72 = v7;
  v70 = v12;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_141;
      }

      if (v17 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        goto LABEL_11;
      }
    }

LABEL_138:
    sub_1E5E24EE4();
LABEL_139:
    v57 = *MEMORY[0x1E69E9840];
    return v5;
  }

  while (1)
  {
LABEL_11:
    v18 = (*(v13 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = v18[1];
    v73 = *v18;
    v20 = *(v5 + 40);
    sub_1E65E6D28();
    v74 = v15;
    if (v19 > 2)
    {
      if (v19 != 3 && v19 != 4 && v19 != 5)
      {
LABEL_19:
        v78 = 0x7974696C61646F6DLL;
        v79 = 0xE90000000000003ALL;
        sub_1E5E05374(v73, v19);
        MEMORY[0x1E694D7C0](v73, v19);
      }
    }

    else if (v19 > 2)
    {
      goto LABEL_19;
    }

    v11 &= v11 - 1;
    sub_1E65E5D78();

    v21 = sub_1E65E6D78();
    v22 = -1 << *(v5 + 32);
    v4 = v21 & ~v22;
    v3 = v4 >> 6;
    v7 = 1 << v4;
    if (((1 << v4) & v77[v4 >> 6]) != 0)
    {
      break;
    }

LABEL_63:
    sub_1E5E0476C(v73, v19);
    v13 = v71;
    v7 = v72;
    v15 = v74;
    v12 = v70;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v75 = ~v22;
  v76 = v5;
  while (1)
  {
    v23 = (*(v5 + 48) + 16 * v4);
    v24 = *v23;
    v2 = v23[1];
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v25 = 0xE600000000000000;
        v26 = 0x686372616573;
        if (v19 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      if (v2 != 4)
      {
        if (v2 == 5)
        {
          v25 = 0xE500000000000000;
          v26 = 0x736E616C70;
          if (v19 <= 2)
          {
            goto LABEL_40;
          }

          goto LABEL_34;
        }

        goto LABEL_49;
      }

      v25 = 0xE600000000000000;
      v26 = 0x7478654E7075;
      if (v19 <= 2)
      {
LABEL_40:
        if (v19)
        {
          if (v19 == 1)
          {
            v27 = 0xE600000000000000;
            if (v26 != 0x756F59726F66)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v19 != 2)
            {
              goto LABEL_51;
            }

            v27 = 0xE700000000000000;
            if (v26 != 0x7972617262696CLL)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          v27 = 0xE700000000000000;
          if (v26 != 0x65726F6C707865)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_60;
      }
    }

    else
    {
      if (!v2)
      {
        v25 = 0xE700000000000000;
        v26 = 0x65726F6C707865;
        if (v19 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      if (v2 != 1)
      {
        if (v2 == 2)
        {
          v25 = 0xE700000000000000;
          v26 = 0x7972617262696CLL;
          if (v19 <= 2)
          {
            goto LABEL_40;
          }

          goto LABEL_34;
        }

LABEL_49:
        v80 = 0x7974696C61646F6DLL;
        v81 = 0xE90000000000003ALL;
        sub_1E5E05374(v24, v2);
        MEMORY[0x1E694D7C0](v24, v2);
        v26 = 0x7974696C61646F6DLL;
        v25 = 0xE90000000000003ALL;
        if (v19 <= 2)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

      v25 = 0xE600000000000000;
      v26 = 0x756F59726F66;
      if (v19 <= 2)
      {
        goto LABEL_40;
      }
    }

LABEL_34:
    switch(v19)
    {
      case 3:
        v27 = 0xE600000000000000;
        if (v26 != 0x686372616573)
        {
          goto LABEL_61;
        }

        break;
      case 4:
        v27 = 0xE600000000000000;
        if (v26 != 0x7478654E7075)
        {
          goto LABEL_61;
        }

        break;
      case 5:
        v27 = 0xE500000000000000;
        if (v26 != 0x736E616C70)
        {
          goto LABEL_61;
        }

        break;
      default:
LABEL_51:
        v80 = 0x7974696C61646F6DLL;
        v81 = 0xE90000000000003ALL;
        MEMORY[0x1E694D7C0](v73, v19);
        v27 = 0xE90000000000003ALL;
        if (v26 != 0x7974696C61646F6DLL)
        {
          goto LABEL_61;
        }

        break;
    }

LABEL_60:
    if (v25 == v27)
    {
      v84 = v69;
      v85 = v74;
      v86 = v11;
      v82 = v71;
      v83 = v72;
      v29 = v2;
      v2 = v71;
      sub_1E5E0476C(v24, v29);

      goto LABEL_69;
    }

LABEL_61:
    v28 = sub_1E65E6C18();
    sub_1E5E0476C(v24, v2);

    if (v28)
    {
      break;
    }

    v5 = v76;
    v4 = (v4 + 1) & v75;
    v3 = v4 >> 6;
    v7 = 1 << v4;
    if ((v77[v4 >> 6] & (1 << v4)) == 0)
    {
      goto LABEL_63;
    }
  }

  v84 = v69;
  v85 = v74;
  v86 = v11;
  v2 = v71;
  v82 = v71;
  v83 = v72;
LABEL_69:
  v8 = v76;
  v30 = sub_1E5E0476C(v73, v19);
  v31 = *(v76 + 32);
  v65 = ((1 << v31) + 63) >> 6;
  v14 = 8 * v65;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_142;
  }

  while (2)
  {
    v66 = &v63;
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v63 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v77, v32);
    v34 = *&v33[8 * v3] & ~v7;
    v35 = *(v8 + 16);
    v68 = v33;
    *&v33[8 * v3] = v34;
    v36 = v35 - 1;
    v7 = v72;
    v37 = v74;
    v38 = v70;
LABEL_71:
    v67 = v36;
LABEL_73:
    while (2)
    {
      if (v11)
      {
LABEL_79:
        v41 = (*(v2 + 48) + ((v37 << 10) | (16 * __clz(__rbit64(v11)))));
        v4 = v41[1];
        v73 = *v41;
        v42 = *(v8 + 40);
        sub_1E65E6D28();
        v74 = v37;
        if (v4 > 2)
        {
          if (v4 == 3 || v4 == 4 || v4 == 5)
          {
            goto LABEL_88;
          }
        }

        else if (v4 <= 2)
        {
          goto LABEL_88;
        }

        v78 = 0x7974696C61646F6DLL;
        v79 = 0xE90000000000003ALL;
        v43 = v73;
        sub_1E5E05374(v73, v4);
        MEMORY[0x1E694D7C0](v43, v4);
LABEL_88:
        v11 &= v11 - 1;
        sub_1E65E5D78();

        v44 = sub_1E65E6D78();
        v45 = -1 << *(v8 + 32);
        v46 = v44 & ~v45;
        v47 = v46 >> 6;
        v3 = 1 << v46;
        if (((1 << v46) & v77[v46 >> 6]) == 0)
        {
LABEL_72:
          sub_1E5E0476C(v73, v4);
          v2 = v71;
          v7 = v72;
          v37 = v74;
          v38 = v70;
          continue;
        }

        v75 = ~v45;
        while (1)
        {
          v48 = (*(v8 + 48) + 16 * v46);
          v49 = *v48;
          v50 = v48[1];
          if (v50 > 2)
          {
            if (v50 == 3)
            {
              v51 = 0xE600000000000000;
              v52 = 0x686372616573;
              if (v4 <= 2)
              {
                goto LABEL_108;
              }

              goto LABEL_102;
            }

            if (v50 != 4)
            {
              if (v50 == 5)
              {
                v51 = 0xE500000000000000;
                v52 = 0x736E616C70;
                if (v4 <= 2)
                {
                  goto LABEL_108;
                }

                goto LABEL_102;
              }

              goto LABEL_117;
            }

            v51 = 0xE600000000000000;
            v52 = 0x7478654E7075;
            if (v4 <= 2)
            {
LABEL_108:
              if (v4)
              {
                if (v4 == 1)
                {
                  v53 = 0xE600000000000000;
                  if (v52 != 0x756F59726F66)
                  {
                    goto LABEL_129;
                  }
                }

                else
                {
                  if (v4 != 2)
                  {
                    goto LABEL_119;
                  }

                  v53 = 0xE700000000000000;
                  if (v52 != 0x7972617262696CLL)
                  {
                    goto LABEL_129;
                  }
                }
              }

              else
              {
                v53 = 0xE700000000000000;
                if (v52 != 0x65726F6C707865)
                {
                  goto LABEL_129;
                }
              }

              goto LABEL_128;
            }
          }

          else
          {
            if (!v50)
            {
              v51 = 0xE700000000000000;
              v52 = 0x65726F6C707865;
              if (v4 <= 2)
              {
                goto LABEL_108;
              }

              goto LABEL_102;
            }

            if (v50 != 1)
            {
              if (v50 == 2)
              {
                v51 = 0xE700000000000000;
                v52 = 0x7972617262696CLL;
                if (v4 <= 2)
                {
                  goto LABEL_108;
                }

                goto LABEL_102;
              }

LABEL_117:
              v80 = 0x7974696C61646F6DLL;
              v81 = 0xE90000000000003ALL;
              sub_1E5E05374(v49, v50);
              MEMORY[0x1E694D7C0](v49, v50);
              v52 = v80;
              v51 = v81;
              if (v4 <= 2)
              {
                goto LABEL_108;
              }

              goto LABEL_102;
            }

            v51 = 0xE600000000000000;
            v52 = 0x756F59726F66;
            if (v4 <= 2)
            {
              goto LABEL_108;
            }
          }

LABEL_102:
          switch(v4)
          {
            case 3:
              v53 = 0xE600000000000000;
              if (v52 != 0x686372616573)
              {
                goto LABEL_129;
              }

              break;
            case 4:
              v53 = 0xE600000000000000;
              if (v52 != 0x7478654E7075)
              {
                goto LABEL_129;
              }

              break;
            case 5:
              v53 = 0xE500000000000000;
              if (v52 != 0x736E616C70)
              {
                goto LABEL_129;
              }

              break;
            default:
LABEL_119:
              v80 = 0x7974696C61646F6DLL;
              v81 = 0xE90000000000003ALL;
              v54 = v52;
              MEMORY[0x1E694D7C0](v73, v4);
              v53 = v81;
              if (v54 != v80)
              {
                goto LABEL_129;
              }

              break;
          }

LABEL_128:
          if (v51 == v53)
          {
            sub_1E5E0476C(v49, v50);

LABEL_133:
            sub_1E5E0476C(v73, v4);
            v56 = v68[v47];
            v68[v47] = v56 & ~v3;
            v8 = v76;
            v2 = v71;
            v7 = v72;
            v37 = v74;
            v38 = v70;
            if ((v56 & v3) != 0)
            {
              v36 = v67 - 1;
              if (__OFSUB__(v67, 1))
              {
                __break(1u);
              }

              if (v67 == 1)
              {

                v5 = MEMORY[0x1E69E7CD0];
                goto LABEL_138;
              }

              goto LABEL_71;
            }

            goto LABEL_73;
          }

LABEL_129:
          v55 = sub_1E65E6C18();
          sub_1E5E0476C(v49, v50);

          if (v55)
          {
            goto LABEL_133;
          }

          v8 = v76;
          v46 = (v46 + 1) & v75;
          v47 = v46 >> 6;
          v3 = 1 << v46;
          if ((v77[v46 >> 6] & (1 << v46)) == 0)
          {
            goto LABEL_72;
          }
        }
      }

      break;
    }

    v39 = v37;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v5 = sub_1E6089080(v68, v65, v67, v8);
        goto LABEL_138;
      }

      v11 = *(v7 + 8 * v40);
      ++v39;
      if (v11)
      {
        v37 = v40;
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    v59 = v14;

    v60 = v59;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v61 = swift_slowAlloc();
  memcpy(v61, v77, v60);
  v62 = v64;
  v5 = sub_1E6338228(v61, v65, v8, v4, &v82);

  if (!v62)
  {

    MEMORY[0x1E694F1C0](v61, -1, -1);
    v69 = v84;
    goto LABEL_138;
  }

  result = MEMORY[0x1E694F1C0](v61, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1E5E23B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E5E23BC8(a1, v6, a2);
}

uint64_t sub_1E5E23BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075808, &qword_1E65F1DC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v41 - v16;
  v18 = sub_1E65D7848();
  v46 = *(v18 - 8);
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for AppState();
  v22 = *(a1 + v52[63]);
  v23 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  v24 = *(v22 + 16);
  v48 = v18;
  if (v24)
  {
    v42 = v17;
    v43 = v21;
    v44 = v7;
    v45 = a1;
    v25 = sub_1E5E24758(v24, 0);
    v26 = sub_1E5E24964(&v53, v25 + 2, v24, v22);

    sub_1E5E24EE4();
    if (v26 != v24)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v7 = v44;
    a1 = v45;
    v17 = v42;
    v21 = v43;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v53 = v25;
  sub_1E5E24AC8(&v53, v23);
  v27 = v53;
  v28 = a1 + v52[62];
  v29 = *v28;
  v30 = *(v28 + 8);
  if (v30 != 6)
  {
    sub_1E5E05374(*v28, *(v28 + 8));
    if ((sub_1E5E25298(v29, v30, v22) & 1) == 0)
    {
      sub_1E5E07DA0(v29, v30);
      v29 = 0;
      v30 = 6;
    }
  }

  v53 = v29;
  v54 = v30;
  sub_1E5E25708();
  v44 = sub_1E65E5F58();
  v31 = sub_1E5E07DA0(v53, v54);
  MEMORY[0x1EEE9AC00](v31);
  *(&v41 - 2) = a1;
  v45 = sub_1E5E26400(sub_1E5E26E7C, (&v41 - 4), v27);

  v32 = v52[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v33 = v47;
  sub_1E65E4C98();
  sub_1E5E1F544(v17);
  sub_1E5DFE50C(v33, &qword_1ED071F78, &unk_1E65EA3F0);
  v34 = v46;
  v35 = *(v46 + 48);
  v36 = v48;
  if (v35(v17, 1, v48) == 1)
  {
    sub_1E65D77C8();
    if (v35(v17, 1, v36) != 1)
    {
      sub_1E5DFE50C(v17, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v34 + 32))(v21, v17, v36);
  }

  v37 = v52;
  v38 = v52[75];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v7, &qword_1ED075800, &unk_1E6606280);
  v39 = *(a1 + v37[61]);
  return sub_1E65DEE68();
}

void sub_1E5E24114(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for AppComposer();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NavigationControllerRoutingContext();
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = a1[1];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v20 = sub_1E65E3B68();
  __swift_project_value_buffer(v20, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v21 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v58 = v21;
  v22 = *(v3 + v21);
  if (*(v22 + 16) && (v23 = sub_1E5E2575C(v18, v19), (v24 & 1) != 0))
  {
    sub_1E5E246F0(*(v22 + 56) + *(v59 + 72) * v23, v17, type metadata accessor for NavigationControllerRoutingContext);
    sub_1E5E24844(v17, a2, type metadata accessor for NavigationControllerRoutingContext);
    swift_endAccess();
  }

  else
  {
    v52 = v14;
    swift_endAccess();
    v54 = v3;
    v25 = (v3 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer);
    v26 = v3 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer + v10[5];
    v27 = *(v26 + 8);
    v56 = v9;
    v57 = a2;
    if (v19 == 2 || v19 == 5)
    {
      v28 = sub_1E65DAE38();
      v29 = v28 == sub_1E65DAE38();
    }

    else
    {
      v30 = sub_1E65DAE38();
      v29 = v30 != sub_1E65DAE38();
    }

    v31 = v13;
    v32 = type metadata accessor for NavigationController();
    v53 = [objc_allocWithZone(v32) init];
    v33 = [v53 navigationBar];
    [v33 setPrefersLargeTitles_];

    v55 = v18;
    v34 = v18;
    v35 = v19;
    if (v19 < 6)
    {
      v34 = 0;
      v35 = qword_1E65FD388[v19];
    }

    v51 = *v25;
    v36 = v51;
    v37 = v31;
    sub_1E5E246F0(v26, v31 + v10[5], type metadata accessor for AppEnvironment);
    v38 = *(v25 + v10[6]);
    sub_1E5E246F0(v25 + v10[7], v31 + v10[7], type metadata accessor for AppDataItemResolver);
    v39 = v10[10];
    v60 = *(v25 + v10[8]);
    sub_1E5DFD1CC(v25 + v39, v31 + v39, &unk_1ED074320, &unk_1E65EA730);
    *v31 = v36;
    *(v31 + v10[6]) = v38;
    *(v31 + v10[8]) = v60;
    v40 = (v31 + v10[9]);
    *v40 = v34;
    v40[1] = v35;
    v41 = v52;
    v42 = v52[7];
    v43 = v54;
    v60 = *(v54 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
    v44 = v57;
    sub_1E5DFD1CC(v54 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, v57 + v42, &unk_1ED072050, &unk_1E65EEAB0);
    v45 = *(v43 + 16);
    v46 = objc_allocWithZone(v32);
    v47 = v55;
    sub_1E5E05374(v55, v19);

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    *v44 = [v46 init];
    sub_1E5E24844(v37, v44 + v41[5], type metadata accessor for AppComposer);
    *(v44 + v41[6]) = v60;
    *(v44 + v41[8]) = v45;
    v48 = v44;
    v49 = v56;
    sub_1E5E246F0(v48, v56, type metadata accessor for NavigationControllerRoutingContext);
    (*(v59 + 56))(v49, 0, 1, v41);
    swift_beginAccess();
    sub_1E5E05374(v47, v19);
    sub_1E5E24B3C(v49, v47, v19);
    swift_endAccess();
  }
}

uint64_t sub_1E5E24688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E246F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1E5E24758(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073250, &qword_1E65ED0A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1E5E247DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E24844(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_1E5E248C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppComposer();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1E5E24964(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_1E5E05374(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_1E5E05374(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1E5E24AC8(char **a1, unsigned __int8 a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1E636B208(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_1E5E24D18(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1E5E24B3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for NavigationControllerRoutingContext();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED072A30, &qword_1E65EEA70);
    sub_1E641824C(a2, a3, v10);
    sub_1E5E0476C(a2, a3);
    return sub_1E5DFE50C(v10, &qword_1ED072A30, &qword_1E65EEA70);
  }

  else
  {
    sub_1E5E24EEC(a1, v14, type metadata accessor for NavigationControllerRoutingContext);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1E5E25128(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1E5E0476C(a2, a3);
    *v3 = v20;
  }

  return result;
}

uint64_t sub_1E5E24D18(uint64_t *a1, unsigned __int8 a2)
{
  v4 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1E65E5F98();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = (v7 + 32);
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_1E64C5CFC(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1E5E24F54(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1E5E24E30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppComposer();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E5E24EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E24F54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 a5)
{
  if (a3 == a2)
  {
    return result;
  }

  if (a5 == 2)
  {
    goto LABEL_40;
  }

  v5 = *a4;
  v6 = *a4 + 16 * a3;
  v7 = result - a3;
LABEL_6:
  v8 = *(v5 + 16 * a3 + 8);
  v9 = v7;
  v10 = v6;
  while (1)
  {
    v11 = *(v10 - 1);
    if (a5 > 1u)
    {
      if (v8 > 5)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v11 <= 2)
        {
LABEL_25:
          switch(v11)
          {
            case 0:
              goto LABEL_30;
            case 1:
              goto LABEL_34;
            case 2:
              v11 = 4;
              goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v12 = qword_1E6606A50[v8];
        if (v11 <= 2)
        {
          goto LABEL_25;
        }
      }

      switch(v11)
      {
        case 4:
LABEL_29:
          v11 = 5;
          goto LABEL_34;
        case 5:
LABEL_23:
          v11 = 3;
          goto LABEL_34;
        case 3:
          goto LABEL_5;
      }
    }

    else
    {
      if (v8 >= 6)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v11 > 2)
        {
LABEL_10:
          switch(v11)
          {
            case 3:
              goto LABEL_29;
            case 4:
              goto LABEL_34;
            case 5:
LABEL_30:
              v11 = 2;
              goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else
      {
        v12 = qword_1E6606A20[v8];
        if (v11 > 2)
        {
          goto LABEL_10;
        }
      }

      switch(v11)
      {
        case 0:
          v11 = 1;
          goto LABEL_34;
        case 2:
          goto LABEL_23;
        case 1:
          goto LABEL_5;
      }
    }

LABEL_33:
    v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
    if (v12 >= v11)
    {
      goto LABEL_5;
    }

    if (!v5)
    {
      break;
    }

    v13 = *v10;
    *v10 = *(v10 - 1);
    *(v10 - 1) = v8;
    *(v10 - 2) = v13;
    v10 -= 2;
    if (__CFADD__(v9++, 1))
    {
LABEL_5:
      ++a3;
      v6 += 16;
      --v7;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_40:
  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E5E25128(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1E5E2575C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for NavigationControllerRoutingContext();
      return sub_1E6428DCC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for NavigationControllerRoutingContext);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1E6423C40();
    goto LABEL_7;
  }

  sub_1E5E25CB4(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1E5E2575C(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1E65E6C68();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1E5E26234(v12, a2, a3, a1, v18);

  return sub_1E5E05374(a2, a3);
}

uint64_t sub_1E5E25298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    goto LABEL_55;
  }

  v6 = *(a3 + 40);
  sub_1E65E6D28();
  if (a2 <= 2)
  {
    if (a2 <= 2)
    {
      goto LABEL_11;
    }

LABEL_10:
    MEMORY[0x1E694D7C0](a1, a2);
    goto LABEL_11;
  }

  if (a2 != 3 && a2 != 4 && a2 != 5)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1E65E5D78();

  v7 = sub_1E65E6D78();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v20 = a1;
    v10 = ~v8;
    while (1)
    {
      v11 = (*(a3 + 48) + 16 * v9);
      v12 = *v11;
      v13 = v11[1];
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = 0xE600000000000000;
          v15 = 0x686372616573;
          if (a2 <= 2)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        if (v13 != 4)
        {
          if (v13 == 5)
          {
            v14 = 0xE500000000000000;
            v15 = 0x736E616C70;
            if (a2 <= 2)
            {
              goto LABEL_39;
            }

            goto LABEL_31;
          }

          goto LABEL_28;
        }

        v14 = 0xE600000000000000;
        v15 = 0x7478654E7075;
        if (a2 <= 2)
        {
LABEL_39:
          if (a2)
          {
            if (a2 == 1)
            {
              v16 = 0xE600000000000000;
              if (v15 != 0x756F59726F66)
              {
                goto LABEL_52;
              }
            }

            else
            {
              if (a2 != 2)
              {
                goto LABEL_46;
              }

              v16 = 0xE700000000000000;
              if (v15 != 0x7972617262696CLL)
              {
                goto LABEL_52;
              }
            }
          }

          else
          {
            v16 = 0xE700000000000000;
            if (v15 != 0x65726F6C707865)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (!v13)
        {
          v14 = 0xE700000000000000;
          v15 = 0x65726F6C707865;
          if (a2 <= 2)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            v14 = 0xE700000000000000;
            v15 = 0x7972617262696CLL;
            if (a2 <= 2)
            {
              goto LABEL_39;
            }

            goto LABEL_31;
          }

LABEL_28:
          sub_1E5E05374(v12, v13);
          MEMORY[0x1E694D7C0](v12, v13);
          v15 = 0x7974696C61646F6DLL;
          v14 = 0xE90000000000003ALL;
          if (a2 <= 2)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        v14 = 0xE600000000000000;
        v15 = 0x756F59726F66;
        if (a2 <= 2)
        {
          goto LABEL_39;
        }
      }

LABEL_31:
      switch(a2)
      {
        case 3:
          v16 = 0xE600000000000000;
          if (v15 != 0x686372616573)
          {
            goto LABEL_52;
          }

          break;
        case 4:
          v16 = 0xE600000000000000;
          if (v15 != 0x7478654E7075)
          {
            goto LABEL_52;
          }

          break;
        case 5:
          v16 = 0xE500000000000000;
          if (v15 != 0x736E616C70)
          {
            goto LABEL_52;
          }

          break;
        default:
LABEL_46:
          v17 = v15;
          MEMORY[0x1E694D7C0](v20, a2);
          v16 = 0xE90000000000003ALL;
          if (v17 != 0x7974696C61646F6DLL)
          {
            goto LABEL_52;
          }

          break;
      }

LABEL_51:
      if (v14 == v16)
      {
        sub_1E5E0476C(v12, v13);

        v18 = 1;
        return v18 & 1;
      }

LABEL_52:
      v18 = sub_1E65E6C18();
      sub_1E5E0476C(v12, v13);

      if ((v18 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

LABEL_55:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_1E5E25708()
{
  result = qword_1EE2D7528;
  if (!qword_1EE2D7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7528);
  }

  return result;
}

unint64_t sub_1E5E2575C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1E65E6D28();
  if (a2 <= 2)
  {
    if (a2 <= 2)
    {
      goto LABEL_10;
    }

LABEL_9:
    MEMORY[0x1E694D7C0](a1, a2);
    goto LABEL_10;
  }

  if (a2 != 3 && a2 != 4 && a2 != 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1E65E5D78();

  v6 = sub_1E65E6D78();

  return sub_1E5E258C0(a1, a2, v6);
}

unint64_t sub_1E5E258C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = ~v5;
    while (1)
    {
      v10 = (*(v7 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v13 = 0xE600000000000000;
          v14 = 0x686372616573;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v12 != 4)
        {
          if (v12 == 5)
          {
            v13 = 0xE500000000000000;
            v14 = 0x736E616C70;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

          goto LABEL_18;
        }

        v13 = 0xE600000000000000;
        v14 = 0x7478654E7075;
        if (a2 <= 2)
        {
LABEL_29:
          if (a2)
          {
            if (a2 == 1)
            {
              v15 = 0xE600000000000000;
              if (v14 != 0x756F59726F66)
              {
                goto LABEL_42;
              }
            }

            else
            {
              if (a2 != 2)
              {
                goto LABEL_36;
              }

              v15 = 0xE700000000000000;
              if (v14 != 0x7972617262696CLL)
              {
                goto LABEL_42;
              }
            }
          }

          else
          {
            v15 = 0xE700000000000000;
            if (v14 != 0x65726F6C707865)
            {
              goto LABEL_42;
            }
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (!v12)
        {
          v13 = 0xE700000000000000;
          v14 = 0x65726F6C707865;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            v13 = 0xE700000000000000;
            v14 = 0x7972617262696CLL;
            if (a2 <= 2)
            {
              goto LABEL_29;
            }

            goto LABEL_21;
          }

LABEL_18:
          sub_1E5E05374(v11, v12);
          MEMORY[0x1E694D7C0](v11, v12);
          v14 = 0x7974696C61646F6DLL;
          v13 = 0xE90000000000003ALL;
          if (a2 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        v13 = 0xE600000000000000;
        v14 = 0x756F59726F66;
        if (a2 <= 2)
        {
          goto LABEL_29;
        }
      }

LABEL_21:
      switch(a2)
      {
        case 3:
          v15 = 0xE600000000000000;
          if (v14 != 0x686372616573)
          {
            goto LABEL_42;
          }

          break;
        case 4:
          v15 = 0xE600000000000000;
          if (v14 != 0x7478654E7075)
          {
            goto LABEL_42;
          }

          break;
        case 5:
          v15 = 0xE500000000000000;
          if (v14 != 0x736E616C70)
          {
            goto LABEL_42;
          }

          break;
        default:
LABEL_36:
          v16 = v14;
          MEMORY[0x1E694D7C0](a1, a2);
          v15 = 0xE90000000000003ALL;
          if (v16 != 0x7974696C61646F6DLL)
          {
            goto LABEL_42;
          }

          break;
      }

LABEL_41:
      if (v13 == v15)
      {
        sub_1E5E0476C(v11, v12);

        return v6;
      }

LABEL_42:
      v17 = sub_1E65E6C18();
      sub_1E5E0476C(v11, v12);

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v9;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

uint64_t sub_1E5E25C1C(__int128 *a1, __int128 *a2)
{
  v9 = *a2;
  v10 = *a1;
  v2 = RootItem.id.getter();
  v4 = v3;
  if (v2 == RootItem.id.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E65E6C18();
  }

  return v7 & 1;
}

uint64_t sub_1E5E25CB4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NavigationControllerRoutingContext();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079488, &qword_1E66015D0);
  v41 = a2;
  result = sub_1E65E6A18();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (1)
    {
      if (!v17)
      {
        v26 = v13;
        while (1)
        {
          v13 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v13 >= v18)
          {
            break;
          }

          v27 = v14[v13];
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v17 = (v27 - 1) & v27;
            goto LABEL_18;
          }
        }

        if ((v41 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_45;
        }

        v38 = 1 << *(v9 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v14 = -1 << v38;
        }

        *(v9 + 16) = 0;
        break;
      }

      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v28 = v25 | (v13 << 6);
      v29 = *(v40 + 72);
      v30 = *(v9 + 56) + v29 * v28;
      v31 = *(*(v9 + 48) + 16 * v28 + 8);
      v43 = *(*(v9 + 48) + 16 * v28);
      if (v41)
      {
        sub_1E5E24EEC(v30, v42, type metadata accessor for NavigationControllerRoutingContext);
      }

      else
      {
        sub_1E6429004(v30, v42, type metadata accessor for NavigationControllerRoutingContext);
        sub_1E5E05374(v43, v31);
      }

      v32 = *(v12 + 40);
      sub_1E65E6D28();
      if (v31 > 2)
      {
        v33 = v43;
        if (v31 != 3 && v31 != 4 && v31 != 5)
        {
LABEL_36:
          v44 = 0x7974696C61646F6DLL;
          v45 = 0xE90000000000003ALL;
          MEMORY[0x1E694D7C0](v33, v31);
        }
      }

      else
      {
        v33 = v43;
        if (v31 > 2)
        {
          goto LABEL_36;
        }
      }

      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v20 = -1 << *(v12 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v19 + 8 * (v21 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v20) >> 6;
        v24 = v43;
        while (++v22 != v35 || (v34 & 1) == 0)
        {
          v36 = v22 == v35;
          if (v22 == v35)
          {
            v22 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v22);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v22 << 6);
            goto LABEL_10;
          }
        }

LABEL_47:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v19 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v43;
LABEL_10:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v12 + 48) + 16 * v23) = v24;
      result = sub_1E5E24EEC(v42, *(v12 + 56) + v29 * v23, type metadata accessor for NavigationControllerRoutingContext);
      ++*(v12 + 16);
    }
  }

LABEL_45:
  *v3 = v12;
  return result;
}

uint64_t _s10Blackbeard8RootItemO2idSSvg_0()
{
  v1 = v0[1];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x686372616573;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x736E616C70;
      }

      goto LABEL_12;
    }

    return 0x7478654E7075;
  }

  else
  {
    if (!v1)
    {
      return 0x65726F6C707865;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x7972617262696CLL;
      }

LABEL_12:
      MEMORY[0x1E694D7C0](*v0);
      return 0x7974696C61646F6DLL;
    }

    return 0x756F59726F66;
  }
}

uint64_t sub_1E5E26234(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NavigationControllerRoutingContext();
  result = sub_1E5E24EEC(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for NavigationControllerRoutingContext);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1E5E262E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E26340(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E263A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E26400(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072168, &unk_1E65EA8D0);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1E5E26A3C(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  v16 = v6 + 32;
  while (1)
  {
    v20 = *v12;
    sub_1E5E05374(v20, *(&v20 + 1));
    v18(&v20);
    if (v4)
    {
      break;
    }

    v4 = 0;
    sub_1E5E0476C(v20, *(&v20 + 1));
    v21 = v11;
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1E5E26A3C(v13 > 1, v14 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v14 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v17);
    ++v12;
    if (!--v10)
    {
      return v11;
    }
  }

  sub_1E5E0476C(v20, *(&v20 + 1));

  __break(1u);
  return result;
}

uint64_t sub_1E5E265D8()
{
  v2 = *(*v1 + 280);
  v3 = *v1;
  v3[36] = v0;

  if (v0)
  {
    v4 = v3[30];
    v5 = v3[31];

    return MEMORY[0x1EEE6DFA0](sub_1E64B925C, v4, v5);
  }

  else
  {
    v6 = v3[28] + *(v3[24] + 128);
    v7 = *(v6 + 24);
    v11 = (*(v6 + 16) + **(v6 + 16));
    v8 = *(*(v6 + 16) + 4);
    v9 = swift_task_alloc();
    v3[37] = v9;
    *v9 = v3;
    v9[1] = sub_1E5E2766C;

    return v11(v3 + 2);
  }
}

size_t sub_1E5E267B8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E5E269A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E5E26DAC(a1, v1);
}

size_t sub_1E5E26A3C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073258, &qword_1E65ED0B0, &qword_1ED072168, &unk_1E65EA8D0);
  *v3 = result;
  return result;
}

uint64_t sub_1E5E26A7C(uint64_t *a1, uint64_t a2)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = *a1;
  v11 = a1[1];
  if (v11 > 2)
  {
    switch(v11)
    {
      case 3:
        goto LABEL_10;
      case 4:
        v12 = 0xE600000000000000;
        goto LABEL_17;
      case 5:
        goto LABEL_10;
    }
  }

  else if (v11 <= 2)
  {
    goto LABEL_10;
  }

  v21 = 0x7974696C61646F6DLL;
  v22 = 0xE90000000000003ALL;
  MEMORY[0x1E694D7C0](v10, v11);
  v12 = v22;
  if (v21 != 0x7478654E7075)
  {
LABEL_10:
    v13 = sub_1E65E6C18();

    if (v13 & 1) == 0 || (_UISolariumEnabled())
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

LABEL_17:
  if (v12 != 0xE600000000000000)
  {
    goto LABEL_10;
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_23;
  }

LABEL_12:
  v14 = *(type metadata accessor for AppState() + 300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  sub_1E65E4C98();
  sub_1E5E26EC4(v9, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5DFE50C(v7, &qword_1ED075800, &unk_1E6606280);
        goto LABEL_23;
      }

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075810, &qword_1E65F1DC8) + 48);
      v17 = *v7;
      v18 = sub_1E65D76A8();
      (*(*(v18 - 8) + 8))(&v7[v16], v18);
    }

    else
    {
      v17 = *v7;
    }

    v19 = *(v17 + 16);
  }

LABEL_23:
  v21 = v10;
  v22 = v11;
  sub_1E5E05374(v10, v11);
  sub_1E5E25708();
  return sub_1E65DF058();
}

uint64_t sub_1E5E26DAC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B48, &qword_1E65EC5E0);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6005634, a2, 0);
}

uint64_t sub_1E5E26EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075800, &unk_1E6606280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E5E26F34()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 141558274;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2080;
    v23 = v0;
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v25);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "[%{mask.hash}s] deinit", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  v15 = OBJC_IVAR____TtC10Blackbeard20NavigationController_pendingPresentation;
  swift_beginAccess();
  v16 = *&v0[v15];
  *&v0[v15] = MEMORY[0x1E69E7CC0];
  if (*(v16 + 16))
  {

    v17 = sub_1E65E3B48();
    v18 = sub_1E65E6338();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v16 + 16);

      _os_log_impl(&dword_1E5DE9000, v17, v18, "Cleaning up %ld pending presentations", v19, 0xCu);
      MEMORY[0x1E694F1C0](v19, -1, -1);
    }

    else
    {
    }

    v20 = sub_1E65E60A8();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v16;
    sub_1E64B80F8(0, 0, v6, &unk_1E66069C0, v21);
  }

  else
  {
  }

  v24.receiver = v1;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_dealloc);
}

uint64_t sub_1E5E27278()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1E5E272B8(uint64_t a1)
{
  v2 = sub_1E65E1D58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppState();
  (*(v3 + 16))(v6, a1 + *(v7 + 288), v2);
  return sub_1E65E1DE8();
}

uint64_t sub_1E5E27418(uint64_t a1)
{
  v2 = sub_1E65DBD48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppState();
  v8 = *(a1 + v7[14] + 8);
  v9 = *(a1 + v7[15] + 8);
  v10 = *(a1 + v7[16] + 8);
  v11 = *(a1 + v7[17] + 8);
  v12 = a1 + v7[19];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  (*(v3 + 16))(v6, v12 + *(v13 + 28), v2);

  return sub_1E65DC058();
}

uint64_t sub_1E5E275D8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  sub_1E65E1788();
  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5E2766C()
{
  v1 = *v0;
  v2 = *(*v0 + 296);
  v6 = *v0;

  v3 = *(v1 + 248);
  v4 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1E64B8C68, v4, v3);
}

unint64_t sub_1E5E27790()
{
  result = qword_1EE2D4A98;
  if (!qword_1EE2D4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4A98);
  }

  return result;
}

uint64_t sub_1E5E277E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E27804(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1E5E27830(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E27850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1E5E278F8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1E5E27950@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1E5E27988@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1E65E5C78();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E5E279BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E27A34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E27AC4()
{
  v114 = type metadata accessor for AppComposer();
  v113 = *(*(v114 - 1) + 80);
  v112 = *(*(v114 - 1) + 64);
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  v109 = (v0 + ((v113 + 56) & ~v113));
  v4 = *v109;

  v5 = v109 + v114[5];
  v6 = *v5;
  swift_unknownObjectRelease();
  v7 = type metadata accessor for AppEnvironment();
  v8 = v7[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v5[v8], v111);
  v9 = v7[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v5[v9], v108);
  v10 = v7[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v5[v10], v106);
  v11 = v7[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v5[v11], v104);
  v12 = v7[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v5[v12], v102);
  v13 = v7[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v5[v13], v100);
  v14 = v7[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v5[v14], v98);
  v15 = v7[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v5[v15], v96);
  v16 = v7[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v5[v16], v94);
  v17 = v7[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v5[v17], v92);
  v18 = v7[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v5[v18], v90);
  v19 = v7[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v5[v19], v88);
  v20 = v7[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v5[v20], v86);
  v21 = v7[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v5[v21], v84);
  v22 = v7[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v5[v22], v82);
  v23 = v7[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v5[v23], v80);
  v24 = v7[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v5[v24], v78);
  v25 = v7[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v5[v25], v76);
  v26 = v7[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v5[v26], v74);
  v27 = v7[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v5[v27], v72);
  v28 = v7[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v5[v28], v70);
  v29 = v7[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v5[v29], v68);
  v30 = v7[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v5[v30], v61);
  v31 = v7[29];
  v32 = type metadata accessor for SharePlayService();
  v65 = *(v32[-1].Description + 1);
  v65(&v5[v31], v32);
  v33 = v7[30];
  v34 = type metadata accessor for SiriService();
  v64 = *(v34[-1].Description + 1);
  v64(&v5[v33], v34);
  v35 = v7[31];
  v36 = type metadata accessor for SyncService();
  v63 = *(v36[-1].Description + 1);
  v63(&v5[v35], v36);
  v37 = &v5[v7[32]];
  v38 = *(v37 + 1);

  v39 = *(v37 + 3);

  v40 = *(v37 + 5);

  v41 = v7[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v5[v41], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v5[v7[34]]);
  v43 = *&v5[v7[35]];

  v44 = v7[36];
  v45 = type metadata accessor for WorkoutPlanService();
  v60 = *(v45[-1].Description + 1);
  v60(&v5[v44], v45);
  v46 = *(v109 + v114[6]);

  v47 = (v109 + v114[7]);
  v48 = *v47;

  v49 = v47[1];

  v50 = v47 + *(type metadata accessor for AppDataItemResolver() + 24);
  v51 = *v50;
  swift_unknownObjectRelease();
  v110(&v50[v7[6]], v111);
  v107(&v50[v7[7]], v108);
  v105(&v50[v7[8]], v106);
  v103(&v50[v7[9]], v104);
  v101(&v50[v7[10]], v102);
  v99(&v50[v7[11]], v100);
  v97(&v50[v7[12]], v98);
  v95(&v50[v7[13]], v96);
  v93(&v50[v7[14]], v94);
  v91(&v50[v7[15]], v92);
  v89(&v50[v7[16]], v90);
  v87(&v50[v7[17]], v88);
  v85(&v50[v7[18]], v86);
  v83(&v50[v7[19]], v84);
  v81(&v50[v7[20]], v82);
  v79(&v50[v7[21]], v80);
  v77(&v50[v7[22]], v78);
  v75(&v50[v7[23]], v76);
  v73(&v50[v7[24]], v74);
  v71(&v50[v7[25]], v72);
  v69(&v50[v7[26]], v70);
  v67(&v50[v7[27]], v68);
  v66(&v50[v7[28]], v61);
  v65(&v50[v7[29]], v32);
  v64(&v50[v7[30]], v34);
  v63(&v50[v7[31]], v36);
  v52 = &v50[v7[32]];
  v53 = *(v52 + 1);

  v54 = *(v52 + 3);

  v55 = *(v52 + 5);

  v62(&v50[v7[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v50[v7[34]]);
  v56 = *&v50[v7[35]];

  v60(&v50[v7[36]], v45);
  v57 = *(v109 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v114[9] + 8) >= 0xC)
  {
  }

  v58 = (v109 + v114[10]);
  if (v58[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E287A4()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);

  v107 = (v0 + ((v111 + 24) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E29474(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E5E29484()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v111 = (v112 + 16) & ~v112;
  v113 = v0;
  v107 = v0 + v111;
  v1 = *(v0 + v111);

  v2 = (v0 + v111 + v114[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v5], v109);
  v6 = v4[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v6], v106);
  v7 = v4[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v7], v104);
  v8 = v4[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v8], v102);
  v9 = v4[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v9], v100);
  v10 = v4[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v10], v98);
  v11 = v4[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v11], v96);
  v12 = v4[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v12], v94);
  v13 = v4[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v13], v92);
  v14 = v4[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v14], v90);
  v15 = v4[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v15], v88);
  v16 = v4[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v16], v86);
  v17 = v4[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v17], v84);
  v18 = v4[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v18], v82);
  v19 = v4[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v19], v80);
  v20 = v4[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v20], v78);
  v21 = v4[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v21], v76);
  v22 = v4[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v22], v74);
  v23 = v4[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v23], v72);
  v24 = v4[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v24], v70);
  v25 = v4[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v25], v68);
  v26 = v4[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v2[v26], v66);
  v27 = v4[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v2[v27], v59);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v63 = *(v29[-1].Description + 1);
  v63(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v62 = *(v31[-1].Description + 1);
  v62(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v61 = *(v33[-1].Description + 1);
  v61(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v58 = *(v42[-1].Description + 1);
  v58(&v2[v41], v42);
  v43 = *(v107 + v114[6]);

  v44 = (v107 + v114[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v108(&v47[v4[6]], v109);
  v105(&v47[v4[7]], v106);
  v103(&v47[v4[8]], v104);
  v101(&v47[v4[9]], v102);
  v99(&v47[v4[10]], v100);
  v97(&v47[v4[11]], v98);
  v95(&v47[v4[12]], v96);
  v93(&v47[v4[13]], v94);
  v91(&v47[v4[14]], v92);
  v89(&v47[v4[15]], v90);
  v87(&v47[v4[16]], v88);
  v85(&v47[v4[17]], v86);
  v83(&v47[v4[18]], v84);
  v81(&v47[v4[19]], v82);
  v79(&v47[v4[20]], v80);
  v77(&v47[v4[21]], v78);
  v75(&v47[v4[22]], v76);
  v73(&v47[v4[23]], v74);
  v71(&v47[v4[24]], v72);
  v69(&v47[v4[25]], v70);
  v67(&v47[v4[26]], v68);
  v65(&v47[v4[27]], v66);
  v64(&v47[v4[28]], v59);
  v63(&v47[v4[29]], v29);
  v62(&v47[v4[30]], v31);
  v61(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v60(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v58(&v47[v4[36]], v42);
  v54 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v107 + v114[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = *(v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E2A164()
{
  v112 = type metadata accessor for AppComposer();
  v111 = *(*(v112 - 1) + 80);
  v110 = *(*(v112 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v107 = (v0 + ((v111 + 33) & ~v111));
  v2 = *v107;

  v3 = v107 + v112[5];
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v112[6]);

  v45 = (v107 + v112[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v112[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v112[9] + 8) >= 0xC)
  {
  }

  v56 = (v107 + v112[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return swift_deallocObject();
}

uint64_t sub_1E5E2AE3C(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for AccountService();
  if (*(v8[-1].Description + 21) == a2)
  {
    v9 = v8;
    Description = v8[-1].Description;
    v11 = a3[6];
LABEL_59:
    v38 = Description[6];

    return v38(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AppStateService();
  if (*(v12[-1].Description + 21) == a2)
  {
    v9 = v12;
    Description = v12[-1].Description;
    v11 = a3[7];
    goto LABEL_59;
  }

  v13 = type metadata accessor for ArchivedSessionService();
  if (*(v13[-1].Description + 21) == a2)
  {
    v9 = v13;
    Description = v13[-1].Description;
    v11 = a3[8];
    goto LABEL_59;
  }

  v14 = type metadata accessor for AssetService();
  if (*(v14[-1].Description + 21) == a2)
  {
    v9 = v14;
    Description = v14[-1].Description;
    v11 = a3[9];
    goto LABEL_59;
  }

  v15 = type metadata accessor for AwardsService();
  if (*(v15[-1].Description + 21) == a2)
  {
    v9 = v15;
    Description = v15[-1].Description;
    v11 = a3[10];
    goto LABEL_59;
  }

  v16 = type metadata accessor for BookmarkService();
  if (*(v16[-1].Description + 21) == a2)
  {
    v9 = v16;
    Description = v16[-1].Description;
    v11 = a3[11];
    goto LABEL_59;
  }

  v17 = type metadata accessor for CatalogService();
  if (*(v17[-1].Description + 21) == a2)
  {
    v9 = v17;
    Description = v17[-1].Description;
    v11 = a3[12];
    goto LABEL_59;
  }

  v18 = type metadata accessor for ConfigurationService();
  if (*(v18[-1].Description + 21) == a2)
  {
    v9 = v18;
    Description = v18[-1].Description;
    v11 = a3[13];
    goto LABEL_59;
  }

  v19 = type metadata accessor for ContentAvailabilityService();
  if (*(v19[-1].Description + 21) == a2)
  {
    v9 = v19;
    Description = v19[-1].Description;
    v11 = a3[14];
    goto LABEL_59;
  }

  v20 = type metadata accessor for EngagementService();
  if (*(v20[-1].Description + 21) == a2)
  {
    v9 = v20;
    Description = v20[-1].Description;
    v11 = a3[15];
    goto LABEL_59;
  }

  v21 = type metadata accessor for HealthDataService();
  if (*(v21[-1].Description + 21) == a2)
  {
    v9 = v21;
    Description = v21[-1].Description;
    v11 = a3[16];
    goto LABEL_59;
  }

  v22 = type metadata accessor for InteropService();
  if (*(v22[-1].Description + 21) == a2)
  {
    v9 = v22;
    Description = v22[-1].Description;
    v11 = a3[17];
    goto LABEL_59;
  }

  v23 = type metadata accessor for LocalizationService();
  if (*(v23[-1].Description + 21) == a2)
  {
    v9 = v23;
    Description = v23[-1].Description;
    v11 = a3[18];
    goto LABEL_59;
  }

  v24 = type metadata accessor for MarketingService();
  if (*(v24[-1].Description + 21) == a2)
  {
    v9 = v24;
    Description = v24[-1].Description;
    v11 = a3[19];
    goto LABEL_59;
  }

  v25 = type metadata accessor for MetricService();
  if (*(v25[-1].Description + 21) == a2)
  {
    v9 = v25;
    Description = v25[-1].Description;
    v11 = a3[20];
    goto LABEL_59;
  }

  v26 = type metadata accessor for PersonalizationService();
  if (*(v26[-1].Description + 21) == a2)
  {
    v9 = v26;
    Description = v26[-1].Description;
    v11 = a3[21];
    goto LABEL_59;
  }

  v27 = type metadata accessor for PlayerService();
  if (*(v27[-1].Description + 21) == a2)
  {
    v9 = v27;
    Description = v27[-1].Description;
    v11 = a3[22];
    goto LABEL_59;
  }

  v28 = type metadata accessor for PrivacyPreferenceService();
  if (*(v28[-1].Description + 21) == a2)
  {
    v9 = v28;
    Description = v28[-1].Description;
    v11 = a3[23];
    goto LABEL_59;
  }

  v29 = type metadata accessor for RecommendationService();
  if (*(v29[-1].Description + 21) == a2)
  {
    v9 = v29;
    Description = v29[-1].Description;
    v11 = a3[24];
    goto LABEL_59;
  }

  v30 = type metadata accessor for RemoteBrowsingService();
  if (*(v30[-1].Description + 21) == a2)
  {
    v9 = v30;
    Description = v30[-1].Description;
    v11 = a3[25];
    goto LABEL_59;
  }

  v31 = type metadata accessor for SearchService();
  if (*(v31[-1].Description + 21) == a2)
  {
    v9 = v31;
    Description = v31[-1].Description;
    v11 = a3[26];
    goto LABEL_59;
  }

  v32 = type metadata accessor for ServiceSubscriptionService();
  if (*(v32[-1].Description + 21) == a2)
  {
    v9 = v32;
    Description = v32[-1].Description;
    v11 = a3[27];
    goto LABEL_59;
  }

  v33 = type metadata accessor for SessionService();
  if (*(v33[-1].Description + 21) == a2)
  {
    v9 = v33;
    Description = v33[-1].Description;
    v11 = a3[28];
    goto LABEL_59;
  }

  v34 = type metadata accessor for SharePlayService();
  if (*(v34[-1].Description + 21) == a2)
  {
    v9 = v34;
    Description = v34[-1].Description;
    v11 = a3[29];
    goto LABEL_59;
  }

  v35 = type metadata accessor for SiriService();
  if (*(v35[-1].Description + 21) == a2)
  {
    v9 = v35;
    Description = v35[-1].Description;
    v11 = a3[30];
    goto LABEL_59;
  }

  v36 = type metadata accessor for SyncService();
  if (*(v36[-1].Description + 21) == a2)
  {
    v9 = v36;
    Description = v36[-1].Description;
    v11 = a3[31];
    goto LABEL_59;
  }

  QueueService = type metadata accessor for UpNextQueueService();
  if (*(QueueService[-1].Description + 21) == a2)
  {
    v9 = QueueService;
    Description = QueueService[-1].Description;
    v11 = a3[33];
    goto LABEL_59;
  }

  v39 = type metadata accessor for WorkoutPlanService();
  v40 = *(v39[-1].Description + 6);
  v41 = a1 + a3[36];

  return v40(v41, a2, v39);
}

char *sub_1E5E2B6B0(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AccountService();
  if (*(v8[-1].Description + 21) == a3)
  {
    v9 = v8;
    Description = v8[-1].Description;
    v11 = a4[6];
LABEL_57:
    v38 = Description[7];

    return v38(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for AppStateService();
  if (*(v12[-1].Description + 21) == a3)
  {
    v9 = v12;
    Description = v12[-1].Description;
    v11 = a4[7];
    goto LABEL_57;
  }

  v13 = type metadata accessor for ArchivedSessionService();
  if (*(v13[-1].Description + 21) == a3)
  {
    v9 = v13;
    Description = v13[-1].Description;
    v11 = a4[8];
    goto LABEL_57;
  }

  v14 = type metadata accessor for AssetService();
  if (*(v14[-1].Description + 21) == a3)
  {
    v9 = v14;
    Description = v14[-1].Description;
    v11 = a4[9];
    goto LABEL_57;
  }

  v15 = type metadata accessor for AwardsService();
  if (*(v15[-1].Description + 21) == a3)
  {
    v9 = v15;
    Description = v15[-1].Description;
    v11 = a4[10];
    goto LABEL_57;
  }

  v16 = type metadata accessor for BookmarkService();
  if (*(v16[-1].Description + 21) == a3)
  {
    v9 = v16;
    Description = v16[-1].Description;
    v11 = a4[11];
    goto LABEL_57;
  }

  v17 = type metadata accessor for CatalogService();
  if (*(v17[-1].Description + 21) == a3)
  {
    v9 = v17;
    Description = v17[-1].Description;
    v11 = a4[12];
    goto LABEL_57;
  }

  v18 = type metadata accessor for ConfigurationService();
  if (*(v18[-1].Description + 21) == a3)
  {
    v9 = v18;
    Description = v18[-1].Description;
    v11 = a4[13];
    goto LABEL_57;
  }

  v19 = type metadata accessor for ContentAvailabilityService();
  if (*(v19[-1].Description + 21) == a3)
  {
    v9 = v19;
    Description = v19[-1].Description;
    v11 = a4[14];
    goto LABEL_57;
  }

  v20 = type metadata accessor for EngagementService();
  if (*(v20[-1].Description + 21) == a3)
  {
    v9 = v20;
    Description = v20[-1].Description;
    v11 = a4[15];
    goto LABEL_57;
  }

  v21 = type metadata accessor for HealthDataService();
  if (*(v21[-1].Description + 21) == a3)
  {
    v9 = v21;
    Description = v21[-1].Description;
    v11 = a4[16];
    goto LABEL_57;
  }

  v22 = type metadata accessor for InteropService();
  if (*(v22[-1].Description + 21) == a3)
  {
    v9 = v22;
    Description = v22[-1].Description;
    v11 = a4[17];
    goto LABEL_57;
  }

  v23 = type metadata accessor for LocalizationService();
  if (*(v23[-1].Description + 21) == a3)
  {
    v9 = v23;
    Description = v23[-1].Description;
    v11 = a4[18];
    goto LABEL_57;
  }

  v24 = type metadata accessor for MarketingService();
  if (*(v24[-1].Description + 21) == a3)
  {
    v9 = v24;
    Description = v24[-1].Description;
    v11 = a4[19];
    goto LABEL_57;
  }

  v25 = type metadata accessor for MetricService();
  if (*(v25[-1].Description + 21) == a3)
  {
    v9 = v25;
    Description = v25[-1].Description;
    v11 = a4[20];
    goto LABEL_57;
  }

  v26 = type metadata accessor for PersonalizationService();
  if (*(v26[-1].Description + 21) == a3)
  {
    v9 = v26;
    Description = v26[-1].Description;
    v11 = a4[21];
    goto LABEL_57;
  }

  v27 = type metadata accessor for PlayerService();
  if (*(v27[-1].Description + 21) == a3)
  {
    v9 = v27;
    Description = v27[-1].Description;
    v11 = a4[22];
    goto LABEL_57;
  }

  v28 = type metadata accessor for PrivacyPreferenceService();
  if (*(v28[-1].Description + 21) == a3)
  {
    v9 = v28;
    Description = v28[-1].Description;
    v11 = a4[23];
    goto LABEL_57;
  }

  v29 = type metadata accessor for RecommendationService();
  if (*(v29[-1].Description + 21) == a3)
  {
    v9 = v29;
    Description = v29[-1].Description;
    v11 = a4[24];
    goto LABEL_57;
  }

  v30 = type metadata accessor for RemoteBrowsingService();
  if (*(v30[-1].Description + 21) == a3)
  {
    v9 = v30;
    Description = v30[-1].Description;
    v11 = a4[25];
    goto LABEL_57;
  }

  v31 = type metadata accessor for SearchService();
  if (*(v31[-1].Description + 21) == a3)
  {
    v9 = v31;
    Description = v31[-1].Description;
    v11 = a4[26];
    goto LABEL_57;
  }

  v32 = type metadata accessor for ServiceSubscriptionService();
  if (*(v32[-1].Description + 21) == a3)
  {
    v9 = v32;
    Description = v32[-1].Description;
    v11 = a4[27];
    goto LABEL_57;
  }

  v33 = type metadata accessor for SessionService();
  if (*(v33[-1].Description + 21) == a3)
  {
    v9 = v33;
    Description = v33[-1].Description;
    v11 = a4[28];
    goto LABEL_57;
  }

  v34 = type metadata accessor for SharePlayService();
  if (*(v34[-1].Description + 21) == a3)
  {
    v9 = v34;
    Description = v34[-1].Description;
    v11 = a4[29];
    goto LABEL_57;
  }

  v35 = type metadata accessor for SiriService();
  if (*(v35[-1].Description + 21) == a3)
  {
    v9 = v35;
    Description = v35[-1].Description;
    v11 = a4[30];
    goto LABEL_57;
  }

  v36 = type metadata accessor for SyncService();
  if (*(v36[-1].Description + 21) == a3)
  {
    v9 = v36;
    Description = v36[-1].Description;
    v11 = a4[31];
    goto LABEL_57;
  }

  QueueService = type metadata accessor for UpNextQueueService();
  if (*(QueueService[-1].Description + 21) == a3)
  {
    v9 = QueueService;
    Description = QueueService[-1].Description;
    v11 = a4[33];
    goto LABEL_57;
  }

  v39 = type metadata accessor for WorkoutPlanService();
  v40 = *(v39[-1].Description + 7);
  v41 = &v5[a4[36]];

  return v40(v41, a2, a2, v39);
}

uint64_t sub_1E5E2BF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E2BF9C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E2C02C()
{
  v200 = type metadata accessor for AppComposer();
  v196 = *(*(v200 - 1) + 80);
  v1 = (v196 + 40) & ~v196;
  v2 = *(*(v200 - 1) + 64);
  v3 = type metadata accessor for RouteDestination();
  v198 = *(*(v3 - 8) + 80);
  v199 = v3;
  v194 = v1 + v2 + v198;
  v195 = *(*(v3 - 8) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = *(v0 + 32);

  v197 = v0;
  v191 = v0 + v1;
  v6 = *(v0 + v1);

  v7 = (v0 + v1 + v200[5]);
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v193 = type metadata accessor for AccountService();
  v192 = *(v193[-1].Description + 1);
  v192(v7 + v10, v193);
  v11 = v9[7];
  v190 = type metadata accessor for AppStateService();
  v189 = *(v190[-1].Description + 1);
  v189(v7 + v11, v190);
  v12 = v9[8];
  v188 = type metadata accessor for ArchivedSessionService();
  v187 = *(v188[-1].Description + 1);
  v187(v7 + v12, v188);
  v13 = v9[9];
  v186 = type metadata accessor for AssetService();
  v185 = *(v186[-1].Description + 1);
  v185(v7 + v13, v186);
  v14 = v9[10];
  v184 = type metadata accessor for AwardsService();
  v183 = *(v184[-1].Description + 1);
  v183(v7 + v14, v184);
  v15 = v9[11];
  v182 = type metadata accessor for BookmarkService();
  v181 = *(v182[-1].Description + 1);
  v181(v7 + v15, v182);
  v16 = v9[12];
  v180 = type metadata accessor for CatalogService();
  v179 = *(v180[-1].Description + 1);
  v179(v7 + v16, v180);
  v17 = v9[13];
  v178 = type metadata accessor for ConfigurationService();
  v177 = *(v178[-1].Description + 1);
  v177(v7 + v17, v178);
  v18 = v9[14];
  v176 = type metadata accessor for ContentAvailabilityService();
  v175 = *(v176[-1].Description + 1);
  v175(v7 + v18, v176);
  v19 = v9[15];
  v174 = type metadata accessor for EngagementService();
  v173 = *(v174[-1].Description + 1);
  v173(v7 + v19, v174);
  v20 = v9[16];
  v172 = type metadata accessor for HealthDataService();
  v171 = *(v172[-1].Description + 1);
  v171(v7 + v20, v172);
  v21 = v9[17];
  v170 = type metadata accessor for InteropService();
  v169 = *(v170[-1].Description + 1);
  v169(v7 + v21, v170);
  v22 = v9[18];
  v168 = type metadata accessor for LocalizationService();
  v167 = *(v168[-1].Description + 1);
  v167(v7 + v22, v168);
  v23 = v9[19];
  v166 = type metadata accessor for MarketingService();
  v165 = *(v166[-1].Description + 1);
  v165(v7 + v23, v166);
  v24 = v9[20];
  v164 = type metadata accessor for MetricService();
  v163 = *(v164[-1].Description + 1);
  v163(v7 + v24, v164);
  v25 = v9[21];
  v162 = type metadata accessor for PersonalizationService();
  v161 = *(v162[-1].Description + 1);
  v161(v7 + v25, v162);
  v26 = v9[22];
  v160 = type metadata accessor for PlayerService();
  v159 = *(v160[-1].Description + 1);
  v159(v7 + v26, v160);
  v27 = v9[23];
  v158 = type metadata accessor for PrivacyPreferenceService();
  v157 = *(v158[-1].Description + 1);
  v157(v7 + v27, v158);
  v28 = v9[24];
  v156 = type metadata accessor for RecommendationService();
  v155 = *(v156[-1].Description + 1);
  v155(v7 + v28, v156);
  v29 = v9[25];
  v154 = type metadata accessor for RemoteBrowsingService();
  v153 = *(v154[-1].Description + 1);
  v153(v7 + v29, v154);
  v30 = v9[26];
  v152 = type metadata accessor for SearchService();
  v151 = *(v152[-1].Description + 1);
  v151(v7 + v30, v152);
  v31 = v9[27];
  v150 = type metadata accessor for ServiceSubscriptionService();
  v149 = *(v150[-1].Description + 1);
  v149(v7 + v31, v150);
  v32 = v9[28];
  v143 = type metadata accessor for SessionService();
  v148 = *(v143[-1].Description + 1);
  v148(v7 + v32, v143);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v147 = *(v34[-1].Description + 1);
  v147(v7 + v33, v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v146 = *(v36[-1].Description + 1);
  v146(v7 + v35, v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v145 = *(v38[-1].Description + 1);
  v145(v7 + v37, v38);
  v39 = (v7 + v9[32]);
  v40 = v39[1];

  v41 = v39[3];

  v42 = v39[5];

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v144 = *(QueueService[-1].Description + 1);
  v144(v7 + v43, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v7 + v9[34]));
  v45 = *(v7 + v9[35]);

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v142 = *(v47[-1].Description + 1);
  v142(v7 + v46, v47);
  v48 = *(v191 + v200[6]);

  v49 = (v191 + v200[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v192(v52 + v9[6], v193);
  v189(v52 + v9[7], v190);
  v187(v52 + v9[8], v188);
  v185(v52 + v9[9], v186);
  v183(v52 + v9[10], v184);
  v181(v52 + v9[11], v182);
  v179(v52 + v9[12], v180);
  v177(v52 + v9[13], v178);
  v175(v52 + v9[14], v176);
  v173(v52 + v9[15], v174);
  v171(v52 + v9[16], v172);
  v169(v52 + v9[17], v170);
  v167(v52 + v9[18], v168);
  v165(v52 + v9[19], v166);
  v163(v52 + v9[20], v164);
  v161(v52 + v9[21], v162);
  v159(v52 + v9[22], v160);
  v157(v52 + v9[23], v158);
  v155(v52 + v9[24], v156);
  v153(v52 + v9[25], v154);
  v151(v52 + v9[26], v152);
  v149(v52 + v9[27], v150);
  v148(v52 + v9[28], v143);
  v147(v52 + v9[29], v34);
  v146(v52 + v9[30], v36);
  v145(v52 + v9[31], v38);
  v54 = (v52 + v9[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v144(v52 + v9[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v9[34]));
  v58 = *(v52 + v9[35]);

  v142(v52 + v9[36], v47);
  v59 = *(v191 + v200[8]);
  swift_unknownObjectRelease();
  if (*(v191 + v200[9] + 8) >= 0xCuLL)
  {
  }

  v60 = v194 & ~v198;
  v61 = (v191 + v200[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = v197 + v60;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_6;
    case 1u:
      v103 = sub_1E65D76F8();
      v104 = *(v103 - 8);
      if (!(*(v104 + 48))(v197 + v60, 1, v103))
      {
        (*(v104 + 8))(v197 + v60, v103);
      }

      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v106 = *(v62 + v105[12] + 8);

      v107 = v105[16];
      v108 = sub_1E65E2CF8();
      v109 = *(v108 - 8);
      if (!(*(v109 + 48))(v62 + v107, 1, v108))
      {
        (*(v109 + 8))(v62 + v107, v108);
      }

      v110 = *(v62 + v105[20]);

      v80 = v105[24];
      v111 = sub_1E65E1FC8();
      goto LABEL_50;
    case 3u:
      v119 = *(v62 + 8);

      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v87 = sub_1E65D72D8();
      goto LABEL_48;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v114 = sub_1E65E0FD8();
            (*(*(v114 - 8) + 8))(v197 + v60, v114);
          }

          goto LABEL_78;
        }

LABEL_77:
        v140 = *(v62 + 8);

        goto LABEL_78;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_77;
      }

LABEL_78:
      v141 = *(v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_55:
      v127 = v199;
      v128 = v62 + *(v199 + 20);
      type metadata accessor for RouteSource(0);
      v129 = swift_getEnumCaseMultiPayload();
      if (v129 <= 1)
      {
        if (v129)
        {
          if (v129 != 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_66;
      }

      switch(v129)
      {
        case 2:
LABEL_66:
          v131 = sub_1E65D74E8();
          v132 = *(v131 - 8);
          v133 = *(v132 + 8);
          v133(v128, v131);
          v134 = type metadata accessor for URLContext(0);
          v135 = *(v134 + 20);
          if (!(*(v132 + 48))(v128 + v135, 1, v131))
          {
            v133(v128 + v135, v131);
          }

          v136 = *(v128 + *(v134 + 24) + 8);

          v127 = v199;
          goto LABEL_69;
        case 3:
          v130 = sub_1E65D74E8();
          break;
        case 4:
          v130 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v130 - 8) + 8))(v128, v130);
LABEL_69:
      v137 = *(v62 + *(v127 + 24));

      v138 = *(v197 + ((v195 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
      swift_unknownObjectRelease();

      return swift_deallocObject();
    case 6u:

      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v85 = *(v84 + 48);
      v86 = sub_1E65DB848();
      (*(*(v86 - 8) + 8))(v62 + v85, v86);
      v67 = *(v84 + 64);
      v87 = sub_1E65E1518();
      goto LABEL_48;
    case 7u:
      v95 = sub_1E65DB848();
      (*(*(v95 - 8) + 8))(v197 + v60, v95);
      v96 = &unk_1ED0720D0;
      v97 = &unk_1E65EA290;
      goto LABEL_46;
    case 8u:
    case 9u:

      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v65 = *(v64 + 48);
      v66 = sub_1E65DB848();
      (*(*(v66 - 8) + 8))(v62 + v65, v66);
      v67 = *(v64 + 64);
      goto LABEL_47;
    case 0xCu:
      v112 = *(v62 + 8);

      sub_1E5F94E00(*(v62 + 16), *(v62 + 24));
      goto LABEL_55;
    case 0xEu:
      v83 = sub_1E65DB718();
      goto LABEL_54;
    case 0x11u:
      v123 = *(v62 + 8);

      v96 = &unk_1ED0720E0;
      v97 = &unk_1E65EA2A0;
LABEL_46:
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v96, v97) + 48);
LABEL_47:
      v87 = sub_1E65D74E8();
      goto LABEL_48;
    case 0x12u:
      v120 = *v62;
      v121 = *(v62 + 8);
      v122 = *(v62 + 16);
      sub_1E5F94E14();
      goto LABEL_55;
    case 0x13u:
      goto LABEL_27;
    case 0x14u:
      v98 = *(v62 + 8);

      v99 = *(v62 + 24);

      goto LABEL_55;
    case 0x15u:
      v124 = *(v62 + 8);

      v125 = *(v62 + 24);

      v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v111 = sub_1E65D96F8();
LABEL_50:
      v81 = v111;
      v82 = *(v111 - 8);
      if (!(*(v82 + 48))(v62 + v80, 1, v111))
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v197 + v60));
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v69 = v68[12];
      v70 = sub_1E65D74E8();
      (*(*(v70 - 8) + 8))(v62 + v69, v70);
      v71 = *(v62 + v68[16] + 8);

      v72 = v68[20];
      v73 = sub_1E65DB3E8();
      v74 = *(v73 - 8);
      if (!(*(v74 + 48))(v62 + v72, 1, v73))
      {
        (*(v74 + 8))(v62 + v72, v73);
      }

      v75 = *(v62 + v68[24] + 8);

      v76 = *(v62 + v68[28] + 8);

      v77 = v68[32];
      v78 = sub_1E65DB5D8();
      v79 = *(v78 - 8);
      if (!(*(v79 + 48))(v62 + v77, 1, v78))
      {
        (*(v79 + 8))(v62 + v77, v78);
      }

      v80 = v68[36];
      v81 = sub_1E65D7A38();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v62 + v80, 1, v81))
      {
LABEL_51:
        (*(v82 + 8))(v62 + v80, v81);
      }

      goto LABEL_55;
    case 0x17u:
      v91 = sub_1E65E57D8();
      (*(*(v91 - 8) + 8))(v197 + v60, v91);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v93 = *(v92 + 48);
      v94 = sub_1E65E5528();
      (*(*(v94 - 8) + 8))(v62 + v93, v94);
      if (*(v62 + *(v92 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_55;
    case 0x18u:

      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v87 = sub_1E65DB848();
      goto LABEL_48;
    case 0x1Au:
      sub_1E65E52B8();
      v102 = swift_getEnumCaseMultiPayload();
      if (v102 == 1)
      {

        goto LABEL_55;
      }

      if (v102)
      {
        goto LABEL_55;
      }

LABEL_27:
      v83 = sub_1E65D74E8();
      goto LABEL_54;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v83 = sub_1E65DAEB8();
LABEL_54:
        (*(*(v83 - 8) + 8))(v197 + v60, v83);
      }

      else
      {
LABEL_6:
        v63 = *(v62 + 8);
      }

      goto LABEL_55;
    case 0x1Cu:
      v83 = sub_1E65D76F8();
      goto LABEL_54;
    case 0x1Du:
      v126 = sub_1E65E55E8();
      (*(*(v126 - 8) + 8))(v197 + v60, v126);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v87 = sub_1E65D7EB8();
LABEL_48:
      (*(*(v87 - 8) + 8))(v62 + v67, v87);
      goto LABEL_55;
    case 0x1Eu:
      v88 = sub_1E65E56B8();
      (*(*(v88 - 8) + 8))(v197 + v60, v88);
      v89 = &unk_1ED072110;
      v90 = &unk_1E65EA2D0;
      goto LABEL_41;
    case 0x1Fu:
      v100 = sub_1E65DA308();
      (*(*(v100 - 8) + 8))(v197 + v60, v100);
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_42;
    case 0x20u:
      v115 = sub_1E65E58D8();
      (*(*(v115 - 8) + 8))(v197 + v60, v115);
      v89 = &qword_1ED072120;
      v90 = &qword_1E65EA2E0;
LABEL_41:
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
      v117 = *(v62 + *(v116 + 48));

      v101 = *(v116 + 64);
LABEL_42:
      v118 = *(v62 + v101);

      goto LABEL_55;
    case 0x21u:
      v83 = sub_1E65D9048();
      goto LABEL_54;
    default:
      goto LABEL_55;
  }
}

uint64_t sub_1E5E2D958()
{
  v198 = type metadata accessor for AppComposer();
  v194 = *(*(v198 - 1) + 80);
  v1 = (v194 + 24) & ~v194;
  v2 = *(*(v198 - 1) + 64);
  v3 = type metadata accessor for RouteDestination();
  v196 = *(*(v3 - 8) + 80);
  v197 = v3;
  v192 = v1 + v2 + v196;
  v193 = *(*(v3 - 8) + 64);
  v4 = *(v0 + 16);

  v195 = v0;
  v189 = v0 + v1;
  v5 = *(v0 + v1);

  v6 = (v0 + v1 + v198[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v191 = type metadata accessor for AccountService();
  v190 = *(v191[-1].Description + 1);
  v190(v6 + v9, v191);
  v10 = v8[7];
  v188 = type metadata accessor for AppStateService();
  v187 = *(v188[-1].Description + 1);
  v187(v6 + v10, v188);
  v11 = v8[8];
  v186 = type metadata accessor for ArchivedSessionService();
  v185 = *(v186[-1].Description + 1);
  v185(v6 + v11, v186);
  v12 = v8[9];
  v184 = type metadata accessor for AssetService();
  v183 = *(v184[-1].Description + 1);
  v183(v6 + v12, v184);
  v13 = v8[10];
  v182 = type metadata accessor for AwardsService();
  v181 = *(v182[-1].Description + 1);
  v181(v6 + v13, v182);
  v14 = v8[11];
  v180 = type metadata accessor for BookmarkService();
  v179 = *(v180[-1].Description + 1);
  v179(v6 + v14, v180);
  v15 = v8[12];
  v178 = type metadata accessor for CatalogService();
  v177 = *(v178[-1].Description + 1);
  v177(v6 + v15, v178);
  v16 = v8[13];
  v176 = type metadata accessor for ConfigurationService();
  v175 = *(v176[-1].Description + 1);
  v175(v6 + v16, v176);
  v17 = v8[14];
  v174 = type metadata accessor for ContentAvailabilityService();
  v173 = *(v174[-1].Description + 1);
  v173(v6 + v17, v174);
  v18 = v8[15];
  v172 = type metadata accessor for EngagementService();
  v171 = *(v172[-1].Description + 1);
  v171(v6 + v18, v172);
  v19 = v8[16];
  v170 = type metadata accessor for HealthDataService();
  v169 = *(v170[-1].Description + 1);
  v169(v6 + v19, v170);
  v20 = v8[17];
  v168 = type metadata accessor for InteropService();
  v167 = *(v168[-1].Description + 1);
  v167(v6 + v20, v168);
  v21 = v8[18];
  v166 = type metadata accessor for LocalizationService();
  v165 = *(v166[-1].Description + 1);
  v165(v6 + v21, v166);
  v22 = v8[19];
  v164 = type metadata accessor for MarketingService();
  v163 = *(v164[-1].Description + 1);
  v163(v6 + v22, v164);
  v23 = v8[20];
  v162 = type metadata accessor for MetricService();
  v161 = *(v162[-1].Description + 1);
  v161(v6 + v23, v162);
  v24 = v8[21];
  v160 = type metadata accessor for PersonalizationService();
  v159 = *(v160[-1].Description + 1);
  v159(v6 + v24, v160);
  v25 = v8[22];
  v158 = type metadata accessor for PlayerService();
  v157 = *(v158[-1].Description + 1);
  v157(v6 + v25, v158);
  v26 = v8[23];
  v156 = type metadata accessor for PrivacyPreferenceService();
  v155 = *(v156[-1].Description + 1);
  v155(v6 + v26, v156);
  v27 = v8[24];
  v154 = type metadata accessor for RecommendationService();
  v153 = *(v154[-1].Description + 1);
  v153(v6 + v27, v154);
  v28 = v8[25];
  v152 = type metadata accessor for RemoteBrowsingService();
  v151 = *(v152[-1].Description + 1);
  v151(v6 + v28, v152);
  v29 = v8[26];
  v150 = type metadata accessor for SearchService();
  v149 = *(v150[-1].Description + 1);
  v149(v6 + v29, v150);
  v30 = v8[27];
  v148 = type metadata accessor for ServiceSubscriptionService();
  v147 = *(v148[-1].Description + 1);
  v147(v6 + v30, v148);
  v31 = v8[28];
  v141 = type metadata accessor for SessionService();
  v146 = *(v141[-1].Description + 1);
  v146(v6 + v31, v141);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v145 = *(v33[-1].Description + 1);
  v145(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v144 = *(v35[-1].Description + 1);
  v144(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v143 = *(v37[-1].Description + 1);
  v143(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v142 = *(QueueService[-1].Description + 1);
  v142(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v140 = *(v46[-1].Description + 1);
  v140(v6 + v45, v46);
  v47 = *(v189 + v198[6]);

  v48 = (v189 + v198[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v190(v51 + v8[6], v191);
  v187(v51 + v8[7], v188);
  v185(v51 + v8[8], v186);
  v183(v51 + v8[9], v184);
  v181(v51 + v8[10], v182);
  v179(v51 + v8[11], v180);
  v177(v51 + v8[12], v178);
  v175(v51 + v8[13], v176);
  v173(v51 + v8[14], v174);
  v171(v51 + v8[15], v172);
  v169(v51 + v8[16], v170);
  v167(v51 + v8[17], v168);
  v165(v51 + v8[18], v166);
  v163(v51 + v8[19], v164);
  v161(v51 + v8[20], v162);
  v159(v51 + v8[21], v160);
  v157(v51 + v8[22], v158);
  v155(v51 + v8[23], v156);
  v153(v51 + v8[24], v154);
  v151(v51 + v8[25], v152);
  v149(v51 + v8[26], v150);
  v147(v51 + v8[27], v148);
  v146(v51 + v8[28], v141);
  v145(v51 + v8[29], v33);
  v144(v51 + v8[30], v35);
  v143(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v142(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v140(v51 + v8[36], v46);
  v58 = *(v189 + v198[8]);
  swift_unknownObjectRelease();
  if (*(v189 + v198[9] + 8) >= 0xCuLL)
  {
  }

  v59 = v192 & ~v196;
  v60 = (v189 + v198[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = v195 + v59;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_6;
    case 1u:
      v102 = sub_1E65D76F8();
      v103 = *(v102 - 8);
      if (!(*(v103 + 48))(v195 + v59, 1, v102))
      {
        (*(v103 + 8))(v195 + v59, v102);
      }

      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v105 = *(v61 + v104[12] + 8);

      v106 = v104[16];
      v107 = sub_1E65E2CF8();
      v108 = *(v107 - 8);
      if (!(*(v108 + 48))(v61 + v106, 1, v107))
      {
        (*(v108 + 8))(v61 + v106, v107);
      }

      v109 = *(v61 + v104[20]);

      v79 = v104[24];
      v110 = sub_1E65E1FC8();
      goto LABEL_50;
    case 3u:
      v118 = *(v61 + 8);

      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v86 = sub_1E65D72D8();
      goto LABEL_48;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v113 = sub_1E65E0FD8();
            (*(*(v113 - 8) + 8))(v195 + v59, v113);
          }

          goto LABEL_78;
        }

LABEL_77:
        v138 = *(v61 + 8);

        goto LABEL_78;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_77;
      }

LABEL_78:
      v139 = *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_55:
      v126 = v197;
      v127 = v61 + *(v197 + 20);
      type metadata accessor for RouteSource(0);
      v128 = swift_getEnumCaseMultiPayload();
      if (v128 <= 1)
      {
        if (v128)
        {
          if (v128 != 1)
          {
            goto LABEL_69;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_69;
          }
        }

        goto LABEL_66;
      }

      switch(v128)
      {
        case 2:
LABEL_66:
          v130 = sub_1E65D74E8();
          v131 = *(v130 - 8);
          v132 = *(v131 + 8);
          v132(v127, v130);
          v133 = type metadata accessor for URLContext(0);
          v134 = *(v133 + 20);
          if (!(*(v131 + 48))(v127 + v134, 1, v130))
          {
            v132(v127 + v134, v130);
          }

          v135 = *(v127 + *(v133 + 24) + 8);

          v126 = v197;
          goto LABEL_69;
        case 3:
          v129 = sub_1E65D74E8();
          break;
        case 4:
          v129 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_69;
      }

      (*(*(v129 - 8) + 8))(v127, v129);
LABEL_69:
      v136 = *(v61 + *(v126 + 24));

      return swift_deallocObject();
    case 6u:

      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v84 = *(v83 + 48);
      v85 = sub_1E65DB848();
      (*(*(v85 - 8) + 8))(v61 + v84, v85);
      v66 = *(v83 + 64);
      v86 = sub_1E65E1518();
      goto LABEL_48;
    case 7u:
      v94 = sub_1E65DB848();
      (*(*(v94 - 8) + 8))(v195 + v59, v94);
      v95 = &unk_1ED0720D0;
      v96 = &unk_1E65EA290;
      goto LABEL_46;
    case 8u:
    case 9u:

      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v64 = *(v63 + 48);
      v65 = sub_1E65DB848();
      (*(*(v65 - 8) + 8))(v61 + v64, v65);
      v66 = *(v63 + 64);
      goto LABEL_47;
    case 0xCu:
      v111 = *(v61 + 8);

      sub_1E5F94E00(*(v61 + 16), *(v61 + 24));
      goto LABEL_55;
    case 0xEu:
      v82 = sub_1E65DB718();
      goto LABEL_54;
    case 0x11u:
      v122 = *(v61 + 8);

      v95 = &unk_1ED0720E0;
      v96 = &unk_1E65EA2A0;
LABEL_46:
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v95, v96) + 48);
LABEL_47:
      v86 = sub_1E65D74E8();
      goto LABEL_48;
    case 0x12u:
      v119 = *v61;
      v120 = *(v61 + 8);
      v121 = *(v61 + 16);
      sub_1E5F94E14();
      goto LABEL_55;
    case 0x13u:
      goto LABEL_27;
    case 0x14u:
      v97 = *(v61 + 8);

      v98 = *(v61 + 24);

      goto LABEL_55;
    case 0x15u:
      v123 = *(v61 + 8);

      v124 = *(v61 + 24);

      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v110 = sub_1E65D96F8();
LABEL_50:
      v80 = v110;
      v81 = *(v110 - 8);
      if (!(*(v81 + 48))(v61 + v79, 1, v110))
      {
        goto LABEL_51;
      }

      goto LABEL_55;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v195 + v59));
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v68 = v67[12];
      v69 = sub_1E65D74E8();
      (*(*(v69 - 8) + 8))(v61 + v68, v69);
      v70 = *(v61 + v67[16] + 8);

      v71 = v67[20];
      v72 = sub_1E65DB3E8();
      v73 = *(v72 - 8);
      if (!(*(v73 + 48))(v61 + v71, 1, v72))
      {
        (*(v73 + 8))(v61 + v71, v72);
      }

      v74 = *(v61 + v67[24] + 8);

      v75 = *(v61 + v67[28] + 8);

      v76 = v67[32];
      v77 = sub_1E65DB5D8();
      v78 = *(v77 - 8);
      if (!(*(v78 + 48))(v61 + v76, 1, v77))
      {
        (*(v78 + 8))(v61 + v76, v77);
      }

      v79 = v67[36];
      v80 = sub_1E65D7A38();
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v61 + v79, 1, v80))
      {
LABEL_51:
        (*(v81 + 8))(v61 + v79, v80);
      }

      goto LABEL_55;
    case 0x17u:
      v90 = sub_1E65E57D8();
      (*(*(v90 - 8) + 8))(v195 + v59, v90);
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v92 = *(v91 + 48);
      v93 = sub_1E65E5528();
      (*(*(v93 - 8) + 8))(v61 + v92, v93);
      if (*(v61 + *(v91 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_55;
    case 0x18u:

      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v86 = sub_1E65DB848();
      goto LABEL_48;
    case 0x1Au:
      sub_1E65E52B8();
      v101 = swift_getEnumCaseMultiPayload();
      if (v101 == 1)
      {

        goto LABEL_55;
      }

      if (v101)
      {
        goto LABEL_55;
      }

LABEL_27:
      v82 = sub_1E65D74E8();
      goto LABEL_54;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = sub_1E65DAEB8();
LABEL_54:
        (*(*(v82 - 8) + 8))(v195 + v59, v82);
      }

      else
      {
LABEL_6:
        v62 = *(v61 + 8);
      }

      goto LABEL_55;
    case 0x1Cu:
      v82 = sub_1E65D76F8();
      goto LABEL_54;
    case 0x1Du:
      v125 = sub_1E65E55E8();
      (*(*(v125 - 8) + 8))(v195 + v59, v125);
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v86 = sub_1E65D7EB8();
LABEL_48:
      (*(*(v86 - 8) + 8))(v61 + v66, v86);
      goto LABEL_55;
    case 0x1Eu:
      v87 = sub_1E65E56B8();
      (*(*(v87 - 8) + 8))(v195 + v59, v87);
      v88 = &unk_1ED072110;
      v89 = &unk_1E65EA2D0;
      goto LABEL_41;
    case 0x1Fu:
      v99 = sub_1E65DA308();
      (*(*(v99 - 8) + 8))(v195 + v59, v99);
      v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_42;
    case 0x20u:
      v114 = sub_1E65E58D8();
      (*(*(v114 - 8) + 8))(v195 + v59, v114);
      v88 = &qword_1ED072120;
      v89 = &qword_1E65EA2E0;
LABEL_41:
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
      v116 = *(v61 + *(v115 + 48));

      v100 = *(v115 + 64);
LABEL_42:
      v117 = *(v61 + v100);

      goto LABEL_55;
    case 0x21u:
      v82 = sub_1E65D9048();
      goto LABEL_54;
    default:
      goto LABEL_55;
  }
}

uint64_t sub_1E5E2F270(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E2F2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F08, &qword_1E65EA328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E2F364()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for RouteDestination();
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v9 = v0 + v7;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_2;
    case 1u:
      v51 = sub_1E65D76F8();
      v52 = *(v51 - 8);
      if (!(*(v52 + 48))(v0 + v7, 1, v51))
      {
        (*(v52 + 8))(v0 + v7, v51);
      }

      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v54 = *(v9 + v53[12] + 8);

      v55 = v53[16];
      v56 = sub_1E65E2CF8();
      v57 = *(v56 - 8);
      if (!(*(v57 + 48))(v9 + v55, 1, v56))
      {
        (*(v57 + 8))(v9 + v55, v56);
      }

      v58 = *(v9 + v53[20]);

      v27 = v53[24];
      v28 = sub_1E65E1FC8();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 48))(v9 + v27, 1, v28);
      goto LABEL_28;
    case 3u:
      v66 = *(v9 + 8);

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v35 = sub_1E65D72D8();
      goto LABEL_45;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v61 = sub_1E65E0FD8();
            (*(*(v61 - 8) + 8))(v0 + v7, v61);
          }

          goto LABEL_76;
        }

LABEL_75:
        v89 = *(v9 + 8);

        goto LABEL_76;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_75;
      }

LABEL_76:
      v90 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_51:
      v74 = v9 + *(v5 + 20);
      type metadata accessor for RouteSource(0);
      v75 = swift_getEnumCaseMultiPayload();
      if (v75 <= 1)
      {
        if (!v75)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_67;
          }

          v91 = v0 + v7;
          v82 = sub_1E65D74E8();
          v83 = *(v82 - 8);
          v84 = *(v83 + 8);
          v84(v74, v82);
          v80 = type metadata accessor for URLContext(0);
          v85 = *(v80 + 20);
          if (!(*(v83 + 48))(v74 + v85, 1, v82))
          {
            v84(v74 + v85, v82);
          }

          goto LABEL_66;
        }

        if (v75 != 1)
        {
          goto LABEL_67;
        }

LABEL_58:
        v91 = v0 + v7;
        v77 = sub_1E65D74E8();
        v78 = *(v77 - 8);
        v79 = *(v78 + 8);
        v79(v74, v77);
        v80 = type metadata accessor for URLContext(0);
        v81 = *(v80 + 20);
        if (!(*(v78 + 48))(v74 + v81, 1, v77))
        {
          v79(v74 + v81, v77);
        }

LABEL_66:
        v86 = *(v74 + *(v80 + 24) + 8);

        v9 = v91;
        goto LABEL_67;
      }

      switch(v75)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v76 = sub_1E65D74E8();
          break;
        case 4:
          v76 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_67;
      }

      (*(*(v76 - 8) + 8))(v74, v76);
LABEL_67:
      v87 = *(v9 + *(v5 + 24));

      return swift_deallocObject();
    case 6u:

      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v33 = *(v32 + 48);
      v34 = sub_1E65DB848();
      (*(*(v34 - 8) + 8))(v9 + v33, v34);
      v14 = *(v32 + 64);
      v35 = sub_1E65E1518();
      goto LABEL_45;
    case 7u:
      v43 = sub_1E65DB848();
      (*(*(v43 - 8) + 8))(v0 + v7, v43);
      v44 = &unk_1ED0720D0;
      v45 = &unk_1E65EA290;
      goto LABEL_43;
    case 8u:
    case 9u:

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v12 = *(v11 + 48);
      v13 = sub_1E65DB848();
      (*(*(v13 - 8) + 8))(v9 + v12, v13);
      v14 = *(v11 + 64);
      goto LABEL_44;
    case 0xCu:
      v59 = *(v9 + 8);

      sub_1E5F94E00(*(v9 + 16), *(v9 + 24));
      goto LABEL_51;
    case 0xEu:
      v31 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:
      v70 = *(v9 + 8);

      v44 = &unk_1ED0720E0;
      v45 = &unk_1E65EA2A0;
LABEL_43:
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v44, v45) + 48);
LABEL_44:
      v35 = sub_1E65D74E8();
      goto LABEL_45;
    case 0x12u:
      v67 = *v9;
      v68 = *(v9 + 8);
      v69 = *(v9 + 16);
      sub_1E5F94E14();
      goto LABEL_51;
    case 0x13u:
      goto LABEL_22;
    case 0x14u:
      v46 = *(v9 + 8);

      v47 = *(v9 + 24);

      goto LABEL_51;
    case 0x15u:
      v71 = *(v9 + 8);

      v72 = *(v9 + 24);

      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v28 = sub_1E65D96F8();
      v29 = *(v28 - 8);
      if (!(*(v29 + 48))(v9 + v27, 1, v28))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v7));
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v16 = v15[12];
      v17 = sub_1E65D74E8();
      (*(*(v17 - 8) + 8))(v9 + v16, v17);
      v18 = *(v9 + v15[16] + 8);

      v19 = v15[20];
      v20 = sub_1E65DB3E8();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v9 + v19, 1, v20))
      {
        (*(v21 + 8))(v9 + v19, v20);
      }

      v22 = *(v9 + v15[24] + 8);

      v23 = *(v9 + v15[28] + 8);

      v24 = v15[32];
      v25 = sub_1E65DB5D8();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(v9 + v24, 1, v25))
      {
        (*(v26 + 8))(v9 + v24, v25);
      }

      v27 = v15[36];
      v28 = sub_1E65D7A38();
      v29 = *(v28 - 8);
      v30 = (*(v29 + 48))(v9 + v27, 1, v28);
LABEL_28:
      if (!v30)
      {
LABEL_47:
        (*(v29 + 8))(v9 + v27, v28);
      }

      goto LABEL_51;
    case 0x17u:
      v39 = sub_1E65E57D8();
      (*(*(v39 - 8) + 8))(v0 + v7, v39);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v41 = *(v40 + 48);
      v42 = sub_1E65E5528();
      (*(*(v42 - 8) + 8))(v9 + v41, v42);
      if (*(v9 + *(v40 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_51;
    case 0x18u:

      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v35 = sub_1E65DB848();
      goto LABEL_45;
    case 0x1Au:
      sub_1E65E52B8();
      v50 = swift_getEnumCaseMultiPayload();
      if (v50 == 1)
      {

        goto LABEL_51;
      }

      if (v50)
      {
        goto LABEL_51;
      }

LABEL_22:
      v31 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = sub_1E65DAEB8();
LABEL_50:
        (*(*(v31 - 8) + 8))(v0 + v7, v31);
      }

      else
      {
LABEL_2:
        v10 = *(v9 + 8);
      }

      goto LABEL_51;
    case 0x1Cu:
      v31 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v73 = sub_1E65E55E8();
      (*(*(v73 - 8) + 8))(v0 + v7, v73);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v35 = sub_1E65D7EB8();
LABEL_45:
      (*(*(v35 - 8) + 8))(v9 + v14, v35);
      goto LABEL_51;
    case 0x1Eu:
      v36 = sub_1E65E56B8();
      (*(*(v36 - 8) + 8))(v0 + v7, v36);
      v37 = &unk_1ED072110;
      v38 = &unk_1E65EA2D0;
      goto LABEL_38;
    case 0x1Fu:
      v48 = sub_1E65DA308();
      (*(*(v48 - 8) + 8))(v0 + v7, v48);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_39;
    case 0x20u:
      v62 = sub_1E65E58D8();
      (*(*(v62 - 8) + 8))(v0 + v7, v62);
      v37 = &qword_1ED072120;
      v38 = &qword_1E65EA2E0;
LABEL_38:
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      v64 = *(v9 + *(v63 + 48));

      v49 = *(v63 + 64);
LABEL_39:
      v65 = *(v9 + v49);

      goto LABEL_51;
    case 0x21u:
      v31 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5E301A0()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v121 = *(*(v1 - 8) + 80);
  v118 = *(*(v1 - 8) + 64);
  v2 = *(v0 + 16);

  v122 = v0;
  v119 = (v121 + 24) & ~v121;
  v3 = (v0 + v119);

  v120 = v1;
  v117 = v3;
  v4 = (v3 + *(v1 + 20));
  v5 = *v4;
  v6 = v4;
  v114 = v4;

  v123 = type metadata accessor for AppComposer();
  v7 = v6 + v123[5];
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v116 = type metadata accessor for AccountService();
  v115 = *(v116[-1].Description + 1);
  v115(&v7[v10], v116);
  v11 = v9[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v7[v11], v113);
  v12 = v9[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v7[v12], v111);
  v13 = v9[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v7[v13], v109);
  v14 = v9[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v7[v14], v107);
  v15 = v9[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v7[v15], v105);
  v16 = v9[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v7[v16], v103);
  v17 = v9[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v7[v17], v101);
  v18 = v9[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v7[v18], v99);
  v19 = v9[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v7[v19], v97);
  v20 = v9[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v7[v20], v95);
  v21 = v9[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v7[v21], v93);
  v22 = v9[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v7[v22], v91);
  v23 = v9[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v7[v23], v89);
  v24 = v9[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v7[v24], v87);
  v25 = v9[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v7[v25], v85);
  v26 = v9[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v7[v26], v83);
  v27 = v9[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v7[v27], v81);
  v28 = v9[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v7[v28], v79);
  v29 = v9[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v7[v29], v77);
  v30 = v9[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v7[v30], v75);
  v31 = v9[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v7[v31], v68);
  v32 = v9[28];
  v66 = type metadata accessor for SessionService();
  v72 = *(v66[-1].Description + 1);
  v72(&v7[v32], v66);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v71 = *(v34[-1].Description + 1);
  v71(&v7[v33], v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v70 = *(v36[-1].Description + 1);
  v70(&v7[v35], v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v69 = *(v38[-1].Description + 1);
  v69(&v7[v37], v38);
  v39 = &v7[v9[32]];
  v40 = *(v39 + 1);

  v41 = *(v39 + 3);

  v42 = *(v39 + 5);

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v7[v43], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v7[v9[34]]);
  v45 = *&v7[v9[35]];

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v48 = *(v47[-1].Description + 1);
  v48(&v7[v46], v47);
  v49 = *(v114 + v123[6]);

  v50 = (v114 + v123[7]);
  v51 = *v50;

  v52 = v50[1];

  v53 = v50 + *(type metadata accessor for AppDataItemResolver() + 24);
  v54 = *v53;
  swift_unknownObjectRelease();
  v115(&v53[v9[6]], v116);
  v112(&v53[v9[7]], v113);
  v110(&v53[v9[8]], v111);
  v108(&v53[v9[9]], v109);
  v106(&v53[v9[10]], v107);
  v104(&v53[v9[11]], v105);
  v102(&v53[v9[12]], v103);
  v100(&v53[v9[13]], v101);
  v98(&v53[v9[14]], v99);
  v96(&v53[v9[15]], v97);
  v94(&v53[v9[16]], v95);
  v92(&v53[v9[17]], v93);
  v90(&v53[v9[18]], v91);
  v88(&v53[v9[19]], v89);
  v86(&v53[v9[20]], v87);
  v84(&v53[v9[21]], v85);
  v82(&v53[v9[22]], v83);
  v80(&v53[v9[23]], v81);
  v78(&v53[v9[24]], v79);
  v76(&v53[v9[25]], v77);
  v74(&v53[v9[26]], v75);
  v73(&v53[v9[27]], v68);
  v72(&v53[v9[28]], v66);
  v71(&v53[v9[29]], v34);
  v70(&v53[v9[30]], v36);
  v69(&v53[v9[31]], v38);
  v55 = &v53[v9[32]];
  v56 = *(v55 + 1);

  v57 = *(v55 + 3);

  v58 = *(v55 + 5);

  v67(&v53[v9[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v53[v9[34]]);
  v59 = *&v53[v9[35]];

  v48(&v53[v9[36]], v47);
  v60 = *(v114 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v114 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v61 = (v114 + v123[10]);
  if (v61[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v61);
  }

  v62 = *(v117 + v120[6]);
  swift_unknownObjectRelease();
  v63 = (v117 + v120[7]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = *(v117 + v120[8]);
  swift_unknownObjectRelease();
  sub_1E5F94E00(*(v122 + ((v119 + v118) & 0xFFFFFFFFFFFFFFF8) + 8), *(v122 + ((v119 + v118) & 0xFFFFFFFFFFFFFFF8) + 16));

  return swift_deallocObject();
}

uint64_t sub_1E5E30EE0()
{
  v1 = *(v0 + 16);

  sub_1E5F94E00(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1E5E30F2C()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v201 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination();
  v203 = *(*(v3 - 8) + 80);
  v204 = v3;
  v196 = v2 + v203;
  v200 = *(*(v3 - 8) + 64);
  v202 = v0;
  v197 = (v201 + 16) & ~v201;

  v198 = v0 + v197;
  v199 = v1;
  v4 = *(v0 + v197 + *(v1 + 20));
  v5 = v0 + v197 + *(v1 + 20);
  v193 = v5;

  v192 = type metadata accessor for AppComposer();
  v6 = (v5 + v192[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v195 = type metadata accessor for AccountService();
  v194 = *(v195[-1].Description + 1);
  v194(v6 + v9, v195);
  v10 = v8[7];
  v191 = type metadata accessor for AppStateService();
  v190 = *(v191[-1].Description + 1);
  v190(v6 + v10, v191);
  v11 = v8[8];
  v189 = type metadata accessor for ArchivedSessionService();
  v188 = *(v189[-1].Description + 1);
  v188(v6 + v11, v189);
  v12 = v8[9];
  v187 = type metadata accessor for AssetService();
  v186 = *(v187[-1].Description + 1);
  v186(v6 + v12, v187);
  v13 = v8[10];
  v185 = type metadata accessor for AwardsService();
  v184 = *(v185[-1].Description + 1);
  v184(v6 + v13, v185);
  v14 = v8[11];
  v183 = type metadata accessor for BookmarkService();
  v182 = *(v183[-1].Description + 1);
  v182(v6 + v14, v183);
  v15 = v8[12];
  v181 = type metadata accessor for CatalogService();
  v180 = *(v181[-1].Description + 1);
  v180(v6 + v15, v181);
  v16 = v8[13];
  v179 = type metadata accessor for ConfigurationService();
  v178 = *(v179[-1].Description + 1);
  v178(v6 + v16, v179);
  v17 = v8[14];
  v177 = type metadata accessor for ContentAvailabilityService();
  v176 = *(v177[-1].Description + 1);
  v176(v6 + v17, v177);
  v18 = v8[15];
  v175 = type metadata accessor for EngagementService();
  v174 = *(v175[-1].Description + 1);
  v174(v6 + v18, v175);
  v19 = v8[16];
  v173 = type metadata accessor for HealthDataService();
  v172 = *(v173[-1].Description + 1);
  v172(v6 + v19, v173);
  v20 = v8[17];
  v171 = type metadata accessor for InteropService();
  v170 = *(v171[-1].Description + 1);
  v170(v6 + v20, v171);
  v21 = v8[18];
  v169 = type metadata accessor for LocalizationService();
  v168 = *(v169[-1].Description + 1);
  v168(v6 + v21, v169);
  v22 = v8[19];
  v167 = type metadata accessor for MarketingService();
  v166 = *(v167[-1].Description + 1);
  v166(v6 + v22, v167);
  v23 = v8[20];
  v165 = type metadata accessor for MetricService();
  v164 = *(v165[-1].Description + 1);
  v164(v6 + v23, v165);
  v24 = v8[21];
  v163 = type metadata accessor for PersonalizationService();
  v162 = *(v163[-1].Description + 1);
  v162(v6 + v24, v163);
  v25 = v8[22];
  v161 = type metadata accessor for PlayerService();
  v160 = *(v161[-1].Description + 1);
  v160(v6 + v25, v161);
  v26 = v8[23];
  v159 = type metadata accessor for PrivacyPreferenceService();
  v158 = *(v159[-1].Description + 1);
  v158(v6 + v26, v159);
  v27 = v8[24];
  v157 = type metadata accessor for RecommendationService();
  v156 = *(v157[-1].Description + 1);
  v156(v6 + v27, v157);
  v28 = v8[25];
  v155 = type metadata accessor for RemoteBrowsingService();
  v154 = *(v155[-1].Description + 1);
  v154(v6 + v28, v155);
  v29 = v8[26];
  v153 = type metadata accessor for SearchService();
  v152 = *(v153[-1].Description + 1);
  v152(v6 + v29, v153);
  v30 = v8[27];
  v146 = type metadata accessor for ServiceSubscriptionService();
  v151 = *(v146[-1].Description + 1);
  v151(v6 + v30, v146);
  v31 = v8[28];
  v144 = type metadata accessor for SessionService();
  v150 = *(v144[-1].Description + 1);
  v150(v6 + v31, v144);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v149 = *(v33[-1].Description + 1);
  v149(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v148 = *(v35[-1].Description + 1);
  v148(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v147 = *(v37[-1].Description + 1);
  v147(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(v6 + v45, v46);
  v48 = *(v193 + v192[6]);

  v49 = (v193 + v192[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = (v49 + *(type metadata accessor for AppDataItemResolver() + 24));
  v53 = *v52;
  swift_unknownObjectRelease();
  v194(v52 + v8[6], v195);
  v190(v52 + v8[7], v191);
  v188(v52 + v8[8], v189);
  v186(v52 + v8[9], v187);
  v184(v52 + v8[10], v185);
  v182(v52 + v8[11], v183);
  v180(v52 + v8[12], v181);
  v178(v52 + v8[13], v179);
  v176(v52 + v8[14], v177);
  v174(v52 + v8[15], v175);
  v172(v52 + v8[16], v173);
  v170(v52 + v8[17], v171);
  v168(v52 + v8[18], v169);
  v166(v52 + v8[19], v167);
  v164(v52 + v8[20], v165);
  v162(v52 + v8[21], v163);
  v160(v52 + v8[22], v161);
  v158(v52 + v8[23], v159);
  v156(v52 + v8[24], v157);
  v154(v52 + v8[25], v155);
  v152(v52 + v8[26], v153);
  v151(v52 + v8[27], v146);
  v150(v52 + v8[28], v144);
  v149(v52 + v8[29], v33);
  v148(v52 + v8[30], v35);
  v147(v52 + v8[31], v37);
  v54 = (v52 + v8[32]);
  v55 = v54[1];

  v56 = v54[3];

  v57 = v54[5];

  v145(v52 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v52 + v8[34]));
  v58 = *(v52 + v8[35]);

  v47(v52 + v8[36], v46);
  v59 = *(v193 + v192[8]);
  swift_unknownObjectRelease();
  if (*(v193 + v192[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v193 + v192[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = (v197 + v196) & ~v203;
  v62 = *(v198 + v199[6]);
  swift_unknownObjectRelease();
  v63 = (v198 + v199[7]);
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

  v64 = *(v198 + v199[8]);
  swift_unknownObjectRelease();
  v65 = v202 + v61;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_8;
    case 1u:
      v106 = sub_1E65D76F8();
      v107 = *(v106 - 8);
      if (!(*(v107 + 48))(v202 + v61, 1, v106))
      {
        (*(v107 + 8))(v202 + v61, v106);
      }

      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v109 = *(v65 + v108[12] + 8);

      v110 = v108[16];
      v111 = sub_1E65E2CF8();
      v112 = *(v111 - 8);
      if (!(*(v112 + 48))(v65 + v110, 1, v111))
      {
        (*(v112 + 8))(v65 + v110, v111);
      }

      v113 = *(v65 + v108[20]);

      v83 = v108[24];
      v114 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:
      v122 = *(v65 + 8);

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v90 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v117 = sub_1E65E0FD8();
            (*(*(v117 - 8) + 8))(v202 + v61, v117);
          }

          goto LABEL_80;
        }

LABEL_79:
        v142 = *(v65 + 8);

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      v143 = *(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_57:
      v130 = v204;
      v131 = v65 + *(v204 + 20);
      type metadata accessor for RouteSource(0);
      v132 = swift_getEnumCaseMultiPayload();
      if (v132 <= 1)
      {
        if (v132)
        {
          if (v132 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v132)
      {
        case 2:
LABEL_68:
          v134 = sub_1E65D74E8();
          v135 = *(v134 - 8);
          v136 = *(v135 + 8);
          v136(v131, v134);
          v137 = type metadata accessor for URLContext(0);
          v138 = *(v137 + 20);
          if (!(*(v135 + 48))(v131 + v138, 1, v134))
          {
            v136(v131 + v138, v134);
          }

          v139 = *(v131 + *(v137 + 24) + 8);

          v130 = v204;
          goto LABEL_71;
        case 3:
          v133 = sub_1E65D74E8();
          break;
        case 4:
          v133 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v133 - 8) + 8))(v131, v133);
LABEL_71:
      v140 = *(v65 + *(v130 + 24));

      sub_1E5F94E00(*(v202 + ((v61 + v200) & 0xFFFFFFFFFFFFFFF8) + 8), *(v202 + ((v61 + v200) & 0xFFFFFFFFFFFFFFF8) + 16));

      return swift_deallocObject();
    case 6u:

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v88 = *(v87 + 48);
      v89 = sub_1E65DB848();
      (*(*(v89 - 8) + 8))(v65 + v88, v89);
      v70 = *(v87 + 64);
      v90 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v98 = sub_1E65DB848();
      (*(*(v98 - 8) + 8))(v202 + v61, v98);
      v99 = &unk_1ED0720D0;
      v100 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v68 = *(v67 + 48);
      v69 = sub_1E65DB848();
      (*(*(v69 - 8) + 8))(v65 + v68, v69);
      v70 = *(v67 + 64);
      goto LABEL_49;
    case 0xCu:
      v115 = *(v65 + 8);

      sub_1E5F94E00(*(v65 + 16), *(v65 + 24));
      goto LABEL_57;
    case 0xEu:
      v86 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:
      v126 = *(v65 + 8);

      v99 = &unk_1ED0720E0;
      v100 = &unk_1E65EA2A0;
LABEL_48:
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v99, v100) + 48);
LABEL_49:
      v90 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      v123 = *v65;
      v124 = *(v65 + 8);
      v125 = *(v65 + 16);
      sub_1E5F94E14();
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:
      v101 = *(v65 + 8);

      v102 = *(v65 + 24);

      goto LABEL_57;
    case 0x15u:
      v127 = *(v65 + 8);

      v128 = *(v65 + 24);

      v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v114 = sub_1E65D96F8();
LABEL_52:
      v84 = v114;
      v85 = *(v114 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v114))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v202 + v61));
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v72 = v71[12];
      v73 = sub_1E65D74E8();
      (*(*(v73 - 8) + 8))(v65 + v72, v73);
      v74 = *(v65 + v71[16] + 8);

      v75 = v71[20];
      v76 = sub_1E65DB3E8();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v65 + v75, 1, v76))
      {
        (*(v77 + 8))(v65 + v75, v76);
      }

      v78 = *(v65 + v71[24] + 8);

      v79 = *(v65 + v71[28] + 8);

      v80 = v71[32];
      v81 = sub_1E65DB5D8();
      v82 = *(v81 - 8);
      if (!(*(v82 + 48))(v65 + v80, 1, v81))
      {
        (*(v82 + 8))(v65 + v80, v81);
      }

      v83 = v71[36];
      v84 = sub_1E65D7A38();
      v85 = *(v84 - 8);
      if (!(*(v85 + 48))(v65 + v83, 1, v84))
      {
LABEL_53:
        (*(v85 + 8))(v65 + v83, v84);
      }

      goto LABEL_57;
    case 0x17u:
      v94 = sub_1E65E57D8();
      (*(*(v94 - 8) + 8))(v202 + v61, v94);
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v96 = *(v95 + 48);
      v97 = sub_1E65E5528();
      (*(*(v97 - 8) + 8))(v65 + v96, v97);
      if (*(v65 + *(v95 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_57;
    case 0x18u:

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v90 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v105 = swift_getEnumCaseMultiPayload();
      if (v105 == 1)
      {

        goto LABEL_57;
      }

      if (v105)
      {
        goto LABEL_57;
      }

LABEL_29:
      v86 = sub_1E65D74E8();
      goto LABEL_56;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v86 = sub_1E65DAEB8();
LABEL_56:
        (*(*(v86 - 8) + 8))(v202 + v61, v86);
      }

      else
      {
LABEL_8:
        v66 = *(v65 + 8);
      }

      goto LABEL_57;
    case 0x1Cu:
      v86 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v129 = sub_1E65E55E8();
      (*(*(v129 - 8) + 8))(v202 + v61, v129);
      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v90 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v90 - 8) + 8))(v65 + v70, v90);
      goto LABEL_57;
    case 0x1Eu:
      v91 = sub_1E65E56B8();
      (*(*(v91 - 8) + 8))(v202 + v61, v91);
      v92 = &unk_1ED072110;
      v93 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v103 = sub_1E65DA308();
      (*(*(v103 - 8) + 8))(v202 + v61, v103);
      v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_44;
    case 0x20u:
      v118 = sub_1E65E58D8();
      (*(*(v118 - 8) + 8))(v202 + v61, v118);
      v92 = &qword_1ED072120;
      v93 = &qword_1E65EA2E0;
LABEL_43:
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(v92, v93);
      v120 = *(v65 + *(v119 + 48));

      v104 = *(v119 + 64);
LABEL_44:
      v121 = *(v65 + v104);

      goto LABEL_57;
    case 0x21u:
      v86 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E328A0()
{
  v1 = type metadata accessor for RouteDestination();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_2;
    case 1u:
      v46 = sub_1E65D76F8();
      v47 = *(v46 - 8);
      if (!(*(v47 + 48))(v0 + v3, 1, v46))
      {
        (*(v47 + 8))(v0 + v3, v46);
      }

      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v49 = *(v5 + v48[12] + 8);

      v50 = v48[16];
      v51 = sub_1E65E2CF8();
      v52 = *(v51 - 8);
      if (!(*(v52 + 48))(v5 + v50, 1, v51))
      {
        (*(v52 + 8))(v5 + v50, v51);
      }

      v53 = *(v5 + v48[20]);

      v23 = v48[24];
      v54 = sub_1E65E1FC8();
      goto LABEL_46;
    case 3u:
      v62 = *(v5 + 8);

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v30 = sub_1E65D72D8();
      goto LABEL_44;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v57 = sub_1E65E0FD8();
            (*(*(v57 - 8) + 8))(v0 + v3, v57);
          }

          goto LABEL_77;
        }

LABEL_76:
        v86 = *(v5 + 8);

        goto LABEL_77;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_76;
      }

LABEL_77:
      v87 = *(v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_51:
      v70 = v5 + *(v1 + 20);
      type metadata accessor for RouteSource(0);
      v71 = swift_getEnumCaseMultiPayload();
      if (v71 <= 1)
      {
        if (!v71)
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_68;
          }

          v90 = v4;
          v91 = (v2 + 16) & ~v2;
          v79 = sub_1E65D74E8();
          v80 = *(v79 - 8);
          v89 = *(v80 + 8);
          v89(v70, v79);
          v81 = type metadata accessor for URLContext(0);
          v82 = *(v81 + 20);
          if (!(*(v80 + 48))(v70 + v82, 1, v79))
          {
            v89(v70 + v82, v79);
          }

          v83 = *(v70 + *(v81 + 24) + 8);

          goto LABEL_67;
        }

        if (v71 != 1)
        {
          goto LABEL_68;
        }

LABEL_58:
        v90 = v4;
        v91 = (v2 + 16) & ~v2;
        v88 = v0 + v3;
        v73 = sub_1E65D74E8();
        v74 = *(v73 - 8);
        v75 = *(v74 + 8);
        v75(v70, v73);
        v76 = type metadata accessor for URLContext(0);
        v77 = *(v76 + 20);
        if (!(*(v74 + 48))(v70 + v77, 1, v73))
        {
          v75(v70 + v77, v73);
        }

        v78 = *(v70 + *(v76 + 24) + 8);

        v5 = v88;
LABEL_67:
        v4 = v90;
        v3 = v91;
        goto LABEL_68;
      }

      switch(v71)
      {
        case 2:
          goto LABEL_58;
        case 3:
          v72 = sub_1E65D74E8();
          break;
        case 4:
          v72 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_68;
      }

      (*(*(v72 - 8) + 8))(v70, v72);
LABEL_68:
      v84 = *(v5 + *(v1 + 24));

      sub_1E5F94E00(*(v0 + ((v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));

      return swift_deallocObject();
    case 6u:

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v28 = *(v27 + 48);
      v29 = sub_1E65DB848();
      (*(*(v29 - 8) + 8))(v5 + v28, v29);
      v10 = *(v27 + 64);
      v30 = sub_1E65E1518();
      goto LABEL_44;
    case 7u:
      v38 = sub_1E65DB848();
      (*(*(v38 - 8) + 8))(v0 + v3, v38);
      v39 = &unk_1ED0720D0;
      v40 = &unk_1E65EA290;
      goto LABEL_42;
    case 8u:
    case 9u:

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v8 = *(v7 + 48);
      v9 = sub_1E65DB848();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
      v10 = *(v7 + 64);
      goto LABEL_43;
    case 0xCu:
      v55 = *(v5 + 8);

      sub_1E5F94E00(*(v5 + 16), *(v5 + 24));
      goto LABEL_51;
    case 0xEu:
      v26 = sub_1E65DB718();
      goto LABEL_50;
    case 0x11u:
      v66 = *(v5 + 8);

      v39 = &unk_1ED0720E0;
      v40 = &unk_1E65EA2A0;
LABEL_42:
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v39, v40) + 48);
LABEL_43:
      v30 = sub_1E65D74E8();
      goto LABEL_44;
    case 0x12u:
      v63 = *v5;
      v64 = *(v5 + 8);
      v65 = *(v5 + 16);
      sub_1E5F94E14();
      goto LABEL_51;
    case 0x13u:
      goto LABEL_23;
    case 0x14u:
      v41 = *(v5 + 8);

      v42 = *(v5 + 24);

      goto LABEL_51;
    case 0x15u:
      v67 = *(v5 + 8);

      v68 = *(v5 + 24);

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v54 = sub_1E65D96F8();
LABEL_46:
      v24 = v54;
      v25 = *(v54 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v54))
      {
        goto LABEL_47;
      }

      goto LABEL_51;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v12 = v11[12];
      v13 = sub_1E65D74E8();
      (*(*(v13 - 8) + 8))(v5 + v12, v13);
      v14 = *(v5 + v11[16] + 8);

      v15 = v11[20];
      v16 = sub_1E65DB3E8();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v5 + v15, 1, v16))
      {
        (*(v17 + 8))(v5 + v15, v16);
      }

      v18 = *(v5 + v11[24] + 8);

      v19 = *(v5 + v11[28] + 8);

      v20 = v11[32];
      v21 = sub_1E65DB5D8();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v5 + v20, 1, v21))
      {
        (*(v22 + 8))(v5 + v20, v21);
      }

      v23 = v11[36];
      v24 = sub_1E65D7A38();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(v5 + v23, 1, v24))
      {
LABEL_47:
        (*(v25 + 8))(v5 + v23, v24);
      }

      goto LABEL_51;
    case 0x17u:
      v34 = sub_1E65E57D8();
      (*(*(v34 - 8) + 8))(v0 + v3, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v36 = *(v35 + 48);
      v37 = sub_1E65E5528();
      (*(*(v37 - 8) + 8))(v5 + v36, v37);
      if (*(v5 + *(v35 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_51;
    case 0x18u:

      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v30 = sub_1E65DB848();
      goto LABEL_44;
    case 0x1Au:
      sub_1E65E52B8();
      v45 = swift_getEnumCaseMultiPayload();
      if (v45 == 1)
      {

        goto LABEL_51;
      }

      if (v45)
      {
        goto LABEL_51;
      }

LABEL_23:
      v26 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = sub_1E65DAEB8();
LABEL_50:
        (*(*(v26 - 8) + 8))(v0 + v3, v26);
      }

      else
      {
LABEL_2:
        v6 = *(v5 + 8);
      }

      goto LABEL_51;
    case 0x1Cu:
      v26 = sub_1E65D76F8();
      goto LABEL_50;
    case 0x1Du:
      v69 = sub_1E65E55E8();
      (*(*(v69 - 8) + 8))(v0 + v3, v69);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v30 = sub_1E65D7EB8();
LABEL_44:
      (*(*(v30 - 8) + 8))(v5 + v10, v30);
      goto LABEL_51;
    case 0x1Eu:
      v31 = sub_1E65E56B8();
      (*(*(v31 - 8) + 8))(v0 + v3, v31);
      v32 = &unk_1ED072110;
      v33 = &unk_1E65EA2D0;
      goto LABEL_37;
    case 0x1Fu:
      v43 = sub_1E65DA308();
      (*(*(v43 - 8) + 8))(v0 + v3, v43);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_38;
    case 0x20u:
      v58 = sub_1E65E58D8();
      (*(*(v58 - 8) + 8))(v0 + v3, v58);
      v32 = &qword_1ED072120;
      v33 = &qword_1E65EA2E0;
LABEL_37:
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      v60 = *(v5 + *(v59 + 48));

      v44 = *(v59 + 64);
LABEL_38:
      v61 = *(v5 + v44);

      goto LABEL_51;
    case 0x21u:
      v26 = sub_1E65D9048();
      goto LABEL_50;
    default:
      goto LABEL_51;
  }
}

uint64_t sub_1E5E33638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E336D0()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v121 = *(*(v1 - 8) + 80);
  v117 = *(*(v1 - 8) + 64);
  v118 = (v121 + 16) & ~v121;
  v122 = v0;
  v2 = (v0 + v118);

  v119 = v2;
  v120 = v1;
  v3 = (v2 + *(v1 + 20));
  v4 = *v3;
  v5 = v3;
  v114 = v3;

  v123 = type metadata accessor for AppComposer();
  v6 = v5 + v123[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v116 = type metadata accessor for AccountService();
  v115 = *(v116[-1].Description + 1);
  v115(&v6[v9], v116);
  v10 = v8[7];
  v113 = type metadata accessor for AppStateService();
  v112 = *(v113[-1].Description + 1);
  v112(&v6[v10], v113);
  v11 = v8[8];
  v111 = type metadata accessor for ArchivedSessionService();
  v110 = *(v111[-1].Description + 1);
  v110(&v6[v11], v111);
  v12 = v8[9];
  v109 = type metadata accessor for AssetService();
  v108 = *(v109[-1].Description + 1);
  v108(&v6[v12], v109);
  v13 = v8[10];
  v107 = type metadata accessor for AwardsService();
  v106 = *(v107[-1].Description + 1);
  v106(&v6[v13], v107);
  v14 = v8[11];
  v105 = type metadata accessor for BookmarkService();
  v104 = *(v105[-1].Description + 1);
  v104(&v6[v14], v105);
  v15 = v8[12];
  v103 = type metadata accessor for CatalogService();
  v102 = *(v103[-1].Description + 1);
  v102(&v6[v15], v103);
  v16 = v8[13];
  v101 = type metadata accessor for ConfigurationService();
  v100 = *(v101[-1].Description + 1);
  v100(&v6[v16], v101);
  v17 = v8[14];
  v99 = type metadata accessor for ContentAvailabilityService();
  v98 = *(v99[-1].Description + 1);
  v98(&v6[v17], v99);
  v18 = v8[15];
  v97 = type metadata accessor for EngagementService();
  v96 = *(v97[-1].Description + 1);
  v96(&v6[v18], v97);
  v19 = v8[16];
  v95 = type metadata accessor for HealthDataService();
  v94 = *(v95[-1].Description + 1);
  v94(&v6[v19], v95);
  v20 = v8[17];
  v93 = type metadata accessor for InteropService();
  v92 = *(v93[-1].Description + 1);
  v92(&v6[v20], v93);
  v21 = v8[18];
  v91 = type metadata accessor for LocalizationService();
  v90 = *(v91[-1].Description + 1);
  v90(&v6[v21], v91);
  v22 = v8[19];
  v89 = type metadata accessor for MarketingService();
  v88 = *(v89[-1].Description + 1);
  v88(&v6[v22], v89);
  v23 = v8[20];
  v87 = type metadata accessor for MetricService();
  v86 = *(v87[-1].Description + 1);
  v86(&v6[v23], v87);
  v24 = v8[21];
  v85 = type metadata accessor for PersonalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v6[v24], v85);
  v25 = v8[22];
  v83 = type metadata accessor for PlayerService();
  v82 = *(v83[-1].Description + 1);
  v82(&v6[v25], v83);
  v26 = v8[23];
  v81 = type metadata accessor for PrivacyPreferenceService();
  v80 = *(v81[-1].Description + 1);
  v80(&v6[v26], v81);
  v27 = v8[24];
  v79 = type metadata accessor for RecommendationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v6[v27], v79);
  v28 = v8[25];
  v77 = type metadata accessor for RemoteBrowsingService();
  v76 = *(v77[-1].Description + 1);
  v76(&v6[v28], v77);
  v29 = v8[26];
  v75 = type metadata accessor for SearchService();
  v74 = *(v75[-1].Description + 1);
  v74(&v6[v29], v75);
  v30 = v8[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v6[v30], v68);
  v31 = v8[28];
  v66 = type metadata accessor for SessionService();
  v72 = *(v66[-1].Description + 1);
  v72(&v6[v31], v66);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v71 = *(v33[-1].Description + 1);
  v71(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v70 = *(v35[-1].Description + 1);
  v70(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v69 = *(v37[-1].Description + 1);
  v69(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v67 = *(QueueService[-1].Description + 1);
  v67(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v47 = *(v46[-1].Description + 1);
  v47(&v6[v45], v46);
  v48 = *(v114 + v123[6]);

  v49 = (v114 + v123[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v115(&v52[v8[6]], v116);
  v112(&v52[v8[7]], v113);
  v110(&v52[v8[8]], v111);
  v108(&v52[v8[9]], v109);
  v106(&v52[v8[10]], v107);
  v104(&v52[v8[11]], v105);
  v102(&v52[v8[12]], v103);
  v100(&v52[v8[13]], v101);
  v98(&v52[v8[14]], v99);
  v96(&v52[v8[15]], v97);
  v94(&v52[v8[16]], v95);
  v92(&v52[v8[17]], v93);
  v90(&v52[v8[18]], v91);
  v88(&v52[v8[19]], v89);
  v86(&v52[v8[20]], v87);
  v84(&v52[v8[21]], v85);
  v82(&v52[v8[22]], v83);
  v80(&v52[v8[23]], v81);
  v78(&v52[v8[24]], v79);
  v76(&v52[v8[25]], v77);
  v74(&v52[v8[26]], v75);
  v73(&v52[v8[27]], v68);
  v72(&v52[v8[28]], v66);
  v71(&v52[v8[29]], v33);
  v70(&v52[v8[30]], v35);
  v69(&v52[v8[31]], v37);
  v54 = &v52[v8[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v67(&v52[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v8[34]]);
  v58 = *&v52[v8[35]];

  v47(&v52[v8[36]], v46);
  v59 = *(v114 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v114 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v60 = (v114 + v123[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v61 = *(v119 + v120[6]);
  swift_unknownObjectRelease();
  v62 = (v119 + v120[7]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = *(v119 + v120[8]);
  swift_unknownObjectRelease();
  v64 = *(v122 + ((v117 + v118 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1E5E343F8()
{
  v1 = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NavigationControllerRoutingContext();
  v199 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v199) & ~v199;
  v198 = *(*(v5 - 8) + 64);
  v7 = v1 + v3;
  v8 = type metadata accessor for RouteDestination();
  v200 = v6;
  v201 = v5;
  if (!(*(*(v8 - 8) + 48))(v1 + v3, 1, v8))
  {
    type metadata accessor for RouteResource();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 2u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
        goto LABEL_3;
      case 1u:
        v49 = sub_1E65D76F8();
        v50 = *(v49 - 8);
        if (!(*(v50 + 48))(v7, 1, v49))
        {
          (*(v50 + 8))(v7, v49);
        }

        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
        v52 = *(v7 + v51[12] + 8);

        v53 = v51[16];
        v54 = sub_1E65E2CF8();
        v55 = *(v54 - 8);
        if (!(*(v55 + 48))(v7 + v53, 1, v54))
        {
          (*(v55 + 8))(v7 + v53, v54);
        }

        v56 = *(v7 + v51[20]);

        v26 = v51[24];
        v57 = sub_1E65E1FC8();
        goto LABEL_47;
      case 3u:
        v65 = *(v7 + 8);

        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v33 = sub_1E65D72D8();
        goto LABEL_45;
      case 4u:
        sub_1E65E0B48();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 3)
        {
          if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
          {
LABEL_82:
            v145 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_52:
            v73 = v7 + *(v8 + 20);
            type metadata accessor for RouteSource(0);
            v74 = swift_getEnumCaseMultiPayload();
            if (v74 <= 1)
            {
              if (v74)
              {
                if (v74 != 1)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                type metadata accessor for AppLaunchScope(0);
                if (swift_getEnumCaseMultiPayload() > 1)
                {
                  goto LABEL_66;
                }
              }
            }

            else if (v74 != 2)
            {
              if (v74 == 3)
              {
                v75 = sub_1E65D74E8();
              }

              else
              {
                if (v74 != 4)
                {
LABEL_66:
                  v82 = *(v7 + *(v8 + 24));

                  break;
                }

                v75 = sub_1E65D8D48();
              }

              (*(*(v75 - 8) + 8))(v73, v75);
              goto LABEL_66;
            }

            v76 = sub_1E65D74E8();
            v77 = *(v76 - 8);
            v78 = *(v77 + 8);
            v78(v73, v76);
            v79 = type metadata accessor for URLContext(0);
            v80 = *(v79 + 20);
            if (!(*(v77 + 48))(v73 + v80, 1, v76))
            {
              v78(v73 + v80, v76);
            }

            v81 = *(v73 + *(v79 + 24) + 8);

            v6 = v200;
            goto LABEL_66;
          }
        }

        else if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v60 = sub_1E65E0FD8();
            (*(*(v60 - 8) + 8))(v1 + v3, v60);
          }

          goto LABEL_82;
        }

        v144 = *(v7 + 8);

        goto LABEL_82;
      case 6u:

        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
        v31 = *(v30 + 48);
        v32 = sub_1E65DB848();
        (*(*(v32 - 8) + 8))(v7 + v31, v32);
        v13 = *(v30 + 64);
        v33 = sub_1E65E1518();
        goto LABEL_45;
      case 7u:
        v41 = sub_1E65DB848();
        (*(*(v41 - 8) + 8))(v1 + v3, v41);
        v42 = &unk_1ED0720D0;
        v43 = &unk_1E65EA290;
        goto LABEL_43;
      case 8u:
      case 9u:

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
        v11 = *(v10 + 48);
        v12 = sub_1E65DB848();
        (*(*(v12 - 8) + 8))(v7 + v11, v12);
        v13 = *(v10 + 64);
        goto LABEL_44;
      case 0xCu:
        v58 = *(v7 + 8);

        sub_1E5F94E00(*(v7 + 16), *(v7 + 24));
        goto LABEL_52;
      case 0xEu:
        v29 = sub_1E65DB718();
        goto LABEL_51;
      case 0x11u:
        v69 = *(v7 + 8);

        v42 = &unk_1ED0720E0;
        v43 = &unk_1E65EA2A0;
LABEL_43:
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v42, v43) + 48);
LABEL_44:
        v33 = sub_1E65D74E8();
        goto LABEL_45;
      case 0x12u:
        v66 = *v7;
        v67 = *(v7 + 8);
        v68 = *(v7 + 16);
        sub_1E5F94E14();
        goto LABEL_52;
      case 0x13u:
        goto LABEL_24;
      case 0x14u:
        v44 = *(v7 + 8);

        v45 = *(v7 + 24);

        goto LABEL_52;
      case 0x15u:
        v70 = *(v7 + 8);

        v71 = *(v7 + 24);

        v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
        v57 = sub_1E65D96F8();
LABEL_47:
        v27 = v57;
        v28 = *(v57 - 8);
        if (!(*(v28 + 48))(v7 + v26, 1, v57))
        {
          goto LABEL_48;
        }

        goto LABEL_52;
      case 0x16u:
        __swift_destroy_boxed_opaque_existential_1((v1 + v3));
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
        v15 = v14[12];
        v16 = sub_1E65D74E8();
        (*(*(v16 - 8) + 8))(v7 + v15, v16);
        v17 = *(v7 + v14[16] + 8);

        v18 = v14[20];
        v19 = sub_1E65DB3E8();
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(v7 + v18, 1, v19))
        {
          (*(v20 + 8))(v7 + v18, v19);
        }

        v21 = *(v7 + v14[24] + 8);

        v22 = *(v7 + v14[28] + 8);

        v23 = v14[32];
        v24 = sub_1E65DB5D8();
        v25 = *(v24 - 8);
        if (!(*(v25 + 48))(v7 + v23, 1, v24))
        {
          (*(v25 + 8))(v7 + v23, v24);
        }

        v26 = v14[36];
        v27 = sub_1E65D7A38();
        v28 = *(v27 - 8);
        if (!(*(v28 + 48))(v7 + v26, 1, v27))
        {
LABEL_48:
          (*(v28 + 8))(v7 + v26, v27);
        }

        goto LABEL_52;
      case 0x17u:
        v37 = sub_1E65E57D8();
        (*(*(v37 - 8) + 8))(v1 + v3, v37);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
        v39 = *(v38 + 48);
        v40 = sub_1E65E5528();
        (*(*(v40 - 8) + 8))(v7 + v39, v40);
        if (*(v7 + *(v38 + 64) + 8) >= 0xCuLL)
        {
        }

        goto LABEL_52;
      case 0x18u:

        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
        v33 = sub_1E65DB848();
        goto LABEL_45;
      case 0x1Au:
        sub_1E65E52B8();
        v48 = swift_getEnumCaseMultiPayload();
        if (v48 == 1)
        {

          goto LABEL_52;
        }

        if (v48)
        {
          goto LABEL_52;
        }

LABEL_24:
        v29 = sub_1E65D74E8();
        goto LABEL_51;
      case 0x1Bu:
        type metadata accessor for PlaylistType();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = sub_1E65DAEB8();
LABEL_51:
          (*(*(v29 - 8) + 8))(v1 + v3, v29);
        }

        else
        {
LABEL_3:
          v9 = *(v7 + 8);
        }

        goto LABEL_52;
      case 0x1Cu:
        v29 = sub_1E65D76F8();
        goto LABEL_51;
      case 0x1Du:
        v72 = sub_1E65E55E8();
        (*(*(v72 - 8) + 8))(v1 + v3, v72);
        v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
        v33 = sub_1E65D7EB8();
LABEL_45:
        (*(*(v33 - 8) + 8))(v7 + v13, v33);
        goto LABEL_52;
      case 0x1Eu:
        v34 = sub_1E65E56B8();
        (*(*(v34 - 8) + 8))(v1 + v3, v34);
        v35 = &unk_1ED072110;
        v36 = &unk_1E65EA2D0;
        goto LABEL_38;
      case 0x1Fu:
        v46 = sub_1E65DA308();
        (*(*(v46 - 8) + 8))(v1 + v3, v46);
        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
        goto LABEL_39;
      case 0x20u:
        v61 = sub_1E65E58D8();
        (*(*(v61 - 8) + 8))(v1 + v3, v61);
        v35 = &qword_1ED072120;
        v36 = &qword_1E65EA2E0;
LABEL_38:
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
        v63 = *(v7 + *(v62 + 48));

        v47 = *(v62 + 64);
LABEL_39:
        v64 = *(v7 + v47);

        goto LABEL_52;
      case 0x21u:
        v29 = sub_1E65D9048();
        goto LABEL_51;
      default:
        goto LABEL_52;
    }
  }

  v197 = v1 + v6;
  v83 = *(v1 + v6 + *(v5 + 20));
  v84 = v1 + v6 + *(v5 + 20);
  v194 = v84;

  v202 = type metadata accessor for AppComposer();
  v85 = (v84 + v202[5]);
  v86 = *v85;
  swift_unknownObjectRelease();
  v87 = type metadata accessor for AppEnvironment();
  v88 = v87[6];
  v196 = type metadata accessor for AccountService();
  v195 = *(v196[-1].Description + 1);
  v195(v85 + v88, v196);
  v89 = v87[7];
  v193 = type metadata accessor for AppStateService();
  v192 = *(v193[-1].Description + 1);
  v192(v85 + v89, v193);
  v90 = v87[8];
  v191 = type metadata accessor for ArchivedSessionService();
  v190 = *(v191[-1].Description + 1);
  v190(v85 + v90, v191);
  v91 = v87[9];
  v189 = type metadata accessor for AssetService();
  v188 = *(v189[-1].Description + 1);
  v188(v85 + v91, v189);
  v92 = v87[10];
  v187 = type metadata accessor for AwardsService();
  v186 = *(v187[-1].Description + 1);
  v186(v85 + v92, v187);
  v93 = v87[11];
  v185 = type metadata accessor for BookmarkService();
  v184 = *(v185[-1].Description + 1);
  v184(v85 + v93, v185);
  v94 = v87[12];
  v183 = type metadata accessor for CatalogService();
  v182 = *(v183[-1].Description + 1);
  v182(v85 + v94, v183);
  v95 = v87[13];
  v181 = type metadata accessor for ConfigurationService();
  v180 = *(v181[-1].Description + 1);
  v180(v85 + v95, v181);
  v96 = v87[14];
  v179 = type metadata accessor for ContentAvailabilityService();
  v178 = *(v179[-1].Description + 1);
  v178(v85 + v96, v179);
  v97 = v87[15];
  v177 = type metadata accessor for EngagementService();
  v176 = *(v177[-1].Description + 1);
  v176(v85 + v97, v177);
  v98 = v87[16];
  v175 = type metadata accessor for HealthDataService();
  v174 = *(v175[-1].Description + 1);
  v174(v85 + v98, v175);
  v99 = v87[17];
  v173 = type metadata accessor for InteropService();
  v172 = *(v173[-1].Description + 1);
  v172(v85 + v99, v173);
  v100 = v87[18];
  v171 = type metadata accessor for LocalizationService();
  v170 = *(v171[-1].Description + 1);
  v170(v85 + v100, v171);
  v101 = v87[19];
  v169 = type metadata accessor for MarketingService();
  v168 = *(v169[-1].Description + 1);
  v168(v85 + v101, v169);
  v102 = v87[20];
  v167 = type metadata accessor for MetricService();
  v166 = *(v167[-1].Description + 1);
  v166(v85 + v102, v167);
  v103 = v87[21];
  v165 = type metadata accessor for PersonalizationService();
  v164 = *(v165[-1].Description + 1);
  v164(v85 + v103, v165);
  v104 = v87[22];
  v163 = type metadata accessor for PlayerService();
  v162 = *(v163[-1].Description + 1);
  v162(v85 + v104, v163);
  v105 = v87[23];
  v161 = type metadata accessor for PrivacyPreferenceService();
  v160 = *(v161[-1].Description + 1);
  v160(v85 + v105, v161);
  v106 = v87[24];
  v159 = type metadata accessor for RecommendationService();
  v158 = *(v159[-1].Description + 1);
  v158(v85 + v106, v159);
  v107 = v87[25];
  v157 = type metadata accessor for RemoteBrowsingService();
  v156 = *(v157[-1].Description + 1);
  v156(v85 + v107, v157);
  v108 = v87[26];
  v155 = type metadata accessor for SearchService();
  v154 = *(v155[-1].Description + 1);
  v154(v85 + v108, v155);
  v109 = v87[27];
  v148 = type metadata accessor for ServiceSubscriptionService();
  v153 = *(v148[-1].Description + 1);
  v153(v85 + v109, v148);
  v110 = v87[28];
  v146 = type metadata accessor for SessionService();
  v152 = *(v146[-1].Description + 1);
  v152(v85 + v110, v146);
  v111 = v87[29];
  v112 = type metadata accessor for SharePlayService();
  v151 = *(v112[-1].Description + 1);
  v151(v85 + v111, v112);
  v113 = v87[30];
  v114 = type metadata accessor for SiriService();
  v150 = *(v114[-1].Description + 1);
  v150(v85 + v113, v114);
  v115 = v87[31];
  v116 = type metadata accessor for SyncService();
  v149 = *(v116[-1].Description + 1);
  v149(v85 + v115, v116);
  v117 = (v85 + v87[32]);
  v118 = v117[1];

  v119 = v117[3];

  v120 = v117[5];

  v121 = v87[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v147 = *(QueueService[-1].Description + 1);
  v147(v85 + v121, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v85 + v87[34]));
  v123 = *(v85 + v87[35]);

  v124 = v87[36];
  v125 = type metadata accessor for WorkoutPlanService();
  v126 = *(v125[-1].Description + 1);
  v126(v85 + v124, v125);
  v127 = *(v194 + v202[6]);

  v128 = (v194 + v202[7]);
  v129 = *v128;

  v130 = v128[1];

  v131 = (v128 + *(type metadata accessor for AppDataItemResolver() + 24));
  v132 = *v131;
  swift_unknownObjectRelease();
  v195(v131 + v87[6], v196);
  v192(v131 + v87[7], v193);
  v190(v131 + v87[8], v191);
  v188(v131 + v87[9], v189);
  v186(v131 + v87[10], v187);
  v184(v131 + v87[11], v185);
  v182(v131 + v87[12], v183);
  v180(v131 + v87[13], v181);
  v178(v131 + v87[14], v179);
  v176(v131 + v87[15], v177);
  v174(v131 + v87[16], v175);
  v172(v131 + v87[17], v173);
  v170(v131 + v87[18], v171);
  v168(v131 + v87[19], v169);
  v166(v131 + v87[20], v167);
  v164(v131 + v87[21], v165);
  v162(v131 + v87[22], v163);
  v160(v131 + v87[23], v161);
  v158(v131 + v87[24], v159);
  v156(v131 + v87[25], v157);
  v154(v131 + v87[26], v155);
  v153(v131 + v87[27], v148);
  v152(v131 + v87[28], v146);
  v151(v131 + v87[29], v112);
  v150(v131 + v87[30], v114);
  v149(v131 + v87[31], v116);
  v133 = (v131 + v87[32]);
  v134 = v133[1];

  v135 = v133[3];

  v136 = v133[5];

  v147(v131 + v87[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v131 + v87[34]));
  v137 = *(v131 + v87[35]);

  v126(v131 + v87[36], v125);
  v138 = *(v194 + v202[8]);
  swift_unknownObjectRelease();
  if (*(v194 + v202[9] + 8) >= 0xCuLL)
  {
  }

  v139 = (v194 + v202[10]);
  if (v139[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v139);
  }

  v140 = *(v197 + v201[6]);
  swift_unknownObjectRelease();
  v141 = (v197 + v201[7]);
  if (v141[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v141);
  }

  v142 = *(v197 + v201[8]);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E35D90()
{
  v1 = type metadata accessor for NavigationControllerRoutingContext();
  v200 = *(*(v1 - 8) + 80);
  v2 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for RouteDestination();
  v202 = *(*(v3 - 8) + 80);
  v203 = v3;
  v195 = v2 + v202;
  v199 = *(*(v3 - 8) + 64);
  v201 = v0;
  v196 = (v200 + 16) & ~v200;

  v197 = v0 + v196;
  v198 = v1;
  v4 = *(v0 + v196 + *(v1 + 20));
  v5 = v0 + v196 + *(v1 + 20);
  v146 = v5;

  v204 = type metadata accessor for AppComposer();
  v6 = (v5 + v204[5]);
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v194 = type metadata accessor for AccountService();
  v193 = *(v194[-1].Description + 1);
  v193(v6 + v9, v194);
  v10 = v8[7];
  v192 = type metadata accessor for AppStateService();
  v191 = *(v192[-1].Description + 1);
  v191(v6 + v10, v192);
  v11 = v8[8];
  v190 = type metadata accessor for ArchivedSessionService();
  v189 = *(v190[-1].Description + 1);
  v189(v6 + v11, v190);
  v12 = v8[9];
  v188 = type metadata accessor for AssetService();
  v187 = *(v188[-1].Description + 1);
  v187(v6 + v12, v188);
  v13 = v8[10];
  v186 = type metadata accessor for AwardsService();
  v185 = *(v186[-1].Description + 1);
  v185(v6 + v13, v186);
  v14 = v8[11];
  v184 = type metadata accessor for BookmarkService();
  v183 = *(v184[-1].Description + 1);
  v183(v6 + v14, v184);
  v15 = v8[12];
  v182 = type metadata accessor for CatalogService();
  v181 = *(v182[-1].Description + 1);
  v181(v6 + v15, v182);
  v16 = v8[13];
  v180 = type metadata accessor for ConfigurationService();
  v179 = *(v180[-1].Description + 1);
  v179(v6 + v16, v180);
  v17 = v8[14];
  v178 = type metadata accessor for ContentAvailabilityService();
  v177 = *(v178[-1].Description + 1);
  v177(v6 + v17, v178);
  v18 = v8[15];
  v176 = type metadata accessor for EngagementService();
  v175 = *(v176[-1].Description + 1);
  v175(v6 + v18, v176);
  v19 = v8[16];
  v174 = type metadata accessor for HealthDataService();
  v173 = *(v174[-1].Description + 1);
  v173(v6 + v19, v174);
  v20 = v8[17];
  v172 = type metadata accessor for InteropService();
  v171 = *(v172[-1].Description + 1);
  v171(v6 + v20, v172);
  v21 = v8[18];
  v170 = type metadata accessor for LocalizationService();
  v169 = *(v170[-1].Description + 1);
  v169(v6 + v21, v170);
  v22 = v8[19];
  v168 = type metadata accessor for MarketingService();
  v167 = *(v168[-1].Description + 1);
  v167(v6 + v22, v168);
  v23 = v8[20];
  v166 = type metadata accessor for MetricService();
  v165 = *(v166[-1].Description + 1);
  v165(v6 + v23, v166);
  v24 = v8[21];
  v164 = type metadata accessor for PersonalizationService();
  v163 = *(v164[-1].Description + 1);
  v163(v6 + v24, v164);
  v25 = v8[22];
  v162 = type metadata accessor for PlayerService();
  v161 = *(v162[-1].Description + 1);
  v161(v6 + v25, v162);
  v26 = v8[23];
  v160 = type metadata accessor for PrivacyPreferenceService();
  v159 = *(v160[-1].Description + 1);
  v159(v6 + v26, v160);
  v27 = v8[24];
  v158 = type metadata accessor for RecommendationService();
  v157 = *(v158[-1].Description + 1);
  v157(v6 + v27, v158);
  v28 = v8[25];
  v156 = type metadata accessor for RemoteBrowsingService();
  v155 = *(v156[-1].Description + 1);
  v155(v6 + v28, v156);
  v29 = v8[26];
  v154 = type metadata accessor for SearchService();
  v153 = *(v154[-1].Description + 1);
  v153(v6 + v29, v154);
  v30 = v8[27];
  v152 = type metadata accessor for ServiceSubscriptionService();
  v151 = *(v152[-1].Description + 1);
  v151(v6 + v30, v152);
  v31 = v8[28];
  v144 = type metadata accessor for SessionService();
  v150 = *(v144[-1].Description + 1);
  v150(v6 + v31, v144);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v149 = *(v33[-1].Description + 1);
  v149(v6 + v32, v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v148 = *(v35[-1].Description + 1);
  v148(v6 + v34, v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v147 = *(v37[-1].Description + 1);
  v147(v6 + v36, v37);
  v38 = (v6 + v8[32]);
  v39 = v38[1];

  v40 = v38[3];

  v41 = v38[5];

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v145 = *(QueueService[-1].Description + 1);
  v145(v6 + v42, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v6 + v8[34]));
  v44 = *(v6 + v8[35]);

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v143 = *(v46[-1].Description + 1);
  v143(v6 + v45, v46);
  v47 = *(v146 + v204[6]);

  v48 = (v146 + v204[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = (v48 + *(type metadata accessor for AppDataItemResolver() + 24));
  v52 = *v51;
  swift_unknownObjectRelease();
  v193(v51 + v8[6], v194);
  v191(v51 + v8[7], v192);
  v189(v51 + v8[8], v190);
  v187(v51 + v8[9], v188);
  v185(v51 + v8[10], v186);
  v183(v51 + v8[11], v184);
  v181(v51 + v8[12], v182);
  v179(v51 + v8[13], v180);
  v177(v51 + v8[14], v178);
  v175(v51 + v8[15], v176);
  v173(v51 + v8[16], v174);
  v171(v51 + v8[17], v172);
  v169(v51 + v8[18], v170);
  v167(v51 + v8[19], v168);
  v165(v51 + v8[20], v166);
  v163(v51 + v8[21], v164);
  v161(v51 + v8[22], v162);
  v159(v51 + v8[23], v160);
  v157(v51 + v8[24], v158);
  v155(v51 + v8[25], v156);
  v153(v51 + v8[26], v154);
  v151(v51 + v8[27], v152);
  v150(v51 + v8[28], v144);
  v149(v51 + v8[29], v33);
  v148(v51 + v8[30], v35);
  v147(v51 + v8[31], v37);
  v53 = (v51 + v8[32]);
  v54 = v53[1];

  v55 = v53[3];

  v56 = v53[5];

  v145(v51 + v8[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v51 + v8[34]));
  v57 = *(v51 + v8[35]);

  v143(v51 + v8[36], v46);
  v58 = *(v146 + v204[8]);
  swift_unknownObjectRelease();
  if (*(v146 + v204[9] + 8) >= 0xCuLL)
  {
  }

  v59 = (v146 + v204[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v60 = (v196 + v195) & ~v202;
  v61 = *(v197 + v198[6]);
  swift_unknownObjectRelease();
  v62 = (v197 + v198[7]);
  if (v62[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v63 = *(v197 + v198[8]);
  swift_unknownObjectRelease();
  v64 = v0 + v60;
  type metadata accessor for RouteResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 2u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xFu:
    case 0x10u:
      goto LABEL_8;
    case 1u:
      v105 = sub_1E65D76F8();
      v106 = *(v105 - 8);
      if (!(*(v106 + 48))(v201 + v60, 1, v105))
      {
        (*(v106 + 8))(v201 + v60, v105);
      }

      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v108 = *(v64 + v107[12] + 8);

      v109 = v107[16];
      v110 = sub_1E65E2CF8();
      v111 = *(v110 - 8);
      if (!(*(v111 + 48))(v64 + v109, 1, v110))
      {
        (*(v111 + 8))(v64 + v109, v110);
      }

      v112 = *(v64 + v107[20]);

      v82 = v107[24];
      v113 = sub_1E65E1FC8();
      goto LABEL_52;
    case 3u:
      v121 = *(v64 + 8);

      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
      v89 = sub_1E65D72D8();
      goto LABEL_50;
    case 4u:
      sub_1E65E0B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload <= 1 && EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v116 = sub_1E65E0FD8();
            (*(*(v116 - 8) + 8))(v0 + v60, v116);
          }

          goto LABEL_80;
        }

LABEL_79:
        v141 = *(v64 + 8);

        goto LABEL_80;
      }

      if (EnumCaseMultiPayload <= 6 || EnumCaseMultiPayload == 7)
      {
        goto LABEL_79;
      }

LABEL_80:
      v142 = *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48) + 8);

LABEL_57:
      v129 = v203;
      v130 = v64 + *(v203 + 20);
      type metadata accessor for RouteSource(0);
      v131 = swift_getEnumCaseMultiPayload();
      if (v131 <= 1)
      {
        if (v131)
        {
          if (v131 != 1)
          {
            goto LABEL_71;
          }
        }

        else
        {
          type metadata accessor for AppLaunchScope(0);
          if (swift_getEnumCaseMultiPayload() > 1)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_68;
      }

      switch(v131)
      {
        case 2:
LABEL_68:
          v133 = sub_1E65D74E8();
          v134 = *(v133 - 8);
          v135 = *(v134 + 8);
          v135(v130, v133);
          v136 = type metadata accessor for URLContext(0);
          v137 = *(v136 + 20);
          if (!(*(v134 + 48))(v130 + v137, 1, v133))
          {
            v135(v130 + v137, v133);
          }

          v138 = *(v130 + *(v136 + 24) + 8);

          v129 = v203;
          goto LABEL_71;
        case 3:
          v132 = sub_1E65D74E8();
          break;
        case 4:
          v132 = sub_1E65D8D48();
          break;
        default:
          goto LABEL_71;
      }

      (*(*(v132 - 8) + 8))(v130, v132);
LABEL_71:
      v139 = *(v64 + *(v129 + 24));

      return swift_deallocObject();
    case 6u:

      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v87 = *(v86 + 48);
      v88 = sub_1E65DB848();
      (*(*(v88 - 8) + 8))(v64 + v87, v88);
      v69 = *(v86 + 64);
      v89 = sub_1E65E1518();
      goto LABEL_50;
    case 7u:
      v97 = sub_1E65DB848();
      (*(*(v97 - 8) + 8))(v0 + v60, v97);
      v98 = &unk_1ED0720D0;
      v99 = &unk_1E65EA290;
      goto LABEL_48;
    case 8u:
    case 9u:

      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v67 = *(v66 + 48);
      v68 = sub_1E65DB848();
      (*(*(v68 - 8) + 8))(v64 + v67, v68);
      v69 = *(v66 + 64);
      goto LABEL_49;
    case 0xCu:
      v114 = *(v64 + 8);

      sub_1E5F94E00(*(v64 + 16), *(v64 + 24));
      goto LABEL_57;
    case 0xEu:
      v85 = sub_1E65DB718();
      goto LABEL_56;
    case 0x11u:
      v125 = *(v64 + 8);

      v98 = &unk_1ED0720E0;
      v99 = &unk_1E65EA2A0;
LABEL_48:
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v98, v99) + 48);
LABEL_49:
      v89 = sub_1E65D74E8();
      goto LABEL_50;
    case 0x12u:
      v122 = *v64;
      v123 = *(v64 + 8);
      v124 = *(v64 + 16);
      sub_1E5F94E14();
      goto LABEL_57;
    case 0x13u:
      goto LABEL_29;
    case 0x14u:
      v100 = *(v64 + 8);

      v101 = *(v64 + 24);

      goto LABEL_57;
    case 0x15u:
      v126 = *(v64 + 8);

      v127 = *(v64 + 24);

      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      v113 = sub_1E65D96F8();
LABEL_52:
      v83 = v113;
      v84 = *(v113 - 8);
      if (!(*(v84 + 48))(v64 + v82, 1, v113))
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 0x16u:
      __swift_destroy_boxed_opaque_existential_1((v0 + v60));
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v71 = v70[12];
      v72 = sub_1E65D74E8();
      (*(*(v72 - 8) + 8))(v64 + v71, v72);
      v73 = *(v64 + v70[16] + 8);

      v74 = v70[20];
      v75 = sub_1E65DB3E8();
      v76 = *(v75 - 8);
      if (!(*(v76 + 48))(v64 + v74, 1, v75))
      {
        (*(v76 + 8))(v64 + v74, v75);
      }

      v77 = *(v64 + v70[24] + 8);

      v78 = *(v64 + v70[28] + 8);

      v79 = v70[32];
      v80 = sub_1E65DB5D8();
      v81 = *(v80 - 8);
      if (!(*(v81 + 48))(v64 + v79, 1, v80))
      {
        (*(v81 + 8))(v64 + v79, v80);
      }

      v82 = v70[36];
      v83 = sub_1E65D7A38();
      v84 = *(v83 - 8);
      if (!(*(v84 + 48))(v64 + v82, 1, v83))
      {
LABEL_53:
        (*(v84 + 8))(v64 + v82, v83);
      }

      goto LABEL_57;
    case 0x17u:
      v93 = sub_1E65E57D8();
      (*(*(v93 - 8) + 8))(v0 + v60, v93);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v95 = *(v94 + 48);
      v96 = sub_1E65E5528();
      (*(*(v96 - 8) + 8))(v64 + v95, v96);
      if (*(v64 + *(v94 + 64) + 8) >= 0xCuLL)
      {
      }

      goto LABEL_57;
    case 0x18u:

      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072100, &unk_1E65EA2C0) + 48);
      v89 = sub_1E65DB848();
      goto LABEL_50;
    case 0x1Au:
      sub_1E65E52B8();
      v104 = swift_getEnumCaseMultiPayload();
      if (v104 == 1)
      {

        goto LABEL_57;
      }

      if (v104)
      {
        goto LABEL_57;
      }

LABEL_29:
      v85 = sub_1E65D74E8();
      goto LABEL_56;
    case 0x1Bu:
      type metadata accessor for PlaylistType();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v85 = sub_1E65DAEB8();
LABEL_56:
        (*(*(v85 - 8) + 8))(v0 + v60, v85);
      }

      else
      {
LABEL_8:
        v65 = *(v64 + 8);
      }

      goto LABEL_57;
    case 0x1Cu:
      v85 = sub_1E65D76F8();
      goto LABEL_56;
    case 0x1Du:
      v128 = sub_1E65E55E8();
      (*(*(v128 - 8) + 8))(v0 + v60, v128);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v89 = sub_1E65D7EB8();
LABEL_50:
      (*(*(v89 - 8) + 8))(v64 + v69, v89);
      goto LABEL_57;
    case 0x1Eu:
      v90 = sub_1E65E56B8();
      (*(*(v90 - 8) + 8))(v0 + v60, v90);
      v91 = &unk_1ED072110;
      v92 = &unk_1E65EA2D0;
      goto LABEL_43;
    case 0x1Fu:
      v102 = sub_1E65DA308();
      (*(*(v102 - 8) + 8))(v0 + v60, v102);
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
      goto LABEL_44;
    case 0x20u:
      v117 = sub_1E65E58D8();
      (*(*(v117 - 8) + 8))(v0 + v60, v117);
      v91 = &qword_1ED072120;
      v92 = &qword_1E65EA2E0;
LABEL_43:
      v118 = __swift_instantiateConcreteTypeFromMangledNameV2(v91, v92);
      v119 = *(v64 + *(v118 + 48));

      v103 = *(v118 + 64);
LABEL_44:
      v120 = *(v64 + v103);

      goto LABEL_57;
    case 0x21u:
      v85 = sub_1E65D9048();
      goto LABEL_56;
    default:
      goto LABEL_57;
  }
}

uint64_t sub_1E5E376F0()
{
  v1 = type metadata accessor for SessionService();
  Description = v1[-1].Description;
  v3 = Description[8];
  (Description[1])(v0 + ((*(Description + 80) + 16) & ~*(Description + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5E377AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5E37824(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1E5E378B0()
{
  v122 = type metadata accessor for AppComposer();
  v120 = *(*(v122 - 1) + 80);
  v116 = *(*(v122 - 1) + 64);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v118 = *(v1 - 8);
  v119 = v1;
  v115 = *(v118 + 80);
  v114 = *(v118 + 64);
  v2 = *(v0 + 16);
  swift_unknownObjectRelease();
  v121 = v0;
  v117 = (v120 + 32) & ~v120;
  v111 = v0 + v117;
  v3 = *(v0 + v117);

  v4 = (v0 + v117 + v122[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v113 = type metadata accessor for AccountService();
  v112 = *(v113[-1].Description + 1);
  v112(&v4[v7], v113);
  v8 = v6[7];
  v110 = type metadata accessor for AppStateService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v8], v110);
  v9 = v6[8];
  v108 = type metadata accessor for ArchivedSessionService();
  v107 = *(v108[-1].Description + 1);
  v107(&v4[v9], v108);
  v10 = v6[9];
  v106 = type metadata accessor for AssetService();
  v105 = *(v106[-1].Description + 1);
  v105(&v4[v10], v106);
  v11 = v6[10];
  v104 = type metadata accessor for AwardsService();
  v103 = *(v104[-1].Description + 1);
  v103(&v4[v11], v104);
  v12 = v6[11];
  v102 = type metadata accessor for BookmarkService();
  v101 = *(v102[-1].Description + 1);
  v101(&v4[v12], v102);
  v13 = v6[12];
  v100 = type metadata accessor for CatalogService();
  v99 = *(v100[-1].Description + 1);
  v99(&v4[v13], v100);
  v14 = v6[13];
  v98 = type metadata accessor for ConfigurationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v4[v14], v98);
  v15 = v6[14];
  v96 = type metadata accessor for ContentAvailabilityService();
  v95 = *(v96[-1].Description + 1);
  v95(&v4[v15], v96);
  v16 = v6[15];
  v94 = type metadata accessor for EngagementService();
  v93 = *(v94[-1].Description + 1);
  v93(&v4[v16], v94);
  v17 = v6[16];
  v92 = type metadata accessor for HealthDataService();
  v91 = *(v92[-1].Description + 1);
  v91(&v4[v17], v92);
  v18 = v6[17];
  v90 = type metadata accessor for InteropService();
  v89 = *(v90[-1].Description + 1);
  v89(&v4[v18], v90);
  v19 = v6[18];
  v88 = type metadata accessor for LocalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v4[v19], v88);
  v20 = v6[19];
  v86 = type metadata accessor for MarketingService();
  v85 = *(v86[-1].Description + 1);
  v85(&v4[v20], v86);
  v21 = v6[20];
  v84 = type metadata accessor for MetricService();
  v83 = *(v84[-1].Description + 1);
  v83(&v4[v21], v84);
  v22 = v6[21];
  v82 = type metadata accessor for PersonalizationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v4[v22], v82);
  v23 = v6[22];
  v80 = type metadata accessor for PlayerService();
  v79 = *(v80[-1].Description + 1);
  v79(&v4[v23], v80);
  v24 = v6[23];
  v78 = type metadata accessor for PrivacyPreferenceService();
  v77 = *(v78[-1].Description + 1);
  v77(&v4[v24], v78);
  v25 = v6[24];
  v76 = type metadata accessor for RecommendationService();
  v75 = *(v76[-1].Description + 1);
  v75(&v4[v25], v76);
  v26 = v6[25];
  v74 = type metadata accessor for RemoteBrowsingService();
  v73 = *(v74[-1].Description + 1);
  v73(&v4[v26], v74);
  v27 = v6[26];
  v72 = type metadata accessor for SearchService();
  v71 = *(v72[-1].Description + 1);
  v71(&v4[v27], v72);
  v28 = v6[27];
  v70 = type metadata accessor for ServiceSubscriptionService();
  v69 = *(v70[-1].Description + 1);
  v69(&v4[v28], v70);
  v29 = v6[28];
  v63 = type metadata accessor for SessionService();
  v68 = *(v63[-1].Description + 1);
  v68(&v4[v29], v63);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v67 = *(v31[-1].Description + 1);
  v67(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v66 = *(v33[-1].Description + 1);
  v66(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v65 = *(v35[-1].Description + 1);
  v65(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v64 = *(QueueService[-1].Description + 1);
  v64(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v62 = *(v44[-1].Description + 1);
  v62(&v4[v43], v44);
  v45 = *(v111 + v122[6]);

  v46 = (v111 + v122[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v112(&v49[v6[6]], v113);
  v109(&v49[v6[7]], v110);
  v107(&v49[v6[8]], v108);
  v105(&v49[v6[9]], v106);
  v103(&v49[v6[10]], v104);
  v101(&v49[v6[11]], v102);
  v99(&v49[v6[12]], v100);
  v97(&v49[v6[13]], v98);
  v95(&v49[v6[14]], v96);
  v93(&v49[v6[15]], v94);
  v91(&v49[v6[16]], v92);
  v89(&v49[v6[17]], v90);
  v87(&v49[v6[18]], v88);
  v85(&v49[v6[19]], v86);
  v83(&v49[v6[20]], v84);
  v81(&v49[v6[21]], v82);
  v79(&v49[v6[22]], v80);
  v77(&v49[v6[23]], v78);
  v75(&v49[v6[24]], v76);
  v73(&v49[v6[25]], v74);
  v71(&v49[v6[26]], v72);
  v69(&v49[v6[27]], v70);
  v68(&v49[v6[28]], v63);
  v67(&v49[v6[29]], v31);
  v66(&v49[v6[30]], v33);
  v65(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v64(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v62(&v49[v6[36]], v44);
  v56 = *(v111 + v122[8]);
  swift_unknownObjectRelease();
  if (*(v111 + v122[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v111 + v122[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = (v116 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = (v58 + v115 + 8) & ~v115;

  (*(v118 + 8))(v121 + v59, v119);
  v60 = *(v121 + ((v114 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}